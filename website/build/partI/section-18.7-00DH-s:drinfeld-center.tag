<h2 id="s:drinfeld-center" class="tex-section"><span data-tag="00DH">18.7</span> Drinfeld center</h2>
<p>
 For an associative algebra $A$, we can define its center $z(A)$ (which is a commutative algebra) and $A/[A,A]$, which is just a vector space. Both constructions played an important role in the construction of extended 2d TQFTs; in particular, we have shown that for a separable symmetric Frobenius algebra one has a natural map $A\to z(A)\colon a\mapsto \sum x_ iax^ i$, which descends to an isomorphism $A/[A,A]\simeq z(A)$. 
</p>
<p>
In this section, we define similar notions for a spherical fusion category, starting with the categorical analog of the center, which in this case is called the <em>Drinfeld center</em>. Our exposition follows <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 7.13</span>]</span>. <article class="env-definition" id="00DJ">
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
</p>
<p>
<article class="env-example" id="00DK">
  <p><a class="environment-identifier" href="/tag/00DK">Example <span data-tag="00DK">18.7.1</span>.</a> Let $\mathbf{Vec}_ G$ be the category of $G$-graded vector spaces. Then an object of $\mathcal{Z}(\mathbf{Vec}_ G)$ is a $G$-graded vector space together with a collection of isomorphisms $V_{gh}\simeq V_{hg}$ for any $g$. Equivalently, it is a $G$-graded vector space together with an action of $G$ such that </p>
  <div class="equation">
  \[  gV_ h\subset V_{ghg^{-1}}.  \]
</div>
  <p> This can also be described as a category of representations of algebra $A=\mathbf{k}(G)\#  \mathbf{k}[G]$, where $\mathbf{k}(G)$ is the algebra of functions on $G$ with pointwise multiplication, $\mathbf{k}[G]$ is the group algebra, and $\# $ is the smash product (also called the cross product) of algebras with respect to natural action of $\mathbf{k}[G]$ on $\mathbf{k}(G)$. </p>
</article> More generally, it can be shown that for $\mathcal{C}=\operatorname{Rep}H$, where $H$ is a finite-dimensional Hopf algebra, $\mathcal{Z}(\operatorname{Rep}H)$ is equivalent to the representation category of a new Hopf algebra $D(H)$, called the <em>Drinfeld double</em> of $H$. The algebra $D(H)$ contains both $H$ and $H^*$ as subalgebras, and as a vector space, $D(H)\simeq H\otimes H^*$; however, $H$ and $H^*$ do not commute in $D(H)$, so multiplication in $D(H)$ is non-trivial. We refer the reader to <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 7.14</span>]</span> for details. 
</p>
<p>
<article class="env-lemma" id="00DL">
  <p><a class="environment-identifier" href="/tag/00DL">Lemma <span data-tag="00DL">18.7.1</span>.</a> Let $\mathcal{C}$ be a monoidal category. </p>
  <p><ol>
  <li><p>
$\mathcal{Z}(\mathcal{C})$ has a natural structure of a monoidal category; if $\mathcal{C}$ is rigid, so is $\mathcal{Z}(\mathcal{C})$. 
</p>
</li><li><p>
If $\mathcal{C}$ is a $\mathbf{k}$-linear category, then $\mathcal{Z}(\mathcal{C})$ is also a $\mathbf{k}$-linear category. 
</p>
</li><li><p>
If $\mathcal{C}$ is a pivotal (respectively, spherical) category, then $\mathcal{Z}(\mathcal{C})$ is also pivotal (respectively, spherical). 
</p>
</li>
</ol></p>
</article> The proof is mostly straightforward; details can be fond in <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 7.13</span>]</span>. 
</p>
<p>
<article class="env-lemma" id="00DM">
  <p><a class="environment-identifier" href="/tag/00DM">Lemma <span data-tag="00DM">18.7.2</span>.</a> Let $\mathcal{C}$ be a finite tensor category. Then one has an equivalence of $\mathbf{k}$-linear categories </p>
  <div class="equation">
  \begin{align*}  \operatorname{Fun}_{\mathcal{C}^ e}(\mathcal{C}, \mathcal{C})& \simeq \mathcal{Z}(\mathcal{C})\\  F& \mapsto F(\mathbf{1}), \end{align*}
</div>
  <p> where $\mathcal{C}^ e=\mathcal{C}\boxtimes \mathcal{C}^{{\mathrm{mp}}}$. </p>
</article> The proof is again a straightforward comparison of the definitions; see details in <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Proposition 7.13.8</span>]</span>. 
</p>
<p>
<article class="env-theorem" id="00DN">
  <p><a class="environment-identifier" href="/tag/00DN">Theorem <span data-tag="00DN">18.7.3</span>.</a> The Drinfeld center of a fusion category is itself a fusion category. </p>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      Indeed, by Lemma&#160;<a href="/tag/00DL" data-tag="00DL">18.7.1</a>, $\mathcal{Z}(\mathcal{C})$ is a rigid monoidal $\mathbf{k}$-linear category, and the unit object of $\mathcal{Z}(\mathcal{C})=\mathbf{1}$ is simple. Thus, it only remains to show that $\mathcal{Z}(\mathcal{C})$ is finite and semisimple. This immediately follows from Lemma&#160;<a href="/tag/00DM" data-tag="00DM">18.7.2</a> together with Theorem&#160;<a href="/tag/00B7" data-tag="00B7">16.4.2</a> 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
