<h2 id="s:module-categories" class="tex-section"><span data-tag="00AZ">16.4</span> Module categories</h2>
<p>
 Our next step is defining a categorical analog of a module over an algebra. 
</p>
<p>
<article class="env-definition" id="00B0">
  <p><a class="environment-identifier" href="/tag/00B0">Definition <span data-tag="00B0">16.4.1</span>.</a> Let $\mathcal{C}$ be a finite tensor category. A finite left <em>$\mathcal{C}$-module category</em> is a finite $\mathbf{k}$-linear category $\mathcal{M}$ together with a $\mathbf{k}$-bilinear action functor </p>
  <div class="equation">
  \[  \otimes \colon \mathcal{C}\times \mathcal{M}\to \mathcal{M} \]
</div>
  <p> which is right exact in $\mathcal{C}$ argument, and with functorial isomorphisms </p>
  <div class="equation">
  \begin{align*} & (c_1\otimes c_2)\otimes m \simeq c_1 \otimes (c_2\otimes m)\\ &  \mathbf{1}\otimes m \simeq m \end{align*}
</div>
  <p> which satisfy the obvious pentagon and unit axioms. </p>
</article> Note that in many references (e.g., <span class="cite">[<a href="/bibliography/dsps-balanced">DSPS2019</a>]</span>), condition that $\otimes $ is right exact is not part of the definition. However, this condition is necessary for most of what follows, so if we do not include it as part of the definition, we would need to add it as an additional assumption in our theorems. <article class="env-theorem" id="00B1">
  <p><a class="environment-identifier" href="/tag/00B1">Theorem <span data-tag="00B1">16.4.1</span>.</a> Let $\mathcal{M}$ be a finite module category over a finite tensor category $\mathcal{C}$. Then the action functor $\mathcal{C}\otimes \mathcal{M}\to \mathcal{M}$ is exact in $\mathcal{C}$ and also exact in $\mathcal{M}$. </p>
</article> We refer the reader to <span class="cite">[<a href="/bibliography/dsps-balanced">DSPS2019</a>, <span class="postnote">Corollary 2.26</span>]</span> for the proof. 
</p>
<p>
In a similar way, one defines the notion of a <em>right</em> module category and a notion of a $\mathcal{C}$-$\mathcal{D}$ bimodule category; for the latter, we also need to add an isomorphism 
</p>
<div class="equation">
  \[  (c\otimes m)\otimes d \simeq c\otimes (m\otimes d)  \]
</div>
<p>
 again satisfying obvious compatibility conditions. 
</p>
<p>
<article class="env-example" id="00B2">
  <p><a class="environment-identifier" href="/tag/00B2">Example <span data-tag="00B2">16.4.1</span>.</a> Any finite tensor category $\mathcal{C}$ is automatically a bimodule category over itself. </p>
</article> 
</p>
<p>
<article class="env-example" id="00B3">
  <p><a class="environment-identifier" href="/tag/00B3">Example <span data-tag="00B3">16.4.2</span>.</a> Any finite linear category has a natural structure of a module category over $\mathbf{Vec_ f}$. </p>
</article> 
</p>
<p>
<article class="env-example" id="00B4">
  <p><a class="environment-identifier" href="/tag/00B4">Example <span data-tag="00B4">16.4.3</span>.</a> Let $G$ be a finite group and let $H\subset G$ be a subgroup. Then the category $\operatorname{Rep}H$ is a module category over $\operatorname{Rep}G$. </p>
</article> 
</p>
<p>
<article class="env-example" id="00B5">
  <p><a class="environment-identifier" href="/tag/00B5">Example <span data-tag="00B5">16.4.4</span>.</a> Let $A$ be an algebra in $\mathcal{C}$, i.e., an object $A\in \mathcal{C}$ together with morphisms $m\colon A\otimes A\to A$, $i\colon \mathbf{1}\to A$ satisfying obvious associativity and unit axioms (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 7.8</span>]</span>). A right $A$-module is an object $M\in \mathcal{C}$ together with the action morphism $M\otimes A\to M$, again satisfying obvious axioms. We denote by $\mathbf{Mod}_\mathcal{C}(A)$ the category of right modules over $A$, with the obvious morphisms between them. Then the category $\mathbf{Mod}_\mathcal{C}(A)$ is a finite module category over $\mathcal{C}$. Moreover, it can be shown (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Corollary 7.10.5</span>]</span>) that every finite $\mathcal{C}$ module category can be obtained in this way. For $\mathcal{C}=\mathbf{Vec_ f}$, this is exactly the statement given in Example&#160;<a href="/tag/00AP" data-tag="00AP">16.2.1</a>. </p>
  <p>This construction allows one to reduce the study of module categories over $\mathcal{C}$ (which in general are difficult to describe) to the study of modules over an algebra, which is a much more explicit question. This is one of the main tools used to prove results about module categories; proofs of most theorems below are based on this approach. However, since we skip most proofs, we will not go into more details about algebras in categories. </p>
