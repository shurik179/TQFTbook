<h1 id="c:2d-defects" class="tex-chapter"><span data-tag="0096">13</span> 2d TQFT with defects</h1>
<p>
 References: <span class="cite">[<a href="/bibliography/cdr">CDZR2025</a>]</span>: review article; <span class="cite">[<a href="/bibliography/dkr">DKR2011</a>]</span> one of first constructions; <span class="cite">[<a href="/bibliography/carqueville">Car2016</a>]</span> 
</p>
<p>
FIXME 
</p>
<p>
So far we only considered TQFTs defined on (unstratified) manifolds. Even the manifolds with corners, that we used to motivate the definition of extended TQFT, were meant to be glued back to form an unstratified manifold. Such (extended) TQFTs can be considered as describing physics on a homogenous spacetime. It is then natural to consider more general physical systems, where the different parts of the spacetime are described by different TQFTs. The codimension 1 surface separating the homogenous parts can be thought of as a defect that makes the spacetime non-homogenous. This motivates us to define the notion of TQFT with defects. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c13-fig01.svg" /> <figcaption class="figcaption">Figure 13.0.1. A stratified manfold decorated with algebras $A$,$B$ and $C$ on different regions.</figcaption>  </div>

</figure>
<ol>
  <li><p>
Manfold $M$ with a stratification 
</p>
<p>
$M=M^0 \cup M^1 \cup M^2$ 
</p>
<p>
Here $M^0$ are the 2 dimensional open sets whose boundary constitutes $M^1$. Stratum $M^1$ is codimension 1 subspace with boundary $M^2$. Similarly, $M^2$ are codimension 2 subspace at the boundary of $M^1$. ( For higher dimensional manifolds, the stratification can have higher codimension strata.) 
</p>
<p>
For example, in the Figure <a href="/tag/0097" data-tag="0097">13.0.1</a>, the stratum $M^0$ consists of three regions, labelled as $A$,$B$, and $C$. The stratum $M^1$ consists of blue lines. The red dot at the intersection of blue lines belongs to the stratum $M^2$. 
</p>
</li><li><p>
Coloring 
</p>
<ul>
  <li><p>
Connected components of $M^0$ are colored by semisimple symmetric Frobenius algebras. In Figure <a href="/tag/0097" data-tag="0097">13.0.1</a>, $A$, $B$, and $C$, are three such algebras. 
</p>
</li><li><p>
Connected components of $M^1$ are colored by bimodules. These 1-dimensional components ( called defects ) come with a orientation. If the regions to the left and to the right of a defect are colored by algebras $A$ and $B$ respectively, the defect is labelled by a bimodule $ _ AM_ B$. If we change the orientation of defect, it is labelled by $ _ BM^{*}_ A$ bimodule. $M^*$ is dual to $M$, as expected from orientation reversal. 
</p>
</li><li><p>
The vertices ( also called junctions ) are points where two or more defects meet. For each vertex $u \in D^2$, we need a multilinear map $\varphi _ u: M^1 \otimes _{A_2} M^2 \otimes _{A_3} M^3 \otimes _{A_4} M^4 \rightarrow \mathbf{k}$. 
</p>
</li>
</ul>
</li>
</ol>
<p>
<br /> 
</p>
