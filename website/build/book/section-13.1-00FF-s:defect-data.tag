<h2 id="s:defect-data" class="tex-section"><span data-tag="00FF">13.1</span> Data for TQFT with defects</h2>

<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c13-fig01.svg" /> <figcaption class="figcaption">Figure 13.1.1. A stratified manfold decorated with algebras $A$,$B$ and $C$ on different regions. Labelling of defects ( shown in blue ) by bimodules requires a choice of orientation, which is suppressed here for brevity.</figcaption>  </div>

</figure>
<p>
TQFT with defects can be defined as a functor of symmetric monoidal 2-categories: 
</p>
<div class="equation">
  \[  Z^{\mathrm{defect}}\colon \mathbf{Bord}_2(M,\mathrm{Coloring})\to \mathbf{Vec}_\mathbf{k}.  \]
</div>
<p>
Here $\mathbf{Bord}_2(M,\mathrm{Coloring})$ is a 2-bordism decorated with certain extra data given as: 
</p>
<ol>
  <li><p>
Manfold $M$ with a stratification 
</p>
<p>
$M=M_2 \cup M_1 \cup M_0$ 
</p>
<p>
Here $M_2$ are the 2 dimensional open sets whose boundary constitutes $M_1$. Stratum $M_1$ is codimension 1 subspace with boundary $M_0$. Similarly, $M_0$ are codimension 2 subspace at the boundary of $M_1$. ( For higher dimensional manifolds, the stratification can have higher codimension strata.) 
</p>
<p>
For example, in the Figure <a href="/tag/0097" data-tag="0097">13.1.1</a>, the stratum $M_2$ consists of three regions, labelled as $A$,$B$, and $C$. The stratum $M_1$ consists of blue lines. The red dot at the intersection of blue lines belongs to the stratum $M_0$. 
</p>
</li><li><p>
Coloring 
</p>
<ul>
  <li><p>
Connected components of $M_2$ are colored by semisimple symmetric Frobenius algebras. In Figure <a href="/tag/0097" data-tag="0097">13.1.1</a>, $A$, $B$, and $C$, are three such algebras. 
</p>
</li><li><p>
Connected components of $M_1$ are colored by bimodules. These 1-dimensional components ( called defects ) come with a orientation. If the regions to the left and to the right of a defect are colored by algebras $A$ and $B$ respectively, the defect is labelled by a bimodule $ _ AM_ B$. If we change the orientation of defect, it is labelled by $ _ BM^{*}_ A$ bimodule. $M^*$ is dual to $M$, as expected from orientation reversal. 
</p>
</li><li class="custom-item" id="00FG"><p>
The vertices ( also called junctions ) are points where two or more defects meet. For each vertex $u \in M_0$, we need a multilinear map $ \varphi _ u$ from cyclic tensor produce of incident bimodules to the field $\mathbf{k}$. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c13-fig02.svg" />  </div>

</figure>
<p>
For example, if the junction looks like as given above, then it is assigned a map: $\varphi : \circlearrowleft _{A_1} ( M^1 \otimes _{A_2} M^2 \otimes _{A_3} M^3 \otimes _{A_4} M^4 ) \rightarrow \mathbf{k}$. Here, $\circlearrowleft _{A} M$ is the cokernel of the map $A \otimes M \rightarrow M, a \otimes m \mapsto am - ma$. This property of $\varphi $ ensures that the junction has no preferred starting edge. See <span class="cite">[<a href="/bibliography/carqueville">Car2016</a>, <span class="postnote">Section 2.3</span>]</span> for motivation for this data. 
</p>
</li>
</ul>
</li>
</ol>
