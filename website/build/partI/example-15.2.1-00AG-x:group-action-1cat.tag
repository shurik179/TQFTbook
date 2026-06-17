<article class="env-example" id="00AG">
  <p><a class="environment-identifier" href="/tag/00AG">Example <span data-tag="00AG">15.2.1</span>.</a> Let $\mathcal{C}$ be a category (usual 1-category) and let $G$ be a discrete group. We define an action of $G$ on $\mathcal{C}$ to be a collection of functors $T_ g\colon \mathcal{C}\to \mathcal{C}$, $ g\in G$, such that $T_1 = 1$, together with functorial isomorphisms </p>
  <div class="equation">
  \[  \alpha _{g_1g_2}\colon T_{g_1}T_{g_2}\simeq T_{g_1g_2}  \]
</div>
  <p> which themselves should satisfy the compatibility condition: two ways of identifying </p>
  <div class="equation">
  \[  T_{g_1g_2g_3}\simeq T_{g_1}T_{g_2}T_{g_3}  \]
</div>
  <p> should be equal. </p>
  <p>If we have such an action, we define the category $\mathcal{C}^ G$ as the category with the following objects and morphisms: </p>
  <p><ul>
  <li><p>
Objects: an object $X\in \mathcal{C}$ together with a collection of isomorphisms $\varphi _ g\colon T_ G(X)\simeq X$, $g\in G$ such that $\varphi _1=1_ X$ and $\varphi _{gh}=\varphi _ g T_ g (\varphi _ h)$ (both sides are morphisms $T_{gh}(X)\simeq T_{g}T_ h(X)\to X$). 
</p>
</li><li><p>
Morphisms: 
</p>
<div class="equation">
  \[  \operatorname{Hom}_{\mathcal{C}^ G}(X, X')=\{ f\in \operatorname{Hom}_{\mathcal{C}} (X,X')\;  | \; \varphi '_ g f = \rho _ g(f) \varphi _ g\}   \]
</div>
<p>
 (FIXME: verify) 
</p>
</li>
</ul></p>
  <p> This construction is sometimes called “equivariantization”, see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 2.7</span>]</span>. In particular, if we consider the category $\mathcal{C}=\mathbf{Vec_ f}$ of finite-dimensional vector spaces with trivial action of a group $G$, then $\mathbf{Vec_ f}^ G=\operatorname{Rep}G$ is the category of finite-dimensional representations of $G$. </p>
</article>