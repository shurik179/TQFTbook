<h2 id="s:symmetric-monoidal" class="tex-section"><span data-tag="000K">1.4</span> Symmetric monoidal categories</h2>
<p>
 For the category of vector spaces, the tensor product is not only associative, but also “commutative”: one has natural isomorphisms $V\otimes W \simeq W\otimes V$. The definition below gives a proper generalization of this to arbitrary monoidal categories. 
</p>
<p>
<article class="env-definition" id="000L">
  <p><a class="environment-identifier" href="/tag/000L">Definition <span data-tag="000L">1.4.1</span>.</a> A symmetric monoidal category is a monoidal category $\mathcal{C}$ together with a functorial isomorphism </p>
  <div class="equation">
  \[  c_{X,Y}\colon X\otimes Y \xrightarrow {\sim }Y\otimes X  \]
</div>
  <p> such that </p>
  <div class="equation">
  \[  c_{X,Y} c_{Y,X}=\operatorname{id} \]
</div>
  <p> and which satisfies the hexagon axiom: </p>
  <p><div class="centered"><img class="includegraphics" src="/static/figures/fig06.svg" /></div></p>
</article> The hexagon axiom looks complicated; to make it easier to understand, one can drop all associativity isomorphisms, replacing the hexagon axiom with the one below 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/fig07.svg" /></div>
<p>
<article class="env-example" id="">
  <p><a class="environment-identifier" href="/tag/">Example <span data-tag="">1.4.1</span>.</a></p>
  <p><ol>
  <li><p>
Category $\mathbf{Set}$ with respect to disjoint union is a symmetric monoidal category; same is true for categories $\mathbf{Man}$, $\mathbf{PLMan}$. 
</p>
</li><li><p>
The category of vector spaces over $\mathbf{k}$ is a symmetric monoidal category. Same is true for categories of representations of a group $G$ or a Lie algebra $\mathfrak {g}$. 
</p>
</li><li><p>
(Super vector spaces). Consider the category $\mathbf{SVec}$ whose objects are $\mathbb {Z}_2$-graded vector spaces $V=V_0\oplus V_1$. This has an obvious monoidal structure. Define the commutativity isomorphism $c_{V,W}\colon V\otimes W \to W\otimes V$ by 
</p>
<div class="equation">
  \[  c(v\otimes w)=(-1)^{pq} w\otimes v, \quad v\in V_ p, w\in W_ q.  \]
</div>
<p>
 Then this defines on the category $\mathbf{SVec}$ a structure of a symmetric monoidal category. 
</p>
</li>
</ol></p>
</article> Note that one can also define the symmetric structure on $\mathbf{SVec}$ without the $(-1)^{pq}$ factor; this illustrates the fact that a monoidal category can have several different symmetric structures. <article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">1.4.1</span>.</a>There are monoidal categories that do not have a natural symmetric structure; for example, the category $\mathbf{Vec}_ G$ of $G$-graded vector spaces, or a category of bimodules over a ring. There are also “braided” categories where we do have isomorphisms $c_{X,Y}\colon X\otimes Y \to Y\otimes X$, but these isomorphisms fail to satisfy condition $c^2=\operatorname{id}$. The most famous example of a braided category is the category of representations of a quantum group. We will discuss braided categories later (see ). </p>
</article> 
</p>
<p>
As before, the real importance of the hexagon axiom is the following coherence theorem, which is an analog of Mac Lane's coherence theorem, but for <strong>symmetric</strong> monoidal categories. 
</p>
<p>
<article class="env-theorem" id="000M">
      
  <p><a class="environment-identifier" href="/tag/000M">Theorem <span data-tag="000M">1.4.1</span> <span class="named">(Mac Lane's coherence theorem for symmetric monoidal categories)</span>.</a>Let $\mathcal{C}$ be a symmetric monoidal category. Let $F_1, F_2\colon \mathcal{C}^ n\to \mathcal{C}$ be two functors obtained by compositions of </p>
  <p><ul>
  <li><p>
tensor product functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$ 
</p>
</li><li><p>
functors $X\mapsto X\otimes \mathbf{1}$, $X\mapsto \mathbf{1}\otimes X$ 
</p>
</li><li><p>
permutation functor $\mathcal{C}\times \mathcal{C}\to \mathcal{C}\times \mathcal{C}\colon (A, B)\mapsto (B,A)$ 
</p>
</li>
</ul></p>
  <p> e.g., </p>
  <div class="equation">
  \begin{align*}  F_1(A,B,C)& =(B\otimes A)\otimes (\mathbf{1}\otimes C)\\  F_2(A,B,C)& =C\otimes ((B\otimes A)\otimes \mathbf{1}). \end{align*}
</div>
  <p> Then </p>
  <p><ol>
  <li><p>
There exists a functorial isomorphism $F_1\simeq F_2$, obtained by composition of associativity isomorphism $\alpha $, left and right unit isomorphisms $l,r$, commutativity isomorphism $c$, and their inverses. 
</p>
</li><li><p>
Any two such isomorphisms $F_1\to F_2$ are equal. 
</p>
</li>
</ol></p>
</article> As before, this theorem can be understood as a statement that a certain cell complex is simply connected; if we only use permutations and tensor product (i.e., no units), then this complex is called <em>permutoassociahedron</em>. (It took me 3 tries to spell that correctly; in the end, I had to use copy and paste from another source.) 
</p>
<p>
<br /> 
</p>
