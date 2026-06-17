<h2 id="s:adjunction" class="tex-section"><span data-tag="0052">8.1</span> Adjunction for 1-morphisms</h2>
<p>
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
</p>
<p>
To understand the adjunction equations, we can use pasting diagrams to describe the 2-morphisms in the left-hand side of these equations: 
</p>
<p>
<img class="includegraphics" src="/static/figures/c8-fig01.svg" /> &#8195;&#8195;<img class="includegraphics" src="/static/figures/c8-fig02.svg" /> 
</p>
<p>
Alternatively — and more intuitively — we can use string diagrams. Namely, we will illustrate 2-morphisms $\eta $ and $\varepsilon $ by string diagrams as in Figure&#160;<a href="/tag/0055" data-tag="0055">8.1.1</a>. Then the adjunction equations become the equations of Figure&#160;<a href="/tag/0056" data-tag="0056">8.1.2</a>, justifying our choice of graphical depiction. 
</p>
<figure class="figure">
  <div class="centered"> <img class="includegraphics" src="/static/figures/c8-fig03.svg" /> <figcaption class="figcaption">Figure 8.1.1. String diagrams for adjunction unit and counit.</figcaption>  </div>

</figure>
<figure class="figure">
  <div class="centered"> <img class="includegraphics" src="/static/figures/c8-fig04.svg" /> <figcaption class="figcaption">Figure 8.1.2. Adjunction equations via string diagrams</figcaption>  </div>

</figure>
<p>
The definition of adjunction given above generalizes two well-known examples: duality in a monoidal category and adjunction of functors. 
</p>
<p>
<article class="env-example" id="0057">
  <p><a class="environment-identifier" href="/tag/0057">Example <span data-tag="0057">8.1.1</span>.</a> Let $\mathcal{C}$ be a monoidal category, and let $B\mathcal{C}$ be the corresponding 2-category with one object as defined in Example&#160;<a href="/tag/004N" data-tag="004N">7.2.2</a>. Then the definition of adjunction for 1-morphisms in $B\mathcal{C}$ coincides with the notion of dual pairs of objects in $\mathcal{C}$: $A\dashv B$ as 1-morphisms in $B\mathcal{C}$ if and only if $B$ is the right dual of $A$ in $\mathcal{C}$. </p>
</article> 
</p>
<p>
<article class="env-theorem" id="0058">
  <p><a class="environment-identifier" href="/tag/0058">Theorem <span data-tag="0058">8.1.1</span>.</a> Let $\mathbf{Cat}$ be the 2-category of small categories. Let $f\colon \mathcal{C}\to \mathcal{D}$, $g\colon \mathcal{D}\to \mathcal{C}$ be 1-morphisms in $\mathbf{Cat}$ (i.e., functors between the corresponding categories). Then defining adjunction data $\eta , \varepsilon $ as in Definition&#160;<a href="/tag/0053" data-tag="0053">8.1.1</a> is equivalent to defining a functorial isomorphism </p>
  <div class="equation" id="0059">
    <span class="equation-label"><a href="/tag/0059" data-tag="0059">8.1.4</a></span>
    <div>\begin{equation} \label{e:adjunction-cat} \operatorname{Hom}_{\mathcal{D}}(f(-), -)\simeq \operatorname{Hom}_{\mathcal{C}}(-, g(-)). \end{equation}</div>
</div>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      (Sketch of proof) 
    <p>
      Suppose we are given a functorial isomorphism (<a href="/tag/0059" data-tag="0059">8.1.4</a>). Then for any object $c\in \mathcal{C}$, we have isomorphism $\operatorname{Hom}_{\mathcal{D}}(f(c), f(c))\simeq \operatorname{Hom}_{\mathcal{C}}(c, g(f(c)))$. In particular, applying it to the identity morphism $1_{f(c)}$, we get a canonical element $\eta \in \operatorname{Hom}(c, g(f(c)))$, or equivalently, a functorial morphism $\operatorname{id}_{\mathcal{C}}\to g\circ f$, which can be used as the unit of adjunction as in Definition&#160;<a href="/tag/0053" data-tag="0053">8.1.1</a>. Similarly we get a functorial morphism $\varepsilon \colon fg(d)\to d$, which is the counit of adjunction. The adjunction relations shown in Figure&#160;<a href="/tag/0056" data-tag="0056">8.1.2</a> follow from the functoriality of (<a href="/tag/0059" data-tag="0059">8.1.4</a>). 
    <p>
      We leave the construction in the opposite direction as an exercise to the reader. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
Adjoint functors between categories frequently appear as “restriction–induction” pairs; we give several examples below. <article class="env-example" id="005A">
  <p><a class="environment-identifier" href="/tag/005A">Example <span data-tag="005A">8.1.2</span>.</a> Let $G$ be a finite group and $H\subset G$ a subgroup. Consider the restriction functor $\operatorname{Res}\colon \operatorname{Rep}G\to \operatorname{Rep}H$. Then it has a left adjoint called the induction functor $\operatorname{Ind}\colon \operatorname{Rep}H\to \operatorname{Rep}G$. The adjunction relation </p>
  <div class="equation">
  \[  \operatorname{Hom}_ G(\operatorname{Ind}V, W)\simeq \operatorname{Hom}_ H(V, \operatorname{Res}W), \qquad V\in \operatorname{Rep}H, W\in \operatorname{Rep}G  \]
