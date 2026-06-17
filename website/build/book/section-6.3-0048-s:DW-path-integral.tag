<h2 id="s:DW-path-integral" class="tex-section"><span data-tag="0048">6.3</span> Path integral interpretation of DW theory</h2>
<p>
 One can rewrite our definition of DW theory so that it looks similar to the original description of QFT in terms of path integrals. Namely, let $BG$ be the classifying space of the group $G$; this is a topological space which is obtained by taking a contractible space $EG$ on which $G$ acts freely and then defining $BG=EG/G$. (Explicit constructions of $EG$ and $BG$ are well-known; note however that typically $BG$ is infinite-dimensional, even for a finite group $G$). 
</p>
<p>
We have the universal $G$-bundle $EG\to BG$; thus, any continuous map $\gamma \colon M\to BG$ gives rise to the pullback bundle $P_\gamma = \gamma ^*(EG)$ over $M$. It is well known that any $G$-bundle can be obtained in this way; more precisely, we have a bijection 
</p>
<div class="equation">
  \[  \text{isomorphism classes in }\operatorname{Bun}_ G(M)= [M, BG]  \]
</div>
<p>
 where $[M,BG]$ is the set of homotopy classes of maps $M\to BG$. 
</p>
<p>
Thus, the definition of DW invariant of a closed $n$-manifold can be rewritten as follows 
</p>
<div class="equation">
  \[  Z_ G(M)=\int _{[M, BG]} D\gamma  \]
</div>
<p>
 where the integral is over the set of homotopy classes of maps (which is a finite set) and the measure $D\gamma $ is defined by the condition that each homotopy class $[\gamma ]$, considered as a point in the finite set $[M, BG]$, has measure $\frac{1}{|\operatorname{Aut}(P_\gamma )|}$. 
</p>
<p>
This also suggests that we can define a “twisted” version of DW theory. Assume from now on that $M$ is a closed oriented $n$-manifold, with fundamental class $[M]\in H_ n(M, \mathbb {Z})$. Let $\omega \in H^ n(BG, U(1))$ be a cohomology class; then $\gamma $ allows us to define the pullback class $\gamma ^*(\omega )\in H^ n(M, U(1))$, and pairing it with $[M]$ gives a number. Since $\omega $ is a cohomology class, the pullback $\gamma ^*(\omega )$ depends only on the homotopy class $[\gamma ]$, so the pairing $\langle \gamma ^* \omega , [M]\rangle $ is a well-defined function on $[M, BG]$. Thus, we define 
</p>
<div class="equation">
  \[  Z_ G^\omega (M)= \int _{[M, BG]}\langle \gamma ^* \omega , [M]\rangle  D\gamma .  \]
</div>
<p>
 One should think of $\langle \gamma ^* \omega , [M]\rangle $ as an analogue of the term $e^{iS(\phi )}$ in the path integral. 
</p>
<p>
Note that the short exact sequence of abelian groups $0\to \mathbb {Z}\to \mathbb {R}\to \mathbb {R}/\mathbb {Z}\to 0$ gives rise to a long exact sequence of cohomology of $BG$; since it is well known that for a finite group and $n\ge 1$, $H^ n(BG, \mathbb {R})=H^ n(G,\mathbb {R})=0$ (here $H^ n(G)$ is the group cohomology), we get an isomorphism 
</p>
<div class="equation">
  \[  H^ n(BG, U(1))=H^{n+1}(BG, \mathbb {Z}).  \]
</div>
<p>
 Thus, the “twist” $\omega $ can also be thought of as an element in $H^{n+1}(BG,\mathbb {Z})$. 
</p>
<p>
<br /> 
</p>
