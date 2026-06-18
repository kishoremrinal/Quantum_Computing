%% SIM BPSK QKD SIMULATION WITH DIRECT DETECTION (DT/DD)

clc              % Clears command window
clear            % Removes all variables from workspace
close all        % Closes all open figure windows

%% ---------------- SYSTEM PARAMETERS -----------------

% delta(modulation depth) controls separation between bit-0 and bit-1 signals
delta = 0.45;

% rho (threshold coefficient)
rho = 3.5;

% Number of transmitted bits (large number for accuracy)
N = 1e4;

%% -------------------- SIMULATION START --------------------

disp("SIM BPSK Simulation Running...")

results = [];                       % Matrix to store result
T = 1;                              % trasmitance

% Generate random bits (0 or 1) of size N
x = randi([0,1], 1, N);

% ----------- BPSK MAPPING -----------
% Bit 1 gets higher amplitude, bit 0 gets lower
I1 =  delta;   % Amplitude for bit 1
I0 = -delta;   % Amplitude for bit 0

% Assign amplitudes based on bits
symbols = I0*(x==0) + I1*(x==1);

% ----------- CHANNEL + NOISE -----------
% Signal passes through AWGN channel
output = sqrt(0.9*T)*symbols + randn(1, N);

% Same for Eve (eavesdropper)
output_eve = sqrt(0.1*T)*symbols + randn(1, N);

% ----------- DECISION THRESHOLDS -----------
% Dual thresholds for Bob
d1 =  sqrt(T) * rho;   % Upper threshold
d0 = -sqrt(T) * rho;   % Lower threshold

% Eve uses a single threshold
de = 0;

% ----------- BOB DETECTION -----------
% Initialize all outputs as "uncertain" here assign 0.5
x_est = 0.5 * ones(1, N);

% If signal is high → decide 1
x_est(output >= d1) = 1;

% If signal is low → decide 0
x_est(output < d0) = 0;

% Only keep confident decisions (discard uncertain ones)
idx_valid = (x_est ~= 0.5); % indices where bit detected
n_sifted = sum(idx_valid);  % count detected or valid bits

% Extract valid bits at Alice, Bob and Eve
sift_alice = x(idx_valid);
sift_bob = x_est(idx_valid);

% Eve's decision (single threshold)
sift_eve = (output_eve(idx_valid) >= de);

% ----------- PERFORMANCE METRICS -----------
% Probability that a bit is accepted (sifting)
p_sift = n_sifted / N;

% QBER: fraction of incorrect bits out of sifted or detected bits at Bob
qber = sum(sift_alice ~= sift_bob) / n_sifted;

% Eve's error probability
p_eve = sum(x ~= (output_eve >= de)) / N;

% Save results in a array for observation
results =[results; delta rho qber p_eve];

% Convert numerical result matrix into a table for better readability
results_table = array2table(results, ...
    'VariableNames', {'Delta','Rho','QBER','P_err_Eve'});

% Display the table in command window
disp(results_table);

% convert bits into hex
hex_alice = dec2hex(bin2dec(num2str(sift_alice)))
hex_bob = dec2hex(bin2dec(num2str(sift_bob)))
hex_eve = dec2hex(bin2dec(num2str(sift_eve)))





















