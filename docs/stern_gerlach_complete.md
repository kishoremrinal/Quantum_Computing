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
- The direction of the field defines the measurement axis:
  - SGz → measures spin in Z direction
  - SGx → measures spin in X direction

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

- Spin is **quantized**
- Only two outcomes:

  +ħ/2 and −ħ/2

---

## Ket Representation

| State | Meaning |
|------|--------|
| \(|+z⟩ = |0⟩\) | Spin up |
| \(|−z⟩ = |1⟩\) | Spin down |

---

# 📘 4. Filtering (Eigenstate Behavior)

Take only:

\[
|+z⟩
\]

Pass again through SGz:

## Observation

- No splitting
- Single beam

---

## Meaning

- State is **stable under Z measurement**
- It is an **eigenvector of Z**

---

# 📘 5. Key Experiment: SGz → SGx

---

## Step 1

Prepare:

\[
|+z⟩
\]

---

## Step 2

Pass through SGx

---

## Observation

- Splits into two beams:

  - 50% → +x  
  - 50% → −x  

---

## Meaning

- \(|+z⟩\) is NOT eigenstate of X
- It behaves as **superposition in X basis**

---

## Representation

\[
|+z⟩ =
\frac{1}{\sqrt{2}}(|+x⟩ + |-x⟩)
\]

---

# 📘 6. X-Basis States

---

## Eigenvectors of X

\[
|+x⟩ =
\frac{1}{\sqrt{2}}(|0⟩ + |1⟩)
\]

\[
|-x⟩ =
\frac{1}{\sqrt{2}}(|0⟩ - |1⟩)
\]

---

## Meaning

- These states do NOT split in SGx
- They are eigenstates of X

---

# 📘 7. Superposition (Physical Meaning)

---

Superposition means:

- A state behaves like a **combination of possibilities**

---

Important clarification:

- NOT physically split particle  
- BUT probability amplitudes for outcomes  

---

## Visualization

- One arrow not aligned with measurement axis
- Projection gives probabilities

---

# 📘 8. Why 50–50 Splitting?

---

From:

\[
|+z⟩ =
\frac{1}{\sqrt{2}}(|+x⟩ + |-x⟩)
\]

---

## Probability

\[
P(+x) = \frac{1}{2}, \quad P(-x) = \frac{1}{2}
\]

---

## Meaning

- Equal projection onto both states
- Symmetry → equal probability

---

# 📘 9. Sequential Experiment: SGz → SGx → SGz

---

## Step 1

Start:

\[
|+z⟩
\]

---

## Step 2

SGx → split → select \(|+x⟩\)

---

## Step 3

Send into SGz

---

## Observation

- Splits again:

  - 50% → +z  
  - 50% → −z  

---

# 🔥 Key Result

Measurement in X **destroys Z information**

---

# 📘 10. Why Measurement Destroys Information

---

## Before measurement

State:

\[
|+z⟩
\]

---

## After SGx

State becomes:

\[
|+x⟩
\]

---

## Express in Z basis

\[
|+x⟩ =
\frac{1}{\sqrt{2}}(|+z⟩ + |-z⟩)
\]

---

## Meaning

- Original certainty in Z is lost
- Becomes superposition again

---

# 📘 11. Role of Beam Selection

---

After SGx:

- Two beams: \(|+x⟩\) and \(|-x⟩\)

---

## Selecting one beam

- You physically **block the other beam**
- Keep only one component

---

## Effect

- Superposition destroyed
- Phase information lost
- System becomes a definite state

---

# 📘 12. Superposition vs Mixture (Preview)

---

## Superposition

\[
\frac{1}{\sqrt{2}}(|+x⟩ + |-x⟩)
\]

- Coherent
- Interference possible

---

## Mixture

- 50% \(|+x⟩\)
- 50% \(|-x⟩\)

---

- No coherence
- No interference

---

# 📘 13. Non-Commutation (Order Matters)

---

\[
SGz \rightarrow SGx \neq SGx \rightarrow SGz
\]

---

## Meaning

- Measurement order affects outcome
- Observables do not commute

---

# 📘 14. Final Mental Model

---

Each magnet asks a question:

- SGz → “Are you Z-up?”
- SGx → “Are you X-right?”

---

System must answer:

- + → upper beam  
- − → lower beam  

---

Measurement:

- Gives result  
- Changes state  

---

# ⚡ One-Line Summary

**A quantum state is defined relative to a measurement direction, and measuring in a new direction rewrites the state, destroying previous information.**

