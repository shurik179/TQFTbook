<h2 id="s:oriented-cobordism-hypothesis" class="tex-section"><span data-tag="00AF">15.2</span> $SO(n)$ action and oriented cobordism hypothesis</h2>
<p>
 The cobordism hypothesis gives a description of framed extended TQFTs. Now, let us discuss other versions of extended TQFT — most importantly, oriented TQFTs. 
</p>
<p>
Since we have an obvious action of the group $\mathrm{GL}(n,\mathbb {R})$ on $\mathbb {R}^ n$, it gives an action of $\mathrm{GL}(n,\mathbb {R})$ on the set of all framings of a given manifold and thus on the set (or rather $\infty $ category) $\operatorname{Fun}^{\otimes }(\mathbf{Bord^{fr}}, \mathcal{C})$ of all framed TQFTs. By cobordism hypothesis, $\operatorname{Fun}^{\otimes }(\mathbf{Bord^{fr}}, \mathcal{C})\simeq \widetilde{\mathcal{C}^{{\mathrm{fd}}}}$; thus, we get an action of $\mathrm{GL}(n,\mathbb {R})$ on the $(\infty , 0)$ category $\widetilde{\mathcal{C}^{{\mathrm{fd}}}}$. 
</p>
<p>
Let us now consider oriented extended TQFTs, i.e. monoidal functors $\mathbf{Bord^{or}}\to \mathcal{C}$. Since any framed manifold is automatically oriented, we have a functor $\mathbf{Bord^{fr}}\to \mathbf{Bord^{or}}$; thus, any oriented theory gives a framed theory. Moreover, since two framings related by the action of the group $\mathrm{GL}_+(n)$ give the same orientation, we see that an oriented TQFT gives rise to a $\mathrm{GL}_+(n)$-invariant framed TQFT. Therefore, it is natural to expect some relation between $\operatorname{Fun}^{\otimes }(\mathbf{Bord^{or}}, \mathcal{C})$ and (properly defined) invariant subcategory $(\widetilde{\mathcal{C}^{{\mathrm{fd}}}})^{\mathrm{GL}_+(n)}$. 
</p>
<p>
To make these ideas precise, we should begin by defining what we mean by action of a group on a category and by “invariant subcategory” under this action. Unlike group actions on sets, this is far from obvious. To give the reader some taste of this, here is the simplest example. 
</p>
<p>
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
</p>
<p>
In a similar fashion, one can write explicitly a definition of an action of a group $G$ on a 2-category and definition of $\mathcal{C}^ G$ in this case; one can find all details in <span class="cite">[<a href="/bibliography/hesse">Hes2017</a>]</span>. However, in the case of interest to us, there is a way around it. Namely, we are only interested in the action of a group on the $(\infty ,0)$ category $\tilde\mathcal{C}$. By FIXME, every $(\infty , 0)$ category is a fundamental groupoid of a topological space: $\mathcal{C}=\pi _{\le \infty }(X)$. Thus, it is natural to define the action of $G$ on $\pi _{\le \infty }(X)$ as the action induced by an action of $G$ on $X$. 
</p>
<p>
Now, we need to define the notion of fixed points. The naive definition of fixed points of action of $G$ on $X$ is not homotopy invariant, so we cannot use it. Instead, we will use the notion of <em>homotopy fixed point</em>. 
</p>
<p>
Let $G$ be a topological group (for example, a Lie group). Recall that then one can define a contractible space $EG$ with a free action of $G$; the quotient $BG=EG/G$ is called the classifying space of $G$. The name is justified by the fact that for any space $X$, isomorphism classes of $G$-bundles on $X$ are in bijection with homotopy equivalence classes of maps $X\to BG$. 
</p>
<p>
<article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">15.2.1</span>.</a>Let $X$ be a topological space with a continuous action of a topological group $G$. The <em>homotopy fixed point set</em> is defined by </p>
  <div class="equation">
  \[  X^{hG} =\operatorname{Hom}_ G(EG, X)  \]
</div>
  <p> where $\operatorname{Hom}_ G$ stands for the space of $G$-equivariant continuous maps. </p>
</article> 
</p>
<p>
This definition is rather natural: note that the usual set of $G$-invariant points can be defined as $X^ G=\operatorname{Hom}_ G(pt, X)$, where $pt$ is the one-point set with trivial action of $G$. One can show that unlike $X^ G$, the homotopy fixed point set $X^{hG}$ is homotopy invariant. 
</p>
<p>
Now we can formulate the oriented version of the cobordism hypothesis. 
</p>
<p>
<article class="env-theorem" id="00AH">
  <p><a class="environment-identifier" href="/tag/00AH">Theorem <span data-tag="00AH">15.2.1</span>.</a> Let $\mathcal{C}$ be an $(\infty , n)$ category, and let $\widetilde{\mathcal{C}^{{\mathrm{fd}}}}$ be the groupoid of fully dualizable objects as in Theorem&#160;<a href="/tag/00AE" data-tag="00AE">15.1.1</a>. Then one has a natural action of the group $\mathrm{O}(n)$ on $\widetilde{\mathcal{C}^{{\mathrm{fd}}}}$, and we have an equivalence </p>
  <div class="equation">
  \[  \operatorname{Fun}^{\otimes }(\mathbf{Bord^{or}}, \mathcal{C})\simeq (\widetilde{\mathcal{C}^{{\mathrm{fd}}}})^{h\mathrm{SO}(n)}.  \]
</div>
</article> This theorem can be derived from the (framed) cobordism hypothesis; details can be found in <span class="cite">[<a href="/bibliography/lurie-cobordism">Lur2009a</a>]</span>. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">15.2.1</span>.</a>One might wonder why we use $\mathrm{SO}(n)$ instead of $\mathrm{GL}_+(n)$. In fact, it does not matter: inclusion $\mathrm{SO}(n)\subset \mathrm{GL}_+(n)$ is homotopy equivalence, so the set of homotopy fixed points for both actions is the same. However, it is more convenient to work with compact groups, hence the use of $\mathrm{SO}(n)$. </p>
</article> 
</p>
