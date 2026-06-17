<h2 id="s:defining-bord2" class="tex-section"><span data-tag="0072">10.1</span> Defining $\mathbf{Bord}_2$</h2>
<p>
 We begin with defining manifolds with corners. Note that there are two approaches to defining manifolds: one can either use coordinate charts and atlases, or sheaves of smooth functions. We will use the second approach. 
</p>
<p>
For a topological space $X$, denote by $\mathcal{C}_ X$ the sheaf of continuous functions on $X$.
</p>
<p>
<article class="env-definition" id="0073">
  <p><a class="environment-identifier" href="/tag/0073">Definition <span data-tag="0073">10.1.1</span>.</a> An $n$-dimensional manifold with corners is a topological space $M$ with a subsheaf $\mathcal{F}\subset \mathcal{C}_ M$ such that for each point $x\in M$ there exists a homeomorphism of a neighborhood of $x$ in $M$ and a neighborhood of $0$ in </p>
  <div class="equation">
  \[  \mathbb {R}_+^ p\times \mathbb {R}^{n-p}  \]
</div>
  <p> which identifies the sheaf $\mathcal{F}$ with the sheaf of smooth functions on $\mathbb {R}_+^ p\times \mathbb {R}^{n-p}$ (we call a function on $\mathbb {R}_+^ p\times \mathbb {R}^{n-p}$ smooth if it is a restriction of a smooth function on $\mathbb {R}^ n$). </p>
</article> It is easy to show that the number $p$ is well-defined: for different $p$, the sets $\mathbb {R}_+^ p\times \mathbb {R}^{n-p}$ are not diffeomorphic. We will call this number the index of $x$; the set 
</p>
<div class="equation">
  \[  \partial ^{(p)}(M)=\{ x\;  | \; \text{index}(x)=p\}   \]
</div>
<p>
 is the codimension-$p$ stratum of the boundary. In particular, we will call connected components of $\partial ^{(1)}M$ <em>faces</em>. 
</p>
<p>
For technical reasons, we will impose an additional requirement that each point $x\in M$ of index $p$ lies in the closure of exactly $p$ <strong>different</strong> faces; thus, we do not allow a face to “intersect itself”. Following <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>]</span>, we call such a manifold “manifold with faces”. 
</p>
<p>
Using this, we can give a definition of a 2-cobordism. 
</p>
<p>
<article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">10.1.2</span>.</a> Let $Y_0, Y_1$ be closed $(n-2)$-dimensional manifolds, and let $W_0,W_1$ be two $(n-1)$-dimensional cobordisms between $Y_0$ and $Y_1$. A 2-cobordism from $W_0$ to $W_1$ is the following collection of data: </p>
  <p><ul>
  <li><p>
An $n$-dimensional manifold $S$ with corners of codimension up to 2. 
</p>
</li><li><p>
A decomposition of the set of faces of $S$ into two disjoint sets, “horizontal faces” and “vertical faces”, such that each $x\in \partial ^{(2)}S$ is in the closure of one vertical and one horizontal face. We will denote by $\partial _ h S$ the union of closures of horizontal faces, and similarly for vertical faces. 
</p>
</li><li><p>
An isomorphism $g\colon \overline{W_0}\sqcup W_1\to \partial _ h S$. 
</p>
</li><li><p>
An isomorphism $f\colon (Y_0\times I) \sqcup (Y_1\times I)\to \partial _ v S$. 
</p>
</li>
</ul></p>
  <p> These isomorphisms must agree with the isomorphisms $\overline{Y_0}\sqcup Y_1\xrightarrow {\sim }\partial W_ i$ in the obvious way. </p>
</article> 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c10-fig01.svg" /> </div>
<p>
We define an isomorphism of two 2-cobordisms $(S, g,f)$, $(\tilde S, \tilde g, \tilde f)$ (for the same $Y_0,Y_1, W_0, W_1$) as a diffeomorphism $\varphi \colon S\to \tilde S$ such that $\varphi \circ g = \tilde g$, $\varphi \circ f=\tilde f$. 
</p>
<p>
We can now give a definition of the 2-category $\mathbf{Bord}_2$. 
</p>
<p>
<article class="env-theorem" id="0074">
  <p><a class="environment-identifier" href="/tag/0074">Theorem <span data-tag="0074">10.1.1</span>.</a> There exists a weak 2-category $\mathbf{Bord}_2$, in which </p>
  <p><ul>
  <li><p>
Objects are closed oriented $0$-manifolds 
</p>
</li><li><p>
1-morphisms $\operatorname{Hom}(X_0, X_1)$ are oriented 1-dimensional cobordisms between $X_0, X_1$ 
</p>
</li><li><p>
For $W_0, W_1\in \operatorname{Hom}(X_0, X_1)$, the set of 2-morphisms $\operatorname{Hom}(W_0,W_1)$ is the set of isomorphism classes of 2-cobordisms $W_0\Rightarrow W_1$ 
</p>
</li>
</ul></p>
</article> To prove this theorem, one has to construct horizontal and vertical compositions, and prove strict associativity of vertical composition and weak associativity of horizontal composition. Vertical composition is relatively straightforward; it is done in the same way as the usual composition of cobordisms. 
</p>
<p>
However, horizontal composition is much trickier. Recall that for two 1-cobordisms $W_1$, $W_0$, the smooth structure on the glued 1-manifold $W_0\cup _{Y_1} W_1$ is not unique. It was not a problem for a 1-d TQFT, where 1-morphisms are isomorphism classes of cobordisms; however, to define extended 2d TQFT, we need to define 2-cobordism between 1-morphisms, and for that we need actual 1-cobordisms, not isomorphism classes. 
</p>
<p>
There are two ways to deal with it. One can just randomly choose a smooth structure on any result of gluing $W_0\cup _{Y_1} W_1$, using the axiom of choice; this makes composition not strictly associative but only associative up to isomorphism of 1-cobordisms (as is expected in a weak 2-category), but luckily creates no other issues. The other, less arbitrary, approach is to add more structure to 1-cobordisms — collars or a similar data; in <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>]</span>, he uses a structure he calls “halo”. Both of these approaches give a weak 2-category, and in fact they give equivalent 2-categories, see <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>, <span class="postnote">Proposition 3.40</span>]</span>. 
</p>
<p>
We do not give details of either of these constructions, referring the reader to <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>]</span>; this takes a significant part of his thesis. 
</p>
<p>
<article class="env-theorem" id="0075">
  <p><a class="environment-identifier" href="/tag/0075">Theorem <span data-tag="0075">10.1.2</span>.</a> The 2-category $\mathbf{Bord}_2$ defined in Theorem&#160;<a href="/tag/0074" data-tag="0074">10.1.1</a> has a natural structure of a symmetric monoidal 2-category, with tensor product given by disjoint union. </p>
</article> This seems obvious, but remarkably, requires some machinery to do carefully. See <span class="cite">[<a href="/bibliography/shulman">Shu2010</a>]</span>, <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>, <span class="postnote">Section 3.1.4</span>]</span>. 
</p>
