<h2 id="s:alg-duals" class="tex-section"><span data-tag="0062">9.1</span> Duality in $\mathbf{Alg}$</h2>
<p>
 Our goal is analyzing duality in the 2-category $\mathbf{Alg}$, looking at duality both for objects and for 1-morphisms. Recall that objects of this category are associative algebras, and 1-morphisms $A\to B$ are $B$-$A$-bimodules. 
</p>
<p>
Let us begin by looking at duality for objects. It turns out that each $A\in \mathbf{Alg}$ has a dual. Namely, for an algebra $A$, denote by $A^{\mathrm{op}}$ the <em>opposite algebra</em>, which coincides with $A$ as a vector space but has the opposite multiplication. Then any $A$-bimodule can also be considered as a left module over the algebra $A\otimes A^{\mathrm{op}}$, or as a right module over $A\otimes A^{\mathrm{op}}$. In particular, $A$ itself is a left module over $A\otimes A^{\mathrm{op}}$, and also a right module over $A\otimes A^{\mathrm{op}}$. 
</p>
<p>
<article class="env-theorem" id="0063">
  <p><a class="environment-identifier" href="/tag/0063">Theorem <span data-tag="0063">9.1.1</span>.</a> Let $A\in \mathbf{Alg}$. Define the evaluation and coevaluation morphisms $A^{\mathrm{op}}\otimes A\to \mathbf{k}$, $\mathbf{k}\to A\otimes A^{\mathrm{op}}$ to be $A$, considered either as a left or a right $A\otimes A^{\mathrm{op}}$ module: </p>
  <div class="equation" id="0064">
    <span class="equation-label"><a href="/tag/0064" data-tag="0064">9.1.1</a></span>
    <div>\begin{equation} \label{e:alg-duals1} \begin{aligned}  \operatorname{ev}& = A_{A\otimes A^{\mathrm{op}}} \colon A\otimes A^{\mathrm{op}}\to \mathbf{k}\\  \operatorname{coev}& = {}_{A\otimes A^{\mathrm{op}}} A \colon \mathbf{k}\to A\otimes A^{\mathrm{op}}. \end{aligned} \end{equation}</div>
</div>
  <p> Then $(A, A^{\mathrm{op}}, \operatorname{ev}, \operatorname{coev}, \alpha ,\beta )$ is a coherent dual pair in $\mathbf{Alg}$, with isomorphisms $\alpha , \beta \colon A\otimes _ A A \xrightarrow {\sim }A$ given by multiplication. </p>
</article> In other words, any algebra $A$ has a dual, namely $A^{\mathrm{op}}$. Note that it has nothing to do with the dual vector space, and it works for finite-dimensional as well as infinite-dimensional algebras. 
</p>
<p>
Let us now look at duality for 1-morphisms, i.e., bimodules. Recall that a module $P$ over an algebra $A$ is called <em>projective</em> if it is a direct summand of a free module. 
</p>
<p>
<article class="env-theorem" id="0065">
  <p><a class="environment-identifier" href="/tag/0065">Theorem <span data-tag="0065">9.1.2</span>.</a> Let ${}_ BM_ A$ be a $B$-$A$-bimodule, considered as a 1-morphism $A\to B$ in $\mathbf{Alg}$. Then the following are equivalent: </p>
  <p><ol>
  <li><p>
$M$ has a right adjoint. 
</p>
</li><li><p>
There exists an $A$-$B$-bimodule $N$, an element $e=\sum _{i=1}^ k n_ i\otimes m_ i\in N\otimes M$, and a morphism of $B$-bimodules $(\,  ,\, )\colon M\otimes _ A N\to B$ such that $e$ is central: for any $x\in A$, 
</p>
<div class="equation">
  \[  \sum (xn_ i)\otimes m_ i=\sum n_ i\otimes (m_ i x)  \]
</div>
<p>
 and for any $m\in M$, $n\in N$ we have 
</p>
<div class="equation" id="0066">
    <span class="equation-label"><a href="/tag/0066" data-tag="0066">9.1.4</a></span>
    <div>\begin{equation} \label{e:alg-adjoint-snake} \begin{aligned}  m& =\sum (m, n_ i) m_ i,\\  n& =\sum n_ i (m_ i, n). \end{aligned} \end{equation}</div>
</div>
</li><li><p>
$M$ is a finitely generated projective $B$-module. 
</p>
</li>
</ol></p>
  <p> In this case, its right adjoint is isomorphic to the module $N=M^\vee = \operatorname{Hom}_ B (M, B)$ (note that it has a canonical $A$-$B$-bimodule structure). </p>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      Equivalence (1)$\iff $ (2) is obvious from the definition; the form $(\,  , \, )$ plays the role of evaluation morphism, and $e=\eta (1)$, where $\eta \colon A\to N\otimes M$ is the coevaluation. 
    <p>
      To prove (2)$\implies $ (3), assume that we are given such an $e=\sum _{i=1}^ k n_ i\otimes m_ i$. Consider the free $B$-module $F$ of rank $k$: $F=\bigoplus B x_ i$. Define morphisms of $B$-modules $s\colon M\to F$, $p\colon F\to M$ by 
    <p>
      <div class="equation">
  \begin{align*}  s(m)& =\sum (m, n_ i)x_ i\\  p(x_ i)& =m_ i. \end{align*}
</div>
    <p>
       Then it follows from (2) that $p\circ s =\operatorname{id}_{M}$, which implies that $M$ is a direct summand in $F$, so $M$ is projective of finite rank. Thus, (2)$\implies $ (3). 
    <p>
      Proof of (3)$\implies $ (2) is similar and is left to the reader. 
    <p>
      Finally, to show that in this case, the right adjoint $N$ is isomorphic to $M^\vee $, we construct morphisms $N\to M^\vee $, $M^\vee \to N$ as follows: 
    <p>
      <div class="equation">
  \begin{align*}  N& \to M^\vee \colon n\mapsto (-, n)\\  M^\vee & \to N\colon f\mapsto \sum n_ i f(m_ i) \end{align*}
</div>
    <p>
       We leave it to the reader to verify that the so-defined maps are indeed morphisms of right $A$-modules, and that they are mutually inverse. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
Similarly, $M$ has a left adjoint iff it is finitely generated and projective as a right $A$-module. 
</p>
