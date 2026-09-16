<h2 id="s:defect-data" class="tex-section"><span data-tag="00FF">13.1</span> Data for TQFT with defects</h2>
<p>
 Recall that we have defined a two-dimensional extended TQFT as a symmetric monoidal functor $Z\colon \mathbf{Bord}_2\to \mathcal{C}$, where $\mathcal{C}$ is a (weak) 2-category; such a theory is uniquely determined by a fully dualizable object $A\in \mathcal{C}$. In particular, it assigns an invariant $Z_ A(M)\in \operatorname{End}_\mathcal{C}(\mathbf{1})$ to every closed manifold $M$; equivalently, we can say that it assigns an invariant $Z(M,A)$ to every pair $(M, A)$, where $M$ is a closed 2-manifold and $A\in \mathcal{C}$ is a fully dualizable object. We can think of pair $(M,A)$ as a <em>colored manifold</em>, i.e. a manifold together with some extra data (coloring), which in this case consists of choosing an object $A$. 
</p>
<p>
For theory with defects, we need to modify this definition in two ways. First, instead of usual bordisms, we need to define bordisms with defects, as outlined in introduction to this chapter. Second, we neeed to define the notion of coloring, i.e. assignign appropriate alegbraic data to different strata. Aftre that, we will be able to define an extended TQFY with defects as a symmetric monoidal functor 
</p>
<div class="equation">
  \[  Z^{\mathrm{defect}}\colon \mathbf{Bord}_2(\mathcal{C})\to \mathcal{C}.  \]
</div>
<p>
 where $\mathbf{Bord}_2(\mathcal{C})$ is the 2-category of $\mathcal{C}$-colored stratified oriented 2-bordisms. 
</p>
<p>
We begin by defining closed manifolds with defects, or <em>stratified manifolds</em>. 
</p>
<p>
<article class="env-definition" id="00GF">
  <p><a class="environment-identifier" href="/tag/00GF">Definition <span data-tag="00GF">13.1.1</span>.</a> A <em>stratified 2-manifold</em> is an oriented closed 2-manifold $M$ together with decomposition </p>
  <div class="equation">
  \[  M=M_2\sqcup M_1\sqcup M_0  \]
</div>
  <p> where each $M_ i$ is a (not necessarily compact) locally closed submanifold of dimension $i$ in $M$ such that: </p>
  <p><ul>
  <li><p>
$M_2$ is open and dense in $M$ 
</p>
</li><li><p>
Every point $x\in M_1$ has a neighborhood which looks like shown in FIXME 
</p>
</li><li><p>
Every point $x\in M_0$ has a neighborhood which looks like shown in FIXME 
</p>
</li>
</ul></p>
</article> We will refer to $M_1$ and $M_0$ as strata of dimension 1 (respectively, 0); physicists would also call them defect lines and point defects respectively. 
</p>
<p>
An example of a stratified manifold is shown in Figure&#160;<a href="/tag/0097" data-tag="0097">13.1.1</a> below. 
</p>
<p>
In a similar way one can define the notion of a stratifed manifold with boundary or a stratified cobordism; in this case, we need to require additionally that the stratification meets the boundary transversally (in particular, it means that the codimesion 2 strata should not be on the boundary). 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c13-fig01.svg" /> <figcaption class="figcaption">Figure 13.1.1. A stratified manifold decorated with algebras $A$, $B$ and $C$ on different regions. Defects are shown in red, and are labelled by bimodules. Defects require a choice of orientation, which is suppressed here for brevity.</figcaption>  </div>

</figure>
<p>
Next, we should define the notion of coloring. We do it first in a very special case, namely when the manifodl $M$ is closed and the target category $\mathcal{C}$ is the category of associative algebras. As was previously discussed, fully dualizable objects in this category are finite-dimensional semisimple algebras, and for construction of an extended TQFT one needs a semisimple algebra with extra data, namely with the structure of a symmetric Frobenius algebra. 
</p>
<p>
Before the continuing, let us note that we assume that $M$ is oriented; however, we do not assume any choice of orientation on defect lines (that is, connected components of $M_1$). Note that since $M$ is oriented, choosing an orientation of $M_1$ is equivalent to chooisng orientation of the normal bundle to $M_1$ 
</p>
<p>
<article class="env-definition" id="00GG">
  <p><a class="environment-identifier" href="/tag/00GG">Definition <span data-tag="00GG">13.1.2</span>.</a> Let $M$ be a closed oriented stratified 2-manifold, and let $\mathcal{C}=\mathbf{Alg}$ be the 2-category of alegbras and bimodules as defined in Example&#160;<a href="/tag/004D" data-tag="004D">7.1.2</a>. A $\mathcal{C}$-coloring of $M$ is the following data: </p>
  <p><ul>
  <li><p>
A choice of a semisimple symmetric Frobeinus algebra $C(U)$ for each connected component $U$ of the open strata $M_2$ 
</p>
</li><li><p>
A choice of a 1-morphism (that is, a bimodule) $M=C(Y)$ for every connected component $Y$ of $M$ together with orientation of $Y$. More precisely, if $Y$ separates regions colored by algebras $A$ and $B$ as shown below, then it should be colored by a finite-dimensional $B$-$A$ bimodule $M$. 
</p>
<p>
Moreover, we require that the bimodules corresponding to opposite choice of orientation are duals (in the sense of vectro spaces) of each other. FIXME: better wording. 
</p>
</li><li class="custom-item" id="00FG"><p>
For each vertex $u \in M_0$, we need a multilinear map $\varphi _ u$ from cyclic tensor product of incident bimodules to the field $\mathbf{k}$. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c13-fig02.svg" />  </div>

</figure>
<p>
For example, if the junction looks like as given above, then it is assigned a map: 
</p>
<div class="equation" id="00GH">
    <span class="equation-label"><a href="/tag/00GH" data-tag="00GH">13.1.1</a></span>
    <div>\begin{equation} \label{e:junction-data} \varphi : \circlearrowleft _{A_1} ( M^1 \otimes _{A_2} M^2 \otimes _{A_3} M^3 \otimes _{A_4} M^4 ) \rightarrow \mathbf{k}\end{equation}</div>
</div>
<p>
Here, $\circlearrowleft _{A} M$ is the cokernel of the map $A \otimes M \rightarrow M, a \otimes m \mapsto am - ma$. This property of $\varphi $ ensures that the junction has no preferred starting edge. See <span class="cite">[<a href="/bibliography/carqueville">Car2016</a>, <span class="postnote">Section 2.3</span>]</span> for another motivation behind this data. 
</p>
</li>
</ul></p>
  <p> We will refer to a pair $(M, C)$, where $M$ is an oriented manifold and $C$ is $\mathcal{C}$-coloirng of $M$ as a <em>$\mathcal{C}$-colored manifold</em>. </p>
</article> 
</p>
