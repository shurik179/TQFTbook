<h2 id="s:cat-trace" class="tex-section"><span data-tag="00DW">18.8</span> Center and universal trace</h2>
<p>
 Recall from Section&#160;<a href="/tag/006X" data-tag="006X">9.4</a> that for a bimodule $M$ over an associative algebra $A$, we defined the spaces of invariants and coinvariants by 
</p>
<div class="equation" >
    <span class="equation-label">18.8.1</span>
    <div>\begin{equation}  \begin{aligned}  M^{A}& =\operatorname{Hom}(A,M)=\{ m\in M\;  | \; am=ma \text{ for any } a\in A\} \\  M_{A}& =A\otimes _{A^ e} M = M/\langle am-ma\rangle  \end{aligned} \end{equation}</div>
</div>
<p>
 where $\operatorname{Hom}$ is computed in the category of $A$-bimodules, or equivalently, modules over $A^ e=A\otimes A^{\mathrm{op}}$. In particular, for $M=A$, these definitions give 
</p>
<div class="equation">
  \begin{align*}  HH^0(A)& =A^{(A)}=z(A),\\  HH_0(A)& =A_{(A)}= A/[A,A]. \end{align*}
</div>
<p>
It is natural to ask if we can define an analog of this for a bimodule category $\mathcal{M}$ over a finite tensor category $\mathcal{C}$. In the previous section, we have already given an answer in the special case $\mathcal{M}=\mathcal{C}$, defining the Drinfeld center $\mathcal{Z}(\mathcal{C})$, which is an analog of $z(A)$. In this section we consider the more general case. Our exposition follows <span class="cite">[<a href="/bibliography/fuchs-schaumann-schweigert-trace">FSS2017</a>]</span>; other references for the material of this section include <span class="cite">[<a href="/bibliography/greenough">Gre2013</a>]</span> (probably one of the earliest references on this topic) and <span class="cite">[<a href="/bibliography/benzvi-francis-nadler">BZFN2010</a>, <span class="postnote">Section 5</span>]</span> (in the context of $\infty $-categories). 
</p>
<p>
<article class="env-definition" id="00DX">
  <p><a class="environment-identifier" href="/tag/00DX">Definition <span data-tag="00DX">18.8.1</span>.</a> Let $\mathcal{M}$ be a finite bimodule category over a finite tensor category $\mathcal{C}$. Define the <em>categorical center</em> $\mathcal{Z}(\mathcal{M})$ as the category with the following objects and morphisms: </p>
  <p><ul>
  <li><p>
Objects: pairs $(M, \gamma )$, where $M\in \mathcal{M}$ and $\gamma $ is a functorial isomorphism 
</p>
<div class="equation">
  \[  \gamma _ A\colon A\otimes M\to M\otimes A, \quad A\in \mathcal{C},  \]
</div>
<p>
 satisfying the hexagon and unit axioms similar to those in Definition&#160;<a href="/tag/00DJ" data-tag="00DJ">18.7.1</a>. 
