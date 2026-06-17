<h2 id="s:state-sum" class="tex-section"><span data-tag="008G">12.1</span> Definition of TQFT via state sum</h2>
<p>
 As before, let $x_ i$, $x^ i$ be dual bases in $A$ with respect to the Frobenius pairing. We denote by $g_{ij}$ the matrix of the pairing in the basis $x_ i$: $g_{ij}=(x_ i,x_ j)$ and by $g^{ij}$ the inverse matrix: $\sum _{j} g_{ij}g^{jk}=\delta _{ik}$. We will use $g_{ij}$, $g^{ij}$ for raising and lowering indices of various tensors. 
</p>
<p>
For any $k \ge 0$, define the map $A^ k\to \mathbf{k}$ by 
</p>
<div class="equation" id="008H">
    <span class="equation-label"><a href="/tag/008H" data-tag="008H">12.1.1</a></span>
    <div>\begin{equation} \label{e:k-pairing} \langle  a_1, \dots , a_ k\rangle  = \varepsilon (a_1\cdot \dots \cdot a_ k). \end{equation}</div>
</div>
<p>
<article class="env-lemma" id="008J">
       
  <p><a class="environment-identifier" href="/tag/008J">Lemma <span data-tag="008J">12.1.1</span>.</a></p>
  <p><ol>
  <li><p>
The map (<a href="/tag/008H" data-tag="008H">12.1.1</a>) is invariant under cyclic permutation of $a_ i$: 
</p>
<div class="equation">
  \[  \langle  a_1, \dots , a_ k\rangle  = \langle a_ k, a_1, \dots , a_{k-1}\rangle .  \]
</div>
</li><li><p>
The map (<a href="/tag/008H" data-tag="008H">12.1.1</a>) is multilinear over $\mathbf{k}$. Moreover, it is linear over $A$: for any $i=1,\dots , k$, $x\in A$, we have 
</p>
<div class="equation">
  \[  \langle  a_1, \dots , a_ ix, a_{i+1},\dots , a_ k\rangle  = \langle  a_1, \dots , a_ i, xa_{i+1},\dots , a_ k\rangle   \]
</div>
<p>
 (for $i=k$, we take $a_{i+1}=a_1$). 
</p>
</li><li><div class="equation" id="008K">
    <span class="equation-label"><a href="/tag/008K" data-tag="008K">12.1.2</a></span>
    <div>\begin{equation} \label{e:k-pairing-2} \sum _ i \langle  a_1, \dots , a_ k, x_ i\rangle  \langle  x^ i, b_1, \dots , b_ m\rangle  =\langle  a_1, \dots , a_ k, b_1, \dots , b_ m\rangle  \end{equation}</div>
