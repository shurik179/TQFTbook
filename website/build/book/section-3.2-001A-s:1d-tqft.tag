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
Comparing this with definition of dual pair given in Section&#160;<a href="/tag/00G0" data-tag="00G0">2.5</a>, we see that this data is exactly the data of a dual pair $V_+, V_-$. Therefore, by Lemma&#160;<a href="/tag/001D" data-tag="001D">2.5.1</a> $V_+$, $V_-$ must be finite-dimensional, and $V_-\simeq (V_+)^*$, so we get the following result. 
</p>
<p>
<article class="env-theorem" id="00G5">
  <p><a class="environment-identifier" href="/tag/00G5">Theorem <span data-tag="00G5">3.2.2</span>.</a> A one-dimensional TQFT is completely determined by the vector space $V=Z(\bullet ^+)$ which must be <em>finite-dimensional</em>. Conversely, every finite-dimensional vector space $V$ uniquely defines 1-dimensional TQFT. For such a TQFT, $Z(S^1)=\dim V$. </p>
</article> 
</p>
<p>
This result easily generalizes to TQFTs with values in an arbitrary symmetric monoidal category. <article class="env-theorem" id="001Q">
  <p><a class="environment-identifier" href="/tag/001Q">Theorem <span data-tag="001Q">3.2.3</span>.</a> If $Z\colon \mathbf{Cob}_1\to \mathcal{C}$ is a $1$-dimensional TQFT with values in a symmetric monoidal category $\mathcal{C}$, then $A=Z(\bullet ^+)$ is a rigid object; its dual is $Z(\bullet ^-)$. Conversely, any rigid object $A\in \mathcal{C}$ defines a one-dimensional TQFT such that $Z(\bullet ^+)=A$. </p>
</article> 
</p>
