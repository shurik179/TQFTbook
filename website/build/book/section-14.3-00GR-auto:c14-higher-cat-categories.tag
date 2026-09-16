<h2 id="auto:c14-higher-cat-categories" class="tex-section"><span data-tag="00GR">14.3</span> $(\infty , n)$ categories</h2>
<p>
 In this section we will given an overview of facts related to $(\infty , n)$ categories and functors. To keep the exposition reasonably short, it will be a high-level description, without detail. Some detail, including a rigorous definition of one possible model of $(\infty , n)$ categories, is given in Appendix FIXME. Here we only give an informal description. 
</p>
<p>
Informally, an $(\infty , n)$ category $\mathcal{C}$ consists of class of objects (0-morphisms) $\mathcal{C}_0$; for every pair of objects $x_0, x_1\in \mathcal{C}_0$, we have a set of $1$-morphisms $\mathcal{C}_1(x_0, x_1)$; for every pair of $1$-morphisms $f_0, f_1\in \mathcal{C}(x_0,x_1)$, we have a set of $2$-morphisms $\mathcal{C}_2(f_0,f_1)$, and so on for all orders. Moreover, we have the following facts. 
</p>
<ol>
  <li><p>
For any $k$-morphism $x$, we are given an identity $k+1$-morphism $\operatorname{id}_ x \in \mathcal{C}_{k+1}(x,x)$. 
</p>
</li><li><p>
For any $k$-morphisms $x,y$, we have a distinguished subset of $\mathcal{C}_{k+1}(x,y)$, called <em>invertible</em> morphsisms, or isomorphisms. In particular, the identity morphism is invertible. We say that $x,y$ are isomorphic if there is an isomorphism $f\colon x\to y$. In thsi case, there also exists an isomorphism $g\colon y\to x$. 
</p>
</li><li><p>
In an $(\infty , n)$ catgeory, all $k$-morphisms with $k&gt;n$ are invertible. 
</p>
</li><li><p>
For any topological space $X$, its fundamental groupoid $\Pi _\infty (X)$ is an $(\infty , 0)$ category, with morphisms defined as in FIXME. Moreover, every $(\infty , n)$ category has the form $\Pi _\infty (X)$ for some topological space $X$. 
</p>
</li><li><p>
For any pair of objects $x,y$ in an $(\infty , n)$ category $\mathcal{C}$, the collection $\mathcal{C}_\bullet (x,y)$ of all $1$-morphisms between $x,y$, together with higher morphisms between those, form an $(\infty , n-1)$-category: $k$-morphisms of $\mathcal{C}_\bullet (x,y)$ are $k+1$-morphisms of $\mathcal{C}$. 
</p>
</li><li><p>
Given two $(\infty , n)$ categories $\mathcal{C}$, $\mathcal{D}$, we can define set of functors $\operatorname{Fun}(\mathcal{C}, \mathcal{D})$, which itself is an $(\infty , n)$ category FIXME 
</p>
</li><li><p>
Symmetric monoidal $(\infty , n)$ categories. 
</p>
</li>
</ol>
<p>
we will restrict ourselves to giving just one definition, based on Segal categories. This construction takes some time; we will do it in the next several sections. Our exposition follows the paper <span class="cite">[<a href="/bibliography/schommer-pries-category">SP2014</a>]</span>; a detailed exposition of the theory of Segal categories as a model for $(\infty , n)$ categories can be found in <span class="cite">[<a href="/bibliography/simpson">Sim2012</a>]</span>. 
</p>
<p>
<article class="env-example" id="00A0">
  <p><a class="environment-identifier" href="/tag/00A0">Example <span data-tag="00A0">14.3.1</span>.</a> Let $X$ be a topological space. Then the fundamental groupoid $\Pi _{\infty }(X)$, informally described in Section&#160;<a href="/tag/0099" data-tag="0099">14.1</a>, can be rigorously defined as a Segal category. Namely, we let $X_0=$</p>
</article> set of points of $$X$$$$ (considered with discrete topology), and for $n\ge 1$, we define 
</p>
<div class="equation">
  \[  X_ n= \{ \text{continuous functions $\Delta ^ n\to X$}\}   \]
</div>
<p>
 where $\Delta ^ n$ is the topological $n$-dimensional simplex (<a href="/tag/" data-tag="">None</a>); in other words, this is exactly the definition of singular complex functor $\operatorname{Sing}$, but now we consider $X_ n, n\ge 1$, as a topological space rather than a set. 
</p>
<p>
In particular, we see that $X_1$ is the topological space of paths in $X$, and the Segal map $\mathbf{s}_ n\colon X_ n \to X_1\times _{X_0}\dots \times _{X_0} X_1$ sends a map $f\colon \Delta ^ n\to X$ to its restriction to the collection of edges $[i-1, i]$. Thus, one can think of a point $f\in X_ n$ as a composable collection $\gamma _ i$ of paths in $X$ together with a map $\gamma \colon \Delta ^ n\to X$ whose restriction to edge $[i-1, i], i=1\dots n$, is equal to $\gamma _ i$. The Segal condition immediately follows from the fact that the union of these edges is a retract of the $n$-simplex. 
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
<p>
In particular: 
</p>
<ul>
  <li><p>
An $(\infty , 0)$ category is the same as a topological space. 
</p>
</li><li><p>
An $(\infty , 1)$ category is the same as a Segal category as defined in Section&#160;<a href="/tag/" data-tag="">None</a>. 
</p>
</li><li><p>
…
</p>
</li>
</ul>
<p>
Note that by the definition of $\mathbf{Seg}^ n$, if $\mathcal{C}$ is an $(\infty , n)$ category, $n&gt;0$, then for any two objects $x,y\in \mathcal{C}$, $\operatorname{Hom}_\mathcal{C}(x,y)$ is an $(\infty , n-1)$ category. We can use it to define $k$-morphisms in an $(\infty , n)$ category: for $n=0$ (i.e., when $\mathcal{C}=X$ is a topological space), $k$-morphisms are defined as in Section&#160;<a href="/tag/0099" data-tag="0099">14.1</a>; for $n&gt;0$, $k$-morphisms in $\mathcal{C}$ are $(k-1)$-morphisms in the $(\infty , n-1)$ category $\operatorname{Hom}_{\mathcal{C}}(x,y)$ for some objects $x,y\in \mathcal{C}$. 
</p>
<p>
We also note that the functor $\tau _{\leq 0}=\pi _0\colon \mathbf{Top}\to \mathbf{Set}$ gives rise to a truncation functor $\mathbf{Seg}^ n(\mathbf{Top})\to \mathbf{Seg}^ n(\mathbf{Set})$; thus, any $(\infty , n)$ category can be truncated to a (Tamsamani) weak $n$-category. Moreover, combining it with truncation functors $\tau _{\leq k}\colon \mathbf{Tam}^ n\to \mathbf{Tam}^ k$, $k \le n$, we can define a truncation functor $\tau _{\leq k}$ from $(\infty , n)$ categories to weak $k$-categories. 
</p>
