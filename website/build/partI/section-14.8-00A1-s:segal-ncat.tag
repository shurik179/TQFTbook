<h2 id="s:segal-ncat" class="tex-section"><span data-tag="00A1">14.8</span> Segal $n$-categories</h2>

<p>
The notion of Segal category, defined in the previous section, is one possible way of defining $(\infty , 1)$ categories. To define $(\infty ,n)$ categories, we need to iterate this construction: informally, $(\infty , 2)$ category $\mathcal{C}$ should be given by a definition similar to that of a Segal category, but now 1-morphisms, instead of being topological spaces, must form Segal categories. However, to do that, we need to have a notion of weak equivalence between Segal categories (which we have not defined so far) and so on. 
</p>
<p>
Following <span class="cite">[<a href="/bibliography/schommer-pries-category">SP2014</a>]</span>, we give the following definition. 
</p>
<p>
<article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">14.8.1</span>.</a>A <em>Segalic relative category</em> is a category $\mathcal{M}$ together with the following additional data: </p>
  <p><ul>
  <li><p>
A subset $\mathcal{W}$ of morphisms in $\mathcal{M}$, called the set of <em>weak equivalences</em>. 
</p>
</li><li><p>
A functor $\tau _{\leq 0}\colon \mathcal{M}\to \mathbf{Set}$. 
</p>
</li>
</ul></p>
  <p> This data has to satisfy the following conditions: </p>
  <p><ul>
  <li><p>
$\mathcal{M}$ has finite products, and $\tau _{\leq 0}$ preserves finite products. 
</p>
</li><li><p>
$\mathcal{W}$ includes all identity morphisms. 
</p>
</li><li><p>
$\mathcal{W}$ is closed under products: if $f\colon x\to y$ is in $\mathcal{W}$, then for any $z\in \mathcal{M}$, $f\times 1_ z\in \mathcal{W}$. 
</p>
</li><li><p>
We have “2 out of 3” condition: given morphisms $f\colon x_0\to x_1$, $g\colon x_1\to x_2$ in $\mathcal{M}$, if any two out of three morphisms $f, g, g\circ f$ are in $\mathcal{W}$, then so is the third one. 
</p>
</li><li><p>
For any $f\in \mathcal{W}$, $\tau _{\leq 0}(f)$ is a bijection. 
</p>
</li>
</ul></p>
</article> 
</p>
<p>
<article class="env-example" id="00A2">
  <p><a class="environment-identifier" href="/tag/00A2">Example <span data-tag="00A2">14.8.1</span>.</a> Let $\mathcal{M}=\mathbf{Top}$; define $\mathcal{W}$ to be the set of weak homotopy equivalences, and let $\tau _{\leq 0}=\pi _0$ be the set of connected components. </p>
