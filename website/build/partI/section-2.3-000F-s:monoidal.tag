<h2 id="s:monoidal" class="tex-section"><span data-tag="000F">2.3</span> Monoidal categories</h2>
<p>
 One of the most important notions is the notion of a monoidal category, which informally is described as a category with an associative operation; the model example is the category of vector spaces with the operation of tensor product. In this section, we review this notion; as before, we refer the reader to <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Chapter 2</span>]</span>; <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>, <span class="postnote">Section 1.2</span>]</span> for a more in-depth discussion. 
</p>
<p>
Before defining monoidal categories, let us look at simpler notion: a monoid. 
</p>
<p>
A <em>monoid</em> is a set together with an associative multiplication operation and a unit: 
</p>
<div class="equation">
  \begin{align*} & (a\cdot b)\cdot c = a\cdot (b\cdot c)\\ & 1\cdot a = a\cdot 1 = a \end{align*}
</div>
<p>
 (if we also add the requirement that every element has an inverse, we get the definition of a group). 
</p>
<p>
<article class="env-theorem" id="000G">
  <p><a class="environment-identifier" href="/tag/000G">Theorem <span data-tag="000G">2.3.1</span>.</a> Let $M$ be a monoid and $a_1, \dots , a_ n\in M$. Consider all possible expressions obtained by writing $a_1, \dots , a_ n$ (in this order), then inserting some copies of $1$ and then putting parentheses so that multiplications are just binary products, e.g., $(a_1 \cdot 1) \cdot (1 \cdot a_2) $. Then all of them are equal: if $X_1, X_2$ are two such expressions (with the same $a_1, \dots , a_ n$), then $X_1=X_2$. </p>
</article> It may seem obvious, but in fact it is not quite trivial; essentially it is the statement that if we construct a graph whose vertices correspond to different expressions written above, and edges to application of associativity and unit relations, then this graph is connected. 
</p>
<p>
If we only include $a_1, \dots , a_ n$ but no 1's, then such expressions are naturally described by planar binary trees. For example, the bracketings $((a_1 a_2)a_3) a_4$ and $((a_1 a_2)(a_3 a_4))$ correspond to the trees below: 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c2-fig01.svg" /> &#8195;&#8195;<img class="includegraphics" src="/static/figures/c2-fig02.svg" /> </div>
<p>
 Adding ones requires a minor modification, adding appropriately colored leaves to the tree. 
</p>
<p>
For categories, the analogous structure is that of a monoidal category: a category with a functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$ and a unit object $\mathbf{1}\in \mathcal{C}$. 
</p>
<p>
One can try to mimic the definition above. <article class="env-definition" id="000H">
  <p><a class="environment-identifier" href="/tag/000H">Definition <span data-tag="000H">2.3.1</span>.</a> A <em>strict monoidal category</em> is a category $\mathcal{C}$ together with a functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$ and a unit object $\mathbf{1}\in \mathcal{C}$ such that </p>
  <div class="equation">
  \begin{align*} & (A\otimes B)\otimes C = A\otimes (B\otimes C),\\ & \mathbf{1}\otimes A = A\otimes \mathbf{1}= A. \end{align*}
</div>
</article> 
</p>
<p>
However, this definition is too strict: objects in a category are almost never equal, just isomorphic. For example, if $V$ is a vector space over $\mathbf{k}$, then $\mathbf{k}\otimes V\ne V$ (but is canonically isomorphic to $V$). 
</p>
<p>
We can try to replace equality by isomorphism, but then it is too weak: e.g., any two vector spaces of the same dimension are isomorphic. 
</p>
<p>
The proper way is to require the existence of a distinguished (canonical) isomorphism which should be made part of the structure. Moreover, these “canonical” isomorphisms should themselves satisfy some compatibility conditions, as suggested by Convention&#160;<a href="/tag/000A" data-tag="000A">2.1.1</a>. 
</p>
<p>
<article class="env-definition" id="000J">
  <p><a class="environment-identifier" href="/tag/000J">Definition <span data-tag="000J">2.3.2</span>.</a> A monoidal category is a category $\mathcal{C}$ together with the following data: </p>
  <p><ul>
  <li><p>
