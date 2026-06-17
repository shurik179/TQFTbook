<article class="env-definition" id="0009">
  <p><a class="environment-identifier" href="/tag/0009">Definition <span data-tag="0009">1.3.2</span>.</a> A monoidal category is a category $\mathcal{C}$ together with the following data: </p>
  <p><ul>
  <li><p>
An object $\mathbf{1}\in \mathcal{C}$ 
</p>
</li><li><p>
a functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$ 
</p>
</li><li><p>
functorial isomorphisms 
</p>
<div class="equation">
  \begin{align*} & l_ A\colon \mathbf{1}\otimes A \xrightarrow {\sim }A\\ &  r_ A\colon A\otimes \mathbf{1}\xrightarrow {\sim }A\\ & \alpha _{A,B,C}\colon (A\otimes B)\otimes C\xrightarrow {\sim }A\otimes (B\otimes C) \end{align*}
</div>
</li>
</ul></p>
  <p> satisfying compatibility conditions below: </p>
  <p><ol>
  <li><p>
Triangle axiom: for any $A,B\in \mathcal{C}$, the diagram below commutes 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/fig03.svg" /></div>
</li><li><p>
Pentagon axiom: for any $A,B,C,D \in \mathcal{C}$, the diagram below commutes 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/fig04.svg" /></div>
<p>
 (all arrows are given by the associativity isomorphism $\alpha $.) 
</p>
</li>
</ol></p>
</article>