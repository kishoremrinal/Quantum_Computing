# 📘 Pauli Matrices — Complete Conceptual Notes (SG + QC Unified)

---

# 🧠 0. Big Picture

Pauli matrices = foundation of single-qubit quantum mechanics

They define:
- Measurement (Hermitian operators)
- Evolution (Unitary operators)
- Geometry (Bloch sphere)
- Computation (quantum gates)

---

## 🔁 Stern–Gerlach Mapping

Each Pauli matrix = a measurement direction

| Matrix | Physical Meaning |
|------|----------------|
| σx | SGx magnet |
| σy | SGy magnet |
| σz | SGz magnet |

---

# 📘 1. The Pauli Set

$$
I =
\begin{bmatrix}
1 & 0 \\
0 & 1
\end{bmatrix}
$$

$$
\sigma_x =
\begin{bmatrix}
0 & 1 \\
1 & 0
\end{bmatrix}
$$

$$
\sigma_y =
\begin{bmatrix}
0 & -i \\
i & 0
\end{bmatrix}
$$

$$
\sigma_z =
\begin{bmatrix}
1 & 0 \\
0 & -1
\end{bmatrix}
$$

---

## Meaning

- I = do nothing  
- X = bit flip  
- Y = bit + phase  
- Z = phase flip  

---

# 📘 2. Action on Basis States

## Pauli-X (Bit Flip)

$$
X|0\rangle = |1\rangle
$$

$$
X|1\rangle = |0\rangle
$$

---

## Pauli-Z (Phase Flip)

$$
Z|0\rangle = |0\rangle
$$

$$
Z|1\rangle = -|1\rangle
$$

---

## Pauli-Y (Bit + Phase)

$$
Y|0\rangle = i|1\rangle
$$

$$
Y|1\rangle = -i|0\rangle
$$

---

# 📘 3. Eigenvalues & Eigenvectors

## Eigenvalues

$$
\lambda = \pm 1
$$

---

## Eigenvectors

### Z-basis

$$
|0\rangle, |1\rangle
$$

### X-basis

$$
|+x\rangle = \frac{1}{\sqrt{2}}(|0\rangle + |1\rangle)
$$

$$
|-x\rangle = \frac{1}{\sqrt{2}}(|0\rangle - |1\rangle)
$$

### Y-basis

$$
|+y\rangle = \frac{1}{\sqrt{2}}(|0\rangle + i|1\rangle)
$$

$$
|-y\rangle = \frac{1}{\sqrt{2}}(|0\rangle - i|1\rangle)
$$

---

# 📘 4. Hermitian + Unitary Nature

## Hermitian

$$
\sigma_i^\dagger = \sigma_i
$$

## Unitary

$$
\sigma_i^\dagger \sigma_i = I
$$

---

# 📘 5. Square Property

$$
\sigma_x^2 = \sigma_y^2 = \sigma_z^2 = I
$$

Example:

$$
X(X|0\rangle) = |0\rangle
$$

---

# 📘 6. Non-Commutation

$$
[X, Y] = 2iZ
$$

Meaning: Order matters

---

# 📘 7. Pauli as Basis

$$
A = a_0 I + a_x \sigma_x + a_y \sigma_y + a_z \sigma_z
$$

---

# 📘 8. Density Matrix Representation

$$
\rho = \frac{1}{2}(I + \vec{r} \cdot \vec{\sigma})
$$

---

# 📘 9. Bloch Sphere Connection

| Matrix | Axis |
|------|------|
| σx | X-axis |
| σy | Y-axis |
| σz | Z-axis |

---

# 📘 10. Pauli as Rotations

$$
U = e^{-iHt/\hbar}
$$

$$
R_n(\theta) = e^{-i\theta \sigma_n / 2}
$$

$$
e^{i\theta (\vec{n} \cdot \sigma)} = \cos\theta I + i\sin\theta (\vec{n} \cdot \sigma)
$$

---

# 📘 11. Unitary Properties

## Linearity

$$
U(a|\psi\rangle + b|\phi\rangle) = aU|\psi\rangle + bU|\phi\rangle
$$

## Invertibility

$$
U^{-1} = U^\dagger
$$

## Norm Preservation

$$
||U\psi|| = ||\psi||
$$

## Inner Product Preservation

$$
\langle U\phi | U\psi \rangle = \langle \phi | \psi \rangle
$$

---

# 📘 12. Measurement vs Evolution

| Concept | Math | Physical |
|--------|------|---------|
| Measurement | Hermitian | SG magnet |
| Evolution | Unitary | rotation |

---

# 📘 13. Quantum Computing Interpretation

- X → NOT gate  
- Z → phase gate  
- Y → combined  

## Error Correction

- X error → bit flip  
- Z error → phase flip  
- Y error → both  

---

# ⚡ Final Summary

Pauli matrices define measurement directions, generate quantum evolution, and form the basis of all single-qubit physics and computation.