An object $\mathbf{1}\in \mathcal{C}$ 
</p>
</li><li><p>
a functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$ 
</p>
</li><li><p>
functorial isomorphisms 
</p>
<div class="equation">
  \begin{align*} & l_ A\colon \mathbf{1}\otimes A \xrightarrow {\sim }A\\ &  r_ A\colon A\otimes \mathbf{1}\xrightarrow {\sim }A\\ & \alpha _{A,B,C}\colon (A\otimes B)\otimes C\xrightarrow {\sim }A\otimes (B\otimes C) \end{align*}
</div>
</li>
</ul></p>
  <p> satisfying compatibility conditions below: </p>
  <p><ol>
  <li><p>
Triangle axiom: for any $A,B\in \mathcal{C}$, the diagram below commutes 
</p>
<div class="equation" id="00EU">
    <span class="equation-label"><a href="/tag/00EU" data-tag="00EU">2.3.1</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c2-fig03.svg"></div>
</div>
</li><li><p>
Pentagon axiom: for any $A,B,C,D \in \mathcal{C}$, the diagram below commutes 
</p>
<div class="equation" id="00EV">
    <span class="equation-label"><a href="/tag/00EV" data-tag="00EV">2.3.2</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c2-fig04.svg"></div>
</div>
<p>
 (all arrows are given by the associativity isomorphism $\alpha $.) 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
<article class="env-example" id="000K">
  <p><a class="environment-identifier" href="/tag/000K">Example <span data-tag="000K">2.3.1</span>.</a> The following are examples of monoidal categories. </p>
  <p><ol>
  <li><p>
Category $\mathbf{Set}$, with $\otimes $ given by disjoint union and $\mathbf{1}$ being the empty set 
</p>
</li><li><p>
Category $\mathbf{Set}$, with $\otimes $ given by the Cartesian product and $\mathbf{1}$ being a one-point set 
</p>
</li><li><p>
Categories $\mathbf{Man}$, $\mathbf{PLMan}$ with respect to disjoint union 
</p>
</li><li><p>
Category $\mathbf{Vec}$ with the usual tensor product, $\mathbf{1}= \mathbf{k}$ 
</p>
</li><li><p>
Category of bimodules over a fixed ring $R$, with respect to $\otimes _ R$, and $\mathbf{1}= R$ 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
<article class="env-example" id="000L">
  <p><a class="environment-identifier" href="/tag/000L">Example <span data-tag="000L">2.3.2</span>.</a> Let $G$ be a group. Define the category $\mathbf{Vec}_ G$ of <em>$G$-graded vector spaces</em> as the category whose objects are finite-dimensional vector spaces $V$ together with decomposition </p>
  <div class="equation">
  \[  V=\bigoplus _{g\in G} V_ g.  \]
</div>
  <p> This is a monoidal category with tensor product given by </p>
  <div class="equation">
  \[  (V\otimes W)_ g = \bigoplus _{h\in G} V_ h \otimes W_{h^{-1}g}  \]
</div>
  <p> and unit object given by $\mathbf{k}$ considered as a $G$-graded vector space with grading equal to $1\in G$. The associativity isomorphism is trivial. </p>
