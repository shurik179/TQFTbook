<h2 id="s:segal-cat" class="tex-section"><span data-tag="009Y">14.7</span> Segal categories</h2>
<p>
 We can now give a definition of one of the possible models of $(\infty , n)$ categories, namely, the Segal category. We begin with the definition of $(\infty , 1)$ category. It is based on the description of a category enriched over $\mathbf{Top}$ as a simplicial space as in Theorem&#160;<a href="/tag/009X" data-tag="009X">14.6.2</a>, but with one important change. 
</p>
<p>
Recall that we have defined a simplicial space as a simplicial object in the category $\mathbf{Top}$, i.e., a functor $\mathbf{\Delta }^{\mathrm{op}}\to \mathbf{Top}$. Recall also that a continuous map of topological spaces $f\colon X\to Y$ is called a <em>weak homotopy equivalence</em> if for every $n\ge 0$, it defines an isomorphism of homotopy groups $\pi _ n(X)\simeq \pi _ n(Y)$. In particular, if $f$ is a homotopy equivalence, then it is automatically a weak homotopy equivalence. By a famous result of Whitehead, if $X,Y$ are CW complexes, then the converse is also true; for general topological spaces, it is not so. 
</p>
<p>
<article class="env-definition" id="009Z">
  <p><a class="environment-identifier" href="/tag/009Z">Definition <span data-tag="009Z">14.7.1</span>.</a> A <em>Segal category</em> $\mathcal{C}$ is a simplicial space which satisfies the following additional conditions: </p>
  <p><ol>
  <li><p>
$X_0$ is discrete. 
</p>
</li><li><p>
The Segal map (<a href="/tag/009L" data-tag="009L">14.4.19</a>) 
</p>
<div class="equation">
  \[  s_ n \colon X_ n \to X_1\times _{X_0} X_1\times _{X_0} X_1 \times \dots \times _{X_0} X_1  \]
</div>
<p>
 is a weak homotopy equivalence. 
</p>
</li>
</ol></p>
  <p> We call $X_0$ the set of objects of $\mathcal{C}$ and for $x_0, x_1\in X_0$, we call the space $X_1(x_0, x_1) = \{ x_0\} \times _{X_0} X_1 \times _{X_0}\{ x_1\} $ the space of morphisms $\operatorname{Hom}_{\mathcal{C}}(x_0, x_1)$. </p>
</article> 
</p>
<p>
We denote by $\mathbf{Seg}$ the category of Segal categories; it is a full subcategory in $\mathbf{sSet}(\mathbf{Top})$ whose objects are Segal categories. 
</p>
<p>
Informally, if we think of $X_1\times _{X_0} X_1\times _{X_0} X_1 \times \dots \times _{X_0} X_1$ as the space of composable chains of morphisms, then $X_ n$ is “composable chain of morphisms plus some additional data needed to define composition”, and we require that the space of “additional data” be contractible. 
</p>
<p>
<article class="env-example" id="00A0">
  <p><a class="environment-identifier" href="/tag/00A0">Example <span data-tag="00A0">14.7.1</span>.</a> Let $X$ be a topological space. Then the fundamental groupoid $\Pi _{\infty }(X)$, informally described in Section&#160;<a href="/tag/0099" data-tag="0099">14.1</a>, can be rigorously defined as a Segal category. Namely, we let $X_0=$</p>
</article> set of points of $$X$$$$ (considered with discrete topology), and for $n\ge 1$, we define 
</p>
<div class="equation">
  \[  X_ n= \{ \text{continuous functions $\Delta ^ n\to X$}\}   \]
</div>
<p>
 where $\Delta ^ n$ is the topological $n$-dimensional simplex (<a href="/tag/009R" data-tag="009R">14.5.1</a>); in other words, this is exactly the definition of singular complex functor $\operatorname{Sing}$, but now we consider $X_ n, n\ge 1$, as a topological space rather than a set. 
</p>
<p>
In particular, we see that $X_1$ is the topological space of paths in $X$, and Segal map $s_ n\colon X_ n \to X_1\times _{X_0}\dots \times _{X_0} X_1$ sends a map $f\colon \Delta ^ n\to X$ to its restriction on the collection of edges $[i-1, i]$. Thus, one can think of $X_ n$ as composable collection $\gamma _ i$ of paths in $X$ together with a map $\gamma \colon \Delta ^ n\to X$ whose restriction to edge $[i-1, i], i=1\dots n$, is equal to $\gamma _ i$. Segal condition immediately follows from the fact that the union of these edges is a retract of the $n$-simplex. 
</p>
<p>
In particular, given such a map $\gamma $, we can restrict it to the edge $[0,n]$, which gives us a path connecting $x_0$ with $x_ n$ in $X$. Any such path can be called a composition of $\gamma _ i$; thus, we see that we have not one but many possible compositions, but the space of all possible compositions (for given paths $\gamma _ i$) is contractible. 
</p>
<p>
Segal category defined above is usually called the <em>Poincaré–Segal groupoid</em>; see <span class="cite">[<a href="/bibliography/simpson">Sim2012</a>, <span class="postnote">Sections 15.2, 15.3</span>]</span>. We will denote it $\Pi _ S(X)$ to distinguish it from (informally defined) $\Pi _{\infty }$. 
</p>
<p>
<article class="env-example" id="">
</article> 
</p>
