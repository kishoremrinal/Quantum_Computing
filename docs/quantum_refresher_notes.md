# 🧠 Quantum Mechanics → Quantum Computing  
## Complete Refresher Notes + Reusable Prompt

---

# 📌 REUSABLE MASTER PROMPT

Create a complete, structured, and intuition-rich refresher note for quantum mechanics and quantum computing fundamentals.

The explanation should:

1. Follow a logical flow from physics → math → computation:
   - probability amplitudes
   - double-slit experiment
   - Stern–Gerlach experiment (including sequential SGz → SGx insight)
   - Hilbert space
   - kets, bras, inner product
   - eigenvalues and eigenvectors (clearly explained with meaning in measurement)
   - Hermitian operators (measurement)
   - Unitary operators (evolution)
   - Hamiltonian and Schrödinger equation
   - Bloch sphere intuition
   - full numerical example (state → gate → amplitudes → inner product → probability → measurement)
   - Grover’s algorithm (as application of interference)

2. Preserve deep intuition throughout:
   - use arrow/vector visualization
   - explain phase and interference clearly

3. Include ALL mathematical steps where needed:
   - explicitly show how probabilities are computed using inner product

4. Clearly distinguish:
   - amplitudes vs probabilities
   - hidden layer vs observable layer

5. Explain eigenvalues and eigenvectors clearly

6. Keep it beginner-friendly but precise

7. Make it suitable as a long-term revision note

---

# 📘 FINAL MASTER REFRESHER NOTES

## 1. What Are We Modeling?

Nature behaves like probability amplitudes, not classical particles.

State → Evolution → Interference → Measurement

---

## 2. Quantum State

|ψ⟩ = α|0⟩ + β|1⟩

|α|² + |β|² = 1

State = all possible outcomes + their strengths

---

## 3. Amplitudes vs Probabilities

P = |ϕ|²

P = |ϕ₁ + ϕ₂|²

Amplitudes interfere, probabilities do NOT.

---

## 4. Double-Slit Insight

Wave spreads → overlaps → interferes

Interference requires indistinguishable paths

Which-path info → no interference

---

## 5. Stern–Gerlach Insight

Spin is quantized: ±ħ/2

SGz → SGx → splitting again

State definite in Z → superposition in X

|+z⟩ = (1/√2)(|+x⟩ + |-x⟩)

Measurement destroys previous basis information

---

## 6. Hilbert Space

All states = vectors

Bloch sphere = normalized states (unit length)

---

## 7. Kets, Bras, Inner Product

|ψ⟩ = [α β]^T  
⟨ψ| = [α* β*]

⟨ϕ|ψ⟩ = overlap

P = |⟨ϕ|ψ⟩|²

---

## 8. Eigenvalues & Eigenvectors

A|ψ⟩ = λ|ψ⟩

Eigenvector = aligned state  
Eigenvalue = measurement result  

If already eigenvector → no collapse

---

## 9. Operators

Hermitian → measurement  
Unitary → evolution  

U†U = I → preserves probability

---

## 10. Hamiltonian

iħ d|ψ⟩/dt = H|ψ⟩

H = rule of motion  
U = e^(-iHt/ħ)

---

## 11. Core Numerical Example

|0⟩ = [1 0]^T

After H:

|ψ⟩ = (1/√2)[1 1]^T

⟨0|ψ⟩ = 1/√2  
P(0) = 1/2  

⟨1|ψ⟩ = 1/√2  
P(1) = 1/2  

Apply H again → |0⟩

Interference:
+ + → reinforce  
+ − → cancel  

---

## 12. Goal

Not randomness  
→ control outcomes via interference

---

## 13. Quantum Computing Principle

Create possibilities → manipulate amplitudes → interfere → measure

---

## 14. Grover’s Algorithm

Superposition → Oracle → Diffusion → Repeat → Measure

Phase flip → interference → amplification

---

## FINAL MODEL

State = arrow  
Amplitude = wave  
Phase = direction  

Unitary = rotation  
Measurement = projection  

Eigenvector = stable state  
Eigenvalue = result  

Interference = computation engine

---

## ONE-LINE INTUITION

Quantum computing uses interference of amplitudes to amplify correct answers and cancel wrong ones.
