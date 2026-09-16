<h2 id="s:strict-n-cat" class="tex-section"><span data-tag="009A">14.2</span> Strict and weak $n$-categories</h2>
<p>
 After giving the motivating example of $n$-groupoids, we can try to define the notion of an $n$-category. 
</p>
<p>
The simplest approach is to consider strict $n$-categories. These categories are not very hard to define. Namely, a strict $n$-category must have objects, and for any objects $X,Y$, we must have an $(n-1)$-category $\operatorname{Hom}(X,Y)$, together with a composition functor of $(n-1)$-categories $\operatorname{Hom}(X,Y)\times \operatorname{Hom}(Y,Z)\to \operatorname{Hom}(X,Z)$, which must be associative. In a similar way one defines identity morphisms. (Category theorists would say that an $n$-category is a category enriched over $(n-1)$-categories.) 
</p>
<p>
However, this definition is not of much use. First, virtually all known examples are non-strict — compositions are not strictly associative but only “associative up to higher order isomorphisms”, as we have already seen in the example of fundamental groupoids. Moreover, for $n\ge 3$, it turns out that this is more than just a technical problem: not every weak 3-category is equivalent to a strict 3-category (unlike the case of 2-categories). For example, it can be shown that $\Pi _{\leq 3}(S^2)$, the truncated fundamental groupoid of $S^2$, is not equivalent to a strict 3-groupoid (see <span class="cite">[<a href="/bibliography/simpson">Sim2012</a>, <span class="postnote">Theorem 2.7.2</span>]</span>). 
</p>
<p>
Thus, we have no choice but to forget strict categories and start developing the theory of weak $n$-categories, where compositions are “associative up to higher order isomorphisms”. 
</p>
<p>
Unfortunately, giving an algebraic definition of a weak $n$-category is very hard to do. A definition of a weak 3-category exists (see <span class="cite">[<a href="/bibliography/gordon-power-street">GPS1995</a>]</span>), but it is so long that most people give up before reaching the end of it; for $n\ge 4$, the algebraic definitions are even more cumbersome. Some summary of algebraic approaches is collected in <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>]</span>. On the other hand, there are a number of rather easy to define examples of (weak) 3- and 4-categories, some of which we will give later. 
</p>
<p>
An alternative approach to the notion of a weak $n$-category is to use the ideas of topology, or more precisely, homotopy theory. The key idea of this approach is that instead of defining a single composition operation for $k$-morphisms which is weakly associative, we allow many composition operations, which must form a contractible space. Paths in this contractible space correspond to $(k+1)$-isomorphisms between the corresponding compositions, homotopies between paths correspond to $(k+2)$-isomorphisms, etc. Different compositions give different points in this contractible space; the fact that they are all isomorphic follows from the fact that this space is connected, and all compatibility relations between these isomorphisms follow from the fact that the space of compositions is contractible. 
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
Fortunately, it turns out that in a certain sense all these definitions are equivalent. There are a number of papers discussing this, including <span class="cite">[<a href="/bibliography/toen">Toë2004</a>]</span>, <span class="cite">[<a href="/bibliography/bsp">BSP2021</a>]</span>, and the book <span class="cite">[<a href="/bibliography/riehl-verity">RV2022</a>]</span>; for a short introduction, there is also Emily Riehl's article <span class="cite">[<a href="/bibliography/riehl-notices">Rie2023</a>]</span> in the <em>Notices of the AMS</em>. We will not be discussing this equivalence. 
</p>
