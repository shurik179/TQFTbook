<h2 id="s:serre" class="tex-section"><span data-tag="005P">8.3</span> Serre functor</h2>
<p>
 Let $\mathcal{C}$ be a symmetric monoidal 2-category, and let $A$ be a fully dualizable object in $\mathcal{C}$. Denote by $B=A^*$ the dual of $A$ and by $\operatorname{ev}\colon A\otimes B\to \mathbf{1}$, $\operatorname{coev}\colon \mathbf{1}\to B\otimes A$ the corresponding evaluation and coevaluation morphisms. 
</p>
<p>
By the definition of a fully dualizable object, the morphism $\operatorname{ev}$ must have right and left adjoints, which we will denote by $\operatorname{ev}^ R$, $\operatorname{ev}^ L$ respectively. Both of them are morphisms $\mathbf{1}\to A\otimes B$; thus, we have adjunctions 
</p>
<div class="equation">
  \begin{align*} & A\otimes B \xrightleftharpoons [\operatorname{ev}^ R]{\operatorname{ev}}\mathbf{1},\\ & \mathbf{1}\xrightleftharpoons [\operatorname{ev}]{\operatorname{ev}^ L}A \otimes B. \end{align*}
</div>
<p>
It is natural to ask what is the relation between these adjoints and the coevaluation morphism $\operatorname{coev}\colon \mathbf{1}\to B \otimes A$. Note that here $A$ and $B$ go in the opposite order, but since $\mathcal{C}$ is a symmetric monoidal category, we can use the commutativity isomorphism to exchange them, defining $\widetilde\operatorname{coev}= c_{B,A}\operatorname{coev}\colon \mathbf{1}\to A\otimes B$. It turns out that while in general, $\widetilde\operatorname{coev}$ is different from $\operatorname{ev}^ L$, $\operatorname{ev}^ R$, they can be related using the so-called <em>Serre automorphism</em>. 
</p>
<p>
<article class="env-definition" id="005Q">
  <p><a class="environment-identifier" href="/tag/005Q">Definition <span data-tag="005Q">8.3.1</span>.</a> Let $A$ be a fully dualizable object in $\mathcal{C}$. The Serre morphism $S_ A$ is the 1-morphism $A\to A$ defined by </p>
  <div class="equation" id="005R">
    <span class="equation-label"><a href="/tag/005R" data-tag="005R">8.3.1</a></span>
    <div>\begin{equation} \label{e:serre-formula} S_ A=\Bigl ( A\xrightarrow {1_ A\otimes \operatorname{ev}^ R} A\otimes A\otimes B \xrightarrow {c_{A,A}\otimes 1_ B} A\otimes A\otimes B \xrightarrow {1_ A\otimes \operatorname{ev}} A \Bigr ). \end{equation}</div>
</div>
  <p> Graphically, this composition is represented by the picture (<a href="/tag/00F9" data-tag="00F9">8.3.2</a>) below: </p>
  <div class="equation" id="00F9">
    <span class="equation-label"><a href="/tag/00F9" data-tag="00F9">8.3.2</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c8-fig07.svg"></div>
</div>
  <p> where the input/output of $S_ A$ are the two horizontal strands labeled $A$, and the loop formed by $\operatorname{ev}^ R$ and $\operatorname{ev}$ represents the auxiliary $A\otimes B$ pair created and then annihilated; the crossing in the middle is the symmetry isomorphism $c_{A,A}$. </p>
</article> 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">8.3.1</span>.</a>The name “Serre automorphism” is motivated by the relation of this to Serre duality in the category of coherent sheaves on projective varieties; see <span class="cite">[<a href="/bibliography/lurie-cobordism">Lur2009a</a>, <span class="postnote">Remark 4.2.4</span>]</span>. </p>
</article> 
</p>
<p>
<article class="env-theorem" id="005S">
  <p><a class="environment-identifier" href="/tag/005S">Theorem <span data-tag="005S">8.3.1</span>.</a> Let $A$ be a fully dualizable object in $\mathcal{C}$ and let $S_ A\colon A\to A$ be the Serre morphism defined by Definition&#160;<a href="/tag/005Q" data-tag="005Q">8.3.1</a>. Then $S_ A$ is invertible, and we have an isomorphism of 1-morphisms </p>
  <div class="equation">
  \begin{align*}  \operatorname{ev}^ L& \simeq (S\otimes 1_ B) \widetilde\operatorname{coev}\\  \operatorname{ev}^ R& \simeq (S^{-1}\otimes 1_ B)\widetilde\operatorname{coev}. \end{align*}
</div>
</article> We refer the reader to <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>, <span class="postnote">Section 3.1</span>]</span> for the proof. 
</p>
<p>
In particular, this theorem implies that if the Serre automorphism is trivial (i.e., one has a 2-isomorphism $S_ A\simeq 1_ A$), then $\operatorname{ev}, \widetilde\operatorname{coev}$ are two-sided adjoints of each other. More precisely, a choice of an isomorphism $S_ A\simeq 1_ A$ defines the unit and counit of adjunctions $\operatorname{ev}\dashv \widetilde\operatorname{coev}$, $\widetilde\operatorname{coev}\dashv \operatorname{ev}$. 
</p>
