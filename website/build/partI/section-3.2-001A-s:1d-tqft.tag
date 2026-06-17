<h2 id="s:1d-tqft" class="tex-section"><span data-tag="001A">3.2</span> 1D TQFT</h2>

<p>
Now that we have a definition of a TQFT, let us try to construct examples. We begin with the simplest possible case, that of a 1-dimensional TQFT. 
</p>
<p>
<article class="env-theorem" id="001B">
  <p><a class="environment-identifier" href="/tag/001B">Theorem <span data-tag="001B">3.2.1</span>.</a> A 1-dimensional TQFT is the following collection of data: </p>
  <p><ul>
  <li><p>
A vector space $V_+=Z(\bullet ^+)$ 
</p>
</li><li><p>
A vector space $V_-=Z(\bullet ^-)$ 
</p>
</li><li><p>
A linear map $\operatorname{ev}= Z(\cup )\colon V_+\otimes V_-\to \mathbf{k}$ 
</p>
</li><li><p>
A linear map $\operatorname{coev}= Z(\cap )\colon \mathbf{k}\to V_-\otimes V_+$ 
</p>
</li>
</ul></p>
  <p> satisfying relations below. </p>
  <div class="equation" id="001C">
    <span class="equation-label"><a href="/tag/001C" data-tag="001C">3.2.1</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c3-eqfig01.svg"></div>
</div>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      Since $Z$ is symmetric monoidal, $Z(N_1\sqcup N_2)\simeq Z(N_1)\otimes Z(N_2)$, so $Z$ on objects is determined by its values on connected 0-manifolds. The only connected 0-manifolds are the positively and negatively oriented points $\bullet ^+, \bullet ^-$, hence $Z$ on objects is determined by $V_\pm := Z(\bullet ^\pm )$. 
    <p>
      Similarly, $Z$ on morphisms is determined by its values on connected cobordisms. Up to isomorphism, every connected oriented $1$-cobordism with non-empty boundary is one of the following: 
    <p>
      <ul>
  <li><p>
the intervals $\bullet ^+\to \bullet ^+$ and $\bullet ^-\to \bullet ^-$, on which $Z$ is the identity of $V_+$ resp. $V_-$; 
</p>
</li><li><p>
the <em>cup</em> $\bullet ^+\sqcup \bullet ^-\to \varnothing $, on which $Z$ is a linear map $\operatorname{ev}\colon V_+\otimes V_-\to \mathbf{k}$; 
</p>
</li><li><p>
the <em>cap</em> $\varnothing \to \bullet ^-\sqcup \bullet ^+$, on which $Z$ is a linear map $\operatorname{coev}\colon \mathbf{k}\to V_-\otimes V_+$. 
</p>
</li>
</ul>
    <p>
       The only connected closed $1$-cobordism is the circle $S^1$; its value $Z(S^1)\in \mathbf{k}$ will turn out to be determined by the data above. 
    <p>
      It remains to identify the relations these data must satisfy. The snake cobordism on the left-hand side of the first equation of (<a href="/tag/001C" data-tag="001C">3.2.1</a>) is diffeomorphic (rel boundary) to the straight interval on the right-hand side; applying $Z$ to this diffeomorphism gives the first snake identity. The second is obtained analogously by reversing orientations. 
    <p>
      Conversely, given data $(V_+, V_-, \operatorname{ev}, \operatorname{coev})$ satisfying (<a href="/tag/001C" data-tag="001C">3.2.1</a>), one defines $Z$ on objects and connected cobordisms by the formulas above and extends to general objects and morphisms by tensor product and composition. The relations (<a href="/tag/001C" data-tag="001C">3.2.1</a>) ensure that the result is independent of the decomposition; with this, $Z$ is well-defined as a symmetric monoidal functor $\mathbf{Cob}_1\to \mathbf{Vec}$. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
<article class="env-lemma" id="001D">
  <p><a class="environment-identifier" href="/tag/001D">Lemma <span data-tag="001D">3.2.2</span>.</a> Let $V_+, V_-$, $\operatorname{ev}, \operatorname{coev}$ be as in Theorem&#160;<a href="/tag/001B" data-tag="001B">3.2.1</a>. Then $V_+, V_-$ are finite-dimensional, and one can identify $V_-=V_+^*$ so that $\operatorname{ev}, \operatorname{coev}$ become the usual evaluation and coevaluation maps $V\otimes V^*\to \mathbf{k}$, $\mathbf{k}\to V\otimes V^*\colon 1\mapsto \sum e_ i\otimes e^ i$. </p>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      Consider the map $V_-\to (V_+)^*$, given by $y\mapsto \operatorname{ev}(-,y)$; and a map $V_+^*\to V_-$ given by $f\mapsto \operatorname{id}\otimes f (\operatorname{coev}(1))$ (thus, if $\operatorname{coev}(1)=\sum y_ i \otimes x_ i$, then $f\mapsto \sum f(x_ i) y_ i$). Then the rigidity conditions say that these two maps are inverse to each other; thus, we have $V_-\simeq V_+^*$. Finite-dimensionality follows from the fact that the elements $y_ i$ generate $V_-$. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
 Thus, a one-dimensional TQFT is completely determined by a <em>finite-dimensional</em> vector space $V=Z(\bullet ^+)$; in such a TQFT, $Z(S^1)=\dim V$. 
</p>
