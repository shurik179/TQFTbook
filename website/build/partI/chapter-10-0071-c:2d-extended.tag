<h1 id="c:2d-extended" class="tex-chapter"><span data-tag="0071">10</span> Extended 2d TQFT</h1>

<p>
In this chapter we define the notion of extended 2d TQFT and classify such TQFTs. Our exposition is based on Schommer-Pries' thesis <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>]</span>. 
</p>
<p>
Informally, an extended 2d TQFT is a theory in which we allow: 
</p>
<ul>
  <li><p>
0-dimensional manifolds 
</p>
</li><li><p>
1-dimensional cobordisms between 0d manifolds 
</p>
</li><li><p>
2-dimensional cobordisms between them 
</p>
</li>
</ul>
<p>
 and to each of those, assign corresponding algebraic data (to be specified later), subject to appropriate gluing laws. 
</p>
<p>
As mentioned before, the natural language for this is the language of (weak) 2-categories: the 0-, 1-, and 2-dimensional manifolds and bordisms form a 2-category, which we will denote by $\mathbf{Bord}_2$; this category has a natural symmetric monoidal structure, given by disjoint union. Thus, we give the following preliminary definition. 
</p>
<p>
<article class="env-predefinition" id="">
  <p><a class="environment-identifier" href="/tag/">Preliminary Definition <span data-tag="">10.0.1</span>.</a>An extended 2d TQFT is a functor of symmetric monoidal 2-categories </p>
  <div class="equation">
  \[  Z\colon \mathbf{Bord}_2\to \mathcal{C} \]
</div>
  <p> where $\mathcal{C}$ is a target symmetric monoidal 2-category. </p>
</article> Note that unlike the unextended case, where there is a standard choice of the target category $\mathcal{C}$ (namely, the category $\mathbf{Vec}$), in the extended case the choice of $\mathcal{C}$ is less clear. We will discuss it later. 
</p>
<p>
To make this definition precise, we need to actually define the 2-category $\mathbf{Bord}_2$. 
</p>
