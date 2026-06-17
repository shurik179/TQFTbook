<h2 id="s:infinity-categories" class="tex-section"><span data-tag="009B">14.3</span> Weak categories and infinity categories</h2>

<p>
An alternative approach to the notion of a weak $n$-category is to use the ideas of topology, or more precisely, homotopy theory. The key idea of this approach is that instead of defining a single composition operation which is weakly associative, we allow many composition operations, which must form a contractible space. Paths in this contractible space correspond to $(k+1)$-isomorphisms between the corresponding compositions, homotopies between paths correspond to $(k+2)$-isomorphisms, etc. Different compositions give different points in this contractible space; the fact that they are all isomorphic follows from the fact that this space is connected, and all compatibility relations between these isomorphisms follow from the fact that the space of compositions is contractible. 
</p>
<p>
This idea can be used to define weak $n$-categories; it can also be used to define $(\infty , n)$ categories. Informally, an $(\infty , n)$ category is a category which has morphisms of all orders $k \ge 1$, but for $k&gt;n$, all $k$-morphisms are invertible. 
</p>
<p>
Of course, the above is not yet a definition; even for $n=1$, developing this idea and turning it into a precise definition is non-trivial. In fact, there are many competing ways to define the notion of $(\infty , 1)$ category, all giving different formalizations of the above idea. Among them: 
</p>
<ul>
  <li><p>
Quasicategories, also known as weak Kan complexes 
</p>
</li><li><p>
Complete Segal spaces 
</p>
</li><li><p>
Segal categories 
</p>
</li>
</ul>
<p>
Fortunately, it turns out that in a certain sense all these definitions are equivalent. There are a number of papers discussing this, including <span class="cite">[<a href="/bibliography/toen">Toë2004</a>]</span>, <span class="cite">[<a href="/bibliography/bsp">BSP2021</a>]</span>, and the book <span class="cite">[<a href="/bibliography/riehl-verity">RV2022</a>]</span>; for a short introduction, there is also Emily Riehl's article <span class="cite">[<a href="/bibliography/riehl-notices">Rie2023</a>]</span> in the Notices of the AMS. We will not be discussing this at all; we will restrict ourselves to giving just one definition, based on Segal categories. This construction takes some time; we will do it in the next several sections. Our exposition follows the paper <span class="cite">[<a href="/bibliography/schommer-pries-category">SP2014</a>]</span>; a detailed exposition of the theory of Segal categories as a model for $(\infty , n)$ categories can be found in <span class="cite">[<a href="/bibliography/simpson">Sim2012</a>]</span>. 
</p>