</p>
</li><li><p>
Morphisms: 
</p>
<div class="equation">
  \[  \operatorname{Hom}_{\mathcal{Z}(\mathcal{M})}((M, \gamma ), (M', \gamma ')) =\{ f \in \operatorname{Hom}_\mathcal{M}(M,M')\;  | \; \gamma ' (1 \otimes f) =(f\otimes 1) \gamma \} .  \]
</div>
</li>
</ul></p>
</article> 
</p>
<p>
<article class="env-lemma" id="00DY">
  <p><a class="environment-identifier" href="/tag/00DY">Lemma <span data-tag="00DY">18.8.1</span>.</a> Under the assumptions of Definition&#160;<a href="/tag/00DX" data-tag="00DX">18.8.1</a>, one has an equivalence of categories </p>
  <div class="equation">
  \begin{align*}  \operatorname{Fun}_{\mathcal{C}^ e}(\mathcal{C}, \mathcal{M})& \simeq \mathcal{Z}(\mathcal{M})\\  F& \mapsto F(\mathbf{1}) \end{align*}
</div>
</article> 
</p>
<p>
As an immediate corollary, we see that $\mathcal{Z}(\mathcal{M})$ is a finite $\mathbf{k}$-linear category; one can show (FIXME) that if $\mathcal{M}$ is semisimple, then so is $\mathcal{Z}(\mathcal{M})$. 
</p>
<p>
Let us now try to define the analog of coinvariants $M_ A$. For bimodules over an algebra, we had defined $M_ A=M/\langle am-ma\rangle $. A better way to define $M_ A$ is by using the universal property: for any vector space $L$, 
</p>
<div class="equation">
  \[  \operatorname{Hom}(M_ A,L)=\operatorname{Bal}(M,L)  \]
</div>
<p>
 where $\operatorname{Bal}$ stands for the space of balanced maps, i.e., maps $f\colon M\to L$ satisfying the condition 
</p>
<div class="equation">
  \[  f(am)=f(ma), \quad a\in A.  \]
</div>
<p>
 We can now define an analog of this for bimodule categories. First, we define an analog of balanced maps, essentially in the same way as we did in Section&#160;<a href="/tag/00BA" data-tag="00BA">16.5</a> when defining the balanced Deligne product of categories. 
</p>
<p>
<article class="env-definition" id="00DZ">
  <p><a class="environment-identifier" href="/tag/00DZ">Definition <span data-tag="00DZ">18.8.2</span>.</a> Let $\mathcal{M}$ be a bimodule category over a finite tensor category $\mathcal{C}$, and let $\mathcal{L}$ be a $\mathbf{k}$-linear category. A $\mathcal{C}$-balanced functor $\mathcal{M}\to \mathcal{L}$ is a pair $(F,J)$, where $F\colon \mathcal{M}\to \mathcal{L}$ is a $\mathbf{k}$-linear right exact functor, and $J$ is a functorial isomorphism </p>
  <div class="equation">
  \[  J\colon F(C\otimes M)\simeq F(M\otimes C), \quad M\in \mathcal{M}, C\in \mathcal{C} \]
</div>
  <p> satisfying the obvious compatibility conditions (compare with Definition&#160;<a href="/tag/00BB" data-tag="00BB">16.5.1</a>). </p>
</article> 
</p>
<p>
One can also define a notion of morphisms of $\mathcal{C}$-balanced functors. We denote by $\operatorname{Bal}_\mathcal{C}(\mathcal{M}, \mathcal{L})$ the category of $\mathcal{C}$-balanced functors $\mathcal{M}\to \mathcal{L}$. 
</p>
<p>
<article class="env-definition" id="00E0">
  <p><a class="environment-identifier" href="/tag/00E0">Definition <span data-tag="00E0">18.8.3</span>.</a> Under the assumptions of Definition&#160;<a href="/tag/00DZ" data-tag="00DZ">18.8.2</a>, a categorical trace is a $\mathbf{k}$-linear category $\setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss }}$×$\hss $</p>
</article>0M$$ together with a $\mathcal{C}$-balanced functor $F\colon \mathcal{M}\to \setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss }}$×$\hss $0M$$ such that for any $\mathbf{k}$-linear category $\mathcal{L}$, functor $F$ induces an equivalence of categories 
</p>
<div class="equation">
  \[  \operatorname{Bal}_\mathcal{C}(\mathcal{M}, \mathcal{L})\simeq \operatorname{Fun}(\setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss $\times $\hss }}\box 0\mathcal{M}, \mathcal{L}).  \]
</div>
<p>
 <article class="env-definition" id="">
