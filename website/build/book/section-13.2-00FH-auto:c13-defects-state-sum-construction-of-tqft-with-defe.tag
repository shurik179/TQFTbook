<h2 id="auto:c13-defects-state-sum-construction-of-tqft-with-defe" class="tex-section"><span data-tag="00FH">13.2</span> State sum construction of TQFT with defects</h2>
<p>
 In this section we sketch the construction of the functor $Z^{\mathrm{defect}}$ that maps the (decorated) bordism $M:U\rightarrow V$ to $\mathbf{Vec}_{\mathbf{k}}$ using a cell decomposition. We suppress the superscript $\mathrm{defect}$ for the remainder of the chapter for brevity. We follow the exposition of <span class="cite">[<a href="/bibliography/dkr">DKR2011</a>]</span>. ( Our $Z \equiv Z^{\mathrm{defect}}$ is equivalent to $T^{\mathrm{cw}}$). 
</p>
<p>
We start by first associating a vector $Q_{p,e,or}$ to each oriented edge, within each polygon $p$. The contribution $Q_{p,e,or}$ of each edge is defined as: 
</p>
<div class="equation" id="00FJ">
    <span class="equation-label"><a href="/tag/00FJ" data-tag="00FJ">13.2.1</a></span>
    <div>\begin{equation} \label{e:q-definition} Q_{p,e,\mathrm{or}} = \begin{cases}  A_ a, &  \text{if $e$ does not cross a defect line and lies within $M_2$ labelled by algebra $a$ },\\  X_ x, &  \text{if $e$ crosses defect which is labelled $x$ with orientation into the polygon $p$ },\\  X_ x^*, &  \text{if $e$ crosses defect which is labelled $x$ with orientation out of the polygon $p$ }. \end{cases} \end{equation}</div>
</div>
<p>
We define an intermediate vector space $Q(M)$ by tensoring the contribution of all edges that are not in incoming boundary of $M$. 
</p>
<div class="equation" >
    <span class="equation-label">13.2.5</span>
    <div>\begin{equation}  Q(M) = \bigotimes _{(p,e,\mathrm{or}),e \notin \partial _{\mathrm{in}} M} Q_{p,e,\mathrm{or}} \end{equation}</div>
</div>
<p>
Note that an internal edge $e$ shared between two polygons $p_1$ and $p_2$ will thus contribute twice, as $Q_{p_1,e,\mathrm{or}} \otimes Q_{p_2,e,\bar{\mathrm{or}}}$. 
</p>
<p>
Consider Figure <a href="/tag/00FK" data-tag="00FK">13.2.1</a> for example. Edge $e_2$, irrespective of its orientation, lies entirely in algebra $b$, so it is labelled $A_ b$. Edge $e_1$, within polygon $p_2$, has defect $x$ crossing it such that the defect is enterin $p_2$. So the triplet $(p_2,e_1,+)$ is labelled $X_ x$. The same edge, within polygon $p_1$, has defect $x$ going out of the polygon. So it is labelled $X_ x^*$ for the triplet $(p_1,e_1,+)$. We only consider those triplets where the orientation matches with that of the polygon. We would have had to consider both orientations of an edge ( i.e. for example $(p_1,e_1,+)$ as well as $(p_1,e_1,-)$ ) only when the polygon closes on itself through that edge. See <span class="cite">[<a href="/bibliography/dkr">DKR2011</a>, <span class="postnote">Section 3.5</span>]</span> for an example. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c13-fig03.svg" /> <figcaption class="figcaption">Figure 13.2.1. Example of vectors assigned to each edge within a 2-cell.</figcaption>  </div>

</figure>
<p>
The functor $Z$ is defined as: 
</p>
<div class="equation" >
    <span class="equation-label">13.2.6</span>
    <div>\begin{equation}  Z(M) : Z(U) \xrightarrow {id_{Z(U)} \otimes P(M)} Z(U) \otimes Q(M) \otimes Z(V) \xrightarrow {E(M) \otimes id_{T(V)})} Z(V) \end{equation}</div>
</div>
