<h2 id="s:tv-dim01" class="tex-section"><span data-tag="00E5">19.1</span> Turaev–Viro theory in dimensions $0,1$</h2>

<p>
Similar to the case of extended 2d TQFT, here we define 
</p>
<div class="equation">
  \[  Z_\mathcal{C}(\bullet ^+)=\mathcal{C}, \qquad Z_\mathcal{C}(\bullet ^-)=\mathcal{C}^{\mathrm{op}} \]
</div>
<p>
Since the empty zero-dimensional manifold $\emptyset _0$ is the unit under disjoint union, it must be assigned the unit under Deligne tensor product: 
</p>
<div class="equation">
  \[  Z_\mathcal{C}( \emptyset _0)=\mathbf{Vec_ f} \]
</div>
<p>
To each unoriented edge $r \in E$, assign an object 
</p>
<div class="equation">
  \[  E_ r = \bigoplus _{i \in \mathcal{O}(\mathcal{C})} X_ i \boxtimes X_ i^* \in \mathcal{C}_{r'} \boxtimes \mathcal{C}_{r''}  \]
</div>
<p>
 where $r',r''$ are two possible orientations of $r$. Because of symmetry of $E_ r$ ( see Lemma&#160;<a href="/tag/00DC" data-tag="00DC">18.6.1</a> ), it doesn't matter which orientation is labelled $r'$ or $r''$. 
</p>
<p>
For an oriented 1-manifold $N$ ( possibly with a boundary ) we choose a cell decompostion of it and define 
</p>
<div class="equation">
  \[  Z_\mathcal{C}(N) = \dots \boxtimes _\mathcal{C}\mathcal{C}\boxtimes _\mathcal{C}\mathcal{C}\dots  \]
</div>
<p>
 where a $\mathcal{C}$ comes from each edge, and a $\boxtimes _\mathcal{C}$ comes from each internal vertex. ( This is analogous to (<a href="/tag/008U" data-tag="008U">12.2.1</a>), with quotient being achieved by the balanced tensor product. See figure below for a visualization. ) 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c19-fig01.svg" /> </div>
<p>
As can be easily shown using Lemma&#160;<a href="/tag/00BG" data-tag="00BG">16.5.2</a>, this assigns the bimodule category $_\mathcal{C}\mathcal{C}_\mathcal{C}$ to an interval ( independent of the cell decomposition ) 
</p>
<div class="equation">
  \[  Z_\mathcal{C}(I) = \mathcal{C}\boxtimes _\mathcal{C}\boxtimes _\mathcal{C}\cdots \mathcal{C}\simeq \mathcal{C} \]
</div>
<p>
This matches with our expectation. Since, the ordinary interval is the identity cobordism of the positively oriented point, it should be assigned the identity 1-morphism of $\mathcal{C}$, which is the bimodule category $_\mathcal{C}\mathcal{C}_\mathcal{C}$. 
</p>
<p>
<article class="env-exercise" id="">
  <p><a class="environment-identifier" href="/tag/">Exercise <span data-tag="">19.1.1</span>.</a>Show that $Z_\mathcal{C}( S^1 ) \simeq \mathcal{Z}(\mathcal{C})$. ( Recall from Theorem&#160;<a href="/tag/00E2" data-tag="00E2">18.8.2</a> and Theorem&#160;<a href="/tag/00E3" data-tag="00E3">18.8.3</a> that $ \setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss }}$×$\hss $</p>
</article>0C≃C_C^e C≃Z(C) $$. ) <article class="env-exercise" id="">
</article> 
</p>
<p>
Since the one-dimensional empty manifold $\emptyset _1$ is unit under disjoint union of one-manifolds, it should be assigned $\mathbf{Vec_ f}$ ( as bimodule over $\mathbf{Vec_ f}$ ) by $Z$ functor: 
</p>
<div class="equation">
  \[  Z_{\mathcal{C}}(\emptyset _1)=\mathbf{Vec_ f} \]
</div>
<p>
We used the subscript $\mathcal{C}$ in this section just to emphasize that the assignment of data by a Turaev–Viro TQFT depends on the choice of $\mathcal{C}$. We will suppress this subscript in the remaining sections. 
</p>