</article> 
</p>
<p>
As with the definition of the balanced tensor product, it is easy to show that $\setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss }}$×$\hss $0M$$, if it exists, is unique up to a unique equivalence. However, existence is not obvious. 
&lt;/p&gt;
&lt;p&gt;
&lt;article class="env-example" id="00E1"&gt;
  &lt;p&gt;&lt;a class="environment-identifier" href="/tag/00E1"&gt;Example &lt;span data-tag="00E1"&gt;18.8.1&lt;/span&gt;.&lt;/a&gt; Let $\mathcal{M}_\mathcal{C}$, ${}_\mathcal{C}\mathcal{N}$ be right and left finite module categories over $\mathcal{C}$. Then Deligne's product $\mathcal{M}\boxtimes \mathcal{N}$ is a $\mathcal{C}$-bimodule category, and $\setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss }}$×$\hss $&lt;/p&gt;
&lt;/article&gt;0(MN)≃M_CN$$; thus, in this case the existence of the balanced product (Theorem&#160;<a href="/tag/00BD" data-tag="00BD">16.5.1</a>) implies the existence of the categorical trace $\setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss }}$×$\hss $0(MN)$$. &lt;article class="env-example" id=""&gt;
&lt;/article&gt; &lt;article class="env-theorem" id="00E2"&gt;
  &lt;p&gt;&lt;a class="environment-identifier" href="/tag/00E2"&gt;Theorem &lt;span data-tag="00E2"&gt;18.8.2&lt;/span&gt;.&lt;/a&gt; Let $\mathcal{M}$ be a finite bimodule category over a finite tensor category $\mathcal{C}$. Then the categorical trace $\setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss }}$×$\hss $&lt;/p&gt;
&lt;/article&gt;0M$$ exists; moreover, we have an equivalence of categories 
</p>
<div class="equation">
  \[  \mathcal{C}\boxtimes _{\mathcal{C}^ e} \mathcal{M}\simeq \setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss $\times $\hss }}\box 0\mathcal{M} \]
</div>
<p>
 where, as before, $\mathcal{C}^ e=\mathcal{C}\boxtimes \mathcal{C}^{\mathrm{mp}}$. <article class="env-theorem" id="">
</article> A proof of this theorem can be found in <span class="cite">[<a href="/bibliography/fuchs-schaumann-schweigert-trace">FSS2017</a>, <span class="postnote">Theorem 3.3</span>]</span>. 
</p>
<p>
Finally, recall that for a module over a separable symmetric Frobenius algebra, one has isomorphism $M_{(A)}\simeq M^{(A)}$ given by $m\mapsto \sum x_ imx^ i$, see Section&#160;<a href="/tag/006Z" data-tag="006Z">9.4.1</a>. The following theorem is a categorical analog of this statement. 
</p>
<p>
<article class="env-theorem" id="00E3">
  <p><a class="environment-identifier" href="/tag/00E3">Theorem <span data-tag="00E3">18.8.3</span>.</a> Let $\mathcal{M}$ be a finite bimodule category over a pivotal fusion category $\mathcal{C}$. Let functor $I\colon \mathcal{M}\to \mathcal{Z}(\mathcal{M})$ be defined by </p>
  <div class="equation" >
    <span class="equation-label">18.8.4</span>
    <div>\begin{equation}  I(M)= \bigoplus X_ i\otimes M\otimes X_ i^* \end{equation}</div>
</div>
  <p> with the half-braiding on $I(M)$ defined in the same way as in Theorem&#160;<a href="/tag/00DU" data-tag="00DU">18.7.5</a>. </p>
  <p>Then $I$ has a natural structure of a balanced functor, and it gives an equivalence of categories $\mathcal{Z}(\mathcal{M})\simeq \setbox 0\hbox{\large $\circlearrowleft $} \rlap {\hbox to\wd 0{\hss }}$×$\hss $</p>
</article>0M$$. <article class="env-theorem" id="">
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      FIXME 
    <p>
      Balancing structure is given by functorial isomorphism 
    <p>
      <div class="equation">
  \[  \gamma '_ A\colon \bigoplus (X_ i\otimes A) \boxtimes X_ i^* \simeq \bigoplus X_ i \boxtimes (A\otimes X_ i^*)  \]
</div>
    <p>
       defined in Lemma&#160;<a href="/tag/00DE" data-tag="00DE">18.6.2</a>. 
      <span class="qed">$\square$</span>
    </p>
</article>

