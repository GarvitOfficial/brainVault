---
Date: 27-July-2026
---
# [[Recussive Relation]]

1. [[Substitution Method]]
2. [[R. Tree Method]]
3. [[Masters Theorem]]

## Substitution Method

$$
\begin{aligned}
a_n &= a_{n-1} + f_n \\[6pt]

n=1:\quad
a_1 &= a_0 + f_1 \\[4pt]

n=2:\quad
a_2 &= a_1 + f_2 \\
    &= (a_0 + f_1) + f_2 \\
    &= a_0 + f_1 + f_2 \\[4pt]

n=3:\quad
a_3 &= a_2 + f_3 \\
    &= (a_0 + f_1 + f_2) + f_3 \\
    &= a_0 + f_1 + f_2 + f_3 \\[6pt]

\vdots \\[4pt]

a_n &= a_0 + \sum_{i=1}^{n} f_i
\end{aligned}
$$

> [!question]
> $$ \begin{aligned}  a_n &= a_{n-1} + n^2,\qquad a_0=7 \\[6pt] \end{aligned} $$ 


$$
\begin{aligned}
a_n &= a_{n-1} + n^2,\qquad a_0=7 \\[6pt]

n=1:\quad
a_1 &= a_0 + 1^2 \\
    &= 7 + 1 \\[6pt]

n=2:\quad
a_2 &= a_1 + 2^2 \\
    &= (7 + 1) + 4 \\
    &= 7 + 1 + 4 \\[6pt]

n=3:\quad
a_3 &= a_2 + 3^2 \\
    &= (7 + 1 + 4) + 9 \\
    &= 7 + 1 + 4 + 9 \\[6pt]

\vdots \\[4pt]

a_n &= 7 + \sum_{i=1}^{n} i^2 \\[6pt]

    &= 7 + \frac{n(n+1)(2n+1)}{6}
\end{aligned}
$$


> [!question]
> $$\begin{aligned} a_n &= a_{n-1} + \frac{1}{n(n+1)},\qquad a_0=1 \\[6pt]\end{aligned} $$

$$
\begin{aligned}
a_n &= a_{n-1} + \frac{1}{n(n+1)},\qquad a_0=1 \\[6pt]

n=1:\quad
a_1 &= a_0 + \frac{1}{1\cdot2} \\
    &= 1 + \frac12 \\[6pt]

n=2:\quad
a_2 &= a_1 + \frac{1}{2\cdot3} \\
    &= \left(1+\frac12\right)+\frac16 \\
    &= 1+\frac12+\frac16 \\[6pt]

n=3:\quad
a_3 &= a_2 + \frac{1}{3\cdot4} \\
    &= \left(1+\frac12+\frac16\right)+\frac1{12} \\
    &= 1+\frac12+\frac16+\frac1{12} \\[6pt]

\vdots \\[6pt]

a_n &= 1+\sum_{i=1}^{n}\frac{1}{i(i+1)} \\[6pt]

&=1+\sum_{i=1}^{n}\left(\frac1i-\frac1{i+1}\right) \\[6pt]

&=1+\left(1-\frac1{n+1}\right) \\[6pt]

&=2-\frac1{n+1}
\end{aligned}
$$

> [!Intermediate]
> $$
> \begin{aligned}
> &\left(1-\frac12\right)
> +\left(\frac12-\frac13\right)
> +\left(\frac13-\frac14\right)
> +\cdots
> +\left(\frac1n-\frac1{n+1}\right).
> \end{aligned}
> $$

Now notice that everything cancels:

$$
\begin{aligned}
1
&-\cancel{\frac12}
+\cancel{\frac12}
-\cancel{\frac13}
+\cancel{\frac13}
-\cancel{\frac14}
+\cdots
+\cancel{\frac1n}
-\frac1{n+1}.
\end{aligned}
$$

> [!question]
> $$
> \begin{aligned}
> a_n &= a_{n-1}+3^n,\qquad a_0=1
> \end{aligned}
> $$

$$
\begin{aligned}
a_n &= a_{n-1}+3^n,\qquad a_0=1 \\[6pt]

n=1:\quad
a_1 &= a_0+3^1 \\
    &= 1+3 \\[6pt]

n=2:\quad
a_2 &= a_1+3^2 \\
    &= (1+3)+9 \\
    &= 1+3+9 \\[6pt]

n=3:\quad
a_3 &= a_2+3^3 \\
    &= (1+3+9)+27 \\
    &= 1+3+9+27 \\[6pt]

\vdots \\[6pt]

a_n &= 1+\sum_{i=1}^{n}3^i \\[6pt]

&=1+\frac{3(3^n-1)}{3-1} \\[6pt]

&=1+\frac{3^{n+1}-3}{2} \\[6pt]

&=\frac{3^{n+1}-1}{2}
\end{aligned}
$$

> [!Question]
> $$
>\begin{aligned}
>a_n &= a_{n-1}+\frac{n(n+1)}{2} \\[6pt] \end{aligned}
>$$


$$
\begin{aligned}
a_n &= a_{n-1}+\frac{n(n+1)}{2} \\[6pt]

n=1:\quad
a_1 &= a_0+\frac{1\cdot2}{2} \\
    &= a_0+1 \\[6pt]

n=2:\quad
a_2 &= a_1+\frac{2\cdot3}{2} \\
    &= (a_0+1)+3 \\
    &= a_0+1+3 \\[6pt]

n=3:\quad
a_3 &= a_2+\frac{3\cdot4}{2} \\
    &= (a_0+1+3)+6 \\
    &= a_0+1+3+6 \\[6pt]

\vdots \\[6pt]

a_n &= a_0+\sum_{i=1}^{n}\frac{i(i+1)}{2} \\[6pt]

&=a_0+\frac12\sum_{i=1}^{n}(i^2+i) \\[6pt]

&=a_0+\frac12\left(
\frac{n(n+1)(2n+1)}{6}
+\frac{n(n+1)}{2}
\right) \\[6pt]

&=a_0+\frac{n(n+1)(n+2)}{6}
\end{aligned}
$$


> [!Important]
> Find Complexity for 
>> i. Palindrome of a String
>> $$
>>f_{n+1}=f_{n-1}+f_n
>>$$
