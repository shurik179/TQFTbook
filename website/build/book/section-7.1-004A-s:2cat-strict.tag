<h2 id="s:2cat-strict" class="tex-section"><span data-tag="004A">7.1</span> Strict 2-categories</h2>
<p>
 <article class="env-predefinition" id="004B">
  <p><a class="environment-identifier" href="/tag/004B">Preliminary Definition <span data-tag="004B">7.1.1</span>.</a> A 2-category is the following collection of data: </p>
  <p><ol>
  <li><p>
A class $\mathcal{C}_0$, called objects of $\mathcal{C}$. 
</p>
</li><li><p>
For any $X,Y\in \mathcal{C}_0$, a set $\operatorname{Hom}_{\mathcal{C}}(X,Y)$, called 1-morphisms of $\mathcal{C}$. 
</p>
</li><li><p>
For any pair of 1-morphisms $f,g\in \operatorname{Hom}_\mathcal{C}(X,Y)$, a set $\operatorname{Hom}^2_{\mathcal{C}}(f,g)$; elements of this set are called 2-morphisms of $\mathcal{C}$. 
</p>
</li><li><p>
Appropriate composition laws and identity morphisms for 1- and 2-morphisms. 
</p>
</li>
</ol></p>
</article> Before giving the full definition, here are the motivating examples — whatever definition we give, it must cover these examples (possibly with minor technical modifications). 
</p>
<p>
<article class="env-example" id="004C">
  <p><a class="environment-identifier" href="/tag/004C">Example <span data-tag="004C">7.1.1</span>.</a> The 2-category $\mathbf{Cat}$ of all (small) categories. Objects of this category are categories, 1-morphisms are functors, and 2-morphisms are functorial morphisms. </p>
</article> <article class="env-example" id="004D">
  <p><a class="environment-identifier" href="/tag/004D">Example <span data-tag="004D">7.1.2</span>.</a> The 2-category $\mathbf{Alg}$ of algebras and bimodules. Objects of this category are unital associative algebras (not necessarily finite-dimensional) over a fixed ground field $\mathbf{k}$, 1-morphisms $M\colon A\to B$ are $B$-$A$-bimodules, and 2-morphisms are morphisms of bimodules. Composition of 1-morphisms is given by tensor product over the algebra: </p>
  <div class="equation">
  \[  ({}_ CM_ B, {}_ BN_ A)\mapsto {}_ C M\otimes _ B N_ A  \]
</div>
  <p> (we use subscripts such as ${}_ BN_ A$ to indicate that $N$ is a left module over $B$ and a right module over $A$.) </p>
  <p>The identity 1-morphism from $A$ to $A$ is $A$ itself considered as an $A$-bimodule. </p>
</article> <article class="env-example" id="004E">
  <p><a class="environment-identifier" href="/tag/004E">Example <span data-tag="004E">7.1.3</span>.</a> Let $X$ be a topological space. Define its <em>fundamental 2-groupoid</em> $\Pi _{\leq 2}(X)$ to be the following 2-category: </p>
  <p><ul>
  <li><p>
Objects: points $x\in X$ 
</p>
</li><li><p>
1-morphisms: paths $\gamma \colon I \to X$ between points 
</p>
</li><li><p>
2-morphisms: equivalence classes of homotopies between paths (two homotopies are equivalent if there is a “homotopy between homotopies” between them) 
</p>
</li>
</ul></p>
</article> 
</p>
<p>
Morphisms and 2-morphisms in a 2-category are frequently presented graphically. There are two approaches to it: 
</p>
<ol>
  <li><p>
Objects are represented by points, 1-morphisms by arrows, and 2-morphisms by 2-cells. This is the more common way. 
</p>
</li><li><p>
Objects are represented by regions in the plane, 1-morphisms by lines separating these regions (“domain walls”), and 2-morphisms by points where these lines meet (or by boxes). This approach is very familiar to physicists. 
</p>
</li>
</ol>
<p>
Following <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>, <span class="postnote">Appendix A.4</span>]</span>, we will call diagrams of the first kind <em>pasting diagrams</em> and diagrams of the second kind <em>string diagrams</em>. In both cases, we will accept the convention that 1-morphisms go “from left to right”, and 2-morphisms go “from top to bottom”. The figure below (borrowed with modifications from <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>]</span>) shows a comparison of these two types of graphical presentation. 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c7-fig02.svg" /> 
</p>
<figcaption class="figcaption">Figure 7.1.1. Pasting Diagrams vs String Diagrams</figcaption>

</figure>
<p>
To turn Definition&#160;<a href="/tag/004B" data-tag="004B">7.1.1</a> into a rigorous definition, we need to define compositions for 1-morphisms and 2-morphisms and state appropriate associativity and unit laws. There are a couple of subtle points; for example, for 2-morphisms we need not only composition of 2-morphisms shown below (vertical composition) 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c7-fig03.svg" /> 
</p>

