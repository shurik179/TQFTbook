<h2 id="s:spherical1" class="tex-section"><span data-tag="00BU">17.3</span> $\mathrm{SO}(3)$ fixed points and spherical fusion categories</h2>

<p>
Finally, let us try and classify oriented 3d extended TQFTs. According to general theory, such TQFTs are classified by homotopy fixed points for $\mathrm{SO}(3)$ action on $\mathbf{Tens}^{\mathrm{ss}}$. Unfortunately, explaining how $\mathrm{SO}(3)$ acts on $\mathbf{Tens}^{\mathrm{ss}}$ is rather non-trivial. We will only show one small piece of this data. 
</p>
<p>
FIXME: this section is a very rough draft 
</p>
<p>
Recall that $\pi _1(\mathrm{SO}(3))=\mathbb {Z}_2$. Arguing the same way as in FIXME, we see that this shows that we must have an action of $\mathbb {Z}_2$ on $\mathbf{Tens}^{\mathrm{ss}}$; the action of generator of $\mathbb {Z}_2$ is called the <em>Serre automorphism</em>. <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>]</span> has a detailed description of this action in terms of framing. 
</p>
<p>
It takes some time to unravel that definition, but the end result is that the Serre automorphism gives a twist: it sends a $\mathcal{C}$-$\mathcal{D}$ bimodule category $\mathcal{M}$ to the category ${}_{\langle rr&gt;}\mathcal{M}$, which is again a $\mathcal{C}$-$\mathcal{D}$ bimodule category. It coincides with $\mathcal{M}$ as abelian category, but now the right action of $\mathcal{C}$ is given by $c\times m\to c^{**}\otimes m$. 
</p>
<p>
This suggests that a homotopy fixed point for $\mathrm{SO}(3)$ action should be a fusion category $\mathcal{C}$ together with functorial isomorphism $c\to c^{**}$ (and possibly some other structures). 
</p>
<p>
<article class="env-remark" id="00BV">
  <p><a class="environment-identifier" href="/tag/00BV">Remark <span data-tag="00BV">17.3.1</span>.</a> These ideas suggest that in any fusion category there should be a natural isomorphism $c\to c^{****}$. This is indeed true, but highly non-trivial; see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Corollary 7.19.3</span>]</span>. It is closely related with classical result of Radford that in a finite-dimensional Hopf algebra, fourth power of antipode is an inner automorphism. We refer the reader to <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 7.19</span>]</span> for discussion of this. </p>
</article> 
</p>
<p>
This naturally leads us to the following definition. 
</p>
<p>
<article class="env-definition" id="00BW">
  <p><a class="environment-identifier" href="/tag/00BW">Definition <span data-tag="00BW">17.3.1</span>.</a> A <em>pivotal</em> category is a rigid monoidal category $\mathcal{C}$ together with a functorial isomorphism $\delta \colon X\to X^{**}$ such that $\delta _{X\otimes Y} = \delta _ X \otimes \delta _ Y$, $\delta _{\mathbf{1}}=1$. </p>
</article> 
</p>
<p>
<article class="env-example" id="00BX">
  <p><a class="environment-identifier" href="/tag/00BX">Example <span data-tag="00BX">17.3.1</span>.</a> The category $\mathbf{Vec_ f}$ of finite-dimensional vector spaces has a canonical pivotal structure. Same holds for the category $\operatorname{Rep}G$ of finite-dimensional representations of a group $G$. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="00BY">
  <p><a class="environment-identifier" href="/tag/00BY">Exercise <span data-tag="00BY">17.3.1</span>.</a> Show that $\delta $ is automatically compatible with duals:<br />$\delta _{X^*}=\bigl ((\delta _ X)^*\bigr )^{-1}$. </p>
</article> 
</p>
<p>
Note that pivotal structure is extra data: the same monoidal category can have more than one pivotal structure. It is currently unknown whether every fusion category admits at least one pivotal structure. 
</p>
<p>
<article class="env-example" id="00BZ">
  <p><a class="environment-identifier" href="/tag/00BZ">Example <span data-tag="00BZ">17.3.2</span>.</a> Let $\mathcal{C}$ be the category of finite-dimensional representations of Lie algebra $\sll (2,\mathbb {C})$. Define the pivotal structure by </p>
  <div class="equation">
  \[  \delta =\delta _0\circ z  \]
