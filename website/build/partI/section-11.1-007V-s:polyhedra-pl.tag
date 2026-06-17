<h2 id="s:polyhedra-pl" class="tex-section"><span data-tag="007V">11.1</span> Polyhedra and PL manifolds</h2>
<p>
 <article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">11.1.1</span>.</a>A $k$-simplex $\sigma \subset \mathbb {R}^ N$ is the convex hull of a set of $k+1$ points $x_0, x_1, \dots , x_ k$ which are affinely independent, i.e., span an affine subspace of dimension $k$ in $\mathbb {R}^ N$. </p>
  <p>A finite polyhedron is a subset $P\subset \mathbb {R}^ N$ which can be presented as a finite union of simplices. </p>
</article> Note that for a given polyhedron, there are many ways to present it as a union of simplices. We will be mostly working with triangulations. 
</p>
<p>
<article class="env-definition" id="007W">
  <p><a class="environment-identifier" href="/tag/007W">Definition <span data-tag="007W">11.1.2</span>.</a> A triangulation of a polyhedron $P\subset \mathbb {R}^ N$ is a finite collection $S=\{ \sigma _ i\} $ of simplices such that $P=\bigcup _ S \sigma _ i$ and </p>
  <p><ol>
  <li><p>
Any face of a simplex $\sigma \in S$ is again a simplex in $S$. 
</p>
</li><li><p>
The intersection of any two simplices from $S$ is a face of each of them. 
</p>
</li>
</ol></p>
</article> (Note that by “face”, we mean a face of any codimension, not necessarily codimension 1). 
</p>
<p>
<article class="env-theorem" id="007X">
       
  <p><a class="environment-identifier" href="/tag/007X">Theorem <span data-tag="007X">11.1.1</span>.</a></p>
  <p><ol>
  <li><p>
Any finite polyhedron $P\subset \mathbb {R}^ N$ admits a triangulation. 
</p>
</li><li><p>
Any two triangulations of a finite polyhedron $P$ admit a common subdivision: if $T_1,T_2$ are triangulations, then there exists a triangulation $T_3$ such that each simplex of $T_1$ is a union of simplices of $T_3$, and the same for $T_2$. 
</p>
</li>
</ol></p>
</article> We refer the reader to <span class="cite">[<a href="/bibliography/rourke">RS1982</a>, <span class="postnote">Theorem 2.11, Addendum 2.12</span>]</span> for the proof. <article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">11.1.3</span>.</a> Let $P$ be a polyhedron. A function $f\colon P\to \mathbb {R}^ m$ is called <em>piecewise linear</em> (PL) if it is continuous and there exists a triangulation of $P$ such that the restriction of $f$ to each simplex of the triangulation is linear. </p>
  <p>For polyhedra $P\subset \mathbb {R}^ N$, $L\subset \mathbb {R}^ m$, a map $f\colon P\to L$ is piecewise linear if it is piecewise linear as a map $P\to \mathbb {R}^ m$. </p>
</article> It is easy to see that the composition of PL maps is again PL; thus, we get a category of PL polyhedra. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">11.1.1</span>.</a>Above, we defined polyhedra as subsets of $\mathbb {R}^ N$. Choosing a triangulation gives a combinatorial description of $P$: all we need to know is how many simplices there are of each dimension and which faces are glued together. One can define an <em>abstract simplicial complex</em> $K$ as such combinatorial data (we skip the precise definition). Conversely, given an abstract simplicial complex, we can construct a polyhedron $P=|K|$ by gluing together simplices along the face maps and embedding this union of simplices in $\mathbb {R}^ N$ for sufficiently large $N$; moreover, such a polyhedron is unique up to PL isomorphism. </p>
</article> 
</p>
<p>
<article class="env-definition" id="007Y">
  <p><a class="environment-identifier" href="/tag/007Y">Definition <span data-tag="007Y">11.1.4</span>.</a> Let $M$ be a polyhedron. We will say that $M$ is a <em>PL manifold</em> of dimension $n$ if, for every point $x \in M$, there exists an open neighborhood $U \subset M$ containing $x$ and a piecewise linear homeomorphism $f\colon U \to U'$ where $U'$ is a neighborhood of 0 in $\mathbb {R}^ n$. </p>
