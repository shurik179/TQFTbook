<h2 id="s:graphical2" class="tex-section"><span data-tag="00D0">18.5</span> Graphical calculus continued: graphs on surfaces</h2>

<p>
Lemma&#160;<a href="/tag/00CQ" data-tag="00CQ">18.4.1</a> shows that in a pivotal fusion category, the vector space $\langle  A_1\boxtimes \dots \boxtimes A_ n\rangle =\operatorname{Hom}(\mathbf{1}, A_1\otimes \dots \otimes A_ n)$, up to a canonical isomorphism, only depends on the cyclic order of $A_1, \dots , A_ n$. Moreover, we have canonical isomorphisms 
</p>
<div class="equation">
  \[  \operatorname{Hom}(A_1\otimes \dots A_ k, B_1\otimes \dots \otimes B_ m)\simeq \langle B_1, \dots , B_ m, A_ k^*,\dots , A_1^*\rangle .  \]
</div>
<p>
 This makes it possible to modify our graphical calculus discussed in Section&#160;<a href="/tag/00C5" data-tag="00C5">18.1</a>, replacing all rectangular boxes by small disks, or even easier, just by vertices; orientation of the plane gives a counterclockwise cyclic order on the set of edges meeting at this vertex. Thus, we make the following definition, which is a minor modification of the notion of $\mathcal{C}$-colored diagram discussed in Section&#160;<a href="/tag/00C5" data-tag="00C5">18.1</a>. <article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">18.5.1</span>.</a>Let $M$ be an oriented 2-manifold with boundary (not necessarily compact), and let $\mathcal{C}$ be a spherical fusion category. </p>
  <p>A $\mathcal{C}$-colored graph on $M$ is the following collection of data: </p>
  <p><ul>
  <li><p>
a finite collection of points (vertices) in the interior of $M$ 
</p>
</li><li><p>
a finite collection of non-intersecting smooth directed arcs (embedded intervals) and directed circles (images of $S^1$) in $M$. Endpoints of arcs are all distinct and can lie either on the boundary of $M$ or at the vertices. At the endpoints on the boundary of $M$, the lines must be transversal to the boundary. Arcs meeting at a vertex must have distinct tangent vectors. Other than the endpoints, arcs and circles do not intersect the boundary of $M$ or vertices. 
</p>
</li><li><p>
coloring, i.e., assignment of an object of $\mathcal{C}$ to every arc or circle, and assignment of a morphism in $\mathcal{C}$ to every vertex. Namely, if $A_1, \dots , A_ k$ are the colors of the arcs meeting at a vertex $v$, listed in counterclockwise order, then the vertex must be colored by a morphism 
</p>
<div class="equation">
  \[  \varphi \in \langle  A_1^{\varepsilon _1},\dots , A_ k^{\varepsilon _ k}\rangle   \]
</div>
<p>
 where 
</p>
<div class="equation" id="00D1">
    <span class="equation-label"><a href="/tag/00D1" data-tag="00D1">18.5.1</a></span>
    <div>\begin{equation} \label{e:signed-object2} A_ i^{\varepsilon _ i} =\begin{cases}  A_ i, &  \text{if the corresponding arc is directed outward}\\  A_ i^* & \text{if the corresponding arc is directed inward} \end{cases} \end{equation}</div>
</div>
<p>
 see Figure&#160;<a href="/tag/00D2" data-tag="00D2">18.5.1</a>. 
</p>
</li>
</ul></p>
</article> 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c18-fig06.svg" /> <figcaption class="figcaption">Figure 18.5.1. Coloring the vertices of $\mathcal{C}$-colored graphs. We put a small disk at the vertex.</figcaption>  </div>

