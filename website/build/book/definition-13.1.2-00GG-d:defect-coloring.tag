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