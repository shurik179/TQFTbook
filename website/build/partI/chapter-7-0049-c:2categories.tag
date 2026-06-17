<h1 id="c:2categories" class="tex-chapter"><span data-tag="0049">7</span> 2-categories</h1>

<p>
In the previous chapters, we classified all 2d TQFTs; the key step of this classification was the fact that any cobordism can be obtained by composing a small set of generating cobordisms (cup, cap, pants, copants). However, for higher dimensions, this approach becomes hard; even for $n=3$, it is impossible to produce a finite set of generating cobordisms. 
</p>
<p>
A possible way out is rethinking the very idea of a cobordism. After all, the initial physical motivation for TQFT was coming from path integral formulation, which shows that the invariant of a closed $n$-manifold can be computed by cutting the manifold into small local pieces, computing the path integral over each of them (with appropriate boundary conditions) and summing up. Thus, we just need to formalize the idea of “gluing the manifold from local pieces”. For this, the notion of a cobordism is not enough. 
</p>
<p>
One possible way of defining “local pieces” is using the notion of a manifold with corners. For $n=2$, such a manifold could look like the one shown below: 
</p>
<p>
<img class="includegraphics" src="/static/figures/c7-fig01.svg" /> 
</p>
<p>
This is a manifold with corners; you can think of it as a cobordism from the union of two arcs at the top to the union of two intervals at the bottom. Each of them is not a closed manifold but a 1d cobordism. Thus, for 2-dimensional TQFT, we have a structure where we have 
</p>
<ul>
  <li><p>
0-dimensional manifolds (corners) 
</p>
</li><li><p>
1-dimensional cobordisms between them 
</p>
</li><li><p>
2-dimensional cobordisms between 1d cobordisms 
</p>
</li>
</ul>
<p>
The appropriate language for describing this kind of structures is the language of 2-categories. In this chapter, we give an overview of the theory of 2-categories; we refer the reader to <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>]</span> for details. 
</p>
