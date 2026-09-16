<h2 id="s:defect-statesum" class="tex-section"><span data-tag="00GJ">13.2</span> State sum construction of TQFT with defects</h2>

<p>
In this section we sketch the construction of the TQFT with defects, i.e., a functor $Z^{\mathrm{defect}}\colon \mathbf{Bord}_2(\mathcal{C})\to \mathcal{C}$, using state sum approach. As before, we only consider the target category $\mathcal{C}=\mathbf{Alg}$. For simplicity, in this section we only explain how one defines $Z(M,C)$ for a colored stratified closed 2-manifold $M$; generalization of this to cobordisms will be explained in the next section. Our exposition follows <span class="cite">[<a href="/bibliography/dkr">DKR2011</a>]</span> with minor changes, though their notation differs from ours (in particular, they use $T^{\mathrm{cw}}$ for what we denote by $Z\equiv Z^{\mathrm{defect}}$). 
</p>
<p>
The state sum construction below is a generalization of construction in Chapter&#160;<a href="/tag/008F" data-tag="008F">12</a>. Thus, given $\mathcal{C}$-colored stratified closed 2-manifold $M$, we begin by choosing a PLCW decomposition $K$ of it; we require that this PLCW decomposition is transversal to the stratification. 
</p>
<p>
As in Section&#160;<a href="/tag/008G" data-tag="008G">12.1</a>, we denote by $K_2$ the set of 2-cells of $K$, by $K_1$ the set of 1-cells (edges), and by $K_0$, the set of vertices. Further, we assume that every edge $r\in K_1$ has at most one intersection with the defect lines, i.e. stratum $M_1$, and each 2-cell $F$ of the decopmosition contains at most one point from $M_0$. An examples of such PLCW decomposition of a stratified manifold is shown in Figure&#160;<a href="/tag/00FK" data-tag="00FK">13.2.1</a>. 
</p>
<p>
As in Section&#160;<a href="/tag/008G" data-tag="008G">12.1</a>, we will denote by $E$ the set of <em>oriented</em> edges of $K$, i.e., pairs consisting of an edge $r\in K_1$ and an orientation of $r$. Thus, every (unoriented) edge $r\in K_1$ gives rise to two oriented edges $r', r''\in E$. To every oriented edge $r\in E$, we assign a vector space $Q_ r$ s follows: 
</p>
<div class="equation" id="00FJ">
    <span class="equation-label"><a href="/tag/00FJ" data-tag="00FJ">13.2.1</a></span>
    <div>\begin{equation} \label{e:q-definition} Q_{r} = \begin{cases}  A, &  \text{if $r$ does not cross a defect line and lies within component of $M_2$ colored by algebra $A$ },\\  X, &  \text{if $r$ crosses defect line which is colored by bimodule $X$, with orientation as shown below FIXME} \end{cases} \end{equation}</div>
</div>
<p>
We define an intermediate vector space $Q(M)$ by tensoring the contribution of 
</p>
<div class="equation" id="00GK">
    <span class="equation-label"><a href="/tag/00GK" data-tag="00GK">13.2.4</a></span>
    <div>\begin{equation} \label{e:Qr} Q(M) = \bigotimes _{r\in E} Q_ r. \end{equation}</div>
</div>
<p>
 Note that in the special case of a manifold without stratification, this coincides with vector space $A^ E$ as defined in (<a href="/tag/008L" data-tag="008L">12.1.3</a>). 
