<h2 id="s:tv-full-definition" class="tex-section"><span data-tag="00E7">19.3</span> Turaev–Viro theory: full definition</h2>
<p>
 We now define the TV invariant of 3-manifolds. Let $M$ be a combinatorial 3-manifold with boundary. We fix a labeling $l$ of edges of $M$. Then we can assign a vector $Z(F,l) \in H(\partial F, l)$ to every 3-cell $F$ as follows. Recall that $F$ is an inclusion $F:(0,1)^3 \rightarrow M$. The pullback of PLCW decomposition of $M$ gives a PLCW decomposition of $\partial (0,1)^3 \simeq S^2$. Consider the dual graph $\Gamma $ of this decomposition and choose an orientation for every edge of this dual graph ( arbitrarily ) as shown in Figure&#160;<a href="/tag/00GZ" data-tag="00GZ">19.3.1</a>. 
</p>
<figure class="figure">
  <div class="centered"><p>
<img class="includegraphics" src="/static/figures/c19-fig03.svg" /> 
</p>
<figcaption class="figcaption">Figure 19.3.1. The dual graph on the boundary of a 3-cell</figcaption>

</div>

</figure>
<p>
Note that a labeling $l$ of $M$ defines a labeling of edges of this dual graph as shown in figure Figure&#160;<a href="/tag/00H0" data-tag="00H0">19.3.2</a>. Moreover, choose, for every face $C \in \partial F$, an element $\varphi _ C \in H(C,l)^*=\langle l(e_ n)^*,\dots ,l(e_1)\rangle $. Then this collection of mrohisms defines a coloring of vertices of $\Gamma $. 
</p>
<p>
By Lemma&#160;<a href="/tag/00D6" data-tag="00D6">18.5.3</a>, we get an invariant $\langle \Gamma \rangle _{S^2\setminus \{ p\} } \in \mathbf{k}$, which depends on the choice of labeling of edges $l$ and on the choice of morphisms $\varphi _ C$. We define $Z(F,l) \in \otimes _ C H(C,l)$ by 
</p>
<div class="equation" >
    <span class="equation-label">19.3.1</span>
    <div>\begin{equation}  (Z(F,l),\otimes \varphi _ C)=\langle \Gamma ,l,\{  \varphi _ C\} \rangle _{S^2\setminus \{ p\} } \end{equation}</div>
</div>
<p>
If $F$ is a tetrahedron, then this coincides with the definition in <span class="cite">[<a href="/bibliography/barrett">BW1996</a>]</span>; if $\mathcal{C}$ is the category of representations of quantum $\mathfrak {sl}_2$, these numbers are the $6j$-symbols. 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c19-fig04.svg" />&#8195;&#8195;<img class="includegraphics" src="/static/figures/c19-fig05.svg" /> &#8195;&#8195;$\varphi _ C \in H(C,l)^*=\langle X_5^*,X_4^*, \dots , X_1^*\rangle $ 
</p>
<figcaption class="figcaption">Figure 19.3.2. Coloring of the dual graph</figcaption>


</figure>
<p>
We can now give a definition of the TV invariants of combinatorial 3-manifolds. 
</p>
<p>
<article class="env-definition" id="00H1">
  <p><a class="environment-identifier" href="/tag/00H1">Definition <span data-tag="00H1">19.3.1</span>.</a> Let $M$ be a combinatorial 3-manifold with boundary and $\mathcal{C}$ - a spherical category. Then for any coloring $l$, define a vector </p>
  <div class="equation">
  \[  Z(M,l) \in H( \partial M,l)  \]
</div>
  <p> by </p>
  <div class="equation">
  \[  Z(M,l) = \operatorname{ev}\left( \bigotimes _ F Z(F,l) \right)  \]
</div>
  <p> where </p>
  <p><ul>
  <li><p>