</figure>
<p>
but also “horizontal composition”, which we denote by $\beta $$$○$$α$$ to distinguish it from the vertical composition: 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c7-fig04.svg" /> 
</p>

</figure>
<p>
We can save some effort if we start by saying that for given objects $X,Y$, all 1-morphisms between them, together with 2-morphisms between those, form a category. That takes care of (vertical) composition of 2-morphisms, identity 2-morphism, etc. 
</p>
<p>
<article class="env-definition" id="004F">
  <p><a class="environment-identifier" href="/tag/004F">Definition <span data-tag="004F">7.1.1</span>.</a> A strict 2-category $\mathcal{C}$ is the following collection of data: </p>
  <p><ul>
  <li><p>
A class of objects $\mathcal{C}_0$ 
</p>
</li><li><p>
For any $X, Y\in \mathcal{C}_0$, a category $\operatorname{Hom}_{\mathcal{C}}(X,Y)$. Objects of this category are called $1$-morphisms from $X$ to $Y$; morphisms of $\operatorname{Hom}_{\mathcal{C}}(X,Y)$ are called $2$-morphisms of $\mathcal{C}$ 
</p>
</li><li><p>
A (horizontal) composition functor 
</p>
<div class="equation">
  \[  H\colon \operatorname{Hom}(X,Y)\times \operatorname{Hom}(Y,Z)\to \operatorname{Hom}(X,Z)  \]
</div>
</li><li><p>
For every $X\in \mathcal{C}$, an identity 1-morphism $1_ X\in \operatorname{Hom}(X,X)$ 
</p>
</li>
</ul></p>
  <p> such that the horizontal composition is associative and $1_ X$ is a unit for this composition. </p>
</article> Instead of providing a $1$-morphism $1_ X\in \operatorname{Hom}(X,X)$, we can say “we have a functor $\mathbf{1}\to \operatorname{Hom}(X,X)$”, where $\mathbf{1}$ is the category with a single object and a unique morphism (namely, the identity morphism). 
</p>
<p>
Note that since composition is a functor, it also gives a horizontal composition of 2-morphisms; thus, this is automatically taken care of — no need to add horizontal composition of 2-morphisms by hand. 
</p>
<p>
The exact meaning of “horizontal composition is associative” is as follows. For any $X,Y,Z,W\in \mathcal{C}$, one can construct two functors 
</p>
<div class="equation">
  \[  \operatorname{Hom}(X,Y)\times \operatorname{Hom}(Y,Z)\times \operatorname{Hom}(Z,W)\to \operatorname{Hom}(X,W)  \]
</div>
<p>
 namely, $H\circ (H\times \operatorname{id})$ and $H\circ (\operatorname{id}\times H)$. Associativity means that these two functors are equal. Similarly one can write down the exact meaning of “$1_ X$ is a unit for horizontal composition”. 
</p>
<p>
<article class="env-exercise" id="004G">
  <p><a class="environment-identifier" href="/tag/004G">Exercise <span data-tag="004G">7.1.1</span>.</a> Consider the pasting diagram below. Then there are two obvious ways to compose the four 2-morphisms in this diagram into a single 2-morphism from $f_2f_1$ to $g_2g_1$: either using horizontal composition first or using vertical composition first. Prove that the resulting 2-morphisms are equal. </p>
  <p><figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c7-fig05.svg" /> 
</p>

</figure></p>
  <p> This is known as the “exchange condition”; it is a special case of the so-called <em>pasting theorem</em>; broadly speaking, this theorem claims that given a composable pasting diagram, the result of composition does not depend on the order in which we are doing the compositions. Formulating it precisely is somewhat technical; see <span class="cite">[<a href="/bibliography/power-pasting">Pow1990</a>]</span>. </p>
</article> <article class="env-lemma" id="004H">
  <p><a class="environment-identifier" href="/tag/004H">Lemma <span data-tag="004H">7.1.2</span>.</a> Let $X$ be an object in a strict 2-category $\mathcal{C}$. Consider the monoid of 2-morphisms $\operatorname{Hom}(1_ X, 1_ X)$. Then horizontal and vertical compositions coincide, and the resulting composition is commutative. </p>
</article> This is known as the <em>Eckmann–Hilton argument</em>; see <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>, <span class="postnote">Lemma 1.2.4</span>]</span>. It can be viewed as a categorical analog of the well-known topological fact: for $k&gt;1$, homotopy groups $\pi _ k(X)$ are commutative. 
</p>
<p>
<article class="env-exercise" id="004J">
  <p><a class="environment-identifier" href="/tag/004J">Exercise <span data-tag="004J">7.1.2</span>.</a> Let $A$ be an associative algebra, considered as an object in the 2-category $\mathbf{Alg}$. Prove that then $\operatorname{Hom}_{\mathbf{Alg}}(1_ A, 1_ A)=z(A)$ is the center of $A$. </p>
</article> 
</p>