</div>
  <p> where $\delta _0$ is the standard vector space isomorphism $V\simeq V^{**}$ and $z=\exp (\pi i h)$, $h=\begin{pmatrix}  1 

&  0

\\  0 

& -1

\end{pmatrix}\in \sll (2)$; thus, $z=+1$ on irreducible representations with even highest weight (or integer spin) and $z=-1$ on representations wiht odd highest weight (half-integer spin). </p>
  <p>This example might seem artificial, but in fact it (or rather similar pivotal structure for representations of the corresponding quantum group) frequently appears in the literature in implicit form. For example, in the standard definition of the Kauffman bracket invariant of links (see <span class="cite">[<a href="/bibliography/kauffman">Kau1987</a>]</span>), the invariant of the unknot is equal to $-(A^2+A^{-2})$, so even in the classical limit $A=1$, we get answer $-2$. The reason for that is that in fact that invariant can be described in terms of knot invariants coming from the category of representations of $U_ q\sll (2)$ but with the pivotal structure defined as in this example. </p>
</article> 
</p>
<p>
The pivotal structure allows us to define a trace of an endomorphism. Recall that rigidity provides evaluation and coevaluation morphisms (see Section&#160;<a href="/tag/001E" data-tag="001E">3.3</a>) 
</p>
<div class="equation">
  \[  \operatorname{ev}_ X\colon X^*\otimes X\to \mathbf{1},\qquad \operatorname{coev}_ X\colon \mathbf{1}\to X\otimes X^*,  \]
</div>
<p>
 and similarly $\operatorname{ev}_{X^*}\colon X^{**}\otimes X^*\to \mathbf{1}$, $\operatorname{coev}_{X^*}\colon \mathbf{1}\to X^*\otimes X^{**}$ for the dual object $X^*$. 
</p>
<p>
<article class="env-definition" id="00C0">
  <p><a class="environment-identifier" href="/tag/00C0">Definition <span data-tag="00C0">17.3.2</span>.</a> Let $\mathcal{C}$ be a pivotal category with pivotal structure $\delta _ X\colon X\xrightarrow {\sim }X^{**}$. For $f\in \operatorname{End}(X)$, the <em>left trace</em> and <em>right trace</em> $\operatorname{tr}^ L(f),\operatorname{tr}^ R(f)\in \operatorname{End}(\mathbf{1})$ are defined by </p>
  <div class="equation">
  \begin{align*}  \operatorname{tr}^ L(f) & = \operatorname{ev}_{X^*}\circ \bigl ((\delta _ X\circ f)\otimes \operatorname{id}_{X^*}\bigr )\circ \operatorname{coev}_ X,\\  \operatorname{tr}^ R(f) & = \operatorname{ev}_ X\circ \bigl (\operatorname{id}_{X^*}\otimes (f\circ \delta _ X^{-1})\bigr )\circ \operatorname{coev}_{X^*}. \end{align*}
</div>
  <p> (see Figure&#160;<a href="/tag/00C1" data-tag="00C1">17.3.1</a>). The <em>left</em> and <em>right dimensions</em> of $X$ are $\dim ^ L(X)=\operatorname{tr}^ L(\operatorname{id}_ X)$ and $\dim ^ R(X)=\operatorname{tr}^ R(\operatorname{id}_ X)$. </p>
</article> 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c17-fig01.svg" /> &#8195;&#8195;<img class="includegraphics" src="/static/figures/c17-fig02.svg" /> 
</p>
<figcaption class="figcaption">Figure 17.3.1. Left and right traces; pivotal isomorphism $\delta _ X$ and its inverse are not shown.</figcaption>


</figure>
<p>
 Since for a finite tensor category $\operatorname{End}(\mathbf{1})=\mathbf{k}$, the traces and dimensions are elements of $\mathbf{k}$. 
</p>
<p>
<article class="env-lemma" id="00C2">
  <p><a class="environment-identifier" href="/tag/00C2">Lemma <span data-tag="00C2">17.3.1</span>.</a> Left and right traces in a pivotal category $\mathcal{C}$ have the following properties (stated for $\operatorname{tr}^ L$; the same holds for $\operatorname{tr}^ R$): </p>
  <p><ol>
  <li><p>
(Cyclicity) For any $f\colon X\to Y$ and $g\colon Y\to X$, $\operatorname{tr}^ L(g\circ f)=\operatorname{tr}^ L(f\circ g)$. 
</p>
</li><li><p>
(Multiplicativity) For $f\in \operatorname{End}(X)$, $g\in \operatorname{End}(Y)$, $\operatorname{tr}^ L(f\otimes g)=\operatorname{tr}^ L(f)\, \operatorname{tr}^ L(g)$; in particular, $\dim ^ L(X\otimes Y)=\dim ^ L(X)\, \dim ^ L(Y)$. 
</p>
</li><li><p>
(Additivity) If $\mathcal{C}$ is an abelian category, and $0\to X'\to X\to X''\to 0$ is a short exact sequence and $f\in \operatorname{End}(X)$ preserves $X'$, inducing $f'\in \operatorname{End}(X')$ and $f''\in \operatorname{End}(X'')$, then $\operatorname{tr}^ L(f)=\operatorname{tr}^ L(f')+\operatorname{tr}^ L(f'')$; in particular, $\dim ^ L(X)=\dim ^ L(X')+\dim ^ L(X'')$. 
</p>
</li><li><p>
(Duality) $\operatorname{tr}^ L(f)=\operatorname{tr}^ R(f^*)$, where $f^*\in \operatorname{End}(X^*)$ is the dual morphism (see Exercise&#160;<a href="/tag/001P" data-tag="001P">3.3.3</a>); in particular, $\dim ^ L(X)=\dim ^ R(X^*)$. 
</p>
</li>
</ol></p>
</article> Proofs, together with a more detailed discussion of pivotal structures and dimensions, can be found in <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 4.7</span>]</span>. 
</p>
<p>
<article class="env-definition" id="00C3">
  <p><a class="environment-identifier" href="/tag/00C3">Definition <span data-tag="00C3">17.3.3</span>.</a> A pivotal category $\mathcal{C}$ is called <em>spherical</em> if for any $X\in \mathcal{C}$, $f\in \operatorname{End}(X)$ we have </p>
  <div class="equation">
  \[  \operatorname{tr}^ L(f)=\operatorname{tr}^ R(f).  \]
</div>
  <p> In this case, we will just use notation $\operatorname{tr}(f)$ for the trace of a morphism $f$, and $\dim (X)=\dim ^ L(X)=\dim ^ R(X)$ for dimension of an object. </p>
</article> 
</p>
<p>
Note that it is immediate from Lemma&#160;<a href="/tag/00C2" data-tag="00C2">17.3.1</a> that in a spherical category, $\operatorname{tr}(f)=\operatorname{tr}(f^*)$; in particular, 
</p>
<div class="equation" >
    <span class="equation-label">17.3.1</span>
    <div>\begin{equation}  \dim (X)=\dim (X^*). \end{equation}</div>
</div>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">17.3.2</span>.</a>All known examples of pivotal categories are spherical. It is an open problem if there exist non-spherical pivotal categories. </p>
</article> 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">17.3.3</span>.</a>Let $\mathcal{C}$ be a pivotal fusion category. It can be shown that this pivotal structure is spherical if and only if $\delta ^2\colon V\to V^{****}$ coincides with the canonical isomorphism $V\xrightarrow {\sim }V^{****}$ mentioned in Remark&#160;<a href="/tag/00BV" data-tag="00BV">17.3.1</a>, see <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>, <span class="postnote">Proposition 3.5.4</span>]</span>. </p>
</article> 
</p>
<p>
<article class="env-conjecture" id="">
  <p><a class="environment-identifier" href="/tag/">Conjecture <span data-tag="">17.3.2</span>.</a>Homotopy fixed points of $\mathrm{SO}(3)$ action on $\mathbf{Tens}^{\mathrm{ss}}$ are spherical fusion categories. </p>
</article> Reference: <span class="cite">[<a href="/bibliography/dsps-dualizable">DSPS2020</a>, <span class="postnote">Conjecture 3.5.10</span>]</span>. 
</p>
