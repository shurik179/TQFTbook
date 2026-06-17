<h2 id="s:PLCW" class="tex-section"><span data-tag="0086">11.3</span> PLCW decompositions</h2>
<p>
 However, for many purposes the notion of triangulation is too restrictive, and one would like to consider more general cell decompositions — for example, representing a torus as the result of gluing together opposite sides of a rectangle. In this section, we give exact definitions and results for such more general cell decompositions, following <span class="cite">[<a href="/bibliography/PLCW">Kir2012</a>]</span>. 
</p>
<p>
Recall that we denote by $B^ k=[0,1]^ k$ the $k$-ball with the canonical PL structure; we will also use the notation $\partial B^ k$ and $\operatorname{Int}B^ k= B^ k - \partial B^ k$ for the boundary and interior of $B^ k$ respectively. 
</p>
<p>
<article class="env-definition" id="0087">
  <p><a class="environment-identifier" href="/tag/0087">Definition <span data-tag="0087">11.3.1</span>.</a> A <em>generalized $k$-cell</em> in $\mathbb {R}^ N$ is a subset $C\subset \mathbb {R}^ N$ together with a decomposition $C=\odot {C}\sqcup \overset {\text{\bf \Large .}}{C}$ such that $\odot {C}=\varphi (\operatorname{Int}B^ k)$, $\overset {\text{\bf \Large .}}{C}=\varphi (\partial B^ k)$ (and thus $C=\varphi (B^ k)$) for some PL map $\varphi \colon B^ k\to \mathbb {R}^ N$ which is injective on the interior of $B^ k$. </p>
  <p>In such a situation, the map $\varphi $ is called a <em>characteristic map</em>. </p>
</article> It is easy to show that in fact $\varphi $ is determined by $C$ together with the decomposition $C=\odot {C}\sqcup \overset {\text{\bf \Large .}}{C}$, uniquely up to an automorphism of $B^ k$. 
</p>
<p>
<article class="env-definition" id="0088">
  <p><a class="environment-identifier" href="/tag/0088">Definition <span data-tag="0088">11.3.2</span>.</a> A generalized cell complex (g.c.c.) is a finite collection $K$ of generalized cells in $\mathbb {R}^ N$ such that </p>
  <p><ol>
  <li><p>
For any distinct $A, B$ in $K$, we have 
</p>
<div class="equation">
  \[  \odot {A}\cap \odot {B}=\varnothing  \]
</div>
</li><li><p>
For any cell $C\in K$, $\overset {\text{\bf \Large .}}{C}$ is a union of cells. 
</p>
</li>
</ol></p>
  <p>The support $|K|\subset \mathbb {R}^ N$ of a generalized cell complex $K$ is defined by </p>
  <div class="equation">
  \[  |K|=\bigcup _{C\in K}C.  \]
</div>
  <p>A <em>generalized cell decomposition</em> of a compact polyhedron $P\subset \mathbb {R}^ N$ is a generalized cell complex $K$ such that $|K|=P$. </p>
  <p>For a generalized cell complex $K$, we define the $k$-skeleton $K^ k$ of $K$ as the generalized cell complex formed by all cells of dimension $\le k$ in $K$. </p>
</article> 
</p>
<p>
This is still slightly too general; for example, this definition allows one to form a cell decomposition by taking a rectangle and folding one of the edges in half, gluing it to itself. To avoid that, we make the following (recursive) definition. 
</p>
<p>
<article class="env-definition" id="0089">
  <p><a class="environment-identifier" href="/tag/0089">Definition <span data-tag="0089">11.3.3</span>.</a> A generalized cell complex (respectively, a generalized cell decomposition) $K$ will be called a <em>PLCW complex</em> (respectively, PLCW decomposition) if $\dim K=0$, or $\dim K=n&gt;0$ and the following conditions hold: </p>
  <p><ol>
  <li><p>
The $(n-1)$-skeleton $K^{n-1}$ is a PLCW complex. 
</p>
</li><li><p>
For any $n$-cell $C\in K$, $C=\varphi (B^ n)$, there exists a PLCW decomposition $L$ of $\partial B^ n$ such that the restriction $\varphi |_{\partial B^ n}\colon L\to K^{n-1}$ is a regular cellular map, i.e., for every cell $D$ of $L$, $\varphi (D)$ is a generalized cell in $K$, and $\varphi $ is injective on $\odot {D}$. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
For $n=2$, this means the following: 
</p>
<ul>
  <li><p>
