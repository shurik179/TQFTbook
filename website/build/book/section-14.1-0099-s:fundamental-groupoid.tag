<h2 id="s:fundamental-groupoid" class="tex-section"><span data-tag="0099">14.1</span> Fundamental groupoid</h2>

<p>
Reversing the traditional order in mathematics, we begin our discussion of higher categories not with a definition but with an example: whatever definition we give later, it should cover that example. This example is that of a fundamental groupoid, described informally below. 
</p>
<p>
Recall that for a topological space $X$, we denote by $\Pi (X)$ the fundamental groupoid of $X$; it is a category whose objects are points of $X$ and morphisms are homotopy classes of paths in $X$. 
</p>
<p>
We can extend it and define the fundamental infinity groupoid $\Pi _{\infty }(X)$ as follows: 
</p>
<ul>
  <li><p>
Objects of $\Pi _{\infty }(X)$ are points of $X$. 
</p>
</li><li><p>
1-morphisms $x_0\to x_1$ are paths in $X$, i.e., continuous maps $I\to X$ such that $\gamma (0)=x_0$, $\gamma (1)=x_1$ (here and below, $I=[0,1]$). 
</p>
</li><li><p>
2-morphisms $\gamma _0\to \gamma _1$, where $\gamma _ i$ are paths from $x_0$ to $x_1$, are path homotopies, i.e., continuous maps $h\colon I^2\to X$ such that $h(0,t)=\gamma _0(t)$, $h(1, t)=\gamma _1(t)$, and for all $s$, $h(s,0)=x_0$, $h(s,1)=x_1$. 
</p>
</li><li><p>
3-morphisms are homotopies between homotopies, i.e., continuous maps $I^3\to X$ with suitable restrictions to the boundary. 
</p>
</li><li><p>
…
</p>
</li>
</ul>
<p>
 This defines an “infinity groupoid”, which has morphisms of all orders. We can also define the fundamental $n$-groupoid $\Pi _{\leq n}(X)=\tau _{\leq n}(\Pi _\infty (X))$, which only has morphisms up to order $n$: namely, $n$-morphisms in $\Pi _{\leq n}(X)$ are homotopy classes of $n$-morphisms in $\Pi _{\infty }(X)$ (two $n$-morphisms are homotopic if there exists an $(n+1)$-morphism between them in $\Pi _\infty (X)$). 
</p>
<p>
Note that we have not yet discussed composition in $\Pi _\infty (X)$. It is easy to define composition in the same way as it is done in the usual fundamental groupoid $\Pi _{\le 1}(X)$; however, so defined composition is not associative in $\Pi _\infty $. For example, for $1$-morphisms $\gamma _1, \gamma _2, \gamma _3$, the compositions $\gamma _3 (\gamma _2 \gamma _1)$ and $(\gamma _3 \gamma _2)\gamma _1$ are not equal as maps $I\to X$: in the first case, $\gamma _1$ is traveled over $t\in [0, 1/4]$, $\gamma _2$ over $t\in [1/4, 1/2]$, and $\gamma _3$ over $[1/2,1]$. For the second composition, the intervals are $[0, 1/2]$, $[1/2, 3/4]$, and $[3/4,1]$ respectively, so these compositions are not equal; however, they are homotopic to each other. Thus, any definition of an $n$-category should allow for compositions “associative up to homotopy”. 
</p>
<p>
Fundamental $n$-groupoids $\Pi _{\leq n}(X)$ were suggested by Grothendieck in <span class="cite">[<a href="/bibliography/grothendieck">Gro1983</a>]</span>. He also proposed the following hypothesis. <article class="env-conjecture" id="">
  <p><a class="environment-identifier" href="/tag/">Conjecture <span data-tag="">14.1.1</span> <span class="named">(Homotopy hypothesis)</span>.</a> Homotopy $n$-types up to weak equivalence are classified by $\Pi _{\leq n}(X)$ up to equivalence. </p>
</article> (Recall that a topological space $X$ is called an <em>$n$-type</em> if its homotopy groups $\pi _ k(X)$ are trivial for $k&gt;n$.) 
</p>
<p>
Of course, in order to discuss this hypothesis, one needs first to give a definition of $n$-categories and equivalences between them; thus, we should consider this hypothesis as a natural requirement which should be satisfied by any definition of an $n$-category. 
</p>
<p>
One can also state an $\infty $ version of the homotopy hypothesis; namely, it says that topological spaces up to weak equivalence are classified by their $\infty $ fundamental groupoids up to equivalence. 
</p>
