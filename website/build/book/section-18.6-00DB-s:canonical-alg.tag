<h2 id="s:canonical-alg" class="tex-section"><span data-tag="00DB">18.6</span> Canonical algebra</h2>
<p>
 For Frobenius algebras, non-degeneracy of the pairing $(\,  , \, )$ also gave us the coevaluation linear map $\operatorname{coev}\colon \mathbf{k}\to A\otimes A$, or equivalently, an element $e=\operatorname{coev}(1)=\sum x_ i \otimes x^ i \in A\otimes A$. Again, it has an obvious analog for spherical fusion categories. 
</p>
<p>
<article class="env-lemma" id="00DC">
  <p><a class="environment-identifier" href="/tag/00DC">Lemma <span data-tag="00DC">18.6.1</span>.</a> Let $\mathcal{C}$ be a spherical fusion category. Let </p>
  <div class="equation" id="00DD">
    <span class="equation-label"><a href="/tag/00DD" data-tag="00DD">18.6.1</a></span>
    <div>\begin{equation} \label{e:spherical-E} E = \bigoplus _{i\in \mathcal{O}(\mathcal{C})} X_ i\boxtimes X_ i^*\in \mathcal{C}\boxtimes \mathcal{C}. \end{equation}</div>
</div>
  <p> Then we have the following properties: </p>
  <p><ol>
  <li><p>
So defined $E$ is independent of the choice of representatives of isomorphism classes of simple objects: different choices give canonically isomorphic objects $E$. 
</p>
</li><li><p>
It is symmetric: there is an isomorphism $c\colon E\simeq P(E)$, where $P \colon \mathcal{C}\boxtimes \mathcal{C}\to \mathcal{C}\boxtimes \mathcal{C}$ is given by $P(X\boxtimes Y)= Y\boxtimes X$, and $c^2=1$. 
</p>
</li><li><p>
For any $X\in \mathcal{C}$, we have a canonical functorial isomorphism 
</p>
<div class="equation">
  \[  X \simeq \bigoplus _ i\langle X, X_ i\rangle \otimes X_ i^*  \]
</div>
</li>
</ol></p>
</article> The proof is straightforward; details can be found, e.g., in <span class="cite">[<a href="/bibliography/balsam-kirillov">BK2010</a>]</span>. <article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">18.6.1</span>.</a>If we consider $E$ as an object in $\mathcal{C}\boxtimes \mathcal{C}^{\mathrm{mp}}$, then one can show that it has a canonical structure of an algebra in that category; this algebra is sometimes called the <em>canonical algebra</em> of $\mathcal{C}$, see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Example 7.9.14</span>]</span>, where it is shown that $E\simeq \underline{\operatorname{Hom}}(\mathbf{1},\mathbf{1})$, where $\underline{\operatorname{Hom}}$ is the so-called inner hom. </p>
</article> 
</p>
<p>
We also have an analog of bicentrality (compare with Lemma&#160;<a href="/tag/003C" data-tag="003C">5.1.4</a>). <article class="env-lemma" id="00DE">
  <p><a class="environment-identifier" href="/tag/00DE">Lemma <span data-tag="00DE">18.6.2</span>.</a> Let $\mathcal{C}$ be a spherical fusion categor, and let $E\in \mathcal{C}\boxtimes \mathcal{C}$ be defined by (<a href="/tag/00DD" data-tag="00DD">18.6.1</a>). Then $E$ is bicentral: for any $A\in \mathcal{C}$, we have canonical functorial isomorphisms </p>
  <div class="equation">
  \begin{align*}  \gamma _ A\colon \bigoplus (A\otimes X_ i) \boxtimes X_ i^* & \simeq \bigoplus X_ i \boxtimes (X_ i^* \otimes A)\\  \gamma '_ A\colon \bigoplus (X_ i\otimes A) \boxtimes X_ i^* & \simeq \bigoplus X_ i \boxtimes (A\otimes X_ i^*) \end{align*}
</div>
  <p> which satisfy </p>
  <div class="equation">
  \[  \gamma _{A\otimes B} =(\gamma _ A\otimes 1_ B)\circ (1_ A\otimes \gamma _ B).  \]
</div>
  <p> and similarly for $\gamma '$. </p>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      We define the isomorphism $\gamma $ by the following picture: 
    <p>
      <div class="equation" id="00DF">
    <span class="equation-label"><a href="/tag/00DF" data-tag="00DF">18.6.2</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig05.svg"></div>
</div>
    <p>
       We refer the reader to <span class="cite">[<a href="/bibliography/balsam-kirillov">BK2010</a>]</span> for the proof that so defined $\gamma $ satisfies $\gamma _{A\otimes B}=\gamma _ A\circ \gamma _ B$; another proof of centrality of $E$ is given in <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Proposition 7.18.5</span>]</span>. 
    <p>
      Construction of isomorphism $\gamma '$ is similar and is left to the reader. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
Note that both the symmetry of $E$ and bicentrality use pivotal structure; without the pivotal structure, these result need some changes. <article class="env-exercise" id="00DG">
  <p><a class="environment-identifier" href="/tag/00DG">Exercise <span data-tag="00DG">18.6.1</span>.</a> Let $\mathcal{C}$ be a fusion category (not necessary pivotal), and let $E$ be defined by (<a href="/tag/00DD" data-tag="00DD">18.6.1</a>). </p>
  <p><ol>
  <li><p>
Show that $P(E)\simeq (D \otimes 1)E \simeq (1\otimes D^{-1})E$, where functor $D\colon \mathcal{C}\to \mathcal{C}$ is given by $D(X)=X^{**}$. 
</p>
</li><li><p>
Use pairing defined in Remark&#160;<a href="/tag/00CY" data-tag="00CY">18.4.1</a> to construct functorial isomorphisms 
</p>
<div class="equation">
  \begin{align*}  \gamma _ A\colon \bigoplus (A\otimes X_ i) \boxtimes X_ i^* & \simeq \bigoplus X_ i \boxtimes (X_ i^* \otimes A^{**})\\  \gamma '_ A\colon \bigoplus (X_ i\otimes A) \boxtimes X_ i^* & \simeq \bigoplus X_ i \boxtimes (A\otimes X_ i^*) \end{align*}
</div>
<p>
 (note $A^{**}$ in the first isomorphism!) 
</p>
</li>
</ol></p>
</article> 
</p>
