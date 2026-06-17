<article class="env-definition" id="0053">
  <p><a class="environment-identifier" href="/tag/0053">Definition <span data-tag="0053">8.1.1</span>.</a> Let $\mathcal{C}$ be a weak 2-category. An <em>adjunction</em> in $\mathcal{C}$ is the following data: </p>
  <p><ul>
  <li><p>
A pair of 1-morphisms $f\in \operatorname{Hom}(X,Y)$, $g\in \operatorname{Hom}(Y,X)$ 
</p>
</li><li><p>
A 2-morphism $\eta \colon 1_ X\to g\circ f$ (unit of adjunction) 
</p>
</li><li><p>
A 2-morphism $\varepsilon \colon f\circ g\to 1_ Y$ (counit of adjunction) 
</p>
</li>
</ul></p>
  <p> satisfying the adjunction equations: </p>
  <div class="equation" id="0054">
    <span class="equation-label"><a href="/tag/0054" data-tag="0054">8.1.1</a></span>
    <div>\begin{equation} \label{e:adjunction} \begin{aligned} & (f\xrightarrow {} f \circ 1_ X \xrightarrow {1_ f\circ \eta } f\circ g\circ f \xrightarrow {\varepsilon \circ 1} f\circ 1_ Y \xrightarrow {} f)=1_ f\\ & (g\xrightarrow {} 1_ X \circ g \xrightarrow {\eta \circ 1_ g} g\circ f\circ g \xrightarrow {1 \circ \varepsilon } 1_ X\circ g \xrightarrow {} g)=1_ g \end{aligned} \end{equation}</div>
</div>
  <p>In this situation, we say that $f$ is the <em>left adjoint</em> of $g$ and $g$ is the <em>right adjoint</em> of $f$; we will write </p>
  <div class="equation">
  \[  X\xrightleftharpoons [g]{f}Y.  \]
</div>
  <p> Alternative notation for adjunction is $f\dashv g$; in both notations, the unit and the counit 2-morphisms are implicit. </p>
</article>