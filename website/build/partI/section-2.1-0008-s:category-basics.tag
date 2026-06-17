<h2 id="s:category-basics" class="tex-section"><span data-tag="0008">2.1</span> Category theory basics</h2>
<p>
 We assume that the reader is familiar with basic notions of categories and functors. We will completely ignore all set-theoretic difficulties related to the definition of a category; if necessary, the reader can assume that all sets of objects, morphisms, etc in all the categories discussed are subsets of a large enough universal set $U$. 
</p>
<p>
For a category $\mathcal{C}$, we will use the notation $X\in \mathcal{C}$ to show that $X$ is an object of $\mathcal{C}$. For two objects $X,Y\in \mathcal{C}$, we denote by $\operatorname{Hom}_\mathcal{C}(X,Y)$ the set of morphisms from $X$ to $Y$ (we will drop the subscript $\mathcal{C}$ when there is no ambiguity). 
</p>
<p>
Given categories $\mathcal{C}, \mathcal{D}$, we denote by $\operatorname{Fun}(\mathcal{C}, \mathcal{D})$ the set of all functors $\mathcal{C}\to \mathcal{D}$. 
</p>
<p>
Examples: 
</p>
<ul>
  <li><p>
$\mathbf{Set}$: category of all sets. 
</p>
</li><li><p>
$\mathbf{Man}_ n$: category of smooth manifolds of dimension $n$. There are different versions: oriented manifolds, framed manifolds, etc. 
</p>
</li><li><p>
$\mathbf{PLMan}_ n$: category of PL manifolds of dimension $n$. Note that in dimensions $n\le 6$, every PL manifold has a canonical smooth structure and vice versa. In general, it is not so: every smooth manifold has a unique PL structure (Whitehead's theorem), but a PL manifold might not have a compatible smooth structure, or if it has one, it might not be unique (Milnor's exotic spheres). We will talk about PL manifolds in more detail later (see Chapter&#160;<a href="/tag/007U" data-tag="007U">11</a>). 
</p>
</li><li><p>
$\mathbf{Vec}_\mathbf{k}$: category of vector spaces over a field $\mathbf{k}$. 
</p>
</li><li><p>
$R\mathbf{{-}mod}$: category of left modules over an associative ring $R$. 
</p>
</li>
</ul>
<p>
One special case of a category, which we will use frequently, is a groupoid. <article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">2.1.1</span>.</a> A groupoid is a category in which all morphisms are invertible. </p>
</article> <article class="env-example" id="0009">
  <p><a class="environment-identifier" href="/tag/0009">Example <span data-tag="0009">2.1.1</span>.</a> Let $X$ be a topological space. Define its <em>fundamental groupoid</em> $\pi (X)$ as the category whose objects are points in $X$ and morphisms are homotopy equivalence classes of paths between points, with the obvious composition. </p>
</article> 
</p>
<p>
One common theme in all our constructions is equality vs isomorphism. When talking about points in a set (e.g., elements of a ring), we can require them to be equal; for example, we can require $a+b=b+a$ for elements of a ring. However, while it is technically possible to require two objects in a category to be equal, it rarely makes sense to do so. For example, in the category of finite sets, sets $A\times B$ and $B\times A$ are not equal. On the other hand, requiring two objects to be isomorphic is typically too weak: e.g., any two sets with the same number of elements are isomorphic. 
</p>
<p>
The common way to resolve this is the following convention. <article class="env-convention" id="000A">
  <p><a class="environment-identifier" href="/tag/000A">Convention <span data-tag="000A">2.1.1</span>.</a> A collection of objects $X_\alpha $ of category $\mathcal{C}$, together with a collection of isomorphisms $f_{\beta \alpha }\colon X_\alpha \xrightarrow {\sim }X_\beta $, such that $f_{\alpha \beta }f_{\beta \gamma }=f_{\alpha \gamma }$, $f_{\alpha \alpha }=\operatorname{id}_{X_\alpha }$, is treated as a single object in $\mathcal{C}$. </p>
</article> This convention, though rarely stated explicitly, is actually widespread. Virtually every math textbook treats sets $A\times B$ and $B\times A$ as the same set, even though they are technically not the same object of category $\mathbf{Set}$; from the point of view of the convention above, it is justified by noting that we have a canonical isomorphism $A\times B\xrightarrow {\sim }B\times A\colon (a,b)\mapsto (b,a)$. 
</p>
<p>
Formally, this convention can be justified by constructing a category $\widehat\mathcal{C}$, whose objects are such collections $(X_\alpha , f_{\alpha \beta })$, and observing that categories $\mathcal{C}$, $\widehat\mathcal{C}$ are equivalent; see, e.g., <span class="cite">[<a href="/bibliography/bakalov-kirillov">BK2001</a>, <span class="postnote">Lemma 1.1.12</span>]</span>. 
</p>