$F$ runs over all 3-cells in $M$, each taken with the induced orientation, so that 
</p>
<div class="equation">
  \[  \bigotimes _ F Z(F,l) \in \bigotimes _ F H(\partial F,l) = H(\partial M,l) \otimes \bigotimes _ c H(c',l) \otimes H(c'',l)  \]
</div>
</li><li><p>
$c$ runs over all unoriented 2-cells in the interior of $M$; $c'$,$c''$ are the two orientations of such a cell, so that $c'=\overline{c''}$. 
</p>
</li><li><p>
$\operatorname{ev}$ is the tensor product over all $c$ of evaluation maps $H(c',l)\otimes H(c'',l)=H(c',l)\otimes H(c',l)^* \rightarrow \mathbf{k}$ 
</p>
</li>
</ul></p>
  <p> Finally we define </p>
  <div class="equation">
  \[  Z(M)= \dim (\mathcal{C})^{-v (M)} \sum _{l} \left( Z( M,l) \prod _{e} d^{n_ e}_{l(e)} \right)  \]
</div>
  <p> where </p>
  <p><ul>
  <li><p>
the sum is taken over all equivalence classes of simple labelings of $M$, 
</p>
</li><li><p>
$e$ runs over the set of all ( unoriented ) edges of $M$, 
</p>
</li><li><p>
$\dim (\mathcal{C})$ is the dimension of the category ( defined in Theorem&#160;<a href="/tag/00DP" data-tag="00DP">18.7.4</a>), and $v(M)=$number of internal vertices of $M$ + $\frac{1}{2}$(number of vertices on $\partial M$), 
</p>
</li><li><p>
$d_{l(e)} $ is the categorical dimension of $l(e)$, and 
</p>
<div class="equation">
  \[  n_ e = \begin{cases}  1,\quad e \text{ is an internal edge}\\  \tfrac {1}{2},\quad e\in \partial M \end{cases}  \]
</div>
</li>
</ul></p>
</article> 
</p>
<p>
In the special case of a triangulated manifold, this coincides with the construction in <span class="cite">[<a href="/bibliography/barrett">BW1996</a>]</span>. 
</p>
<p>
<article class="env-theorem" id="00H2">
  <p><a class="environment-identifier" href="/tag/00H2">Theorem <span data-tag="00H2">19.3.1</span>.</a> If $M$ is a PL manifold without boundary, then the number $Z(M) \in \mathbf{k}$ defined in Definition&#160;<a href="/tag/00H1" data-tag="00H1">19.3.1</a> does not depend on the choice of PLCW decomposition of $M$: for any two choices of PLCW decomposition, the resulting invariants are equal. </p>
</article> 
</p>
<p>
The proofs for this theorem can be found in <span class="cite">[<a href="/bibliography/balsam-kirillov">BK2010</a>]</span>. 
</p>
<p>
Moreover, these invariants can be extended to a TQFT. Namely, let $M$ be a combinatorial 3-cobordism between two 2-dimensional combinatorial manifolds $N_1$,$N_2$, i.e. a combinatorial manifold $M$ with boundary such that $\partial M = \overline{N_1} \sqcup N_2$ ( note that the combinatorial structure on $M$ automatically defines a combinatorial strucutre on $\partial M$). Then $H(\partial M)=H(N_1)^* \otimes H(N_2)=\mathrm{Hom}_\mathbf{k}( H(N_1),H(N_2))$, so Definition&#160;<a href="/tag/00H1" data-tag="00H1">19.3.1</a> defines a linear operator 
</p>
<div class="equation">
  \[  Z(M): H(N_1) \rightarrow H(N_2)  \]
</div>
<p>
<article class="env-theorem" id="00H3">
       
  <p><a class="environment-identifier" href="/tag/00H3">Theorem <span data-tag="00H3">19.3.2</span>.</a></p>
  <p><ol>
  <li><p>
So defined invariant satisfies gluing axiom: if $M$ is a combinatorial 3-manifold with boundary $\partial M=N_0 \cup N \cup \overline{N}$, and $M'$ is the manifold obtained by identifying boundary components $N$,$\overline{N}$ of $\partial M$ with the obvious cell decomposition, then we have 
</p>
<div class="equation">
  \[  Z(M')= \operatorname{ev}_{H(N)} Z(M) = \sum _ a (Z(M),\varphi _\alpha \otimes \varphi ^\alpha ),  \]
</div>
<p>
 where $\operatorname{ev}$ is the evaluation map $H(N)\otimes H(\overline{N}) \rightarrow \mathbf{k}$, and $\varphi _\alpha \in H(N)$, $\varphi ^\alpha \in H(\overline{N})$ are dual bases. 
</p>
</li><li><p>
If $M$ is a 3-manifold with boundary, and $M'$,$M''$ are two PLCW decompositions of $M$ which agree on the boundary, then $Z(M')=Z(M'') \in H( \partial M')=H(\partial M'')$. 
</p>
</li><li><p>
For a combinatorial 2-manifold $N$, define $A_ N:H(N) \rightarrow H(N)$ by 
</p>
<div class="equation" id="00H4">
    <span class="equation-label"><a href="/tag/00H4" data-tag="00H4">19.3.4</a></span>
    <div>\begin{equation} \label{e:projector} A_ N=Z(N \times I) \end{equation}</div>
</div>
<p>
 Then $A_ N$ is a projector: $A^2_ N = A_ N$. 
</p>
</li><li><p>
For a combinatorial 2-manifold $N$, define the vector space 
</p>
<div class="equation" >
    <span class="equation-label">19.3.5</span>
    <div>\begin{equation}  Z(N)= \mathrm{Im}(A_ N:H(N) \rightarrow H(N)) \end{equation}</div>
</div>
<p>
 where $A$ is the projector (<a href="/tag/00H4" data-tag="00H4">19.3.4</a>). Then the space $\langle N\rangle _{S^2\setminus \{ p\} }$ is an invariant of PL manifolds: if $N'$, $N''$ are two different PLCW decompositions of the same PL manifold N, then one has a canonical isomorphism $Z(N') \simeq Z(N'')$. 
</p>
</li><li><p>
The assignments $N \mapsto Z(N), M \mapsto Z(M)$ give a functor from the category of PL 3-cobordisms to the category of finite-dimensional vector spaces and thus define a 2+1 dimensional TQFT. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
The proof to this theorem can also be found in <span class="cite">[<a href="/bibliography/balsam-kirillov">BK2010</a>]</span>. 
</p>
<p>
TODO: Requires verification 
</p>
<p>
It's natural to ask if this construction can be extended to a fully extended TQFT. Balsam and Kirillov's state-sum construction 3-2-1 extends the Turaev-Viro theory. In principal, the same construction could have been straighforwardly extended down to a point. But to show that it defines a fully extended theory, one needs a symmetric monoidal ($\infty $,3) functor. This however requires showing that 0 dimensional data is fully dualizabile in $\mathbf{Tens}$ . And all the equivalences between 1-morphisms should hold upto 2-morphisms, and ( compositions of ) 2-morphisms can be further equivalent upto 3-morphisms. This leads to an inhumane web of coherence relations. The extension to 0 manifold clearly requires a more workable definition of a weak 3 category. 
</p>
