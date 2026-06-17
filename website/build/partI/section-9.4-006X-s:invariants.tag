<h2 id="s:invariants" class="tex-section"><span data-tag="006X">9.4</span> Invariants and coinvariants</h2>
<p>
 Corollary&#160;<a href="/tag/006S" data-tag="006S">9.3.5</a>, which shows that for a separable symmetric Frobenius algebra we have a natural isomorphism $A/[A,A]\simeq z(A)$, is a special case of a more general result which we state here for future use. 
</p>
<p>
Namely, let $M$ be a bimodule over an associative algebra $A$ (no further restrictions yet). Define the spaces of invariants and coinvariants by 
</p>
<div class="equation" id="006Y">
    <span class="equation-label"><a href="/tag/006Y" data-tag="006Y">9.4.1</a></span>
    <div>\begin{equation} \label{e:coinv} \begin{aligned}  M^{A}& =\operatorname{Hom}(A,M)=\{ m\in M\;  | \; am=ma \text{ for any } a\in A\} \\  M_{A}& =A\otimes _{A^ e} M = M/\langle am-ma\rangle  \end{aligned} \end{equation}</div>
</div>
<p>
 where $\operatorname{Hom}$ is computed in the category of $A$-bimodules, or equivalently, modules over $A^ e=A\otimes A^{\mathrm{op}}$. 
</p>
<p>
Standard results of algebra show that the functor of invariants is left exact, and the functor of coinvariants is right exact. The corresponding derived functors are called <em>Hochschild (co)homology</em> of $A$ with coefficients in $M$ (see, e.g., <span class="cite">[<a href="/bibliography/pierce">Pie1982</a>, <span class="postnote">Section 11.1</span>]</span>): 
</p>
<div class="equation">
  \begin{align*}  HH^ n(A,M)& =\operatorname{Ext}_{A^ e}^ n(A,M),\\  HH_ n(A,M)& =\operatorname{Tor}^{A^ e}_ n(A,M), \end{align*}
</div>
<p>
 so that $M^{A}=HH^0(A,M)$, $M_{A}=HH_0(A,M)$. For example, for $M=A$, we get 
</p>
<div class="equation">
  \begin{align*}  HH^0(A)& =A^{(A)}=z(A),\\  HH_0(A)& =A_{(A)}= A/[A,A]. \end{align*}
</div>
<p>
For a general associative algebra, there is no relation between the functors of invariants and coinvariants. However, if $A$ is a symmetric separable Frobenius algebra, things are simplified. Namely, consider the map $p\colon M\to M$ given by 
</p>
<div class="equation">
  \[  m\mapsto \sum w^{-1} x_ imx^ i=\sum x_ imx^ i w^{-1}.  \]
</div>
<p>
 As in (<a href="/tag/006N" data-tag="006N">9.3.5</a>), it is easy to see that it descends to a map $M_{A}\to M^{A}$. <article class="env-lemma" id="006Z">
  <p><a class="environment-identifier" href="/tag/006Z">Lemma <span data-tag="006Z">9.4.1</span>.</a> If $M$ is a bimodule over a separable symmetric Frobenius algebra $A$, then the map </p>
  <div class="equation">
  \[  m \mapsto \sum x_ imx^ i  \]
</div>
  <p> is an isomorphism $M_{A}\xrightarrow {\sim }M^{A}$. </p>
</article> For $M=A$, this is exactly the statement of Corollary&#160;<a href="/tag/006S" data-tag="006S">9.3.5</a>. We leave it to the reader to modify the proof of Corollary&#160;<a href="/tag/006S" data-tag="006S">9.3.5</a> to this more general case. 
</p>
<p>
Note that since the functor of invariants is left exact and the functor of coinvariants is right exact, this shows that for a separable symmetric Frobenius algebra, both functors are exact so that higher Hochschild (co)homology vanishes. 
</p>
<p>
As an application, given a right $A$-module $M_ A$ and a left $A$-module ${}_ A N$, there are two versions of tensor product over $A$: 
</p>
<div class="equation" id="0070">
    <span class="equation-label"><a href="/tag/0070" data-tag="0070">9.4.4</a></span>
    <div>\begin{equation} \label{e:tensor-types} \begin{aligned}  M\otimes _ A N & = \operatorname{Coinv}(M\otimes N) = M \otimes N/\langle ma\otimes n- m\otimes an\rangle ,\\  M\otimes ^ A N & =\operatorname{Inv}(M\otimes N) \\ & =\bigl \{ x=\sum m_ i\otimes n_ i\in M\otimes N \;  | \; \sum m_ ia\otimes n_ i=\sum m_ i\otimes an_ i\bigr \} . \end{aligned} \end{equation}</div>
</div>
<p>
 The first of these spaces (which is by far the more common) is a quotient of $M\otimes N$; the second is a subspace. As an immediate corollary of Lemma&#160;<a href="/tag/006Z" data-tag="006Z">9.4.1</a>, we see that for a separable symmetric Frobenius algebra, we have a canonical isomorphism $M \otimes _ A N \simeq M\otimes ^ A N$. 
</p>

