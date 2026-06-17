<h2 id="s:graphical" class="tex-section"><span data-tag="00C5">18.1</span> Graphical calculus</h2>
<p>
 In the previous chapters, we had already used graphical presentations of morphisms in a monoidal category. However, until now it was informal: it was only used as an illustration of our constructions and proofs. In this section, we will finally make some precise statements about such graphical presentations. 
</p>
<p>
The idea of using such graphics is quite old; it seems that it was first suggested by Penrose, and then made popular by Joyal and Street <span class="cite">[<a href="/bibliography/joyal-street">JS1991</a>]</span>, <span class="cite">[<a href="/bibliography/joyal-street2">JS1995</a>]</span> and by Reshetikhin and Turaev <span class="cite">[<a href="/bibliography/reshetikhin-turaev">RT1991</a>]</span>. Our exposition follows the recent book <span class="cite">[<a href="/bibliography/turaev-virelizier">TV2017</a>, <span class="postnote">Chapter 2</span>]</span>, which provides the cleanest exposition of these results. Note, however, that in that book their convention is that graphs should be read “from the bottom up”: incoming objects are shown at the bottom, and outgoing, at the top. We use the opposite convention, so we slightly modify their definitions. 
</p>
<p>
Let $\mathcal{C}$ be a pivotal category. Following <span class="cite">[<a href="/bibliography/turaev-virelizier">TV2017</a>]</span>, we define a $\mathcal{C}$-colored <em>Penrose diagram</em> to be the following data: 
</p>
<ul>
  <li><p>
a finite collection of non-intersecting “boxes”, i.e., rectangles with vertical/horizontal sides in the strip $\mathbb {R}\times [0,1]$ 
</p>
</li><li><p>
a finite collection of non-intersecting smooth directed arcs (embedded intervals) and directed circles (images of $S^1$) in the strip $\mathbb {R}\times [0,1]$. Endpoints of arcs are all distinct and can lie either on the horizontal sides of boxes or the top and bottom of the strip, i.e., lines $\mathbb {R}\times \{ 1\} $, $\mathbb {R}\times \{ 0\} $. At the endpoints, the lines must be transversal to the horizontal lines. Other than the endpoints, arcs and circles do not intersect the boxes or top and bottom lines. 
</p>
</li><li><p>
coloring, i.e., assignment of an object of $\mathcal{C}$ to every arc or circle, and assignment of a morphism in $\mathcal{C}$ to every box. Namely, if $A_1, \dots , A_ k$ are the colors of the arcs ending at the top side of a box, and $B_1, \dots , B_ m$ are colors at the bottom of the box (both read left to right), then the box must be colored by a morphism 
</p>
<div class="equation">
  \[  \varphi \in \operatorname{Hom}_\mathcal{C}( A_1^{\varepsilon _1}\otimes \dots \otimes A_ k^{\varepsilon _ k}, B_1^{\varepsilon '_1}\otimes \dots \otimes B_ m^{\varepsilon '_ m} )  \]
</div>
<p>
 where 
</p>
<div class="equation" id="00C6">
    <span class="equation-label"><a href="/tag/00C6" data-tag="00C6">18.1.1</a></span>
    <div>\begin{equation} \label{e:signed-object} A_ i^{\varepsilon _ i} =\begin{cases}  A_ i, &  \text{if the corresponding arc is directed downward}\\  A_ i^* & \text{otherwise} \end{cases} \end{equation}</div>
</div>
<p>
 and similarly for $B$'s, see Figure&#160;<a href="/tag/00C7" data-tag="00C7">18.1.1</a>. 
</p>
</li>
</ul>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c18-fig01.svg" /> <figcaption class="figcaption">Figure 18.1.1. Graphical notation for a morphism in a monoidal category.</figcaption>  </div>

</figure>
<p>
An example of such a diagram is shown in Figure&#160;<a href="/tag/00C8" data-tag="00C8">18.1.2</a>. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c18-fig02.svg" /> <figcaption class="figcaption">Figure 18.1.2. An example of $\mathcal{C}$-colored diagram</figcaption> </div>

</figure>
<p>
For such a diagram $\Gamma $, we can define objects $F_{\mathrm{top}}(\Gamma )$, $F_{\mathrm{bot}}(\Gamma )\in \mathcal{C}$ by taking the tensor product of colors of arcs with endpoints on the top horizontal line $\mathbb {R}\times \{ 1\} $ (respectively, $\mathbb {R}\times \{ 0\} )$, with the same sign convention as in (<a href="/tag/00C6" data-tag="00C6">18.1.1</a>). Our goal is to define, for any such diagram $\Gamma $, a morphism $F(\Gamma )\colon F_{\mathrm{top}}(\Gamma )\to F_{\mathrm{bot}}(\Gamma )$ in $\mathcal{C}$. 
</p>
<p>
To do that, note that for such diagrams (or, to be precise, for isotopy classes of diagrams), we can define two operations. 
</p>
<p>
First, if $\Gamma _1, \Gamma _2$ are diagrams such that the top of $\Gamma _2$ matches the bottom of $\Gamma _1$, we can “stack” them, placing $\Gamma _1$ on top of $\Gamma _2$ and then rescaling vertically; we will denote this composition $\Gamma _2\circ \Gamma _1$. As with gluing cobordisms, this requires smoothing the resulting joined arcs, which is well defined on the set of isotopy classes. 
</p>
<p>
Second, we can define the tensor product $\Gamma _1\otimes \Gamma _2$ by placing $\Gamma _2$ on the right of $\Gamma _1$ in the same strip. 
</p>
<figure class="figure">
  <p>
