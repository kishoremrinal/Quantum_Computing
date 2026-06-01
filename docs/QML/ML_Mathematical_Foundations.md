# Machine Learning Mathematical Foundations (Class 1 & Class 2 Notes)

## Purpose of These Notes

These notes consolidate the concepts discussed in the class notes and explain the mathematical foundations behind Machine Learning (ML), Deep Learning (DL), and Quantum Machine Learning (QML).

---

# 1. What is Machine Learning?

Machine Learning is the process of learning a mathematical function from data.

## Typical ML Workflow

```text
Training Data
      ↓
Learning Algorithm
      ↓
Model / Hypothesis
      ↓
Predictions
```

Example:

| House Size | House Price |
|------------|-------------|
| 1000 | 50 lakh |
| 1500 | 75 lakh |
| 2000 | 100 lakh |

Goal: Given a new house size, predict the price.

---

# 2. Functions

A function maps inputs to outputs.

$$
f : X \rightarrow Y
$$

Example:

$$
f(x)=x^2
$$

If:

$$
x=3
$$

Then:

$$
f(3)=9
$$

---

# 3. Real Numbers and Vector Spaces

## Real Numbers

$$
x \in \mathbb{R}
$$

means x is a real number.

Examples:

- 5
- -3
- 3.14

## Two-Dimensional Space

$$
x \in \mathbb{R}^2
$$

means:

$$
x=
\begin{bmatrix}
x_1\\
x_2
\end{bmatrix}
$$

Example:

$$
x=
\begin{bmatrix}
3\\
5
\end{bmatrix}
$$

## General Case

$$
x \in \mathbb{R}^n
$$

means:

$$
x=
\begin{bmatrix}
x_1\\
x_2\\
\vdots\\
x_n
\end{bmatrix}
$$

This is called a feature vector.

---

# 4. Features and Training Samples

Features are input variables.

Example:

- House size
- Number of rooms
- Age of house

If there are n features:

$$
x \in \mathbb{R}^n
$$

Training data:

- m = number of training examples
- n = number of features

---

# 5. Training Data Matrix

Input matrix:

$$
X=
\begin{bmatrix}
(x^{(1)})^T\\
(x^{(2)})^T\\
\vdots\\
(x^{(m)})^T
\end{bmatrix}
$$

Dimensions:

$$
X \in \mathbb{R}^{m \times n}
$$

Example:

$$
X=
\begin{bmatrix}
1000 & 2\\
1500 & 3\\
2000 & 4
\end{bmatrix}
$$

---

# 6. Output Vector

$$
Y=
\begin{bmatrix}
y^{(1)}\\
y^{(2)}\\
\vdots\\
y^{(m)}
\end{bmatrix}
$$

---

# 7. Supervised vs Unsupervised Learning

## Supervised Learning

Data contains labels.

Example:

| Email | Spam? |
|--------|--------|
| Win money | Yes |
| Meeting at 5 | No |

## Unsupervised Learning

No labels are provided.

Examples:

- Customer clustering
- Market segmentation

---

# 8. Regression vs Classification

## Regression

Output is continuous.

Examples:

- House price
- Temperature
- Stock price

## Classification

Output is discrete.

Examples:

- Spam / Not Spam
- Cat / Dog
- Disease / No Disease

---

# 9. Revisiting School Mathematics

## Straight Line Equation

$$
y = mx + c
$$

Where:

- m = slope
- c = intercept

Example:

$$
y = 2x + 1
$$

Machine Learning generalizes this to:

$$
h_\theta(x)=\theta_0+\theta_1x
$$

Where:

- θ₀ = bias/intercept
- θ₁ = weight

---

# 10. Multiple Features

$$
h_\theta(x)=\theta_0+\theta_1x_1+\theta_2x_2+\cdots+\theta_nx_n
$$

---

# 11. Vector Form of the Model

Define:

$$
\theta=
\begin{bmatrix}
\theta_0\\
\theta_1\\
\vdots\\
\theta_n
\end{bmatrix}
$$

and

$$
x=
\begin{bmatrix}
1\\
x_1\\
\vdots\\
x_n
\end{bmatrix}
$$

Then:

$$
h_\theta(x)=\theta^T x
$$

---

# 12. Dot Product

Suppose:

$$
x=
\begin{bmatrix}
3\\
4
\end{bmatrix}
,\quad
w=
\begin{bmatrix}
1\\
2
\end{bmatrix}
$$

Then:

$$
x^T w = 3(1)+4(2)=11
$$

Dot products are fundamental to ML, Deep Learning, and Quantum Computing.

---

# 13. Optimization

The core objective of ML:

> Find model parameters that minimize prediction error.

---

# 14. Cost Function

$$
J(\theta)
=
\frac{1}{2m}
\sum_{i=1}^{m}
\left(
y^{(i)}
-
h_\theta(x^{(i)})
\right)^2
$$

