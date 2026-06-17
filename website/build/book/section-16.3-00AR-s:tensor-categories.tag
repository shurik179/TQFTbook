<h2 id="s:tensor-categories" class="tex-section"><span data-tag="00AR">16.3</span> Finite tensor categories</h2>
<p>
 Our next step is defining a categorical analog of the notion of associative algebra. The obvious candidate is the notion of a monoidal category as discussed in Chapter&#160;<a href="/tag/0007" data-tag="0007">2</a>. However, in order to make some future constructions possible, we will add some additional conditions. 
</p>
<p>
<article class="env-definition" id="00AS">
  <p><a class="environment-identifier" href="/tag/00AS">Definition <span data-tag="00AS">16.3.1</span>.</a> A <em>finite tensor category</em> is a finite $\mathbf{k}$-linear category $\mathcal{C}$ together with a structure of a monoidal category such that </p>
  <p><ol>
  <li><p>
The tensor product functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$ is $\mathbf{k}$-bilinear. 
</p>
</li><li><p>
$\operatorname{Hom}(\mathbf{1}, \mathbf{1})=\mathbf{k}$. 
</p>
</li><li><p>
$\mathcal{C}$ is rigid: every $X\in \mathcal{C}$ has left and right dual (see Definition&#160;<a href="/tag/001K" data-tag="001K">3.3.2</a>). 
</p>
</li>
</ol></p>
</article> (Note that we do not give a definition of (not necessarily finite) tensor category since the only tensor categories we will need are the finite ones.) 
</p>
<p>
Condition (1) is a natural compatibility between the monoidal structure and structure of $\mathbf{k}$-linear category; condition (2) is a harmless condition which is there just for convenience — almost everything below can be repeated, possibly with minor changes, without that assumption (in fact, <span class="cite">[<a href="/bibliography/dsps-balanced">DSPS2019</a>]</span> do not include this condition). But the rigidity condition (3) is absolutely crucial: without it, most of the theory below would not work. 
</p>
<p>
<article class="env-lemma" id="00AT">
  <p><a class="environment-identifier" href="/tag/00AT">Lemma <span data-tag="00AT">16.3.1</span>.</a> Let $\mathcal{C}$ be a finite tensor category. Then </p>
  <p><ol>
  <li><p>
Functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$ is bi-exact. 
</p>
</li><li><p>
Object $\mathbf{1}\in \mathcal{C}$ is simple. 
</p>
</li>
</ol></p>
</article> A proof of this lemma can be found in <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Proposition 4.2.1, Theorem 4.3.8</span>]</span>. 
</p>
<p>
As an immediate corollary, we see that tensor product can be considered as a functor $\mathcal{C}\boxtimes \mathcal{C}\to \mathcal{C}$, where $\boxtimes $ is Deligne's product of $\mathbf{k}$-linear categories, see Section&#160;<a href="/tag/004W" data-tag="004W">7.4</a> (in the same way as for algebras, multiplication can be considered as either a bilinear map $A\times A\to A$ or as a linear map $A\otimes A\to A$). 
</p>
<p>
<article class="env-lemma" id="00AU">
  <p><a class="environment-identifier" href="/tag/00AU">Lemma <span data-tag="00AU">16.3.2</span>.</a> Let $\mathcal{C}$, $\mathcal{D}$ be finite tensor categories. Then category $\mathcal{C}\boxtimes \mathcal{D}$ has a natural structure of a finite tensor category, with tensor product functor given by </p>
  <div class="equation">
  \[  (c_1 \boxtimes d_1)\otimes (c_2\boxtimes d_2) = (c_1\otimes c_2)\boxtimes (d_1\otimes d_2).  \]
</div>
</article> This lemma is an analog of the statement that tensor product of algebras has a natural structure of an algebra. We skip the proof. 
</p>
<p>
Below are some examples of finite tensor categories. 
</p>
<p>
<article class="env-example" id="00AV">
  <p><a class="environment-identifier" href="/tag/00AV">Example <span data-tag="00AV">16.3.1</span>.</a> The category $\mathbf{Vec_ f}$ of finite-dimensional vector spaces over $\mathbf{k}$ is a finite tensor category. This theory is the categorical analog of the trivial algebra $A=\mathbf{k}$. </p>
</article> 
</p>
<p>
<article class="env-example" id="00AW">
  <p><a class="environment-identifier" href="/tag/00AW">Example <span data-tag="00AW">16.3.2</span>.</a> Let $G$ be a finite group. The category $\operatorname{Rep}G$ of finite-dimensional representations of $G$ is a finite tensor category. </p>
</article> Note that if we replaced finite group by a compact group, the resulting category would not be finite. 
</p>
<p>
<article class="env-example" id="00AX">
  <p><a class="environment-identifier" href="/tag/00AX">Example <span data-tag="00AX">16.3.3</span>.</a> Let $H$ be a finite-dimensional Hopf algebra. Then category of finite-dimensional $H$-modules is a finite tensor category. </p>
</article> 
</p>
<p>
<article class="env-example" id="00AY">
  <p><a class="environment-identifier" href="/tag/00AY">Example <span data-tag="00AY">16.3.4</span>.</a> Let $G$ be a finite group. Let $\mathbf{Vec}_ G$ be the category of finite-dimensional $G$-graded vector spaces as defined in Example&#160;<a href="/tag/000L" data-tag="000L">2.3.2</a>. Then $\mathbf{Vec}_ G$ is a finite tensor category. </p>
</article> 
</p>
<p>
As for algebras, for finite tensor categories we have the notion of “opposite” multiplication: if $\mathcal{C}$ is a finite tensor category, we denote by $\mathcal{C}^{\mathrm{mp}}$ the same category but with opposite tensor product: $A\otimes ^{{\mathrm{mp}}} B=B \otimes A$. (Notation ${\mathrm{mp}}$ is an abbreviation for “monoidally opposite”; it should not be confused with $\mathcal{C}^{\mathrm{op}}$, which is obtained from $\mathcal{C}$ by reversing all arrows.) 
</p>
