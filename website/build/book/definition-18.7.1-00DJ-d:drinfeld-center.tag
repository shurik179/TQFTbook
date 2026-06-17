<article class="env-definition" id="00DJ">
  <p><a class="environment-identifier" href="/tag/00DJ">Definition <span data-tag="00DJ">18.7.1</span>.</a> Let $\mathcal{C}$ be a monoidal category. Its <em>Drinfeld center</em> is the category $\mathcal{Z}(\mathcal{C})$ with the following objects and morphisms: </p>
  <p><ul>
  <li><p>
Objects: pairs $(Z, \gamma )$, where $Z\in \mathcal{C}$ and $\gamma $ is a functorial isomorphism 
</p>
<div class="equation">
  \[  \gamma _ A\colon A\otimes Z\to Z\otimes A  \]
</div>
<p>
 satisfying the following conditions: 
</p>
<ol>
  <li><p>
Hexagon axiom: the following diagram is commutative: 
</p>
<div class="equation" id="00FB">
    <span class="equation-label"><a href="/tag/00FB" data-tag="00FB">18.7.1</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c18-fig13.svg"></div>
</div>
<p>
 (For better readability, we have dropped associativity isomorphisms from this diagram; compare with hexagon axiom in Definition&#160;<a href="/tag/000Z" data-tag="000Z">2.4.1</a>.) 
</p>
</li><li><p>
Triangle axiom: $\gamma _\mathbf{1}\colon \mathbf{1}\otimes Z\to Z\otimes \mathbf{1}$ coincides with composition of unit isomorphisms $\mathbf{1}\otimes Z\simeq Z\simeq Z\otimes \mathbf{1}$. 
</p>
</li>
</ol>
<p>
 $\gamma $ is usually called the <em>half-braiding</em>. 
</p>
</li><li><p>
Morphisms: 
</p>
<div class="equation">
  \[  \operatorname{Hom}_{\mathcal{Z}(\mathcal{C})}((Z, \gamma ), (Z', \gamma ')) =\{ f \in \operatorname{Hom}_\mathcal{C}(Z,Z')\;  | \; \gamma ' (1 \otimes f) =(f\otimes 1) \gamma \} .  \]
</div>
</li>
</ul></p>
</article>