</div>
  <p> is known as <em>Frobenius reciprocity</em>; from our point of view, it is the definition of the induction functor. </p>
</article> 
</p>
<p>
<article class="env-example" id="005B">
  <p><a class="environment-identifier" href="/tag/005B">Example <span data-tag="005B">8.1.3</span>.</a> Let $\mathcal{C}$ be the category of abelian groups. It has an obvious forgetful functor $F\colon \mathcal{C}\to \mathbf{Set}$. This functor has a left adjoint $I\colon \mathbf{Set}\to \mathcal{C}$; namely, $I(S)$ is the abelian group freely generated by elements of $S$. Again, we take it as the definition of “freely generated”; the nontrivial fact is that such a left adjoint exists. </p>
</article> 
</p>
<p>
Returning to adjunction in an arbitrary 2-category $\mathcal{C}$, here are some useful results about adjunctions. 
</p>
<p>
<article class="env-lemma" id="005C">
  <p><a class="environment-identifier" href="/tag/005C">Lemma <span data-tag="005C">8.1.2</span>.</a> Let $f\colon X\to Y$ be a 1-morphism in a weak 2-category $\mathcal{C}$. Then the remaining adjunction data, $g, \eta , \varepsilon $ (as in Definition&#160;<a href="/tag/0053" data-tag="0053">8.1.1</a>), if it exists, is unique up to unique isomorphism: if $(f,g,\eta ,\varepsilon )$ and $(f, \tilde g, \tilde\eta , \tilde\varepsilon )$ are two different sets of adjunction data with the same $f$, then there is a unique 2-morphism $\alpha \colon g\to \tilde g$ which makes the appropriate diagrams commutative. </p>
</article> We leave the proof as an exercise (see also <span class="cite">[<a href="/bibliography/mac-lane">ML1998</a>, <span class="postnote">Section IV.1</span>]</span>). 
</p>
<p>
A variation of this is the following result. <article class="env-lemma" id="005D">
  <p><a class="environment-identifier" href="/tag/005D">Lemma <span data-tag="005D">8.1.3</span>.</a> The unit of the adjunction is uniquely determined by the remaining adjunction data: if $(f, g, \eta , \varepsilon )$ and $(f, g, \eta ', \varepsilon )$ are two sets of adjunction data, then $\eta =\eta '$. </p>
  <p>Similarly, the counit $\varepsilon $ of adjunction is uniquely determined by $(f,g, \eta )$. </p>
  <p>Moreover, if $(f, g, \eta , \varepsilon )$ satisfies one of the adjunction equations (<a href="/tag/0054" data-tag="0054">8.1.1</a>), and $(f, g, \eta ', \varepsilon )$ satisfies the other one, then $\eta =\eta '$ (and thus satisfies both equations). </p>
</article> Lemma&#160;<a href="/tag/005C" data-tag="005C">8.1.2</a> and Lemma&#160;<a href="/tag/005D" data-tag="005D">8.1.3</a> are analogs of Theorem&#160;<a href="/tag/001J" data-tag="001J">3.3.1</a> and Exercise&#160;<a href="/tag/001M" data-tag="001M">3.3.1</a> for monoidal categories, and the proofs are similar (see <span class="cite">[<a href="/bibliography/lurie-cobordism">Lur2009a</a>, <span class="postnote">Lemma 2.3.8</span>]</span>). 
</p>
<p>
The notion of adjunction is closely related to the notion of equivalence. Recall that a 1-morphism $f\colon X\to Y$ in a 2-category is called an <em>equivalence</em> if there exists $g\colon Y\to X$ such that $fg\simeq 1_ Y$, $gf\simeq 1_ X$. (This is a weaker version of an invertible morphism — requiring that $fg=1_ Y$ would be too strict, since 1-morphisms in a 2-category are usually only isomorphic, not equal.) 
</p>
<p>
<article class="env-lemma" id="005E">
  <p><a class="environment-identifier" href="/tag/005E">Lemma <span data-tag="005E">8.1.4</span>.</a> If $f\colon X\to Y$, $g\colon Y\to X$ are 1-morphisms in a weak 2-category such that $fg\simeq 1_ Y$, $gf\simeq 1_ X$, then $g$ is both a left and a right adjoint of $f$. </p>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      Choose arbitrary isomorphisms $\alpha \colon fg\xrightarrow {\sim }1_ Y$, $\beta \colon gf\xrightarrow {\sim }1_ X$. Then the composition 
    <p>
      <div class="equation">
  \[  \theta = (f\xrightarrow { \alpha ^{-1} \text{\tiny $\circ $}1_ f} fgf\xrightarrow {1_ f\text{\tiny $\circ $}\beta } f)  \]
</div>
    <p>
       is an invertible 2-morphism $f\to f$. Thus, setting $\eta = (\theta ^{-1}$
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
$$○$$1_g) α^-1$$, $\varepsilon = \beta $ we see that the so-defined $\eta , \varepsilon $ satisfy one of the adjunction equations. In a similar way we can find $\eta ', \varepsilon $ which satisfy the other adjunction equation. Now the result follows from Lemma&#160;<a href="/tag/005D" data-tag="005D">8.1.3</a>. 
</p>
<article class="env-proof">
</article>
<p>
 In other words, every equivalence can be upgraded to an adjoint equivalence. 
</p>