</figure>
<p>
For presentation purposes, we will frequently draw small circles in place of vertices and put the corresponding color (i.e., a morphism of $\mathcal{C}$) inside the disk. 
</p>
<p>
Such colored graphs, with minor modifications, have appeared in the physics literature under the name “string-nets”, see <span class="cite">[<a href="/bibliography/levin-wen">LW2005</a>]</span>. 
</p>
<p>
The following theorem is a modification of Theorem&#160;<a href="/tag/00C9" data-tag="00C9">18.1.1</a>; we give it here in the form written down in <span class="cite">[<a href="/bibliography/kirillov-stringnet">Kir2011</a>]</span>. <article class="env-theorem" id="00D3">
  <p><a class="environment-identifier" href="/tag/00D3">Theorem <span data-tag="00D3">18.5.1</span>.</a> There is a unique way to assign to every $\mathcal{C}$-colored planar graph $\Gamma $ in a disk $D\subset \mathbb {R}^2$ a vector </p>
  <div class="equation" >
    <span class="equation-label">18.5.4</span>
    <div>\begin{equation}  \langle \Gamma \rangle _ D\in \langle A_1^{\varepsilon _1}\boxtimes \dots \boxtimes A_ k^{\varepsilon _ k}\rangle  \end{equation}</div>
</div>
  <p> where $A_1, \dots , A_ k$ are colors of edges meeting the boundary of $D$ (legs), taken in counterclockwise order, with the same sign conventions as before so that the following conditions are satisfied: </p>
  <p><ol>
  <li><p>
$\langle \Gamma \rangle $ only depends on the isotopy class of $\Gamma $. 
</p>
</li><li><p>
If $\Gamma $ is a single vertex colored by $\varphi \in \langle A_1^{\varepsilon _1}\boxtimes \dots \boxtimes A_ k^{\varepsilon _ k}\rangle $, then $\langle \Gamma \rangle =\varphi $. 
</p>
</li><li><p>
Local relations shown in Figure&#160;<a href="/tag/00D4" data-tag="00D4">18.5.2</a> hold. 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c18-fig07.svg" /> $=$ <img class="includegraphics" src="/static/figures/c18-fig08.svg" /> <br /><img class="includegraphics" src="/static/figures/c18-fig09.svg" /> $=$ <img class="includegraphics" src="/static/figures/c18-fig10.svg" /> &#8195;&#8195;$k\ge 0$<br /><img class="includegraphics" src="/static/figures/c18-fig11.svg" /> $=$ <img class="includegraphics" src="/static/figures/c18-fig12.svg" /> 
</p>
<figcaption class="figcaption">Figure 18.5.2. Local relations for colored graphs. Here $\varphi \circ \psi $ is defined by (<a href="/tag/00CT" data-tag="00CT">18.4.3</a>). </figcaption>


</figure>
<p>
Local relations should be understood as follows: for any pair $\Gamma , \Gamma '$ of colored graphs which are identical outside a subdisk $D'\subset D$, and in this disk are homeomorphic to the graphs shown in Figure&#160;<a href="/tag/00D4" data-tag="00D4">18.5.2</a>, we must have $\langle \Gamma \rangle =\langle \Gamma '\rangle $. 
</p>
</li>
</ol></p>
  <p> We will call the vector $\langle \Gamma \rangle $ the <em>evaluation</em> of $\Gamma $. </p>
