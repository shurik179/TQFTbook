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