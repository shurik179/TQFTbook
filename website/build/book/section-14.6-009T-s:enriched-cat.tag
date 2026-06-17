<h2 id="s:enriched-cat" class="tex-section"><span data-tag="009T">14.6</span> Enriched categories</h2>

<p>
In the previous sections, we gave a description of a (usual) category $\mathcal{C}$ as a simplicial set satisfying additional Segal condition. In a similar way, one can describe <em>enriched categories</em>, i.e., categories where $\operatorname{Hom}$ spaces are not just sets, but have additional structure — e.g., they are topological spaces. For example, if we denote by $\mathbf{Top}$ the category of topological spaces with continuous maps, a $\mathbf{Top}$-enriched category is the following data: 
</p>
<ol>
  <li><p>
A class $S$ of objects of $\mathcal{C}$ 
</p>
</li><li><p>
For any pair of objects $x,y\in S$, a topological space $\operatorname{Hom}(x,y)$ 
</p>
</li><li><p>
For any triple of objects, a continuous map $\operatorname{Hom}(x,y)\times \operatorname{Hom}(y,z)\to \operatorname{Hom}(x,z)$ 
</p>
</li><li><p>
For any object $x\in S$, a point $1_ x\in \operatorname{Hom}(x,x)$ 
</p>
</li>
</ol>
<p>
 satisfying the usual (strict) associativity and unit axioms. As usual, we restrict our attention to small categories, so we assume that objects form a set. 
</p>
<p>
As before, we can describe such categories using simplicial sets — or more generally, simplicial objects in an appropriate category. 
</p>
<p>
<article class="env-definition" id="009U">
  <p><a class="environment-identifier" href="/tag/009U">Definition <span data-tag="009U">14.6.1</span>.</a> Let $\mathcal{M}$ be a category. A <em>simplicial object</em> in $\mathcal{M}$ is a functor $\mathbf{\Delta }^{\mathrm{op}}\to \mathcal{M}$. </p>
  <p>We denote the category of simplicial objects in $\mathcal{M}$ by $\mathbf{sSet}(\mathcal{M})$. </p>
</article> In particular, for $\mathcal{M}=\mathbf{Top}$, simplicial objects in $\mathbf{Top}$ are usually called <em>simplicial spaces</em>. 
</p>
<p>
Recall that for a category $\mathcal{C}$, we have defined the simplicial set $X_\bullet = N\mathcal{C}$ (the nerve of $\mathcal{C}$) by (<a href="/tag/009D" data-tag="009D">14.4.1</a>). If $\mathcal{C}$ is a $\mathbf{Top}$-enriched category, then $(N\mathcal{C})_ n$ is not just a set but a topological space (since we have not defined any topology on the set of objects, we consider $X_0=\operatorname{Obj}\mathcal{C}$ as a topological space with the discrete topology); thus, $N\mathcal{C}$ is a simplicial space. 
</p>
<p>
The following theorem is an immediate generalization of Theorem&#160;<a href="/tag/009M" data-tag="009M">14.4.2</a>. <article class="env-theorem" id="009V">
  <p><a class="environment-identifier" href="/tag/009V">Theorem <span data-tag="009V">14.6.1</span>.</a> A simplicial space $X_\bullet $ is the nerve of a $\mathbf{Top}$-enriched category if and only if the following properties hold: </p>
  <p><ul>
  <li><p>
$X_0$ is discrete 
</p>
</li><li><p>
For any $n\ge 1$, Segal map (<a href="/tag/009L" data-tag="009L">14.4.19</a>) is a homeomorphism. 
</p>
</li>
</ul></p>
</article> 
</p>
<p>
In a similar way, we can consider other enriched categories. Namely, if we have a category $\mathcal{M}$ which has finite products (and thus has a terminal object $\mathbf{1}$ corresponding to the product of the empty collection of objects in $\mathcal{M}$, see e.g., <span class="cite">[<a href="/bibliography/mac-lane">ML1998</a>, <span class="postnote">Section III.5</span>]</span>), an $\mathcal{M}$-enriched category $\mathcal{C}$ is the following data: 
</p>
<ol>
  <li><p>
