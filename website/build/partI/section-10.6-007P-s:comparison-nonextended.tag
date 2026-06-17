<h2 id="s:comparison-nonextended" class="tex-section"><span data-tag="007P">10.6</span> Comparison with non-extended theory</h2>
<p>
 It is instructive to compare Theorem&#160;<a href="/tag/007N" data-tag="007N">10.5.2</a> with the classification of (non-extended) TQFTs. Recall that a non-extended 2d TQFT, by Theorem&#160;<a href="/tag/002S" data-tag="002S">4.3.3</a>, is defined by a commutative Frobenius algebra. Since every extended TQFT, in particular, also gives a non-extended one, this implies that any extended TQFT defines a structure of a commutative Frobenius algebra on the vector space $V=Z(S^1)$. 
</p>
<p>
Let us apply it to the extended TQFT defined by a separable symmetric Frobenius algebra $A$; we keep the notation of the previous section, using $\varepsilon $ for the counit, etc. 
</p>
<p>
<article class="env-theorem" id="007Q">
  <p><a class="environment-identifier" href="/tag/007Q">Theorem <span data-tag="007Q">10.6.1</span>.</a> Let $Z$ be an extended TQFT defined by a separable symmetric Frobenius algebra $A$; let $V=Z(S^1)=A/[A,A]$. Then $Z$ defines the following structure of a commutative Frobenius algebra on $V$: </p>
  <p><ul>
  <li><p>
Unit: $[w^{-1}]\in V$ (here and below, for $a\in A$ we denote by $[a]$ its class in $V=A/[A,A]$). 
</p>
</li><li><p>
Multiplication: $[a]\cdot [b]=\sum [ax_ ibx^ i]$. 
</p>
</li><li><p>
Counit: $\varepsilon ([a])=\varepsilon (a)$, where $\varepsilon $ is the counit in $A$. 
</p>
</li>
</ul></p>
</article> 
</p>
<p>
Alternatively, we can identify $Z(S^1)=z(A)$, using the isomorphism 
</p>
<div class="equation" id="007R">
    <span class="equation-label"><a href="/tag/007R" data-tag="007R">10.6.1</a></span>
    <div>\begin{equation} \label{e:zA} \begin{aligned}  A/[A,A]& \to z(A)\\  [a]& \mapsto \sum x_ iax^ i. \end{aligned} \end{equation}</div>
</div>
<p>
Then Theorem&#160;<a href="/tag/007Q" data-tag="007Q">10.6.1</a> can be rewritten as follows. <article class="env-theorem" id="007S">
  <p><a class="environment-identifier" href="/tag/007S">Theorem <span data-tag="007S">10.6.2</span>.</a> Under the identification $Z(S^1)\simeq z(A)$ given by (<a href="/tag/007R" data-tag="007R">10.6.1</a>), the unit and multiplication on $z(A)$ defined by the TQFT $Z$ coincide with the unit and multiplication inherited from $A$, and the counit is given by </p>
  <div class="equation">
  \[  \varepsilon _{z(A)} (c)=\varepsilon _ A(w^{-1}c), \qquad c\in z(A)\subset A.  \]
</div>
</article> 
</p>
<p>
Note, however, that if $A$ is separable ($=$semisimple), then $z(A)$ is also semisimple. Thus, we get the following corollary. <article class="env-corollary" id="">
  <p><a class="environment-identifier" href="/tag/">Corollary <span data-tag="">10.6.3</span>.</a>A (non-extended) 2d TQFT can be extended if and only if the algebra $Z(S^1)$ is semisimple. </p>
</article> In particular, the TQFT defined by the commutative Frobenius algebra $\mathbb {C}[x]/(x^{n+1})$, described in Example&#160;<a href="/tag/003A" data-tag="003A">5.1.1</a>, cannot be extended. 
</p>
<p>
<article class="env-example" id="007T">
  <p><a class="environment-identifier" href="/tag/007T">Example <span data-tag="007T">10.6.1</span>.</a> Let $G$ be a finite group, and let $A=\mathbf{k}[G]$ be its group algebra. Define the counit $\varepsilon \colon A\to \mathbf{k}$ by </p>
  <div class="equation">
  \[  \varepsilon (g)=\delta _{g,1} = \frac{1}{|G|}\operatorname{tr}_ R(g), \qquad g\in G,  \]
</div>
  <p> where $R$ is the regular representation (note the difference in normalization with (<a href="/tag/00EP" data-tag="00EP">6.2.9</a>)). </p>
  <p>This is a semisimple symmetric Frobenius algebra; thus, it defines an extended TQFT $Z_ A\colon \mathbf{Bord}_2\to \mathbf{Alg}$. </p>
  <p>For this algebra, $e=\sum x_ i\otimes x^ i$ is given by </p>
  <div class="equation">
  \[  e=\sum _ G g\otimes g^{-1}  \]
</div>
  <p> so that $w=\sum x_ ix^ i=|G|$; thus, the isomorphism (<a href="/tag/006T" data-tag="006T">9.3.9</a>) $A/[A,A]\to z(A)$ becomes </p>
  <div class="equation">
  \[  x\mapsto \sum gxg^{-1}  \]
</div>
  <p> and the projector onto $z(A)$ is given by $p(x)=\frac{1}{|G|} \sum gxg^{-1}$ which is, of course, a very familiar formula in representation theory. </p>
  <p>In this case, we see that under identification $Z_ A(S^1)\simeq z(\mathbf{k}[G])$, the counit becomes $\tilde\varepsilon (z)=\frac{1}{|G|^2}\operatorname{tr}_ R(z)$ (note normalization!) which matches (<a href="/tag/00EP" data-tag="00EP">6.2.9</a>). Thus, the corresponding non-extended TQFT is the Dijkgraaf–Witten TQFT discussed in Chapter&#160;<a href="/tag/003K" data-tag="003K">6</a>. </p>
</article> 
</p>
<p>
<br /> 
</p>