<img class="includegraphics" src="/static/figures/c18-fig03.svg" /> &#8195;&#8195;&#8195;&#8195;<img class="includegraphics" src="/static/figures/c18-fig04.svg" /> 
</p>
<figcaption class="figcaption">Figure 18.1.3. Composition and tensor product of diagrams</figcaption>

</figure>
<p>
<article class="env-theorem" id="00C9">
  <p><a class="environment-identifier" href="/tag/00C9">Theorem <span data-tag="00C9">18.1.1</span>.</a> Let $\mathcal{C}$ be a pivotal category. Then there is a unique way to assign to each $\mathcal{C}$-colored diagram $\Gamma $ a morphism $F(\Gamma )\colon F_{\mathrm{top}}(\Gamma )\to F_{\mathrm{bot}}(\Gamma )$ such that </p>
  <p><ol>
  <li><p>
$F(\Gamma )$ only depends on isotopy class of $\Gamma $ 
</p>
</li><li><p>
$F(\Gamma _2\circ \Gamma _1)=F(\Gamma _2) F(\Gamma _1)$ 
</p>
</li><li><p>
$F(\Gamma _2\otimes \Gamma _1)=F(\Gamma _2)\otimes F(\Gamma _1)$ 
</p>
</li><li><p>
For a diagram that consists of a single box colored by $\varphi $ as in Figure&#160;<a href="/tag/00C7" data-tag="00C7">18.1.1</a>, $F(\Gamma )=\varphi $ 
</p>
</li><li><p>
For elementary diagrams (interval, cap, cup), the values of $F$ are as shown in Figure&#160;<a href="/tag/00CA" data-tag="00CA">18.1.4</a>. 
</p>
</li>
</ol></p>
</article> 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c18-fig05.svg" /> 
</p>
<figcaption class="figcaption">Figure 18.1.4. Morphisms corresponding to elementary diagrams.</figcaption>


</figure>
<p>
Note that while in the definition of a Penrose diagram we require that boxes are oriented vertically, the isotopy is allowed to rotate the boxes (by multiples of 360 degrees). 
</p>
<p>
This theorem is a reformulation of <span class="cite">[<a href="/bibliography/turaev-virelizier">TV2017</a>, <span class="postnote">Theorem 2.6</span>]</span>; we refer the reader to that book for a proof. It can be restated as follows. Let $\operatorname{Diag}(\mathcal{C})$ be the category whose objects are finite sequences $\mathbf{A}=((A_1, \varepsilon _1), \dots , (A_ k, \varepsilon _ k))$, where $A_ i$ are objects of $\mathcal{C}$ and $\varepsilon _ i=\pm 1$, and morphisms $\mathbf{A}\to \mathbf{B}$ are isotopy classes of $\mathcal{C}$-colored diagrams with colors $A_1, \dots , A_ k$ at the top and colors $B_1, \dots , B_ m$ at the bottom and signs $\varepsilon $ are determined by the orientation of the corresponding arcs as in (<a href="/tag/00C6" data-tag="00C6">18.1.1</a>). The stacking and tensor product operations defined above show that it is a monoidal category, with unit object given by empty collection of objects of $\mathcal{C}$. Then we can restate Theorem&#160;<a href="/tag/00C9" data-tag="00C9">18.1.1</a> as follows. 
</p>
<p>
<article class="env-theorem" id="00CB">
  <p><a class="environment-identifier" href="/tag/00CB">Theorem <span data-tag="00CB">18.1.2</span>.</a> The correspondence shown in Figure&#160;<a href="/tag/00CA" data-tag="00CA">18.1.4</a> can be uniquely extended to a monoidal functor $F\colon \operatorname{Diag}(\mathcal{C})\to \mathcal{C}$. </p>
</article> 
</p>
<p>
In particular, for a closed diagram $\Gamma $ (i.e., with empty top and empty bottom) the above theorem defines $F(\Gamma )\in \operatorname{End}_\mathcal{C}(\mathbf{1})$. If $\mathcal{C}$ is a tensor category, so that $\operatorname{End}(\mathbf{1})=\mathbf{k}$, this gives a numerical invariant of a diagram. 
</p>
<p>
This theorem makes it possible to give graphical proofs of various equalities: in order to show that two morphisms, defined by $\mathcal{C}$-colored diagrams, are equal, it suffices to show that the diagrams themselves are isotopic. Such proofs are much easier to follow than algebraic arguments. 
</p>