</article> <article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">11.1.2</span>.</a>If $M$ is a PL manifold, then its underlying topological space is automatically a topological manifold. The converse, however, is not true: it is possible to construct a polyhedron $P$ such that the underlying topological space is a topological manifold, yet $P$ is not a PL manifold. </p>
</article> 
</p>
<p>
Given a triangulation of a polyhedron $P$, it is possible to determine whether $P$ is a PL manifold by looking at the so-called link of a point; we refer the reader to <span class="cite">[<a href="/bibliography/rourke">RS1982</a>]</span> for details. 
</p>
<p>
We can now also talk about triangulating smooth manifolds. 
</p>
<p>
<article class="env-definition" id="007Z">
  <p><a class="environment-identifier" href="/tag/007Z">Definition <span data-tag="007Z">11.1.5</span>.</a> Let $P$ be a polyhedron and $M$ a smooth manifold. We say that a map $f\colon P\to M$ is piecewise differentiable (PD) if there exists a triangulation of $P$ such that the restriction of $f$ to each simplex is smooth. We will say that $f$ is a PD homeomorphism if $f$ is piecewise differentiable, a homeomorphism, and the restriction of $f$ to each simplex has injective differential at each point. In this case, we say that $f$ is a Whitehead triangulation of $M$. </p>
</article> 
</p>
<p>
<article class="env-theorem" id="0080">
  <p><a class="environment-identifier" href="/tag/0080">Theorem <span data-tag="0080">11.1.2</span>.</a> Every smooth manifold admits a Whitehead triangulation $P \to M$. Moreover, in this case $P$ is necessarily a PL manifold. Any two Whitehead triangulations give isomorphic PL manifolds. </p>
</article> 
</p>
<p>
In other words, every smooth manifold has a unique PL structure. 
</p>
<p>
Unfortunately, the converse is false. In general, not every PL manifold can be “smoothed” (i.e., obtained by triangulating a smooth manifold); moreover, if a smoothing exists, it might not be unique. The most famous examples of this are Milnor's exotic smooth structures on $S^7$: they are all isomorphic as PL manifolds but not as smooth manifolds. This problem, however, does not arise in low dimensions. 
</p>
<p>
<article class="env-theorem" id="0081">
  <p><a class="environment-identifier" href="/tag/0081">Theorem <span data-tag="0081">11.1.3</span>.</a> In dimensions $n\le 6$, every PL manifold admits a smooth structure, unique up to diffeomorphism. </p>
</article> We refer the reader to <span class="cite">[<a href="/bibliography/milnor-review">Mil2011</a>]</span> and <span class="cite">[<a href="/bibliography/lurie-PL">Lur2009</a>, <span class="postnote">Lecture 23</span>]</span> for a review of the relations between PL manifolds and smooth manifolds. 
</p>
<p>
It is easy to extend the definition above and define a PL manifold with boundary. Note that in the PL setting, there is no notion of a manifold with corners: a corner $\mathbb {R}_+^ k \times \mathbb {R}^{n-k}$ is PL isomorphic to the halfspace $\mathbb {R}_+\times \mathbb {R}^{n-1}$. We will use the standard notation $B^ n$ for the closed $n$-dimensional ball considered as an $n$-dimensional PL manifold with boundary, and $S^{n-1}=\partial B^ n$ for the $(n-1)$-dimensional sphere. Note that in the PL category $B^ n\simeq [0,1]^ n$. 
</p>
<p>
Some of the usual notions in the theory of smooth manifolds can be easily transferred to the PL setting; for example, it is not hard to introduce the notion of orientation and define oriented PL manifolds. Others are much harder; in particular, there is no easy way to define the notion of the tangent bundle if we want the fibers to be vector spaces. Instead, one uses an alternative language, that of microbundles (see <span class="cite">[<a href="/bibliography/lurie-PL">Lur2009</a>, <span class="postnote">Lecture 10</span>]</span>). In fact, defining a vector bundle structure on the “tangent microbundle” of a PL manifold is essentially equivalent to defining a smooth structure (<span class="cite">[<a href="/bibliography/hirsch-mazur">HM1974</a>]</span>). 
</p>
