<h2 id="s:pachner" class="tex-section"><span data-tag="0082">11.2</span> Pachner moves</h2>
<p>
 Let $M$ be a PL manifold. As mentioned before, it admits many different triangulations. It is natural to ask whether one can get from one triangulation to another by some operations (“moves”). The first result of this kind was established by Alexander in 1930, who proved that any two triangulations can be obtained from each other by a sequence of so-called “stellar moves” and their inverses. Unfortunately, there are infinitely many different stellar moves. 
</p>
<p>
An improved version of this result was obtained by Pachner in the 1980s. For $n=2$, Pachner's theorem can be stated as follows. 
</p>
<p>
<article class="env-theorem" id="0083">
  <p><a class="environment-identifier" href="/tag/0083">Theorem <span data-tag="0083">11.2.1</span>.</a> Let $M$ be a 2-dimensional PL manifold. Then any two triangulations of $M$ can be obtained from each other by a finite sequence of the operations in Figure&#160;<a href="/tag/0084" data-tag="0084">11.2.1</a> and their inverses. </p>
</article> 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c11-fig01.svg" /> <figcaption class="figcaption">Figure 11.2.1. Pachner moves in dimension 2</figcaption>  </div>

</figure>
<p>
 These operations are called <em>bistellar moves</em>, or <em>Pachner moves</em>. They were introduced by Pachner in <span class="cite">[<a href="/bibliography/pachner">Pac1987</a>]</span>; an exposition can be found in <span class="cite">[<a href="/bibliography/lickorish">Lic1999</a>]</span>. They can be easily constructed in any dimension; we show these moves in dimension 3 in Figure&#160;<a href="/tag/0085" data-tag="0085">11.2.2</a>, and refer the reader to the papers cited above for the construction in arbitrary dimension. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c11-fig02.svg" /> <figcaption class="figcaption">Figure 11.2.2. Pachner moves in dimension 3. In the second picture of the 2-3 move, the polyhedron is cut into 3 tetrahedra, all sharing the red edge; thus, any horizontal cross-section looks like the RHS of the 1-3 move in dimension 2. In the 1-4 move, the figure on the right is a tetrahedron cut into 4 tetrahedra, all sharing the center (red) vertex.</figcaption>  </div>

</figure>
<p>
This gives us another approach to constructing invariants of manifolds (and more generally, TQFTs): instead of using Morse functions to present a cobordism as a composition of elementary cobordisms, we can triangulate the manifold and construct the invariant by gluing together simplices. To check that this does not depend on the choice of triangulation, we need to check invariance under Pachner moves. 
</p>
