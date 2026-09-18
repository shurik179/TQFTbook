<h2 id="s:rigid" class="tex-section"><span data-tag="00G0">2.5</span> Rigid monoidal categories</h2>
<p>
 In many monoidal categories, such as the category of finite-dimensional vector spaces or the category of finite-dimensional representations of a group $G$, in addition to the tensor product we also have the operation of taking duals: for every representation $V$, we also have the dual representation $V^*$. The following definition allows one to talk about duals in any monoidal category. <article class="env-definition" id="001F">
  <p><a class="environment-identifier" href="/tag/001F">Definition <span data-tag="001F">2.5.1</span>.</a> Let $\mathcal{C}$ be a monoidal category. A <em>dual pair</em> is a pair of objects $A,B\in \mathcal{C}$ together with morphisms </p>
  <div class="equation">
  \begin{align*}  \operatorname{ev}& \colon A\otimes B\to \mathbf{1}\qquad \text{(evaluation morphism),}\\  \operatorname{coev}& \colon \mathbf{1}\to B\otimes A \qquad \text{(coevaluation morphism)}, \end{align*}
</div>
  <p> satisfying the <em>rigidity</em> condition below. </p>
  <div class="equation" id="001G">
    <span class="equation-label"><a href="/tag/001G" data-tag="001G">2.5.1</a></span>
    <div>\begin{equation} \label{e:rigidity} \begin{aligned} & \Bigl (B\to \mathbf{1}\otimes B \xrightarrow {\operatorname{coev}\otimes 1_ B} (B\otimes A)\otimes B \xrightarrow {\alpha _{B,A,B}} B\otimes (A\otimes B) \xrightarrow {1_ B\otimes \operatorname{ev}} B\otimes \mathbf{1}\to B\Bigr ) = 1_ B\\ & \Bigl (A\to A\otimes \mathbf{1}\xrightarrow {1_ A\otimes \operatorname{coev}} A\otimes (B\otimes A) \xrightarrow {\alpha ^{-1}_{A,B,A}} (A\otimes B)\otimes A \xrightarrow {\operatorname{ev}\otimes 1_ A} \mathbf{1}\otimes A \to A\Bigr ) = 1_ A \end{aligned} \end{equation}</div>
</div>
  <p> In this situation we say that $A$ is a <em>left dual</em> of $B$, and $B$ is a <em>right dual</em> of $A$. </p>
</article> Note that in this definition we do not assume that $\mathcal{C}$ is symmetric. 
</p>
<p>
It is common to represent the evaluation and coevaluation graphically: 
</p>
<div class="equation" id="00EZ">
    <span class="equation-label"><a href="/tag/00EZ" data-tag="00EZ">2.5.4</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c2-fig08.svg"></div>
</div>
<p>
Then the rigidity equations (<a href="/tag/001G" data-tag="001G">2.5.1</a>) are illustrated by 
</p>
<div class="equation" id="001H">
    <span class="equation-label"><a href="/tag/001H" data-tag="001H">2.5.5</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c2-eqfig01.svg"></div>
</div>
<p>
The following example provides the motivation for this definition. 
</p>
<p>
<article class="env-example" id="00G1">
  <p><a class="environment-identifier" href="/tag/00G1">Example <span data-tag="00G1">2.5.1</span>.</a> Let $V$ be a finite-dimensional vector space and let $V^*$ be the dual vector space. Let $\operatorname{ev}\colon V^*\otimes V\to \mathbf{k}$ be the natural pairing. Define the coevaluation </p>
  <div class="equation" id="00G2">
    <span class="equation-label"><a href="/tag/00G2" data-tag="00G2">2.5.6</a></span>
    <div>\begin{equation} \label{e:dual-vector} \begin{aligned}  \operatorname{coev}\colon \mathbf{k}& \to V\otimes V^*\\  1& \mapsto \sum v_ i\otimes v^ i \end{aligned} \end{equation}</div>
</div>
  <p> where $v_ i, v^ i$ are dual bases in $V, V^*$ respectively. Then the maps $\operatorname{ev}$ and $\operatorname{coev}$ so defined satisfy the rigidity equations (<a href="/tag/001G" data-tag="001G">2.5.1</a>); thus, $(V^*, V, \operatorname{ev}, \operatorname{coev})$ form a dual pair. </p>
  <p>Indeed, one easily sees that the rigidity equations are equivalent to requiring that for any $v\in V, f\in V^*$, we have </p>
  <div class="equation" >
    <span class="equation-label">2.5.9</span>
    <div>\begin{equation}  \begin{aligned}  \sum \langle v^ i, v\rangle v_ i & = v\\  \sum \langle f, v_ i\rangle v^ i & = f \end{aligned} \end{equation}</div>
</div>
</article> 
</p>
<p>
<article class="env-lemma" id="001D">
  <p><a class="environment-identifier" href="/tag/001D">Lemma <span data-tag="001D">2.5.1</span>.</a> A vector space $V$, considered as an object in the monoidal category $\mathbf{Vec}$, has a left dual if and only if it is finite-dimensional. In this case, the left dual is given by $V^*$, with evaluation and coevaluation defined as in Example&#160;<a href="/tag/00G1" data-tag="00G1">2.5.1</a>. </p>
