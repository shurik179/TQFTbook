<h2 id="s:strict-n-cat" class="tex-section"><span data-tag="009A">14.2</span> Strict and weak $n$-categories</h2>
<p>
 After giving the motivating example of $n$-groupoids, we can try to define the notion of an $n$-category. 
</p>
<p>
The simplest approach is considering strict $n$-categories. These categories are not very hard to define. Namely, a strict $n$-category must have objects, and for any objects $X,Y$, we must have an $(n-1)$-category $\operatorname{Hom}(X,Y)$, together with a composition functor of $(n-1)$-categories $\operatorname{Hom}(X,Y)\times \operatorname{Hom}(Y,Z)\to \operatorname{Hom}(X,Z)$, which must be associative. In a similar way one defines identity morphisms. (Category theorists would say that an $n$-category is a category enriched over $(n-1)$-categories.) 
</p>
<p>
However, this definition is not of much use. First, virtually all known examples are non-strict — compositions are not strictly associative but only “associative up to higher order isomorphisms”, as we have already seen in the example of fundamental groupoids. Moreover, for $n\ge 3$, it turns out that this is more than just a technical problem: not every weak 3-category is equivalent to a strict 3-category (unlike the case of 2-categories). For example, it can be shown that $\Pi _{\leq 3}(S^2)$, the truncated fundamental groupoid of $S^2$, is not equivalent to a strict 3-groupoid (see <span class="cite">[<a href="/bibliography/simpson">Sim2012</a>, <span class="postnote">Theorem 2.7.2</span>]</span>). 
</p>
<p>
Thus, we have no choice but to forget strict categories and start developing the theory of weak $n$-categories, where compositions are “associative up to higher order isomorphisms”. 
</p>
<p>
Unfortunately, giving an algebraic definition of a weak $n$-category is very hard to do. A definition of a weak 3-category exists (see <span class="cite">[<a href="/bibliography/gordon-power-street">GPS1995</a>]</span>), but it is so long that I was never able to get to the end of it; for $n\ge 4$, the algebraic definitions are even more cumbersome. Some summary of algebraic approaches is collected in <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>]</span>. On the other hand, there are a number of rather easy to define examples of (weak) 3- and 4-categories, some of which we will give later. 
</p>