This is Mean Squared Error (MSE).

Why square errors?

1. Prevent positive and negative errors from canceling.
2. Penalize large errors.
3. Differentiable and calculus-friendly.

---

# 15. Calculus Foundations

## Derivative

Derivative measures slope.

Example:

$$
f(x)=x^2
$$

Derivative:

$$
f'(x)=2x
$$

Interpretation:

| Derivative | Meaning |
|------------|----------|
| Positive | Function increasing |
| Negative | Function decreasing |
| Zero | Flat point |

---

# 16. Second Derivative

Example:

$$
f(x)=x^2
$$

First derivative:

$$
f'(x)=2x
$$

Second derivative:

$$
f''(x)=2
$$

Interpretation:

If

$$
f''(x)>0
$$

the curve is bowl-shaped and has a minimum.

If

$$
f''(x)<0
$$

the curve is upside down and has a maximum.

---

# 17. Critical Points

Critical points occur when:

$$
f'(x)=0
$$

These may be:

- Minimum
- Maximum
- Saddle point

---

# 18. Partial Derivatives

For:

$$
f(x,y)=x^2+y^2
$$

Partial derivative with respect to x:

$$
\frac{\partial f}{\partial x}=2x
$$

Partial derivative with respect to y:

$$
\frac{\partial f}{\partial y}=2y
$$

---

# 19. Gradient

$$
\nabla f(x,y)=
\begin{bmatrix}
\frac{\partial f}{\partial x}\\
\frac{\partial f}{\partial y}
\end{bmatrix}
$$

The gradient points in the direction of steepest increase.

---

# 20. Gradient Descent

Update rule:

$$
x^k
=
x^{k-1}
-
\eta \nabla f(x^{k-1})
$$

Meaning:

- xᵏ = new estimate
- xᵏ⁻¹ = previous estimate
- η = learning rate
- ∇f = gradient

Intuition:

New Position = Current Position − Move Downhill

---

# 21. Learning Rate

$$
\eta
$$

controls the step size.

Too small:

- Stable
- Slow

Too large:

- Overshoots minimum
- May diverge

---

# 22. Termination Condition

Stop when improvement becomes negligible.

$$
|f(x^k)-f(x^{k+1})|<\epsilon
$$

---

# 23. Least Squares Problem

Suppose:

$$
Ax=b
$$

has no exact solution.

We seek:

$$
Ax \approx b
$$

Define error:

$$
e=Ax-b
$$

Objective:

$$
||Ax-b||^2
$$

This is the Least Squares problem.

---

# 24. Why Transpose Appears

For a vector:

$$
v=
\begin{bmatrix}
3\\
4
\end{bmatrix}
$$

$$
v^Tv = 3^2+4^2=25
$$

Therefore:

$$
||Ax-b||^2=(Ax-b)^T(Ax-b)
$$

Transpose is used to convert the vector norm into a scalar dot product.

---

# 25. Normal Equation

Minimizing least squares leads to:

$$
A^TAx=A^Tb
$$

This is called the Normal Equation.

Solution:

$$
x^*=(A^TA)^{-1}A^Tb
$$

---

# 26. Pseudo-Inverse

Sometimes:

$$
(A^TA)^{-1}
$$

does not exist.

Use the pseudo-inverse:

$$
A^+
$$

Solution:

$$
x^*=A^+b
$$

---

# 27. Matrix Calculus

Important result:

$$
\nabla_x(x^TAx)=2Ax
$$

when A is symmetric.

This is the matrix version of:

$$
\frac{d}{dx}(x^2)=2x
$$

---

# 28. Binary Vectors

Classical binary vectors:

$$
x \in \{0,1\}^n
$$

Example:

$$
\{00,01,10,11\}
$$

These concepts later evolve into quantum states.

---

# 29. Connection to Machine Learning

Machine Learning can be viewed as:

```text
Machine Learning
=
Linear Algebra
+
Calculus
+
Optimization
```

Workflow:

1. Define model
2. Define cost function
3. Compute derivatives
4. Compute gradients
5. Minimize error
6. Obtain optimal parameters

---

# 30. Connection to Quantum Machine Learning

Classical ML uses:

- Vectors
- Matrices
- Optimization
- Gradients

Quantum ML extends these ideas using:

- Quantum states
- Hilbert spaces
- Unitary matrices
- Quantum circuits

The mathematical foundations remain the same.

---

# Final Takeaway

Machine Learning is fundamentally the process of:

> Learning parameters that minimize prediction error.

Focus on understanding:

1. Functions
2. Vectors and matrices
3. Dot products
4. Derivatives
5. Gradients
6. Optimization
7. Least squares
8. Gradient descent

Everything in Deep Learning and Quantum Machine Learning builds on these concepts.