<article class="env-theorem" id="00DP">
  <p><a class="environment-identifier" href="/tag/00DP">Theorem <span data-tag="00DP">18.7.4</span>.</a> Let $\mathcal{C}$ be a spherical fusion category. Then $\mathcal{Z}(\mathcal{C})$ is also a spherical fusion category, and </p>
  <div class="equation">
  \[  \dim \mathcal{Z}(\mathcal{C}) = (\dim \mathcal{C})^2.  \]
</div>
</article> See <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Proposition 9.3.4</span>]</span>. <article class="env-remark" id="00DQ">
  <p><a class="environment-identifier" href="/tag/00DQ">Remark <span data-tag="00DQ">18.7.1</span>.</a> This shows that contrary to naive intuition, the Drinfeld center of $\mathcal{C}$ is “larger” than $\mathcal{C}$ (at least, has larger dimension). In particular, </p>
  <div class="equation">
  \[  \mathbf{Gr}(\mathcal{Z}(\mathcal{C}))\ne z(\mathbf{Gr}(\mathcal{C})).  \]
</div>
  <p> Note that in general, it is very hard to describe all simple objects in $\mathcal{Z}(\mathcal{C})$, even knowing all simple objects of $\mathcal{C}$. </p>
</article> 
</p>
<p>
Since every object of $\mathcal{Z}(\mathcal{C})$ is also an object of $\mathcal{C}$, it is easy to extend our graphical calculus, allowing $\mathcal{C}$-colored graphs where some arcs are colored by objects of $\mathcal{Z}(\mathcal{C})$. In these graphs, we will show objects of $\mathcal{Z}(\mathcal{C})$ by double green lines and the half-braiding isomorphism $\gamma _ A\colon A\otimes Z\to Z\otimes A$ by a crossing as in Figure&#160;<a href="/tag/00DR" data-tag="00DR">18.7.1</a>. 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c18-fig14.svg" /> 
</p>
<figcaption class="figcaption">Figure 18.7.1. Graphical presentation of the half-braiding $\gamma _ A\colon A\otimes Z\to Z\otimes A$, $A\in \mathcal{C}$, $Z\in \mathcal{Z}(\mathcal{C})$ </figcaption>


</figure>
<p>
<article class="env-exercise" id="00DS">
  <p><a class="environment-identifier" href="/tag/00DS">Exercise <span data-tag="00DS">18.7.1</span>.</a> Show that for any morphism $\varphi \colon A_1\otimes \dots \otimes A_ k\to B_1\otimes \dots \otimes B_ m$ in $\mathcal{C}$, we have the following equality: </p>
  <p><div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig09.svg" /></div></p>
</article> 
</p>
<p>
<article class="env-exercise" id="00DT">
  <p><a class="environment-identifier" href="/tag/00DT">Exercise <span data-tag="00DT">18.7.2</span>.</a> Let $\mathcal{C}$ be a spherical fusion category and let $(Z,\gamma )$, $(Z', \gamma ')$ be two objects of $\mathcal{Z}(\mathcal{C})$. Define a map $P\colon \operatorname{Hom}_\mathcal{C}(Z,Z')\to \operatorname{Hom}_\mathcal{C}(Z,Z')$ (note that at the moment we are not requiring any compatibility with half-braidings $\gamma , \gamma '$) by the graph below: </p>
  <div class="equation" >
    <span class="equation-label">18.7.2</span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig06.svg"></div>
</div>
  <p> Use Lemma&#160;<a href="/tag/00DA" data-tag="00DA">18.5.4</a> to prove that then $P$ is a projector onto $\operatorname{Hom}_{\mathcal{Z}(\mathcal{C})}(Z,Z')\subset \operatorname{Hom}_\mathcal{C}(Z,Z')$. </p>
</article> 
</p>
<p>
Finally, note that for algebras, we had a natural embedding $z(A)\subset A$ and also the map $A\to z(A)\colon a \mapsto \sum x_ iax^ i$. These two maps are not inverses of each other; their composition is multiplication by the Euler element $w=\sum x_ ix^ i$. 
</p>
<p>
Similar constructions exist for categories. Namely, we have the obvious forgetful functor 
</p>
<div class="equation" >
    <span class="equation-label">18.7.3</span>
    <div>\begin{equation}  \begin{aligned}  F\colon \mathcal{Z}(\mathcal{C})& \to \mathcal{C}\\  (Z,\gamma )& \mapsto Z. \end{aligned} \end{equation}</div>
</div>
<p>
<article class="env-theorem" id="00DU">
  <p><a class="environment-identifier" href="/tag/00DU">Theorem <span data-tag="00DU">18.7.5</span>.</a> Let $\mathcal{C}$ be a spherical fusion category. Then the forgetful functor $F$ has a left adjoint functor </p>
  <div class="equation">
  \[  I\colon \mathcal{C}\to \mathcal{Z}(\mathcal{C})  \]
</div>
  <p> given by </p>
  <div class="equation">
  \[  I(V)=\bigoplus _{i\in \mathcal{O}(\mathcal{C})} X_ i\otimes V \otimes X_ i^*  \]
</div>
  <p> with $\gamma $ given by: </p>
  <div class="equation" id="00DV">
    <span class="equation-label"><a href="/tag/00DV" data-tag="00DV">18.7.6</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig07.svg"></div>
</div>
  <p> (compare with (<a href="/tag/00DF" data-tag="00DF">18.6.2</a>)). </p>
</article> We refer the reader to <span class="cite">[<a href="/bibliography/balsam-kirillov">BK2010</a>, <span class="postnote">Theorem 2.3</span>]</span> for the proof. 
</p>
<p>
Note that this implies that any object $Z\in \mathcal{Z}(\mathcal{C})$ is a direct summand of an object of the form $I(A)$, $A\in \mathcal{C}$: we can take $A=F(Z)$. 
</p>
