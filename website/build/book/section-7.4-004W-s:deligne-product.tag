<h2 id="s:deligne-product" class="tex-section"><span data-tag="004W">7.4</span> Locally finite categories and Deligne product</h2>
<p>
  In this section, we give an example of a symmetric monoidal weak 2-category. Namely, recall that a $\mathbf{k}$-linear abelian category $\mathcal{A}$ is called <em>locally finite</em> if 
</p>
<ul>
  <li><p>
for any $X,Y\in \mathcal{A}$, the space $\operatorname{Hom}_{\mathcal{A}}(X,Y)$ is finite-dimensional, and 
</p>
</li><li><p>
every object $X\in \mathcal{A}$ has finite length 
</p>
</li>
</ul>
<p>
 (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 1.8</span>]</span>). Denote by $\mathbf{Lin}$ the 2-category of locally finite $\mathbf{k}$-linear abelian categories, with 1-morphisms given by <em>right exact</em> $\mathbf{k}$-linear functors and 2-morphisms given by functorial morphisms (some motivations for restricting ourselves to right exact functors will be discussed in Chapter&#160;<a href="/tag/00AK" data-tag="00AK">16</a>). 
</p>
<p>
Our next goal is defining an analog of tensor product in $\mathbf{Lin}$. Let $\mathcal{C}, \mathcal{D}, \mathcal{E}$ be $\mathbf{k}$-linear categories. Denote by $\mathbf{Bil}(\mathcal{C}\times \mathcal{D}, \mathcal{E})$ the category of $\mathbf{k}$-bilinear functors $F\colon \mathcal{C}\times \mathcal{D}\to \mathcal{E}$ which are right exact in each of the arguments. 
</p>
<p>
<article class="env-definition" id="004X">
  <p><a class="environment-identifier" href="/tag/004X">Definition <span data-tag="004X">7.4.1</span>.</a> The Deligne product of $\mathbf{k}$-linear categories $\mathcal{C}$, $\mathcal{D}$ is a $\mathbf{k}$-linear category $\mathcal{C}\boxtimes \mathcal{D}$ together with a bilinear functor $\mathcal{C}\times \mathcal{D}\to \mathcal{C}\boxtimes \mathcal{D}$ such that for any $\mathcal{E}$, we have an equivalence </p>
  <div class="equation">
  \[  \mathbf{Bil}(\mathcal{C}\times \mathcal{D}, \mathcal{E})\simeq \operatorname{Fun}(\mathcal{C}\boxtimes \mathcal{D}, \mathcal{E}).  \]
</div>
  <p> where $\operatorname{Fun}$ is the category of $\mathbf{k}$-linear right exact functors. </p>
</article> This definition mimics the definition of tensor product of vector spaces as a universal object. As usual with such definitions, if such a category $\mathcal{C}\boxtimes \mathcal{D}$ exists, it is unique: any two such categories are canonically equivalent. However, existence is not obvious and in fact may fail without some assumptions on $\mathcal{C}$, $\mathcal{D}$. 
</p>
<p>
<article class="env-theorem" id="004Y">
  <p><a class="environment-identifier" href="/tag/004Y">Theorem <span data-tag="004Y">7.4.1</span>.</a> If $\mathcal{C}$, $\mathcal{D}$ are locally finite categories, then $\mathcal{C}\boxtimes \mathcal{D}$ exists and is a locally finite $\mathbf{k}$-linear category. </p>
</article> We refer the reader to <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 1.11</span>]</span> for the proof of this theorem as well as results below. <article class="env-lemma" id="004Z">
       
  <p><a class="environment-identifier" href="/tag/004Z">Lemma <span data-tag="004Z">7.4.2</span>.</a><ol>
  <li><p>
For a finite-dimensional algebra $A$, denote by $A\mathbf{{-}mod}$ the category of finite-dimensional left $A$-modules. Then 
</p>
<div class="equation">
  \[  (A\mathbf{{-}mod})\boxtimes (B\mathbf{{-}mod}) \simeq (A\otimes B)\mathbf{{-}mod}.  \]
</div>
</li><li><p>
For any objects $X_1, Y_1\in \mathcal{C}$, $X_2, Y_2\in \mathcal{D}$, we have a canonical isomorphism 
</p>
<div class="equation">
  \[  \operatorname{Hom}_{\mathcal{C}\boxtimes \mathcal{D}} (X_1\boxtimes X_2, Y_1\boxtimes Y_2 )\simeq \operatorname{Hom}_{\mathcal{C}} (X_1, Y_1) \otimes \operatorname{Hom}_{\mathcal{D}} (X_2, Y_2 ).  \]
</div>
</li><li><p>
If $\mathcal{C}$, $\mathcal{D}$ are semisimple $\mathbf{k}$-linear categories with simple objects $X_ i, Y_ j$ respectively, then $\mathcal{C}\boxtimes \mathcal{D}$ is also semisimple, with simple objects $X_ i\boxtimes Y_ j$. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
<article class="env-theorem" id="0050">
  <p><a class="environment-identifier" href="/tag/0050">Theorem <span data-tag="0050">7.4.3</span>.</a> The 2-category $\mathbf{Lin}$ is a symmetric monoidal 2-category, with tensor product functor given by Deligne's product $\boxtimes $ and unit given by the category $\mathbf{Vec_ f}$. </p>
</article> We skip the proof, which is mostly straightforward; we just note that to show that $\mathbf{Vec_ f}$ is the unit for this monoidal structure, we need to construct, for any $\mathcal{C}\in \mathbf{Lin}$, an equivalence of categories $\mathbf{Vec_ f}\boxtimes \mathcal{C}\simeq \mathcal{C}$. 
</p>
<p>
Another way of stating this is by saying that any locally finite $\mathbf{k}$-linear category has a natural structure of a module category over $\mathbf{Vec_ f}$ (we will discuss the general notion of a module category later, in Section&#160;<a href="/tag/00AZ" data-tag="00AZ">16.4</a>). Namely, for a finite-dimensional vector space $V$ and an object $X\in \mathcal{C}$ in a locally finite category $\mathcal{C}$, we define the object $V\otimes X$ by the condition that for any object $Y\in \mathcal{C}$, we have a canonical isomorphism 
</p>
<div class="equation">
  \[  \operatorname{Hom}(Y, V\otimes X)=V\otimes \operatorname{Hom}(Y, X)  \]
</div>
<p>
 (more formally, $V\otimes X$ is the object (co)representing the functor $F(Y)=V\otimes \operatorname{Hom}(Y,X)$). 
</p>
<p>
<br /> 
</p>
