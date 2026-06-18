%% SIM BPSK QKD SIMULATION WITH DIRECT DETECTION (DT/DD)

clc
clear
close all

%% ---------------- SYSTEM PARAMETERS -----------------
delta_vals = 0:0.1:1;     % modulation depth
rho_vals   = 0:0.2:4;    % threshold coefficient

N = 1e4;                  % number of bits
T = 1;                    % transmittance

disp("SIM BPSK Simulation Running...")

results = [];             % to store [delta rho QBER Eve_error]

%% ---------------- LOOP OVER PARAMETERS -----------------
for d = 1:length(delta_vals)
    
    delta = delta_vals(d);
    
    for r = 1:length(rho_vals)
        
        rho = rho_vals(r);
        
        % ----------- TRANSMISSION -----------
        x = randi([0,1], 1, N);

        % BPSK mapping
        I1 =  delta;
        I0 = -delta;
        symbols = I0*(x==0) + I1*(x==1);

        % Channel
        output = sqrt(0.9*T)*symbols + randn(1, N);
        output_eve = sqrt(0.1*T)*symbols + randn(1, N);

        % Thresholds
        d1 =  sqrt(T) * rho;
        d0 = -sqrt(T) * rho;
        de = 0;

        % ----------- BOB DETECTION -----------
        x_est = 0.5 * ones(1, N);

        x_est(output >= d1) = 1;
        x_est(output <  d0) = 0;

        idx_valid = (x_est ~= 0.5);
        n_sifted = sum(idx_valid);

        % Avoid division by zero
        if n_sifted == 0
            qber = NaN;
            p_sift = 0;
        else
            sift_alice = x(idx_valid);
            sift_bob   = x_est(idx_valid);

            qber = sum(sift_alice ~= sift_bob) / n_sifted;
            p_sift = n_sifted / N;
        end

        % Eve
        p_eve = sum(x ~= (output_eve >= de)) / N;

        % Store result
        results = [results; delta rho p_sift qber p_eve];

    end
end

%% ---------------- RESULT TABLE -----------------
results_table = array2table(results, ...
    'VariableNames', {'Delta','Rho','P_sift','QBER','P_err_Eve'});

disp(results_table);

%% ----------------- PLOT FOR PSIFT AND QBER -------------------
% -------- FILTER DATA FOR delta = 0.4 --------
delta_target = 0.8;

idx = abs(results(:,1) - delta_target) < 1e-6;

rho_plot   = results(idx,2);
qber_plot  = results(idx,4);
psift_plot = results(idx,3);

% Sort (important for smooth plots)
[rho_plot, sort_idx] = sort(rho_plot);
qber_plot  = qber_plot(sort_idx);
psift_plot = psift_plot(sort_idx);

% -------- PLOT --------
figure;
semilogy(rho_plot, qber_plot, '-o', 'LineWidth', 2);
hold on;
semilogy(rho_plot, psift_plot, '-s', 'LineWidth', 2);

xlabel('\rho');
ylabel('Probability');
legend('QBER','P_{sift}');
title(['QBER & P_{sift} vs \rho ( \delta = ', num2str(delta_target), ' )']);
grid on;

%% ----------------- PLOT FOR P_eve -------------------
% -------- FILTER DATA FOR rho = 2.5 --------
rho_target = 2;

idx2 = abs(results(:,2) - rho_target) < 1e-6;

delta_plot = results(idx2,1);
peve_plot  = results(idx2,5);

% Sort
[delta_plot, sort_idx] = sort(delta_plot);
peve_plot = peve_plot(sort_idx);

% -------- PLOT --------
figure;
plot(delta_plot, peve_plot, '-o', 'LineWidth', 2);

xlabel('\delta');
ylabel('P_{err,Eve}');
title(['Eve Error vs \delta ( \rho = ', num2str(rho_target), ' )']);
grid on;