</article> 
</p>
<p>
In particular, for a closed $\mathcal{C}$-colored graph $\Gamma \subset \mathbb {R}^2$, $\langle \Gamma \rangle \in \mathbf{k}$ is a number. 
</p>
<p>
The evaluation map $\Gamma \to \langle \Gamma \rangle $ defined in Theorem&#160;<a href="/tag/00D3" data-tag="00D3">18.5.1</a> has a number of useful properties which can be found, e.g., in <span class="cite">[<a href="/bibliography/kirillov-stringnet">Kir2011</a>]</span>. We only give here one of them. 
</p>
<p>
<article class="env-lemma" id="00D5">
  <p><a class="environment-identifier" href="/tag/00D5">Lemma <span data-tag="00D5">18.5.2</span>.</a> Let $\Gamma $ be a $\mathcal{C}$-colored graph in a disk $D$, and let $D'\subset D$ be a subdisk such that $\partial D'$ does not contain vertices of $\Gamma $ and meets edges of $\Gamma $ transversally. Then $\langle \Gamma \rangle _ D$ will not change if we replace subgraph $\Gamma \cap D'$ by a single vertex colored by $\langle \Gamma \cap D'\rangle _{D'}$. </p>
</article> 
</p>
<p>
Moreover, it turns out that we can also define $\langle \Gamma \rangle $ for a $\mathcal{C}$-colored graph on the sphere. 
</p>
<p>
<article class="env-lemma" id="00D6">
  <p><a class="environment-identifier" href="/tag/00D6">Lemma <span data-tag="00D6">18.5.3</span>.</a> Let $\Gamma $ be a $\mathcal{C}$-colored graph on the sphere $S^2$. Choose a point $p\in S^2$ which does not lie on any of the edges of $\Gamma $; then we can identify $S^2\setminus \{ p\} \simeq \mathbb {R}^2$ and thus define $\langle \Gamma \rangle _{S^2\setminus \{ p\} }\in \mathbf{k}$. </p>
  <p>Then so-defined $\langle \Gamma \rangle _{S^2\setminus \{ p\} }$ does not depend on the choice of point $p$. </p>
</article> Indeed, it suffices to show that the number $\langle \Gamma \rangle _{S^2\setminus \{ p\} }$ does not change when we move point $p$ through one of the edges of $\Gamma $. But this is exactly the equality of left and right traces in Definition&#160;<a href="/tag/00C3" data-tag="00C3">17.3.3</a>: 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig08.svg" /></div>
<p>
Lemma&#160;<a href="/tag/00D6" data-tag="00D6">18.5.3</a> was first proved in <span class="cite">[<a href="/bibliography/barrett">BW1996</a>]</span>; in fact, this was the motivation for introducing the notion of a spherical category (which also explains the name). 
</p>
<p>
To simplify the future constructions, we introduce two additional conventions for working with colored graphs. <article class="env-convention" id="00D7">
  <p><a class="environment-identifier" href="/tag/00D7">Convention <span data-tag="00D7">18.5.1</span>.</a> If a colored graph contains a pair of vertices, one with outgoing edges labeled $A_1,\dots , A_ n$ and the other with edges labeled $A_ n^*,\dots , A_1^*$, and the vertices are labeled by a pair of letters $\varphi ,\varphi ^*$ (or $\psi , \psi ^*$, or …), it will stand for summation over the dual bases: </p>
  <div class="equation" id="00ES">
    <span class="equation-label"><a href="/tag/00ES" data-tag="00ES">18.5.5</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig02.svg"></div>
</div>
  <p> where $\varphi _\alpha \in \langle A_1,\dots , A_ n\rangle $, $\varphi ^\alpha \in \langle A_ n^*,\dots , A_1^*\rangle $ are dual bases with respect to the pairing (<a href="/tag/00CX" data-tag="00CX">18.4.6</a>). </p>
</article> 
</p>
<p>
<article class="env-convention" id="">
  <p><a class="environment-identifier" href="/tag/">Convention <span data-tag="">18.5.2</span>.</a>A dashed line in a colored graph will stand for the sum of all colorings of an edge by simple objects $i$, each taken with coefficient $d_ i=\dim X_ i$: </p>
  <div class="equation" id="00ET">
    <span class="equation-label"><a href="/tag/00ET" data-tag="00ET">18.5.6</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig03.svg"></div>
</div>
</article> 
</p>
<p>
Using these conventions, we can formulate some properties of colored graphs. <article class="env-lemma" id="00DA">
  <p><a class="environment-identifier" href="/tag/00DA">Lemma <span data-tag="00DA">18.5.4</span>.</a> We have the following equalities (here and below, equality of two colored graphs should be understood as equality $\langle \Gamma _1\rangle =\langle \Gamma _2\rangle $): </p>
  <div class="equation" >
    <span class="equation-label">18.5.7</span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig04.svg"></div>
</div>
</article> 
</p>