</p>
<p>
Note that each (unoriented) edge $r\in K_1$ gives two factors in $Q(M)$: either two copies of $A$ (if $r$ does not intersect defect lines) or $X\otimes X^*$, where $X, X^*$ are the colors of of the defect line crossing $r$ (one orientation gives $X$, the other, $X^*$). 
</p>
<p>
FIXME 
</p>
<p>
Consider Figure&#160;<a href="/tag/00FK" data-tag="00FK">13.2.1</a> for example. Edge $e_2$, irrespective of its orientation, lies entirely in algebra $b$, so it is labelled $A_ b$. Edge $e_1$, within polygon $p_2$, has defect $x$ crossing it such that the defect is entering $p_2$. So the triplet $(p_2,e_1,+)$ is labelled $X_ x$. The same edge, within polygon $p_1$, has defect $x$ going out of the polygon. So it is labelled $X_ x^*$ for the triplet $(p_1,e_1,+)$. We only consider those triplets where the orientation matches with that of the polygon. We would have to consider both orientations of an edge ( i.e. for example $(p_1,e_1,+)$ as well as $(p_1,e_1,-)$ ) only when the polygon closes on itself through that edge. See <span class="cite">[<a href="/bibliography/dkr">DKR2011</a>, <span class="postnote">Section 3.5</span>]</span> for an example. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c13-fig03.svg" /> <figcaption class="figcaption">Figure 13.2.1. Example of vector spaces assigned to the edges of 2-cell $p_1$. Regions to the left and right of defect $x$ are labelled by algebras $b$ and $a$ respectively.</figcaption>  </div>