</div>
</li>
</ol></p>
</article> The proof of this lemma is straightforward and is left as an exercise to the reader. 
</p>
<p>
Let $M$ be a closed oriented 2-dimensional manifold. Let us choose a PLCW decomposition $K$ of $M$ (see Section&#160;<a href="/tag/0086" data-tag="0086">11.3</a>), with the set of 2-cells $K_2$, the set of 1-cells (edges) $K_1$, and the set of vertices $K_0$. We will denote by $E$ the set of <em>oriented</em> edges, i.e., pairs consisting of an edge $r\in K_1$ and an orientation of $r$. Thus, every (unoriented) edge $r\in K_1$ gives rise to two oriented edges $r', r''\in E$. 
</p>
<p>
The invariant will be constructed by combining algebraic data defined by 2-cells, edges, and vertices of $M$, as defined below. The key ingredient of this construction is the tensor product of copies of $A$, one copy for each oriented edge $r$ 
</p>
<div class="equation" id="008L">
    <span class="equation-label"><a href="/tag/008L" data-tag="008L">12.1.3</a></span>
    <div>\begin{equation} \label{e:AE} A^ E = \bigotimes _{r\in E}A_ r \end{equation}</div>
</div>
<p>
 where we denote by $A_ r$ a copy of $A$ corresponding to $r$. 
</p>
<h4 id="a0000000031" class="tex-subsubsection"><span data-tag="">None</span> <strong>Algebraic data determined by edges</strong></h4>
<p>
 Define, for each unoriented edge $r\in K_1$, an element 
</p>
<div class="equation">
  \[  e_ r = \sum x_ i\otimes x^ i =\sum g^{ij} x_ i \otimes x_ j\in A_{r'}\otimes A_{r''}  \]
</div>
<p>
 where $r', r''$ are two possible orientations of $r$. Since $g^{ij}=g^{ji}$ (which follows from the symmetry of the form $(\,  , \, )$), $e_ r$ does not depend on which of two possible orientations was denoted by $r'$ and which by $r''$. Taking the product over all (unoriented) edges $r\in K_1(M)$, we get an element 
</p>
<div class="equation" id="008M">
    <span class="equation-label"><a href="/tag/008M" data-tag="008M">12.1.4</a></span>
    <div>\begin{equation} \label{e:eM} e_ M = \bigotimes _{r\in K_1} e_ r\in A^ E. \end{equation}</div>
</div>
<h4 id="a0000000030" class="tex-subsubsection"><span data-tag="">None</span> <strong>Algebraic data determined by vertices</strong></h4>
<p>
 Since $A$ is a separable Frobenius algebra, we have an invertible Euler element $w=\sum x_ ix^ i\in z(A)$ (see Theorem&#160;<a href="/tag/006P" data-tag="006P">9.3.4</a>). Choose now, for every vertex $v\in K_0$ of the PLCW decomposition, an oriented edge $r(v)$ incident to $v$ ($v$ can be either the head or the tail of $r(v)$). Let the operator 
</p>
<div class="equation" id="008N">
    <span class="equation-label"><a href="/tag/008N" data-tag="008N">12.1.5</a></span>
    <div>\begin{equation} \label{e:wv} w^{-1}_ v\colon A^ E\to A^ E \end{equation}</div>
</div>
<p>
 be the operator of left multiplication by $w^{-1}$ in the component $A_{r(v)}$. Taking the product over all vertices, we get an operator 
</p>
<div class="equation">
  \[  \prod _ v(w^{-1}_ v)\colon A^ E\to A^ E.  \]
</div>
<p>
 Note that this operator depends on the choice we made, namely the choice of oriented edge for each vertex. 
</p>
<h4 id="a0000000027" class="tex-subsubsection"><span data-tag="">None</span> <strong>Algebraic data determined by 2-cells</strong></h4>
<p>
Every 2-cell $F\in K_2$ inherits a natural orientation from $M$. Thus, we can define its boundary $\partial F$. This is a collection of oriented edges, which has a natural counterclockwise cyclic order. 
</p>
<p>
We will actually be more interested in the boundary with reversed orientation, writing $\overline{\partial F}=\{ r_1, \dots , r_ k\} \subset E$; if we draw $F$ as a polygon in $\mathbb {R}^2$ with the standard orientation, then the edges $r_ i$ are oriented clockwise and taken in the natural clockwise order: 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c12-fig01.svg" /></div>
<p>
Define the map 
</p>
<div class="equation">
  \begin{align*}  \langle \,  \rangle _ F\colon A^{\otimes \overline{\partial F}}& \to \mathbf{k}\\  a_1\otimes \dots \otimes a_ k& \mapsto \langle a_1, \dots , a_ k\rangle . \end{align*}
</div>
<p>
 Lemma&#160;<a href="/tag/008J" data-tag="008J">12.1.1</a> implies that this map does not depend on which edge we denote by $r_1$ and thus is well-defined. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">12.1.1</span>.</a>The reason for choosing $\overline{\partial F}$ rather than $\partial F$ is that we want to think of $F$ as a cobordism from $\overline{\partial F}$ to the empty set. </p>
</article> 
</p>
<p>
Since $M$ is a manifold, every unoriented edge appears twice as a boundary edge of a 2-cell, and every oriented edge appears once as part of $\partial F$. Thus, by taking the tensor product of $\langle \,  \rangle _ F$ over all 2-cells $F$, we get a linear map 
</p>
<div class="equation">
  \[  \bigotimes _ F \langle  \,  \rangle _ F \colon A^ E\to \mathbf{k}.  \]
</div>
<p>
Let us now put it all together and define a number $Z_ A(M,K)\in \mathbf{k}$ by 
</p>
<div class="equation" id="008P">
    <span class="equation-label"><a href="/tag/008P" data-tag="008P">12.1.6</a></span>
    <div>\begin{equation} \label{e:fhk-state-sum} Z_ A(M,K)= \Bigl (\bigotimes _ F \langle  \,  \rangle _ F\Bigr ) \Bigl (\prod _ v(w^{-1}_ v) \Bigr )e_ M\in \mathbf{k}\end{equation}</div>
</div>
<p>
 where $e_ M$ is defined by (<a href="/tag/008M" data-tag="008M">12.1.4</a>) and $w_ v$ is defined by (<a href="/tag/008N" data-tag="008N">12.1.5</a>). 
</p>
<p>
<article class="env-theorem" id="008Q">
  <p><a class="environment-identifier" href="/tag/008Q">Theorem <span data-tag="008Q">12.1.2</span>.</a> Let $M$ be a closed oriented 2-manifold with PLCW decomposition $K$. Let $Z_ A(M,K)$ be defined by (<a href="/tag/008P" data-tag="008P">12.1.6</a>). </p>
  <p><ol>
  <li><p>
So defined $Z_ A(M,K)$ does not depend on the choice of an edge $r(v)$ used to define $w^{-1}_ v$. 
</p>
</li><li><p>
So defined $Z_ A(M,K)$ does not depend on the choice of cell decomposition $K$. 
</p>
</li>
</ol></p>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      Part (1) follows from two observations: 
    <p>
      <ul>
  <li><div class="equation">
  \[  \sum w^{-1}x_ i\otimes x^ i= \sum x_ i\otimes x^ i w^{-1}= \sum x_ i\otimes w^{-1}x^ i  \]
</div>
<p>
 (the first identity uses the centrality of $e$, the second uses the fact that $w^{-1}$ is central). This shows that replacing a choice of edge $r(v)$ by the same edge but with opposite orientation does not change the vector $w^{-1}_ ve_ M$ and thus, does not change $Z_ A(M,K)$. 
</p>
</li><li><p>
If $r_ i$, $r_{i+1}$ are two edges of the boundary of some cell $F$ both adjacent to vertex $v$, as shown below, then replacing $r(v)=r_ i$ by $r(v)= r_{i+1}$ does not change the composition $\Bigl (\bigotimes _ F \langle  \,  \rangle _ F\Bigr )w^{-1}_ v$ and thus, does not change $Z_ A(M,K)$. Indeed, it follows from $\langle \dots , a_{i}w^{-1}, a_{i+1}, \dots \rangle  = \langle \dots , a_{i}, w^{-1}a_{i+1}, \dots \rangle $. 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c12-fig02.svg" /> </div>
</li>
</ul>
    <p>
       By using these two operations, we can replace any oriented edge adjacent to $v$ by any other edge. This proves part (1) of the theorem. 
    <p>
      To prove part (2), we need to verify that $Z_ A(M,K)$ is invariant under elementary moves described in Figure&#160;<a href="/tag/008D" data-tag="008D">11.3.2</a>. 
    <p>
      Invariance under subdivision of a 2-cell follows from (<a href="/tag/008K" data-tag="008K">12.1.2</a>). 
    <p>
      Invariance under subdivision of a 1-cell follows from 
    <p>
      <div class="centered"><img class="includegraphics" src="/static/figures/c12-fig03.svg" /></div>
    <p>
       where the red dot stands for the operator of multiplication by $w^{-1}$ (which comes from the operator $w^{-1}_ v$ for the newly added vertex). But this is immediate from the definition: indeed, comultiplication is given by $\Delta (a)=\sum a x_ i \otimes x^ i$, so the composition in the left-hand side is $a\mapsto \sum a x_ i w^{-1}x^ i=a$. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
 <article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">12.1.2</span>.</a>Note that without the $w^{-1}_ v$ factor, this theorem would fail unless we assume $\sum x_ ix^ i=1$. </p>
</article> 
</p>
<p>
Thus, we see that (<a href="/tag/008P" data-tag="008P">12.1.6</a>) defines an invariant of closed 2-manifolds. In the next section, we will generalize it to manifolds with boundary, thus defining an extended TQFT as a lattice theory. 
</p>
<p>
<article class="env-example" id="008R">
  <p><a class="environment-identifier" href="/tag/008R">Example <span data-tag="008R">12.1.1</span>.</a> Consider the PLCW decomposition of $S^2$ obtained by gluing together opposite edges of the bigon shown below. </p>
  <p><div class="centered"><img class="includegraphics" src="/static/figures/c12-eqfig01.svg" /></div></p>
  <p> This cell decomposition has one 2-cell, one 1-cell, and two vertices. The state sum (<a href="/tag/008P" data-tag="008P">12.1.6</a>) in this case gives </p>
  <div class="equation">
  \[  Z_ A(S^2)=\sum \varepsilon (w^{-2}x_ ix^ i)=\varepsilon (w^{-1}).  \]
</div>
</article> 
</p>
<p>
<article class="env-example" id="008S">
  <p><a class="environment-identifier" href="/tag/008S">Example <span data-tag="008S">12.1.2</span>.</a> Consider a PLCW decomposition of the torus $T^2$ obtained by gluing together opposite sides of the rectangle. This decomposition has a single 2-cell, two edges, and one vertex. The state sum (<a href="/tag/008P" data-tag="008P">12.1.6</a>) in this case gives </p>
  <div class="equation">
  \[  Z_ A(T^2)=\sum \varepsilon (w^{-1}x_ ix_ jx^ ix^ j)=\sum (p(x_ j),x^ j)= \operatorname{tr}_ A (p)  \]
</div>
  <p> where $p\colon A \to A$ is given by $p(a)=\sum w^{-1}x_ iax^ i$. By (<a href="/tag/006V" data-tag="006V">9.3.11</a>), the so-defined $p$ is exactly the operator of projection onto the center of $A$; thus, </p>
  <div class="equation">
  \[  Z_ A(T^2)= \operatorname{tr}_ A (p)=\dim z(A).  \]
</div>
</article> 
</p>
