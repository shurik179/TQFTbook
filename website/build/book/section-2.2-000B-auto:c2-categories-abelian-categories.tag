<h2 id="auto:c2-categories-abelian-categories" class="tex-section"><span data-tag="000B">2.2</span> Abelian categories</h2>
<p>
 <article class="env-definition" id="000C">
  <p><a class="environment-identifier" href="/tag/000C">Definition <span data-tag="000C">2.2.1</span>.</a> An abelian category is a category in which for every pair of objects $X,Y$, the set of morphisms $\operatorname{Hom}(X,Y)$ is an abelian group, composition is additive, we have a zero object, the direct sum of two objects, and for every morphism, we have the notion of image and kernel satisfying the usual properties (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section&#160;1.3</span>]</span> for details). </p>
</article> In such a category, we can define the notion of a simple object (which has no subobjects other than $0$ and itself), semisimple one (isomorphic to a direct sum of simple objects), etc. We can also define the notions of short exact sequences, Jordan–Hölder series (which in turn allows one to define the notion of length of an object), injective and projective objects, and all other usual constructions of homological algebra. 
</p>
<p>
An abelian category is <em>$\mathbf{k}$-linear</em> if all sets $\operatorname{Hom}(X,Y)$ are vector spaces over a field $\mathbf{k}$, and composition of morphisms is linear over $\mathbf{k}$. 
</p>
<p>
<article class="env-example" id="000D">
  <p><a class="environment-identifier" href="/tag/000D">Example <span data-tag="000D">2.2.1</span>.</a> Below are some examples of $\mathbf{k}$-linear abelian categories. </p>
  <p><ol>
  <li><p>
$\mathbf{Vec}_\mathbf{k}$; 
</p>
</li><li><p>
category $\operatorname{Rep}_\mathbf{k}(G)$ of representations of a group $G$; 
</p>
</li><li><p>
category $\operatorname{Rep}_\mathbf{k}(\mathfrak {g})$ of representations of a Lie algebra $\mathfrak {g}$; 
</p>
</li><li><p>
category $A\mathbf{{-}mod}$ of modules over an associative algebra $A$ over $\mathbf{k}$. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
Typically, one imposes some finiteness conditions for $\mathbf{k}$-linear categories. We will usually assume that all linear categories, unless explicitly stated otherwise, are <em>locally finite</em>, i.e., 
</p>
<ul>
  <li><p>
All spaces $\operatorname{Hom}(X,Y)$ are finite-dimensional 
</p>
</li><li><p>
Every object has finite length 
</p>
</li>
</ul>
<p>
 (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 1.8</span>]</span>). 
</p>
<p>
One can also impose stricter requirements, for example semisimplicity (every short exact sequence splits), finiteness (there are finitely many isomorphism classes of simple objects), and more. We will discuss it in more detail when it becomes necessary. 
</p>
<p>
One useful fact about $\mathbf{k}$-linear categories is the following version of the famous Schur's lemma in representation theory. 
</p>
<p>
<article class="env-lemma" id="000E">
  <p><a class="environment-identifier" href="/tag/000E">Lemma <span data-tag="000E">2.2.1</span>.</a> Let $\mathcal{A}$ be a locally finite $\mathbf{k}$-linear category. </p>
  <p><ol>
  <li><p>
If $X,Y\in \mathcal{A}$ are simple objects, then any morphism $f\colon X\to Y$ is either zero or invertible. 
</p>
</li><li><p>
If $\mathbf{k}$ is algebraically closed, then for any non-zero simple $X\in \mathcal{A}$, $\operatorname{Hom}_\mathcal{A}(X,X)=\mathbf{k}$. 
</p>
</li>
</ol></p>
</article> As with the usual Schur's lemma, the proof is immediate from the fact that the only finite-dimensional division algebra over an algebraically closed field $\mathbf{k}$ is $\mathbf{k}$ itself (see, e.g., <span class="cite">[<a href="/bibliography/pierce">Pie1982</a>, <span class="postnote">Lemma 3.5</span>]</span>). 
</p>