</article> 
</p>
<p>
<article class="env-definition" id="00B6">
  <p><a class="environment-identifier" href="/tag/00B6">Definition <span data-tag="00B6">16.4.2</span>.</a> Let $\mathcal{M}$, $\mathcal{N}$ be finite left module categories over a finite tensor category $\mathcal{C}$. A module functor $F\colon \mathcal{M}\to \mathcal{N}$ is a $\mathbf{k}$-linear functor together with functorial isomorphisms </p>
  <div class="equation">
  \[  J\colon F(c\otimes m)\xrightarrow {\sim }c\otimes F(m)  \]
</div>
  <p> satisfying the obvious pentagon and triangle relations. Unless explicitly stated otherwise, we will always assume that $F$ is right exact; we will denote the set of all right exact module functors $\mathcal{M}\to \mathcal{N}$ by </p>
  <div class="equation">
  \[  \operatorname{Fun}_\mathcal{C}(\mathcal{M}, \mathcal{N})=\text{right exact module functors }\mathcal{M}\to \mathcal{N}.  \]
</div>
</article> 
</p>
<p>
Given two functors $F_1, F_2\in \operatorname{Fun}_\mathcal{C}(\mathcal{M}, \mathcal{N})$, we define $\operatorname{Hom}(F_1, F_2)$ to be the set of functorial morphisms $F_1\to F_2$ which agree with isomorphisms $J_1, J_2$; we leave it to the reader to write the compatibility condition explicitly (or find it in <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 7.2</span>]</span>). This turns $\operatorname{Fun}_\mathcal{C}(\mathcal{M}, \mathcal{N})$ into a category and gives rise to the 2-category $\mathcal{C}\mathbf{{-}mod}$ of (left) finite $\mathcal{C}$-module categories, together with $\mathcal{C}$-module functors and functorial morphisms. 
</p>
<p>
In a similar way one defines module functors for right module categories and bimodule categories. 
</p>
<p>
<article class="env-theorem" id="00B7">
  <p><a class="environment-identifier" href="/tag/00B7">Theorem <span data-tag="00B7">16.4.2</span>.</a> Let $\mathcal{M}$, $\mathcal{N}$ be finite module categories over a finite tensor category $\mathcal{C}$. Then the category $\operatorname{Fun}_\mathcal{C}(\mathcal{M}, \mathcal{N})$ is a finite $\mathbf{k}$-linear category. </p>
  <p>If, in addition, $\mathcal{C}, \mathcal{M}_1, \mathcal{M}_2$ are semisimple, then $\operatorname{Fun}_\mathcal{C}(\mathcal{M}, \mathcal{N})$ is also semisimple. </p>
</article> Proof of the first part can be found in <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Proposition 7.11.6</span>]</span>. (Note that in the book, they did not spell out exact requirements on the module categories; however, if you read the proof, you will see that it works for any finite module categories). 
</p>
<p>
The second part is <span class="cite">[<a href="/bibliography/eno">ENO2005</a>, <span class="postnote">Theorem 2.16</span>]</span>. 
</p>
<p>
<article class="env-example" id="00B8">
  <p><a class="environment-identifier" href="/tag/00B8">Example <span data-tag="00B8">16.4.5</span>.</a> Let $\mathcal{M}$ be a $\mathcal{C}$-$\mathcal{D}$ bimodule category. Define </p>
  <div class="equation">
  \[  \mathcal{M}^\vee = \operatorname{Fun}_\mathcal{C}(\mathcal{M}, \mathcal{C}).  \]
</div>
  <p> This category is naturally a finite $\mathcal{D}$-$\mathcal{C}$ bimodule category (compare with Exercise&#160;<a href="/tag/003J" data-tag="003J">5.2.1</a>). </p>
  <p>In a similar way, we can define category </p>
  <div class="equation">
  \[  {}^\vee \mathcal{M}= \operatorname{Fun}_{\mathcal{D}^{\mathrm{mp}}}(\mathcal{M}, \mathcal{D})  \]
</div>
  <p> which is again a $\mathcal{D}$-$\mathcal{C}$ bimodule category. </p>
</article> 
</p>
<p>
<article class="env-lemma" id="00B9">
  <p><a class="environment-identifier" href="/tag/00B9">Lemma <span data-tag="00B9">16.4.3</span>.</a> Let $\mathcal{C}$, $\mathcal{D}$ be finite tensor categories. The 2-category of finite $\mathcal{C}$-$\mathcal{D}$ bimodule categories is equivalent to the 2-category of finite $(\mathcal{C}\boxtimes \mathcal{D}^{{\mathrm{mp}}})$ module categories. In particular, 2-category of left $\mathcal{C}$-module categories is equivalent to the 2-category of right $\mathcal{C}^{\mathrm{mp}}$-module categories. </p>
</article> 
</p>
