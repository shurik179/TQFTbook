<h2 id="s:frobenius-ss" class="tex-section"><span data-tag="003D">5.2</span> Semisimple Frobenius algebras</h2>

<p>
Recall that an associative algebra is semisimple if it is a direct sum of simple algebras. As we will see later, semisimple algebras play a special role in the construction of TQFTs, so in this section, we study <strong>semisimple</strong> Frobenius algebras. We have already seen one example: the Frobenius algebra $A=\operatorname{Mat}_ n(\mathbf{k})$ given in Example&#160;<a href="/tag/003B" data-tag="003B">5.1.2</a>. In fact, over an algebraically closed field, it is the most general example of a semisimple symmetric Frobenius algebra. Namely, we have the following lemma. 
</p>
<p>
<article class="env-lemma" id="003E">
  <p><a class="environment-identifier" href="/tag/003E">Lemma <span data-tag="003E">5.2.1</span>.</a> Let $\mathbf{k}$ be an algebraically closed field. Then any semisimple symmetric Frobenius algebra $A$ has the form </p>
  <div class="equation">
  \[  A=\bigoplus _ i \operatorname{Mat}_{n_ i}(\mathbf{k})  \]
</div>
  <p> where $\operatorname{Mat}_ n(\mathbf{k})$ is the algebra of $n\times n$ matrices, and </p>
  <div class="equation">
  \[  \varepsilon (a)=\sum _ i \lambda _ i \operatorname{tr}(a_ i)  \]
</div>
  <p> for some constants $\lambda _ i\ne 0$, where $a_ i\in \operatorname{Mat}_{n_ i}(\mathbf{k})$ is the $i$-th component of $a$. </p>
</article> Indeed, by the Wedderburn theorem (see e.g., <span class="cite">[<a href="/bibliography/pierce">Pie1982</a>, <span class="postnote">Section 3.5</span>]</span>), any finite-dimensional semisimple algebra over $\mathbf{k}$ is a direct sum of matrix algebras, and it is well known that for a matrix algebra, $A/[A,A]$ is one-dimensional, which easily implies the statement of the lemma. 
</p>
<p>
In particular, this gives us the following classification of semisimple commutative Frobenius algebras. 
</p>
<p>
<article class="env-theorem" id="003F">
  <p><a class="environment-identifier" href="/tag/003F">Theorem <span data-tag="003F">5.2.2</span>.</a> Let $\mathbf{k}$ be an algebraically closed field. Then any semisimple commutative Frobenius algebra over $\mathbf{k}$ has the following form </p>
  <div class="equation">
  \[  A=\bigoplus _{i=1}^ n \mathbf{k}e_ i, \quad e_ ie_ j=\delta _{ij}e_ i  \]
</div>
  <p> with unit $1=\sum _ i e_ i$ and counit </p>
  <div class="equation">
  \[  \varepsilon (e_ i)=\lambda _ i, \quad \lambda _ i\ne 0.  \]
</div>
</article> 
</p>
<p>
It is an easy exercise to show that for an algebra described in Theorem&#160;<a href="/tag/003F" data-tag="003F">5.2.2</a>, the canonical element $e=\Delta (1)$ is given by 
</p>
<div class="equation">
  \[  e= \sum _ i \lambda _ i^{-1}e_ i\otimes e_ i  \]
</div>
<p>
 and the comultiplication is given by 
</p>
<div class="equation">
  \[  \Delta (e_ i)=\lambda _ i^{-1}e_ i\otimes e_ i.  \]
</div>
<p>
 In particular, it implies that for the corresponding TQFT, we have 
</p>
<div class="equation">
  \begin{align*}  Z(S^2)& =\varepsilon (1)=\sum \lambda _ i\\  Z(T)& =\dim A \end{align*}
</div>
<p>
 where $T=\Sigma _1$ is the two-dimensional torus. 
</p>
<p>
<article class="env-lemma" id="003G">
  <p><a class="environment-identifier" href="/tag/003G">Lemma <span data-tag="003G">5.2.3</span>.</a> Let $A$ be as in Theorem&#160;<a href="/tag/003F" data-tag="003F">5.2.2</a>, and let $Z_ A$ be the corresponding 2d TQFT. Then for a closed surface $\Sigma _ g$ of genus $g$, we have </p>
  <div class="equation">
  \[  Z_ A(\Sigma _ g) = \sum _ i \lambda _ i^{1-g}.  \]
</div>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      The cases $g=0, 1$ have already been discussed. For general $g\ge 1$, it is easy to see that $Z_ A(\Sigma _ g)=\operatorname{tr}(W^{g-1})$, where $W\colon A\to A$ is given by $W = Z_ A(\Sigma _{1,2})$, with $\Sigma _{1,2}$ a torus with one in-boundary circle and one out-boundary circle: 
    <p>
      <div class="centered"><img class="includegraphics" src="/static/figures/c5-eqfig06.svg" /></div>
    <p>
       Using the formula for comultiplication, we see that $W(e_ i)=\lambda _ i^{-1}e_ i$, which immediately gives the statement of the lemma. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
 <article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">5.2.1</span>.</a>It is easy to see that the operator $W$ defined above coincides with the operator of multiplication by the element $w=m\circ \Delta (1)$. Explicitly, this element can be described by </p>
  <div class="equation" id="003H">
    <span class="equation-label"><a href="/tag/003H" data-tag="003H">5.2.1</a></span>
    <div>\begin{equation} \label{e:euler} w=\sum x_ ix^ i \in A, \end{equation}</div>
</div>
  <p> where $x_ i$, $x^ i$ are dual bases in $A$ with respect to the pairing. This element is sometimes called the <em>Euler element</em> and will play an important role later, see Theorem&#160;<a href="/tag/006P" data-tag="006P">9.3.4</a>. (In <span class="cite">[<a href="/bibliography/lauda-pfeiffer">LP2007</a>]</span>, $w$ is called the “window element”.) </p>
</article> 
</p>
<p>
<article class="env-exercise" id="003J">
  <p><a class="environment-identifier" href="/tag/003J">Exercise <span data-tag="003J">5.2.1</span>.</a> Recall that for an $A$-$B$-bimodule $M$, the dual vector space $M^*$ is naturally a $B$-$A$-bimodule, with action given by </p>
  <div class="equation">
  \begin{align*}  (b\lambda ) (m) &  = \lambda (mb),\\  (\lambda a) (m) & = \lambda (am). \end{align*}
</div>
  <p> In particular, the dual of an $A$-bimodule is again an $A$-bimodule. </p>
  <p>Let $A$ be a symmetric Frobenius algebra. </p>
  <p><ol>
  <li><p>
Show that the map $A\to A^*\colon a\mapsto (a, -)$ is a morphism of $A$-bimodules. 
</p>
</li><li><p>
More generally, let $M$ be a finite-dimensional left $A$-module. Let $M^\vee =\operatorname{Hom}_ A(M, A)$; it has a natural structure of a right $A$-module. Show that then the map below is an isomorphism of right $A$-modules: 
</p>
<div class="equation">
  \begin{align*}  M^\vee & \to M^*\\  f& \mapsto \varepsilon (f(-)). \end{align*}
</div>
<p>
 and the inverse is given by 
</p>
<div class="equation">
  \begin{align*}  M^* & \to M^\vee \\  \lambda & \mapsto \sum \lambda (x_ im)x^ i, \end{align*}
</div>
<p>
 where $x_ i, x^ i$ are as in (<a href="/tag/0032" data-tag="0032">5.1.4</a>). 
</p>
</li>
</ol></p>
</article> <br /> 
</p>
