<h2 id="s:1d-tqft-rigid" class="tex-section"><span data-tag="001E">3.3</span> Rigid monoidal categories</h2>
<p>
 In the previous section, we had shown that a 1d TQFT with values in the category of vector spaces is uniquely determined by the vector space $V=Z(\bullet ^+)$, which must be finite-dimensional. What happens if we now consider TQFTs with values in an arbitrary monoidal category $\mathcal{C}$? 
</p>
<p>
It turns out that there is a very similar answer, but with finite-dimensionality replaced by the following condition. 
</p>
<p>
<article class="env-definition" id="001F">
  <p><a class="environment-identifier" href="/tag/001F">Definition <span data-tag="001F">3.3.1</span>.</a> Let $\mathcal{C}$ be a monoidal category. A <em>dual pair</em> is a pair of objects $A,B\in \mathcal{C}$ together with morphisms </p>
  <div class="equation">
  \begin{align*}  \operatorname{ev}& \colon A\otimes B\to \mathbf{1}\qquad \text{(evaluation morphism),}\\  \operatorname{coev}& \colon \mathbf{1}\to B\otimes A \qquad \text{(coevaluation morphism)}, \end{align*}
</div>
  <p> satisfying the <em>rigidity</em> condition below. </p>
  <div class="equation" id="001G">
    <span class="equation-label"><a href="/tag/001G" data-tag="001G">3.3.1</a></span>
    <div>\begin{equation} \label{e:rigidity} \begin{aligned} & \Bigl (B\to \mathbf{1}\otimes B \xrightarrow {\operatorname{coev}\otimes 1_ B} (B\otimes A)\otimes B \xrightarrow {\alpha _{B,A,B}} B\otimes (A\otimes B) \xrightarrow {1_ B\otimes \operatorname{ev}} B\otimes \mathbf{1}\to B\Bigr ) = 1_ B\\ & \Bigl (A\to A\otimes \mathbf{1}\xrightarrow {1_ A\otimes \operatorname{coev}} A\otimes (B\otimes A) \xrightarrow {\alpha ^{-1}_{A,B,A}} (A\otimes B)\otimes A \xrightarrow {\operatorname{ev}\otimes 1_ A} \mathbf{1}\otimes A \to A\Bigr ) = 1_ A \end{aligned} \end{equation}</div>
</div>
  <p> In this situation we say that $A$ is a <em>left dual</em> of $B$, and $B$ is a <em>right dual</em> of $A$. </p>
</article> 
</p>
<p>
It is common to represent the evaluation and coevaluation graphically: 
</p>
<div class="equation" id="00EZ">
    <span class="equation-label"><a href="/tag/00EZ" data-tag="00EZ">3.3.4</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c3-fig03.svg"></div>
</div>
<p>
Then the rigidity equations (<a href="/tag/001G" data-tag="001G">3.3.1</a>) are illustrated by 
</p>
<div class="equation" id="001H">
    <span class="equation-label"><a href="/tag/001H" data-tag="001H">3.3.5</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c3-eqfig02.svg"></div>