</article> 
</p>
<p>
<article class="env-definition" id="00A3">
  <p><a class="environment-identifier" href="/tag/00A3">Definition <span data-tag="00A3">14.8.2</span>.</a> Let $\mathcal{M}$ be a Segalic relative category. An $\mathcal{M}$-enriched Segal category $\mathcal{C}$ is a pair $(S,X)$, where $S$ is a set (called the set of objects of $\mathcal{C}$) and $X$ is a functor $\mathbf{\Delta }_ S^{\mathrm{op}}\to \mathcal{M}$ (compare with Theorem&#160;<a href="/tag/009X" data-tag="009X">14.6.2</a>) which satisfies the following conditions: </p>
  <p><ol>
  <li><p>
For any $x_0\in S$, $X(x_0)=\mathbf{1}$ is the terminal object in $\mathcal{M}$. 
</p>
</li><li><p>
For any $n\ge 1$, the Segal map 
</p>
<div class="equation">
  \[  s_ n\colon X(x_0, \dots , x_ n)\to X(x_0, x_1)\times \dots \times X(x_{n-1}, x_ n)  \]
</div>
<p>
 is a weak equivalence in $\mathcal{M}$ (i.e., is in $\mathcal{W}$). 
</p>
</li>
</ol></p>
  <p>We define functors between $\mathcal{M}$-enriched Segal categories in the same way as before; we denote by $\mathbf{Seg}(\mathcal{M})$ the category of all $\mathcal{M}$-enriched Segal categories. </p>
</article> 
</p>
<p>
<article class="env-example" id="00A4">
  <p><a class="environment-identifier" href="/tag/00A4">Example <span data-tag="00A4">14.8.2</span>.</a> For $\mathcal{M}=\mathbf{Top}$, the definition of $\mathbf{Top}$-enriched Segal category is equivalent to that of a Segal category given in Definition&#160;<a href="/tag/009Z" data-tag="009Z">14.7.1</a>: $\mathbf{Seg}(\mathbf{Top}) = \mathbf{Seg}$. </p>
</article> <article class="env-example" id="00A5">
  <p><a class="environment-identifier" href="/tag/00A5">Example <span data-tag="00A5">14.8.3</span>.</a> Let $\mathcal{M}=\mathbf{Cat}$ be the category of small categories. Define the functor $\tau _{\leq 0}\colon \mathbf{Cat}\to \mathbf{Set}$ by $\tau _{\leq 0}(\mathcal{C})=\text{set of isomorphism classes of objects in }\mathcal{C}$, and let $\mathcal{W}$ be the set of equivalences between categories. Then a $\mathbf{Cat}$-enriched Segal category is the same as a weak 2-category. </p>
  <p>Details can be found in <span class="cite">[<a href="/bibliography/tamsamani">Tam1999</a>, <span class="postnote">Section 4</span>]</span> (see also <span class="cite">[<a href="/bibliography/lack-paoli">LP2008</a>]</span>). </p>
</article> For an $\mathcal{M}$-enriched Segal category $\mathcal{C}=(S, X)$, we define the (usual) category $\tau _{\leq 1}\mathcal{C}$ which has the same set of objects as $\mathcal{C}$, and $\operatorname{Hom}_{\tau _{\leq 1} \mathcal{C}}(x_0, x_1)=\tau _{\leq 0}X(x_0, x_1)$. This category is also called the <em>homotopy category</em> of $\mathcal{C}$. 
</p>
<p>
<article class="env-theorem" id="00A6">
  <p><a class="environment-identifier" href="/tag/00A6">Theorem <span data-tag="00A6">14.8.1</span>.</a> Let $\mathcal{M}$ be a Segalic relative category. Then $\mathbf{Seg}(\mathcal{M})$ is also a Segalic relative category, with $\tau _{\leq 0}$, $\mathcal{W}$ defined as follows: </p>
  <p><ul>
  <li><p>
For an $\mathcal{M}$-enriched category $\mathcal{C}$, we define 
</p>
<div class="equation">
  \[  \tau _{\leq 0}(\mathcal{C})= \text{ set of isomorphism classes of objects in }\tau _{\leq 1}(\mathcal{C})  \]
</div>
</li><li><p>
For $\mathcal{M}$-enriched categories $\mathcal{C}$, $\mathcal{D}$, a functor $F \colon \mathcal{C}\to \mathcal{D}$ is a weak equivalence if it satisfies the following conditions: 
</p>
<ol>
  <li><p>
$F$ induces equivalence of usual categories $\tau _{\leq 1}\mathcal{C}\to \tau _{\leq 1}\mathcal{D}$ 
</p>
</li><li><p>
$F$ induces a weak equivalence of objects in $\mathcal{M}$ 
</p>
<div class="equation">
  \[  \operatorname{Hom}_{\mathcal{C}}(x_0, x_1)\simeq \operatorname{Hom}_{\mathcal{D}}(F(x_0), F(x_1))  \]
</div>
</li>
</ol>
</li>
</ul></p>
</article> 
</p>
<p>
A proof of this theorem can be found in <span class="cite">[<a href="/bibliography/schommer-pries-category">SP2014</a>, <span class="postnote">Theorem 5.13</span>]</span>. 
</p>
<p>
Thus, we can iterate the construction of Segal categories: starting with a Segalic relative category $\mathcal{M}$, we can successively define categories $\mathbf{Seg}(\mathcal{M})$, $\mathbf{Seg}^2(\mathcal{M})=\mathbf{Seg}(\mathbf{Seg}(\mathcal{M}))$, etc. 
</p>
<p>
The following definition was given in <span class="cite">[<a href="/bibliography/tamsamani">Tam1999</a>]</span>. <article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">14.8.3</span>.</a>A Tamsamani weak $n$-category is an object of $\mathbf{Seg}^ n(\mathbf{Set})$, where $\mathbf{Set}$ is considered as a Segalic relative category with $\tau _{\leq 0}=\operatorname{id}$ and $\mathcal{W}=$bijections. </p>
  <p>We denote by $\mathbf{Tam}^ n=\mathbf{Seg}^ n(\mathbf{Set})$ the category of all Tamsamani weak $n$-categories. </p>
</article> For example, a Tamsamani weak $0$-category is a set, a Tamsamani weak 1-category is the usual category, a Tamsamani weak 2-category is the usual weak 2-category, or bicategory (see Example&#160;<a href="/tag/00A5" data-tag="00A5">14.8.3</a>), etc. 
</p>
<p>
Tamsamani also defines the notion of weak $n$-groupoid and defines the fundamental $n$-groupoid of a topological space. He then shows that in this theory of weak $n$-categories, the homotopy hypothesis holds: the functor $X\mapsto \Pi _{\leq n}(X)$ gives rise to an equivalence of homotopy theories of topological $n$-types and $n$-groupoids (see <span class="cite">[<a href="/bibliography/tamsamani">Tam1999</a>, <span class="postnote">Theorem 8.0</span>]</span>). Thus, this theory is a reasonable candidate for the theory of weak $n$-categories. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">14.8.1</span>.</a>The definition above is inductive: we define a Tamsamani $n$-category as a Segal category enriched over $(n-1)$-categories. Alternatively, one can also define Tamsamani weak $n$-categories as a suitable subcategory in the category of all functors $(\mathbf{\Delta }^{\times n})^{\mathrm{op}}\to \mathbf{Set}$, where $\mathbf{\Delta }^{\times n}$ is the $n$-fold product of simplex categories; see <span class="cite">[<a href="/bibliography/paoli">Pao2019</a>]</span> for detailed discussion. </p>
</article> 
</p>
<p>
The same ideas can now be also used to define $(\infty , n)$ categories. 
</p>
<p>
<article class="env-definition" id="00A7">
  <p><a class="environment-identifier" href="/tag/00A7">Definition <span data-tag="00A7">14.8.4</span>.</a> A Segal $n$-category is an object of $\mathbf{Seg}^ n(\mathbf{Top})$, i.e., a Segal category enriched over $\mathbf{Seg}^{n-1}(\mathbf{Top})$. </p>
</article> 
</p>
<p>
We will take this as a definition of an $(\infty , n)$ category: <article class="env-definition" id="00A8">
  <p><a class="environment-identifier" href="/tag/00A8">Definition <span data-tag="00A8">14.8.5</span>.</a> An $(\infty , n)$ category is the same as a Segal $n$-category. </p>
</article> 
</p>
<p>
In particular: 
</p>
<ul>
  <li><p>
An $(\infty , 0)$ category is the same as a topological space. 
</p>
</li><li><p>
An $(\infty , 1)$ category is the same as a Segal category as defined in Section&#160;<a href="/tag/009Y" data-tag="009Y">14.7</a>. 
</p>
</li><li><p>
…
</p>
</li>
</ul>
<p>
Note that by the definition of $\mathbf{Seg}^ n$, if $\mathcal{C}$ is an $(\infty , n)$ category, $n&gt;0$, then for any two objects $x,y\in \mathcal{C}$, $\operatorname{Hom}_\mathcal{C}(x,y)$ is an $(\infty , n-1)$ category. We can use it to define $k$-morphisms in an $(\infty , n)$ category: for $n=0$ (i.e., when $\mathcal{C}=X$ is a topological space), $k$-morphisms are defined as in Section&#160;<a href="/tag/0099" data-tag="0099">14.1</a>; for $n&gt;0$, $k$-morphisms in $\mathcal{C}$ are $(k-1)$-morphisms in the $(\infty , n-1)$ category $\operatorname{Hom}_{\mathcal{C}}(x,y)$ for some objects $x,y\in \mathcal{C}$. 
</p>
<p>
We also note that the functor $\tau _{\leq 0}=\pi _0\colon \mathbf{Top}\to \mathbf{Set}$ gives rise to a truncation functor $\mathbf{Seg}^ n(\mathbf{Top})\to \mathbf{Seg}^ n(\mathbf{Set})$; thus, any $(\infty , n)$ category can be truncated to a (Tamsamani) weak $n$-category. Moreover, combining it with truncation functors $\tau _{\leq k}\colon \mathbf{Tam}^ n\to \mathbf{Tam}^ k$, $k \le n$, we can define a truncation functor $\tau _{\leq k}$ from $(\infty , n)$ categories to weak $k$-categories. 
</p>