</article> 
</p>
<p>
We now return to dual objects in arbitrary monoidal categories. 
</p>
<p>
It turns out that the right dual, if it exists, is unique up to a unique isomorphism. <article class="env-theorem" id="001J">
  <p><a class="environment-identifier" href="/tag/001J">Theorem <span data-tag="001J">2.5.2</span>.</a> Let $(A, B, \operatorname{ev}, \operatorname{coev})$ and $(A,B', \operatorname{ev}', \operatorname{coev}')$ be two dual pairs with the same $A$. Then there exists a unique morphism $\varphi \colon B\to B'$ such that $\operatorname{ev}= \operatorname{ev}' \circ (1_ A\otimes \varphi )$, $\operatorname{coev}' =(\varphi \otimes 1_ A) \operatorname{coev}$. Moreover, $\varphi $ is invertible. </p>
</article> The proof is a standard snake-diagram argument: the required $\varphi $ is given by the composition 
</p>
<div class="equation">
  \[  B \xrightarrow {\operatorname{coev}'\otimes 1_ B} B'\otimes A\otimes B \xrightarrow {1_{B'}\otimes \operatorname{ev}} B',  \]
</div>
<p>
 and uniqueness follows by chasing the rigidity equations. A similar statement holds for left duals. 
</p>
<p>
This allows us to talk about the right dual of $A$ as a well-defined object in $\mathcal{C}$. We will denote the right dual of $A$ by ${}^*A$; similarly we will use the notation $B^*$ for the left dual of $B$. In this notation, the evaluation and coevaluation morphisms become 
</p>
<div class="equation" >
    <span class="equation-label">2.5.12</span>
    <div>\begin{equation}  \begin{aligned}  \operatorname{ev}_ B& \colon B^*\otimes B\to \mathbf{1}\\  \operatorname{coev}_ B& \colon \mathbf{1}\to B\otimes B^*. \end{aligned} \end{equation}</div>
</div>
<p>
Clearly, in a symmetric monoidal category, the left dual is also a right dual. 
</p>
<p>
<article class="env-definition" id="001K">
  <p><a class="environment-identifier" href="/tag/001K">Definition <span data-tag="001K">2.5.2</span>.</a> An object $A$ in a monoidal category $\mathcal{C}$ is <em>rigid</em> if it has both left and right duals. </p>
  <p>A monoidal category is <em>rigid</em> if every object is rigid. </p>
</article> 
</p>
<p>
<article class="env-example" id="001L">
  <p><a class="environment-identifier" href="/tag/001L">Example <span data-tag="001L">2.5.2</span>.</a> By Lemma&#160;<a href="/tag/001D" data-tag="001D">2.5.1</a>, a vector space $V$ is rigid as an object of $\mathbf{Vec}$ if and only if it is finite-dimensional. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="001M">
  <p><a class="environment-identifier" href="/tag/001M">Exercise <span data-tag="001M">2.5.1</span>.</a> Show that in a dual pair, the coevaluation is uniquely determined by the remaining data: if $(A, B, \operatorname{ev}, \operatorname{coev})$ and $(A,B, \operatorname{ev}, \operatorname{coev}')$ are dual pairs, then $\operatorname{coev}= \operatorname{coev}'$. </p>
  <p>Similarly, $\operatorname{ev}$ is uniquely determined by $(A,B, \operatorname{coev})$. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="001N">
  <p><a class="environment-identifier" href="/tag/001N">Exercise <span data-tag="001N">2.5.2</span>.</a> Let $X^*$, $Y^*$ be left duals of objects $X, Y$. Show that then $X\otimes Y$ also has a left dual, and there is a canonical isomorphism $(X\otimes Y)^*\simeq Y^* \otimes X^*$. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="001P">
  <p><a class="environment-identifier" href="/tag/001P">Exercise <span data-tag="001P">2.5.3</span>.</a> Let $\mathcal{C}$ be a rigid monoidal category. For a morphism $f\colon X\to Y$, define a morphism $f^*\colon Y^*\to X^*$ by the picture below. </p>
  <div class="equation" id="00F0">
    <span class="equation-label"><a href="/tag/00F0" data-tag="00F0">2.5.15</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c2-fig09.svg"></div>
</div>
  <p>Prove that then $(fg)^*=g^* f^*$; thus, $*$ is a contravariant functor $\mathcal{C}\to \mathcal{C}$. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="00G3">
  <p><a class="environment-identifier" href="/tag/00G3">Exercise <span data-tag="00G3">2.5.4</span>.</a> Let $\mathcal{C}$ be a rigid monoidal category. Show that then one has canonical functorial isomorphisms </p>
  <div class="equation">
  \begin{align*}  \operatorname{Hom}(X,Y)& \simeq \operatorname{Hom}(\mathbf{1}, Y\otimes X^*)\simeq \operatorname{Hom}(\mathbf{1}, {}^*X\otimes Y)\\  \operatorname{Hom}(X\otimes Z, Y)& \simeq \operatorname{Hom}(Z, {}^*X\otimes Y)\simeq \operatorname{Hom}(X, Y\otimes Z^*). \end{align*}
</div>
</article> 
</p>

