<h2 id="s:def-2d-extended-tqft" class="tex-section"><span data-tag="0076">10.2</span> Definition of 2d extended TQFT</h2>
<p>
 Now that we have defined the 2-category of bordisms, we can give a definition of an extended 2d TQFT. 
</p>
<p>
<article class="env-definition" id="0077">
  <p><a class="environment-identifier" href="/tag/0077">Definition <span data-tag="0077">10.2.1</span>.</a> Let $\mathcal{C}$ be a symmetric monoidal 2-category. A $\mathcal{C}$-valued extended 2d TQFT is a symmetric monoidal functor </p>
  <div class="equation" id="0078">
    <span class="equation-label"><a href="/tag/0078" data-tag="0078">10.2.1</a></span>
    <div>\begin{equation} \label{e:etqft-def} Z\colon \mathbf{Bord}_2\to \mathcal{C}. \end{equation}</div>
</div>
</article> 
</p>
<p>
Note that this is only one of several approaches to extended field theories. It has some limitations: for example, by definition, in a 2-category we only have 2-morphisms $\alpha \colon f\to g$ if $f,g$ are 1-morphisms between the same objects. For instance, the 2-dimensional manifold with corners shown below cannot be considered a 2-cobordism: 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig04.svg" /></div>
<p>
There are alternative approaches; for $n=2$, there is a notion of “open-closed” TQFT, studied in <span class="cite">[<a href="/bibliography/lauda-pfeiffer">LP2007</a>]</span>, which allows 2-manifolds with corners similar to the one shown above. Yet one more approach is the notion of “TQFT with defects”, as discussed, e.g., in <span class="cite">[<a href="/bibliography/dkr">DKR2011</a>]</span>, <span class="cite">[<a href="/bibliography/carqueville">Car2016</a>]</span>. We will talk about these approaches later. 
</p>