</article> 
</p>
<p>
<article class="env-theorem" id="000M">
      
  <p><a class="environment-identifier" href="/tag/000M">Theorem <span data-tag="000M">2.3.2</span> <span class="named">(Mac Lane's coherence theorem)</span>.</a>Let $\mathcal{C}$ be a monoidal category. Let $F_1, F_2\colon \mathcal{C}^ n\to \mathcal{C}$ be two functors obtained by compositions of tensor product functor $\otimes $ and functors $X\mapsto X\otimes \mathbf{1}$, $X\mapsto \mathbf{1}\otimes X$, e.g., </p>
  <div class="equation">
  \begin{align*}  F_1(A,B,C)& =(A\otimes B)\otimes (\mathbf{1}\otimes C),\\  F_2(A,B,C)& =A\otimes (( B\otimes C)\otimes \mathbf{1}). \end{align*}
</div>
  <p> Then </p>
  <p><ol>
  <li><p>
There exists a functorial isomorphism $F_1\simeq F_2$, obtained by composition of associativity isomorphism $\alpha $, left and right unit isomorphisms $l,r$, and their inverses. 
</p>
</li><li><p>
Any two such isomorphisms $F_1\to F_2$ are equal. 
</p>
</li>
</ol></p>
</article> In other words, if we construct a cell complex $X_ n$ whose vertices are functors $\mathcal{C}^ n\to \mathcal{C}$ as in the statement of the theorem, edges correspond to applications of the associativity and unit isomorphisms, and 2-cells correspond to commutative diagrams given by the pentagon axiom, unit axioms, and functoriality of $\alpha , l, r$, then this complex is simply-connected. 
</p>
<p>
This is a natural generalization of coherence theorem for monoids (Theorem&#160;<a href="/tag/000G" data-tag="000G">2.3.1</a>); in this language, Theorem&#160;<a href="/tag/000G" data-tag="000G">2.3.1</a> is exactly claim (1) of the theorem, i.e., the statement that $X_ n$ is connected. 
</p>
<p>
<article class="env-remark" id="000N">
  <p><a class="environment-identifier" href="/tag/000N">Remark <span data-tag="000N">2.3.1</span>.</a> If we only consider functors obtained by composing the tensor product functor (thus, no units), the corresponding complex is a 2-skeleton of a convex polytope $K_ n$, called the <em>associahedron</em>, or the <em>Stasheff polytope</em>. The vertices of $K_ n$ are indexed by binary trees with $n$ leaves; thus, the number of vertices is the Catalan number $C_{n-1} = \frac{1}{n}\binom {2(n-1)}{n-1}$ (so $K_5$ has $C_4 = 14$ vertices). This polytope was introduced by Jim Stasheff in the 1960s. It can be realized as a convex polytope in Euclidean space; see, e.g., <span class="cite">[<a href="/bibliography/loday">Lod2004</a>]</span>. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="000P">
  <p><a class="environment-identifier" href="/tag/000P">Exercise <span data-tag="000P">2.3.1</span>.</a> Draw the associahedron $K_5$ (it has 14 vertices) and verify that it is simply-connected (more precisely, its 2-skeleton is topologically a sphere $S^2$). We will return to it later, when talking about monoidal 2-categories. </p>
</article> 
</p>
<p>
<article class="env-definition" id="000Q">
  <p><a class="environment-identifier" href="/tag/000Q">Definition <span data-tag="000Q">2.3.3</span>.</a> Let $\mathcal{C}, \mathcal{D}$ be monoidal categories. A monoidal functor $\mathcal{C}\to \mathcal{D}$ is a functor $F\colon \mathcal{C}\to \mathcal{D}$ together with functorial isomorphisms </p>
  <div class="equation">
  \begin{align*}  J& \colon F(X\otimes Y)\to F(X)\otimes F(Y)\\  \varphi & \colon \mathbf{1}_\mathcal{D}\to F(\mathbf{1}_\mathcal{C}) \end{align*}
</div>
  <p> satisfying suitable constraints (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 2.4</span>]</span>). </p>
  <p>We say that categories $\mathcal{C}, \mathcal{D}$ are monoidally equivalent if there exist monoidal functors $F\colon \mathcal{C}\to \mathcal{D}$, $G\colon \mathcal{D}\to \mathcal{C}$ such that $F\circ G\simeq \operatorname{id}_\mathcal{C}$, $G\circ F \simeq \operatorname{id}_\mathcal{D}$. </p>
</article> 
</p>
<p>
<article class="env-example" id="000R">
  <p><a class="environment-identifier" href="/tag/000R">Example <span data-tag="000R">2.3.3</span>.</a> Consider the category of representations of a group $G$. Then the forgetful functor from this category to the category of vector spaces is a monoidal functor. More generally, given a subgroup $H\subset G$, the restriction functor $\operatorname{Res}^ G_ H\colon \operatorname{Rep}G\to \operatorname{Rep}H$ has an obvious monoidal structure. </p>
</article> <article class="env-example" id="000S">
  <p><a class="environment-identifier" href="/tag/000S">Example <span data-tag="000S">2.3.4</span>.</a> If $G$ is a connected, simply-connected Lie group, then the category of finite-dimensional representations of $G$ is equivalent, as a monoidal category, to the category of finite-dimensional representations of its Lie algebra $\mathfrak {g}$. </p>
</article> 
</p>
<p>
<article class="env-example" id="000T">
  <p><a class="environment-identifier" href="/tag/000T">Example <span data-tag="000T">2.3.5</span>.</a> Recall the category of $G$-graded vector spaces $\mathbf{Vec}_ G$ defined in Example&#160;<a href="/tag/000L" data-tag="000L">2.3.2</a>. This category has a generalization. Namely, let $\omega \colon G\times G\times G\to \mathbf{k}^\times $ be a 3-cocycle, i.e., a function satisfying the condition </p>
  <div class="equation">
  \[  \omega (g_1g_2, g_3, g_4)\omega (g_1, g_2, g_3g_4) = \omega (g_1, g_2, g_3) \omega (g_1, g_2g_3, g_4)\omega (g_2, g_3, g_4).  \]
</div>
  <p> Consider the category $\mathbf{Vec}^\omega _ G$ which coincides with $\mathbf{Vec}_ G$ as an abelian category; moreover, it has the same tensor product functor $\otimes $ and unit object $\mathbf{1}=\mathbf{k}_1$. However, the associativity isomorphism is different: namely, $\alpha \colon (V\otimes W)\otimes U \to V \otimes (W\otimes U)$ is given by </p>
  <div class="equation">
  \[  \alpha ((v \otimes w) \otimes u )= \omega _{g,h,m} v \otimes (w\otimes u), \qquad v\in V_ g, w\in W_ h, u\in U_ m.  \]
</div>
  <p> The cocycle condition immediately implies that so defined $\alpha $ satisfies the pentagon axiom. </p>
</article> <article class="env-exercise" id="000U">
  <p><a class="environment-identifier" href="/tag/000U">Exercise <span data-tag="000U">2.3.2</span>.</a> Let $\omega \colon G\times G\times G\to \mathbf{k}^\times $ be a 3-cocycle. Assume that $\omega $ is a coboundary, i.e., there exists a function $\beta \colon G\times G\to \mathbf{k}^\times $ such that $\omega =d\beta $, where the coboundary operator $d$ is given by </p>
  <div class="equation">
  \[  (d\beta )(g_1, g_2, g_3)= \frac{\beta (g_2, g_3)\, \beta (g_1, g_2g_3)}{\beta (g_1g_2, g_3)\, \beta (g_1, g_2)}.  \]
</div>
  <p> Show that then category $\mathbf{Vec}_ G^\omega $ is monoidally equivalent to $\mathbf{Vec}_ G$. </p>
  <p>More generally, categories $\mathbf{Vec}_ G^\omega $ and $\mathbf{Vec}_ G^{\omega '}$ are equivalent, with the equivalence preserving the $G$-graded dimension, if and only if $\omega '=\omega \cdot d\beta $ for some $\beta \colon G\times G\to \mathbf{k}^\times $ (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 2.6</span>]</span>). </p>
</article> 
</p>
<p>
We can restate Mac Lane's coherence theorem as follows. <article class="env-theorem" id="000V">
  <p><a class="environment-identifier" href="/tag/000V">Theorem <span data-tag="000V">2.3.3</span>.</a> Any monoidal category is monoidally equivalent to a strict monoidal category. </p>
</article> If one knows the concept of a skeleton of a category, then Mac Lane's coherence theorem can be understood as the construction of the skeleton by looking at the isomorphism classes of objects in a monoidal category. 
</p>
<p>
<article class="env-convention" id="000W">
  <p><a class="environment-identifier" href="/tag/000W">Convention <span data-tag="000W">2.3.1</span>.</a> We will frequently use graphical presentation of morphisms in a monoidal category, representing a morphism $\varphi \colon A_1\otimes \dots \otimes A_ k\to B_1\otimes \dots \otimes B_ m$ by a box with $k$ inputs at the top and $m$ outputs at the bottom: </p>
  <p><figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c2-fig05.svg" /> <figcaption class="figcaption">Figure 2.3.1. Graphical notation for a morphism in a monoidal category.</figcaption>  </div>

</figure></p>
</article> 
</p>
