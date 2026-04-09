# 📘 Stern–Gerlach Experiment — Complete Foundational Notes

---

# 🧠 1. Big Picture

The Stern–Gerlach experiment is the **foundation of quantum mechanics**.

It shows:

- Quantization of spin  
- Measurement changes the state  
- Basis dependence (X vs Z)  
- Superposition  
- Information loss during measurement  

---

# 🔬 2. Experimental Setup

- A beam of silver atoms is passed through a **non-uniform magnetic field**
- The direction defines measurement axis:
  - SGz → Z direction  
  - SGx → X direction  

---

# 📘 3. First Observation (SGz)

## Input
Random spin beam  

## Output

Two beams:

- Top → +z  
- Bottom → −z  

---

## Meaning

Spin is **quantized**:

$+\hbar/2, -\hbar/2$

---

## Ket Representation

| State | Meaning |
|------|--------|
| $|+z\rangle = |0\rangle$ | Spin up |
| $|-z\rangle = |1\rangle$ | Spin down |

---

# 📘 4. Filtering (Eigenstate Behavior)

Take:

$|+z\rangle$

Pass again through SGz:

## Observation

- No splitting  
- Single beam  

---

## Meaning

State is an **eigenvector of Z**

---

# 📘 5. Key Experiment: SGz → SGx

---

## Step 1

Prepare:

$|+z\rangle$

---

## Step 2

Pass through SGx  

---

## Observation

- 50% → +x  
- 50% → −x  

---

## Representation

$|+z\rangle = \frac{1}{\sqrt{2}} (|+x\rangle + |-x\rangle)$

---

# 📘 6. X-Basis States

$|+x\rangle = \frac{1}{\sqrt{2}} (|0\rangle + |1\rangle)$  

$|-x\rangle = \frac{1}{\sqrt{2}} (|0\rangle - |1\rangle)$  

---

# 📘 7. Superposition

Superposition means:

- Combination of multiple possibilities  
- Not physical splitting  
- Described by amplitudes  

---

# 📘 8. Why 50–50?

From:

$|+z\rangle = \frac{1}{\sqrt{2}}(|+x\rangle + |-x\rangle)$  

$P(+x) = 1/2, \quad P(-x) = 1/2$

---

# 📘 9. Sequential Experiment: SGz → SGx → SGz

1. Start: $|+z\rangle$  
2. SGx → pick $|+x\rangle$  
3. SGz  

---

## Observation

- 50% → +z  
- 50% → −z  

---

# 🔥 Key Result

Measurement in X destroys Z information  

---

# 📘 10. Why Measurement Destroys Information

After SGx:

$|+x\rangle = \frac{1}{\sqrt{2}}(|+z\rangle + |-z\rangle)$  

---

# 📘 11. Beam Selection

- Block one beam  
- Keep one component  

Effect:

- Superposition destroyed  
- Information lost  

---

# 📘 12. Superposition vs Mixture

## Superposition

$\frac{1}{\sqrt{2}}(|+x\rangle + |-x\rangle)$  

## Mixture

- 50% $|+x\rangle$  
- 50% $|-x\rangle$  

---

# 📘 13. Non-Commutation

$SGz \rightarrow SGx \neq SGx \rightarrow SGz$

---

# 📘 14. Final Mental Model

Each magnet asks:

- SGz → “Z?”  
- SGx → “X?”  

---

# ⚡ One-Line Summary

A quantum state depends on measurement direction, and measuring in a new direction rewrites the state.