</figure>
<p>
Next, for every (unoriented) edge $r$ we define a vector 
</p>
<div class="equation">
  \[  e_ r = \sum x_ i \otimes x^ i\in Q_{r'}\otimes Q_{r''}  \]
</div>
<p>
 where $r'$, $r''$ are two orientations of $r$. Namely, 
</p>
<ul>
  <li><p>
If $r$ doesn't intersect defect lines so that $Q_{r'}\otimes Q_{r''}=A\otimes A$, then $x_ i, x^ i$ are dual bases in $A$ with respect to Frobenius pairing (compare with (<a href="/tag/00GC" data-tag="00GC">12.1.4</a>)). 
</p>
</li><li><p>
If $r$ intersects a defect line labelled by bimodule $X$ or $X^*$ (depending on orientation), then $x_ i, x^ i$ are dual bases in $X$, $X^*$. 
</p>
</li>
</ul>
<p>
Taking product over all unoriented edges $r\in K_1$, we get a vector 
</p>
<div class="equation">
  \[  e_ M=\bigotimes _{r\in K_1} e_ r\in Q(M)  \]
</div>
<p>
 (compare with (<a href="/tag/008M" data-tag="008M">12.1.5</a>)). 
</p>
<p>
FIXME: algebraic data defined by vertices?? 
</p>
<p>
Finally, for a 2-cell $F$ of $K$, we define the space 
</p>
<div class="equation">
  \[  Q_ F=\bigotimes _{r\in \overline{\partial F}}Q_ r  \]
</div>
<p>
 where the tensor product is taken in clockwise order, and a map 
</p>
<div class="equation">
  \[  \varepsilon _ F \colon Q_ F\to \mathbf{k} \]
</div>
<p>
 as follows. 
</p>
<ol>
  <li class="custom-item" data-marker="I."><p>
If the 2-cell contains a single vertex $v\in M_0$, and for each edge $r$ of $F$ there is a unique defect line passing through that edge, then we define 
</p>
<div class="equation" >
    <span class="equation-label">13.2.5</span>
    <div>\begin{equation}  \varepsilon _ F=\varphi _ v\colon X_1\otimes _{A}\dots \otimes X_ k\to \mathbf{k}\end{equation}</div>
</div>
<p>
 (the product is taken in clockwise order). 
</p>
<p>
If $F$ contains a vertex, but certain edges don't intersect any defect lines, we multiply the colors of these edges and the color of the adjacent bimodule elements, as illustrated by the figure below. 
</p>
<p>
FIXME 
</p>
</li><li class="custom-item" data-marker="II."><p>
If the cell $F$ has no vertex and contains a unique defect line, colored by $X$ and crossing two edges of $F$, then we add on this line a single vertex $v$ colored by $\varphi _ v=\operatorname{ev}_ X\colon X^*\otimes X\to \mathbf{k}$, and then use the previous construction. 
</p>
</li><li class="custom-item" data-marker="III."><p>
If no defect line passes through $F$, and $F$ lies in region labelled by algebra $A$, then 
</p>
<div class="equation">
  \[  \varepsilon _ F(a_1 \otimes \cdots \otimes a_ k) = \varepsilon _{A}(a_1 \cdots a_ k)  \]
</div>
<p>
 (compare with (<a href="/tag/00GD" data-tag="00GD">12.1.7</a>)). 
</p>
</li>
</ol>
<p>
Note that case III can be considered as special case of I, if we allow ourselves adding “trivial” defect lines, colored by ${}_ AA_ A$, in any region colored by algebra $A$. 
</p>
<p>
As before, taking the tensor product over all 2-cells $F\in K_2$ and observing that $\bigotimes _ F Q_ F=Q(M)$ (which follows from the fact that every unoriented edge of $K$ appears exactly twice as a boundary of some 2-cell, with opposite orientations), we can define the map 
</p>
<div class="equation">
  \[  \varepsilon _ M=\bigotimes _{F\in K_2} \varepsilon _ F \colon Q(M)\to \mathbf{k}.  \]
</div>
<p>
We now define the invariant of a $\mathcal{C}$-colored stratified manifold $M$ with a given cell decomposition $K$ by 
</p>
<div class="equation" id="00GL">
    <span class="equation-label"><a href="/tag/00GL" data-tag="00GL">13.2.6</a></span>
    <div>\begin{equation} \label{e:defect-state-sum} Z(M,C,K)=\varepsilon _ M (e_ M) \end{equation}</div>
</div>
<p>
 (compare with (<a href="/tag/008P" data-tag="008P">12.1.10</a>)). FIXME: $w^{-1}$?? 
</p>
<p>
The functor $Z$ for a bordism $M:U\rightarrow V$ is defined as: 
</p>
<div class="equation" >
    <span class="equation-label">13.2.7</span>
    <div>\begin{equation}  Z(M) : Z(U) \xrightarrow {id_{Z(U)} \otimes P(M)} Z(U) \otimes Q(M) \otimes Z(V) \xrightarrow {E(M) \otimes id_{Z(V)}} Z(V) \end{equation}</div>
</div>
<p>
We explain $Z(U), Z(V), P(M), E(M)$ next. 
</p>
<p>
Let's define the functor on a (decorated) circle $O$ first. For a more general object $U=O_1 \sqcup O_2 \sqcup \cdots \sqcup O_ n$, we then have $Z(U)=Z(O_1)\otimes Z(O_2) \otimes \cdots \otimes Z(O_ n)$. As a 1-dimensional space, a circle doesn't need 2-cells for its decomposition. <span class="cite">[<a href="/bibliography/dkr">DKR2011</a>, <span class="postnote">Section 2.3</span>]</span> provides a construction using collars to assign a vector space to decorated circles with just this data. But we will reuse the following equivalent boundary convention. For a circle $O$ lying on $\partial _{in} M$, we assign the same vector space to each edge as was defined in (<a href="/tag/00FJ" data-tag="00FJ">13.2.1</a>). For a circle lying on $\partial _{out} M$, we still use the (<a href="/tag/00FJ" data-tag="00FJ">13.2.1</a>), but dualize the $X$ type vector spaces. 
</p>
<p>
The map $P(M): \mathbf{k}\rightarrow Q(M) \otimes Z(V)$ is defined as: 
</p>
<div class="equation" >
    <span class="equation-label">13.2.8</span>
    <div>\begin{equation}  P(M) = \bigotimes _{e \in C_1(M), e \notin \partial _{\mathrm{in}} M} P_ e \end{equation}</div>
</div>
<p>
For an edge $e$ intersecting a defect $x$, the propagator map $P_ e: \mathbf{k}\rightarrow Q_{p(e)_1,e,\mathrm{or}_1} \otimes Q_{p(e)_2,e,\mathrm{or}_2}$ comes from a basis $\sum _{i} u_ i \otimes u_ i^* \in X_ x \otimes X_ x^*$. For an edge that does not intersect any defect, and is contained in Frobenius algebra $a$, the map $P_ e$ comes from the coevaluation map $\beta _{A_ a}$ of the algebra $a$. 
</p>
<p>
We then define the evaluation map $E_ p: \bigotimes _{(e,\mathrm{or}) \in \partial p} Q_{p,e,\mathrm{or}} \rightarrow \mathbf{k}$ for each polygon $p$ as: 
</p>
<ol>
  <li class="custom-item" data-marker="I."><p>
If no defect line passes through $p$, and $p$ lies in region labelled by algebra $a$, then $E_ p(q_1 \otimes \cdots q_ m) = \varepsilon _{A_ a}(q_1 \cdots q_ m)$. This is the same map which was used for TQFT without defects ( see (<a href="/tag/008H" data-tag="008H">12.1.1</a>) ). 
</p>
</li><li class="custom-item" data-marker="II."><p>
Let's say a defect line $x$ passes through two edges such that $q_1 \in X_ x^*$ ( outgoing ) and $q_ i \in X_ x$ ( incoming) , then $E_ p(q_1 \otimes \cdots q_ m) = q_1 ( (q_2 \cdots q_{i-1}).q_ i.(q_{i+1}\cdots q_ m))$. Recall that $q_ i$ is a bimodule on which appropriate algebra elements can act from right or left sides, and $q_1$ lives in the dual bimodule space. 
</p>
</li><li class="custom-item" data-marker="III."><p>
If the 2-cell contains a junction such that one domain wall passes through each edge of the 2-cell, we use the map $\varphi _ p$, defined in (<a href="/tag/00GH" data-tag="00GH">13.1.1</a>), to assign an element of $\mathbf{k}$ as: 
</p>
<div class="equation" >
    <span class="equation-label">13.2.9</span>
    <div>\begin{equation}  E_ p(q_1 \otimes \cdots \otimes q_ m)=\varphi _ p \circ \pi _\otimes (q_1 \otimes \cdots \otimes q_ m) \end{equation}</div>
</div>
<p>
 $\pi _\otimes : X_{x_1}^{\epsilon _1} \otimes _{A_2} \cdots \otimes _{A_ m} X_{x_ m}^{\epsilon _ m} \rightarrow \circlearrowleft _{A_1} (X_{x_1}^{\epsilon _1} \otimes _{A_2} \cdots \otimes _{A_ m} X_{x_ m}^{\epsilon _ m}) $ is a projection to the cylic tensor product on which $\varphi _ p$ acts. If $p$ contains a junction, but certain edges don't intersect any domain wall, we can still use this definition of $E_ p$ by multiplying its algebra elements with an adjacent bimodule. 
</p>
</li>
</ol>
<div class="centered"> <img class="includegraphics" src="/static/figures/c13-fig04.svg" /> </div>
<p>
For example, for the defect network shown above, we indicate by subscripts as to which definition of $E_ p$ will be used in different polygons. Altogether, the evaluation map $E(M)$ is then defined as: 
</p>
<div class="equation" >
    <span class="equation-label">13.2.10</span>
    <div>\begin{equation}  E(M) = \bigotimes _{p \in C_2(M)} E_ p \end{equation}</div>
</div>
<p>
This completes the definition of the functor $Z$. In the special case where the bordism has no boundary, we have $\partial _{\mathrm{in}} = \partial _{\mathrm{out}} = \emptyset $. Then $Z$ is just a map from $\mathbf{k}$ to $\mathbf{k}$, which is just an element of $\mathbf{k}$. 
</p>