A class $S$ of objects of $\mathcal{C}$ 
</p>
</li><li><p>
For any pair of objects $x,y\in S$, an object $\operatorname{Hom}(x,y)\in \mathcal{M}$ 
</p>
</li><li><p>
For any triple of objects, an $\mathcal{M}$-morphism $\operatorname{Hom}(x,y)\times \operatorname{Hom}(y,z)\to \operatorname{Hom}(x,z)$ 
</p>
</li><li><p>
For any object $x\in S$, an $\mathcal{M}$-morphism $\mathbf{1}\to \operatorname{Hom}(x,x)$ 
</p>
</li>
</ol>
<p>
 satisfying the usual (strict) associativity and unit axioms. 
</p>
<p>
To describe such categories as simplicial objects, we need to deal with one minor issue. Namely, in the definition above, we assumed that objects of $\mathcal{C}$ form a class (or a set, for small categories). For $\mathbf{Top}$-enriched categories, we considered this set as an object in $\mathbf{Top}$, considering a set as a topological space with the discrete topology; however, for general $\mathcal{M}$ we cannot do it. Thus, we will need to modify our construction of the nerve of a category. One way to do that is using the following trick. 
</p>
<p>
Let $S$ be a set. Define the category of $S$-labelled simplices $\mathbf{\Delta }_ S$ as the category whose objects are finite ordered sequences $(x_0, \dots , x_ n)$, $x_ i \in S$, and morphisms $(x_0, \dots , x_ m)\to (y_0, \dots , y_ n)$ are (non-strict) order-preserving maps $f\colon [m]\to [n]$ which satisfy $y_{f(i)}=x_ i$. One should think of the category $\mathbf{\Delta }_ S$ as finite ordered sets together with a labeling of elements of the ordered set by elements of $S$. 
</p>
<p>
<article class="env-definition" id="009W">
  <p><a class="environment-identifier" href="/tag/009W">Definition <span data-tag="009W">14.6.2</span>.</a> Let $\mathcal{M}$ be a category with finite products, and let $\mathcal{C}$ be a small $\mathcal{M}$-enriched category with set of objects $S$. Define, for any $n\ge 0$, </p>
  <div class="equation">
  \[  N\mathcal{C}\colon \mathbf{\Delta }_ S^{\mathrm{op}}\to \mathcal{M} \]
</div>
  <p> by </p>
  <div class="equation">
  \[  N\mathcal{C}(x_0, \dots , x_ n) =\operatorname{Hom}(x_0, x_1)\times \dots \times \operatorname{Hom}(x_{n-1}, x_ n)\in \mathcal{M} \]
</div>
  <p> (in particular, for $n=0$ it gives $N\mathcal{C}(x_0)=\mathbf{1}$, the terminal object in $\mathcal{M}$). Then $N\mathcal{C}$ is a functor $\mathbf{\Delta }_ S^{\mathrm{op}}\to \mathcal{M}$, called the nerve of $\mathcal{C}$. </p>
</article> 
</p>
<p>
<article class="env-theorem" id="009X">
  <p><a class="environment-identifier" href="/tag/009X">Theorem <span data-tag="009X">14.6.2</span>.</a> Let $\mathcal{M}$ be a category with finite products, and let $S$ be a set. A functor $X\colon \mathbf{\Delta }_ S^{\mathrm{op}}\to \mathcal{M}$ is a nerve of some $\mathcal{M}$-enriched category $\mathcal{C}$ with set of objects $S$ if and only if it satisfies the following two properties: </p>
  <p><ol>
  <li><p>
$X(x_0)=\mathbf{1}$ for any $x_0$ (considered as a coloring of simplex $[0]$) 
</p>
</li><li><p>
Segal condition: the morphism 
</p>
<div class="equation">
  \[  s_ n\colon X(x_0, \dots , x_ n)\to X(x_0, x_1)\times \dots \times X(x_{n-1}, x_ n)  \]
</div>
<p>
 is an isomorphism in $\mathcal{M}$. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
The proof is very similar to the proof of Theorem&#160;<a href="/tag/009M" data-tag="009M">14.4.2</a>, and as before, is left to the reader. 
</p>
