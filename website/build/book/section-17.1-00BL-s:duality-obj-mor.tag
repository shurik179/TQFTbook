<h2 id="s:duality-obj-mor" class="tex-section"><span data-tag="00BL">17.1</span> Duality for objects and morphisms</h2>

<p>
First, we study the question of duality for objects of $\mathbf{Tens}$, i.e., for finite tensor categories. Here the answer is simple and very similar to the one for 2-category $\mathbf{Alg}$. 
</p>
<p>
Let $\mathcal{C}$ be a finite tensor category. It is naturally a $\mathcal{C}$-bimodule category; equivalently, we can consider it as either left or right module category over the tensor category $\mathcal{C}^ e=\mathcal{C}\boxtimes \mathcal{C}^{\mathrm{mp}}$. 
</p>
<p>
<article class="env-theorem" id="00BM">
  <p><a class="environment-identifier" href="/tag/00BM">Theorem <span data-tag="00BM">17.1.1</span>.</a> Every finite tensor category is rigid as an object in $\mathbf{Tens}$; the dual is given by category $\mathcal{C}^{\mathrm{mp}}$. The evaluation and coevaluation 1-morphisms are given by $\mathcal{C}$, considered as either left or right module over $\mathcal{C}^ e$. </p>
</article> A proof can be found in <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>, <span class="postnote">Proposition 3.1.2</span>]</span>. 
</p>
<p>
This theorem is a direct analog of Theorem&#160;<a href="/tag/0063" data-tag="0063">9.1.1</a>. 
</p>
<p>
Let us now study duality for 1-morphisms in $\mathbf{Tens}$. Recall that given finite tensor categories $\mathcal{C}$, $\mathcal{D}$, the 2-category of 1-morphisms $\mathcal{D}\to \mathcal{C}$ is the category of finite $\mathcal{C}$-$\mathcal{D}$ bimodule categories. 
</p>
<p>
Warning: in <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>]</span>, they use opposite convention! 
</p>
<p>
<article class="env-theorem" id="00BN">
  <p><a class="environment-identifier" href="/tag/00BN">Theorem <span data-tag="00BN">17.1.2</span>.</a> Let ${}_\mathcal{C}\mathcal{M}_\mathcal{D}$ be a finite bimodule category considered as 1-morphism between finite tensor categories $\mathcal{D}\to \mathcal{C}$. Then it has both left and right adjoints, given by categories $\mathcal{M}^\vee =\operatorname{Fun}_\mathcal{C}(\mathcal{M}, \mathcal{C})$, ${}^\vee \mathcal{M}=\operatorname{Fun}_{\mathcal{D}^{\mathrm{mp}}}(\mathcal{M}, \mathcal{D})$. </p>
</article> 
</p>
<p>
Proof is given in <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>, <span class="postnote">Proposition 3.2.1</span>]</span>. 
</p>
<p>
The final step in our discussion of dualizability in $\mathbf{Tens}$ is determining which 2-morphisms (i.e., module functors between bimodule categories) have left and right adjoints. This is where things become non-trivial. Indeed, it is a standard result of homological algebra that if a functor between abelian categories has both left and right adjoints, then it must be exact — and not every functor between bimodule categories is exact. Thus, it is not surprising that we need to impose additional conditions to have adjoints. 
</p>
<p>
<article class="env-theorem" id="00BP">
  <p><a class="environment-identifier" href="/tag/00BP">Theorem <span data-tag="00BP">17.1.3</span>.</a> Let $\mathcal{M}$, $\mathcal{N}$ be finite <em>semisimple</em> $\mathcal{C}$-$\mathcal{D}$ bimodule categories. Then any $F\in \operatorname{Fun}(\mathcal{M}, \mathcal{N})$ has both left and right adjoints, where $\operatorname{Fun}$ is the category of $\mathcal{C}$-$\mathcal{D}$ bimodule functors; moreover, left and right adjoints of $F$ are isomorphic. </p>
</article> As before, word “semisimple” just refers to the structure of abelian category; it is not related to bimodule structure. In the case $\mathcal{C}=\mathcal{D}=\mathbf{Vec_ f}$, bimodule categories are just finite $\mathbf{k}$-linear categories; in this case, the statement of this theorem is exactly the statement of Corollary&#160;<a href="/tag/005Y" data-tag="005Y">8.4.3</a>. Proof of the general case of this theorem is given in <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>, <span class="postnote">Proposition 3.4.1</span>]</span>. 
</p>