The 0-skeleton is a finite collection of points (vertices) in $\mathbb {R}^ N$. 
</p>
</li><li><p>
The 1-skeleton $K^1$ is a finite union of 1-cells (i.e., PL images of an interval), with endpoints in vertices. 1-cells are only allowed to intersect at endpoints; we allow two endpoints of the same interval to coincide. 
</p>
</li><li><p>
2-cells are $k$-gons, with $k\ge 1$, and the attachment map sends each side of the $k$-gon to one of the 1-cells, injectively on the interior of the side. 
</p>
</li>
</ul>
<p>
 In particular, we allow gluing together two sides of the same polygon, but we do not allow, e.g., “folding” any side to glue it to itself. 
</p>
<p>
<article class="env-example" id="008A">
  <p><a class="environment-identifier" href="/tag/008A">Example <span data-tag="008A">11.3.1</span>.</a> The usual construction of a torus by gluing together opposite sides of a rectangle gives a PLCW decomposition of the torus, consisting of one 0-cell, two 1-cells, and one 2-cell. </p>
</article> 
</p>
<p>
Three more examples of PLCW decompositions are shown in Figure&#160;<a href="/tag/008B" data-tag="008B">11.3.1</a>. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c11-fig03.svg" /> <figcaption class="figcaption">Figure 11.3.1. Examples of PLCW decompositions of a disk and an annulus.</figcaption>  </div>

</figure>
<p>
For PLCW decompositions, we have an analog of Pachner moves. Informally, these operations consist of erasing a $(k-1)$-disk separating two different $k$-cells. More formally, they are defined as follows. 
</p>
<p>
Let $M$ be an $n$-dimensional PL manifold together with a PLCW decomposition $K$, and let $A=\varphi (B^ k)$ be a $k$-cell in $K$. Let $L=\varphi ^*(K)$ be the induced PLCW decomposition of the boundary $\partial B^ k=S^{k-1}$. Let $H=\{ x_ k=0\} $ be a hyperplane in $\mathbb {R}^ k$; it cuts $B^ k$ into two half-balls, $B_{\pm }^ k$, separated by the disk $B_0^ k\simeq B^{k-1}$. Let $E=S^{k-1}\cap H$ be the equator of $S^{k-1}$. Assume that $E$ is a union of cells of $L$. Then we can construct a subdivision of $K$ by replacing cell $A=\varphi (B^ k)$ by two $k$-cells $A_\pm =\varphi (B_\pm ^ k)$ and a $(k-1)$-cell $A_0=\varphi (B_0^ k)$; in other words, we “cut” the $k$-ball $B^ k$ into two parts by a $(k-1)$-dimensional disk. We will call such subdivisions <em>elementary</em>. 
</p>
<p>
<article class="env-theorem" id="008C">
  <p><a class="environment-identifier" href="/tag/008C">Theorem <span data-tag="008C">11.3.1</span>.</a> Any two PLCW decompositions of a PL $n$-manifold $M$ can be obtained from each other by a sequence of elementary subdivisions and their inverses. </p>
</article> A proof of this fact can be found in <span class="cite">[<a href="/bibliography/PLCW">Kir2012</a>]</span>. 
</p>
<p>
For $n=2$, there are two kinds of such subdivisions: 
</p>
<ol>
  <li><p>
Subdividing a 1-cell, i.e., inserting a new vertex dividing an edge into two. 
</p>
</li><li><p>
Subdividing a 2-cell, i.e., cutting a polygon into two by a diagonal. 
</p>
</li>
</ol>
<p>
 Note that the word “diagonal” includes an arc connecting two adjacent vertices (but does not include a loop around a vertex). These two kinds of moves are shown in Figure&#160;<a href="/tag/008D" data-tag="008D">11.3.2</a>. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c11-fig04.svg" /> <figcaption class="figcaption">Figure 11.3.2. Elementary moves for $n=2$</figcaption> </div>

</figure>
<p>
A sequence of such elementary moves relating two PLCW decompositions of a disk is shown in Figure&#160;<a href="/tag/008E" data-tag="008E">11.3.3</a>. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c11-fig05.svg" /> <figcaption class="figcaption">Figure 11.3.3. A sequence of elementary subdivisions of a disk</figcaption>  </div>

</figure>
<p>
<br /> 
</p>