</div>
<p>
It turns out that right dual, if exists, is unique up to unique isomorphism. <article class="env-theorem" id="001J">
  <p><a class="environment-identifier" href="/tag/001J">Theorem <span data-tag="001J">3.3.1</span>.</a> Let $(A, B, \operatorname{ev}, \operatorname{coev})$ and $(A,B', \operatorname{ev}', \operatorname{coev}')$ be two dual pairs with the same $A$. Then there exists a unique morphism $\varphi \colon B\to B'$ such that $\operatorname{ev}= \operatorname{ev}' \circ (1_ A\otimes \varphi )$, $\operatorname{coev}' =(\varphi \otimes 1_ A) \operatorname{coev}$. </p>
</article> The proof is a standard snake-diagram argument: the required $\varphi $ is given by the composition 
</p>
<div class="equation">
  \[  B \xrightarrow {1_ B\otimes \operatorname{coev}'} B\otimes A\otimes B' \xrightarrow {\operatorname{ev}\otimes 1_{B'}} B',  \]
</div>
<p>
 and uniqueness follows by chasing the rigidity equations. A similar statement holds for left dual. 
</p>
<p>
This allows us to talk about the right dual of $A$ as a well-defined object in $\mathcal{C}$. We will denote the right dual of $A$ by ${}^*A$; similarly we will use notation $B^*$ for left dual of $B$. In this notation, evaluation and coevaluation morphisms become 
</p>
<div class="equation" >
    <span class="equation-label">3.3.6</span>
    <div>\begin{equation}  \begin{aligned}  \operatorname{ev}& \colon X^*\otimes X\to \mathbf{1}\\  \operatorname{coev}& \colon \mathbf{1}\to X\otimes X^*. \end{aligned} \end{equation}</div>
</div>
<p>
Clearly, in a symmetric monoidal category, the left dual is also a right dual. 
</p>
<p>
<article class="env-definition" id="001K">
  <p><a class="environment-identifier" href="/tag/001K">Definition <span data-tag="001K">3.3.2</span>.</a> An object $A$ in a monoidal category $\mathcal{C}$ is <em>rigid</em> if it has both left and right duals. </p>
  <p>A monoidal category is <em>rigid</em> if every object is rigid. </p>
</article> 
</p>
<p>
<article class="env-example" id="001L">
  <p><a class="environment-identifier" href="/tag/001L">Example <span data-tag="001L">3.3.1</span>.</a> A vector space $V$ is rigid as an object of $\mathbf{Vec}$ if and only if it is finite-dimensional. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="001M">
  <p><a class="environment-identifier" href="/tag/001M">Exercise <span data-tag="001M">3.3.1</span>.</a> Show that in a dual pair, the coevaluation is uniquely determined by the remaining data: if $(A, B, \operatorname{ev}, \operatorname{coev})$ and $(A,B, \operatorname{ev}, \operatorname{coev}')$ are dual pairs, then $\operatorname{coev}= \operatorname{coev}'$. </p>
  <p>Similarly, $\operatorname{ev}$ is uniquely determined by $(A,B, \operatorname{coev})$. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="001N">
  <p><a class="environment-identifier" href="/tag/001N">Exercise <span data-tag="001N">3.3.2</span>.</a> Let $X^*$, $Y^*$ be right duals of objects $X, Y$. Show that then $X\otimes Y$ also has a right dual, and there is a canonical isomorphism $(X\otimes Y)^*\simeq Y^* \otimes X^*$. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="001P">
  <p><a class="environment-identifier" href="/tag/001P">Exercise <span data-tag="001P">3.3.3</span>.</a> Let $\mathcal{C}$ be a rigid monoidal category. For a morphism $f\colon X\to Y$, define a morphism $f^*\colon Y^*\to X^*$ by the picture below. </p>
  <div class="equation" id="00F0">
    <span class="equation-label"><a href="/tag/00F0" data-tag="00F0">3.3.9</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c3-fig04.svg"></div>
</div>
  <p>Prove that then $(fg)^*=g^* f^*$; thus, $*$ is a contravariant functor $\mathcal{C}\to \mathcal{C}$. </p>
</article> 
</p>
<p>
After these preliminaries, we can now easily classify 1-dimensional TQFTs with values in any symmetric monoidal category. 
</p>
<p>
<article class="env-theorem" id="001Q">
  <p><a class="environment-identifier" href="/tag/001Q">Theorem <span data-tag="001Q">3.3.2</span>.</a> If $Z\colon \mathbf{Cob}_1\to \mathcal{C}$ is a $1$-dimensional TQFT with values in a symmetric monoidal category $\mathcal{C}$, then $A=Z(\bullet ^+)$ is a rigid object; its dual is $Z(\bullet ^-)$. Conversely, any rigid object $A\in \mathcal{C}$ defines a one-dimensional TQFT such that $Z(\bullet ^+)=A$. </p>
</article> 
</p>
