<h2 id="s:balanced-product" class="tex-section"><span data-tag="00BA">16.5</span> Balanced tensor product</h2>

<p>
So far, we have defined a notion of a finite tensor category and a notion of module category over a finite tensor category; these notions are natural analogs of the notion of a commutative algebra and modules over algebras. Our next goal is defining an analog of tensor product over $A$. 
</p>
<p>
Recall that given an algebra $A$, a right $A$-module $M_ A$, and a left $A$-module ${}_ AN$, there are several ways to define tensor product $M \otimes _ A N$. The most straightforward is defining $M\otimes _ A N$ as a suitable quotient of $M\otimes N$. However, a better approach is defining $M\otimes _ A N$ via a universal property: namely, it is uniquely determined by the condition that for every vector space $L$, we have a functorial isomorphism 
</p>
<div class="equation">
  \[  \operatorname{Hom}_\mathbf{k}(M\otimes _ A N, L) = \operatorname{Bal}_ A(M \times N, L)  \]
</div>
<p>
 where $\operatorname{Bal}_ A$ is the space of $A$-balanced maps, i.e., bilinear maps $M\times N \to L$ satisfying condition 
</p>
<div class="equation">
  \[  f(ma, n) = f(m, an)  \]
</div>
<p>
 for any $m\in M$, $n\in N$, $a\in A$. 
</p>
<p>
As usual, universality immediately implies that such a vector space, if it exists, is unique up to a unique isomorphism. Existence is not obvious and is proved by an explicit construction. 
</p>
<p>
Let us now define a categorical analog of this. 
</p>
<p>
<article class="env-definition" id="00BB">
  <p><a class="environment-identifier" href="/tag/00BB">Definition <span data-tag="00BB">16.5.1</span>.</a> Let $\mathcal{C}$ be a finite tensor category. Let $\mathcal{M}_\mathcal{C}$, ${}_\mathcal{C}\mathcal{N}$ be right and left finite $\mathcal{C}$-module categories, and let $\mathcal{L}$ be a $\mathbf{k}$-linear category. </p>
  <p>A $\mathcal{C}$-balanced functor $F\colon \mathcal{M}\times \mathcal{N}\to \mathcal{L}$ is a $\mathbf{k}$-bilinear functor $F\colon \mathcal{M}\times \mathcal{N}\to \mathcal{L}$, right exact in each variable, together with a functorial isomorphism </p>
  <div class="equation">
  \[  F(m\otimes c, n)\simeq F(m, c\otimes n), \qquad c\in \mathcal{C} \]
</div>
  <p> satisfying usual axioms (see <span class="cite">[<a href="/bibliography/dsps-balanced">DSPS2019</a>, <span class="postnote">Definition 3.1</span>]</span>). </p>
</article> 
</p>
<p>
One can also define a notion of morphisms of $\mathcal{C}$-balanced functors. We denote by $\operatorname{Bal}_\mathcal{C}(\mathcal{M}\times \mathcal{N}, \mathcal{L})$ the category of $\mathcal{C}$-balanced functors $\mathcal{M}\times \mathcal{N}\to \mathcal{L}$. 
</p>
<p>
<article class="env-definition" id="00BC">
  <p><a class="environment-identifier" href="/tag/00BC">Definition <span data-tag="00BC">16.5.2</span>.</a> In the assumptions of Definition&#160;<a href="/tag/00BB" data-tag="00BB">16.5.1</a>, a balanced tensor product is a $\mathbf{k}$-linear category $\mathcal{M}\boxtimes _\mathcal{C}\mathcal{N}$ together with a $\mathcal{C}$-balanced functor $\boxtimes _\mathcal{C}\colon \mathcal{M}\times \mathcal{N}\to \mathcal{M}\boxtimes _\mathcal{C}\mathcal{N}$ such that for all $\mathbf{k}$-linear categories $\mathcal{L}$, the functor $\boxtimes _\mathcal{C}$ induces an equivalence of categories </p>
  <div class="equation">
  \[  \operatorname{Bal}_\mathcal{C}(\mathcal{M}\times \mathcal{N}, \mathcal{L})\simeq \operatorname{Fun}(\mathcal{M}\boxtimes _\mathcal{C}\mathcal{N}, \mathcal{L})  \]
</div>
</article> It is easy to show that if such $\mathcal{M}\boxtimes _\mathcal{C}\mathcal{N}$ exists, it is unique; more precisely, the balanced tensor product is unique up to equivalence, and this equivalence is in turn unique up to unique natural isomorphism. Said another way, the 2-category of linear categories representing the balanced tensor product is either contractible or empty. The hard part is proving existence of $\mathcal{M}\boxtimes _\mathcal{C}\mathcal{N}$. 
</p>
<p>
<article class="env-theorem" id="00BD">
  <p><a class="environment-identifier" href="/tag/00BD">Theorem <span data-tag="00BD">16.5.1</span>.</a> Let $\mathcal{C}$ be a finite tensor category over $\mathbf{k}$, and let $\mathcal{M}$, $\mathcal{N}$ be right and left finite $\mathcal{C}$-module categories. Then the balanced tensor product $\mathcal{M}\boxtimes _\mathcal{C}\mathcal{N}$ exists and is a finite $\mathbf{k}$-linear category. Moreover, the functor $\boxtimes _\mathcal{C}\colon \mathcal{M}\times \mathcal{N}\to \mathcal{M}\boxtimes _\mathcal{C}\mathcal{N}$ is exact in each argument. </p>
</article> A proof of this theorem can be found in <span class="cite">[<a href="/bibliography/dsps-balanced">DSPS2019</a>, <span class="postnote">Theorem&#160;3.3</span>]</span>. 
</p>
<p>
<article class="env-example" id="00BE">
  <p><a class="environment-identifier" href="/tag/00BE">Example <span data-tag="00BE">16.5.1</span>.</a> Let $\mathcal{C}=\mathbf{Vec_ f}$ be the category of finite-dimensional vector spaces. Then the balanced tensor product functor $\boxtimes _{\mathbf{Vec_ f}}$ coincides with Deligne product defined in Section&#160;<a href="/tag/004W" data-tag="004W">7.4</a>. </p>
</article> 
</p>
<p>
<article class="env-example" id="00BF">
  <p><a class="environment-identifier" href="/tag/00BF">Example <span data-tag="00BF">16.5.2</span>.</a> Let $\mathcal{M}$ be a finite left $\mathcal{C}$-module category. Then one has a natural equivalence $\mathcal{C}\boxtimes _\mathcal{C}\mathcal{M}\simeq \mathcal{M}$ (compare with the isomorphism $A\otimes _ A M\simeq M$ for a module $M$ over an algebra $A$). </p>
</article> 
</p>
<p>
<article class="env-lemma" id="00BG">
  <p><a class="environment-identifier" href="/tag/00BG">Lemma <span data-tag="00BG">16.5.2</span>.</a> Let $\mathcal{A}$, $\mathcal{B}$, $\mathcal{C}$ be finite tensor categories, and let $\mathcal{M}$ be a finite $\mathcal{A}$-$\mathcal{B}$ bimodule category, and $\mathcal{N}$ a finite $\mathcal{B}$-$\mathcal{C}$ bimodule category. Then the balanced tensor product $\mathcal{M}\boxtimes _{\mathcal{B}} \mathcal{N}$ has a natural structure of $\mathcal{A}$-$\mathcal{C}$ bimodule category. </p>
</article> This lemma can be found in <span class="cite">[<a href="/bibliography/dsps-balanced">DSPS2019</a>, <span class="postnote">Remark 3.7</span>]</span>. 
</p>
