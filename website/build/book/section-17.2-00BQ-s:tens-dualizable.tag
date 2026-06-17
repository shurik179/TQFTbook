<h2 id="s:tens-dualizable" class="tex-section"><span data-tag="00BQ">17.2</span> Fully dualizable objects in $\mathbf{Tens}$</h2>
<p>
 We can now put it all together and describe the maximal subcategory with duals in $\mathbf{Tens}$. 
</p>
<p>
<article class="env-theorem" id="00BR">
  <p><a class="environment-identifier" href="/tag/00BR">Theorem <span data-tag="00BR">17.2.1</span>.</a> Let $\mathbf{Tens}^{\mathrm{ss}}\subset \mathbf{Tens}$ be the category with the following objects and morphisms: </p>
  <p><ul>
  <li><p>
Objects: <em>semisimple</em> finite tensor categories 
</p>
</li><li><p>
1-morphisms: semisimple finite bimodule categories 
</p>
</li><li><p>
2-morphisms: all module functors between bimodule categories 
</p>
</li><li><p>
3-morphisms: functorial morphisms 
</p>
</li>
</ul></p>
  <p> Then $\mathbf{Tens}^{\mathrm{ss}}$ is a category with duals. </p>
</article> This is <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>, <span class="postnote">Proposition 3.4.3</span>]</span>. 
</p>
<p>
Note that the word semisimple just refers to the structure of $\mathbf{k}$-linear category; it is not related to monoidal structure or structure of a bimodule category. 
</p>
<p>
Indeed, if $\mathcal{C}$ is a semisimple finite tensor category, then it has a dual $\mathcal{C}^{\mathrm{mp}}$ which is obviously also semisimple, and the evaluation and coevaluation 1-morphisms are themselves semisimple module categories (since both are given by $\mathcal{C}$ itself) and thus are 1-morphisms in $\mathbf{Tens}^{\mathrm{ss}}$. Similarly, it is easy to show that for a semisimple bimodule category ${}_\mathcal{C}\mathcal{M}_\mathcal{D}$ considered as a 1-morphism in $\mathbf{Tens}^{\mathrm{ss}}$, the left and right adjoints, which are given by $\operatorname{Fun}_\mathcal{C}(\mathcal{M}, \mathcal{C})$ and $\operatorname{Fun}_\mathcal{D}(\mathcal{M}, \mathcal{D})$, are again semisimple and thus are 1-morphisms in $\mathbf{Tens}^{\mathrm{ss}}$. Finally, by Theorem&#160;<a href="/tag/00BP" data-tag="00BP">17.1.3</a>, every 2-morphism in $\mathbf{Tens}^{\mathrm{ss}}$ has left and right adjoints. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">17.2.1</span>.</a>In <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>]</span> this theorem is formulated slightly differently: instead of requiring objects, i.e., tensor categories, to be semisimple, they require these categories to be <em>separable</em>, which better matches the definition for algebras. However, in characteristic zero case, these two notions coincide, and defining notion of separable tensor category is more complicated than doing it for algebras (we cannot state it directly; instead we state in terms of an algebra in the category). Therefore, we have chosen to simplify the exposition and avoid introducing the notion of separable tensor category. </p>
</article> 
</p>
<p>
Semisimple finite tensor categories have another name: they are called <em>fusion categories</em>. 
</p>
<p>
<article class="env-definition" id="00BS">
  <p><a class="environment-identifier" href="/tag/00BS">Definition <span data-tag="00BS">17.2.1</span>.</a> A fusion category is a a semisimple finite tensor category, i.e., a semisimple finite $\mathbf{k}$-linear category with a rigid monoidal structure such that $\operatorname{End}(\mathbf{1})=\mathbf{k}$. </p>
</article> 
</p>
<p>
As an immediate corollary of Theorem&#160;<a href="/tag/00BR" data-tag="00BR">17.2.1</a>, we get the following result. <article class="env-corollary" id="00BT">
  <p><a class="environment-identifier" href="/tag/00BT">Corollary <span data-tag="00BT">17.2.2</span>.</a> Any fusion category is a fully dualizable object in $\mathbf{Tens}$. </p>
</article> 
</p>
<p>
In fact, one can prove that it converse is also true: a finite tensor category is fully dualizable as an object in $\mathbf{Tens}$ if and only if it is semisimple; see <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>, <span class="postnote">Proposition 3.4.10</span>]</span>. 
</p>
<p>
Thus, by Cobordism Hypothesis, framed extended 3d TQFTs with values in $\mathbf{Tens}$ are classified by fusion categories. 
</p>
