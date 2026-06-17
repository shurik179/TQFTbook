<h2 id="s:cat-pairing" class="tex-section"><span data-tag="00CP">18.4</span> Analog of Frobenius pairing</h2>
<p>
 Our next goal is to show that for spherical fusion categories, we can repeat many of the same constructions we did for Frobenius algebras. We begin with the most fundamental one, the Frobenius pairing. 
</p>
<p>
Recall that for a symmetric Frobenius algebra $A$, we have a counit $\varepsilon \colon A\to \mathbf{k}$ which gives rise to non-degenerate symmetric bilinear pairing $(a,b)=\operatorname{tr}(ab)$. More generally, for any $n\ge 1$ we defined the map 
</p>
<div class="equation">
  \begin{align*}  A^{\otimes n}& \to \mathbf{k}\\  a_1\otimes \dots \otimes a_ n & \mapsto \varepsilon (a_1\dots a_ n) \end{align*}
</div>
<p>
 which was invariant under cyclic permutation of arguments. 
</p>
<p>
It is easy to define an analog of this for spherical categories. <article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">18.4.1</span>.</a>Let $\mathcal{C}$ be a spherical fusion category. We define the functor $\mathcal{C}^{\boxtimes n}\to \mathbf{Vec_ f}$ by </p>
  <div class="equation">
  \[  \langle A_1\boxtimes \dots \boxtimes A_ n\rangle = \operatorname{Hom}(\mathbf{1}, A_1\otimes \dots \otimes A_ n).  \]
</div>
</article> We will also frequently write $ \langle A_1, \dots , A_ n\rangle $ instead of $\langle A_1\boxtimes \dots \boxtimes A_ n\rangle $. 
</p>
<p>
In particular, for $n=2$ we get a functor $\mathcal{C}\boxtimes \mathcal{C}\to \mathbf{Vec_ f}$. Passing to Grothendieck rings, it gives a bilinear map 
</p>
<div class="equation">
  \[  A\otimes A \to \mathbf{k}, \quad A=\mathbf{Gr}_\mathbf{k}(\mathcal{C}).  \]
</div>
<p>
 It is obvious from Exercise&#160;<a href="/tag/00CE" data-tag="00CE">18.2.1</a> that this bilinear pairing is non-degenerate; it is an analog of the Frobenius pairing $\varepsilon (ab)$. 
</p>
<p>
The following lemma, whose proof is immediate from Theorem&#160;<a href="/tag/00C9" data-tag="00C9">18.1.1</a>, is an analog of the cyclic invariance of the trace for symmetric Frobenius algebras. 
</p>
<p>
<article class="env-lemma" id="00CQ">
  <p><a class="environment-identifier" href="/tag/00CQ">Lemma <span data-tag="00CQ">18.4.1</span>.</a> Define the functorial isomorphism </p>
  <div class="equation" id="00CR">
    <span class="equation-label"><a href="/tag/00CR" data-tag="00CR">18.4.1</a></span>
    <div>\begin{equation} \label{e:cyclic} z\colon \langle A_1\boxtimes \dots \boxtimes A_ n\rangle \xrightarrow {\sim }\langle A_2\boxtimes \dots \boxtimes A_ n\boxtimes A_1\rangle  \end{equation}</div>
</div>
  <p> by (<a href="/tag/00CS" data-tag="00CS">18.4.2</a>). Then $z^ n=1$. </p>
</article> 
</p>
<div class="equation" id="00CS">
    <span class="equation-label"><a href="/tag/00CS" data-tag="00CS">18.4.2</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c18-eqfig01.svg"></div>
</div>
<p>
 Note that the definition of $z$ requires an isomorphism $c\to c^{**}$, i.e., a pivotal structure. 
</p>
<p>
As a corollary, we see that we have a well-defined functor $\langle \  \rangle \colon \mathcal{C}^{\boxtimes S}\to \mathbf{Vec_ f}$ for any cyclically ordered set $S$. 
</p>
<p>
For $\varphi \in \langle A_1\boxtimes \dots \boxtimes A_ m, X\rangle $, $\psi \in \langle X^*, B_1, \dots , B_ n\rangle $ we can define their composition 
</p>
<div class="equation" id="00CT">
    <span class="equation-label"><a href="/tag/00CT" data-tag="00CT">18.4.3</a></span>
    <div>\begin{equation} \label{e:composition} \varphi \underset {\scriptstyle X}{\circ } \psi =(1\otimes \operatorname{ev}_ X\otimes 1)\varphi \otimes \psi \in \langle A_1, \dots , A_ m, B_1, \dots , B_ n\rangle . \end{equation}</div>
</div>
<p>
 In particular, taking direct sum over all simple $X$, we get a morphism 
</p>
<div class="equation" id="00CU">
    <span class="equation-label"><a href="/tag/00CU" data-tag="00CU">18.4.4</a></span>
    <div>\begin{equation} \label{e:contraction} \bigoplus _{X\in \mathcal{O}(\mathcal{C})}\langle A_1, \dots , A_ m, X\rangle \otimes \langle X^*, B_1, \dots , B_ n\rangle  \simeq \langle A_1, \dots , A_ m, B_1, \dots , B_ n\rangle  \end{equation}</div>
</div>
<p>
<article class="env-lemma" id="00CV">
  <p><a class="environment-identifier" href="/tag/00CV">Lemma <span data-tag="00CV">18.4.2</span>.</a> In a spherical fusion category $\mathcal{C}$, the map (<a href="/tag/00CU" data-tag="00CU">18.4.4</a>) is an isomorphism. </p>
</article> Indeed, it immediately follows from Lemma&#160;<a href="/tag/00CD" data-tag="00CD">18.2.1</a> that we have a canonical isomorphism 
</p>
<div class="equation">
  \[  \bigoplus _{X\in \mathcal{O}(\mathcal{C})} \langle X^*, B_1, \dots , B_ n\rangle \otimes X \simeq B_1\otimes \dots \otimes B_ n  \]
</div>
<p>
 which implies the statement of the lemma. 
</p>
<p>
Note that for any objects $A,B\in \operatorname{Obj}\mathcal{C}$, we have a non-degenerate pairing $\operatorname{Hom}_\mathcal{C}(A,B)\otimes \operatorname{Hom}_\mathcal{C}(A^*,B^*)\to \mathbf{k}$ defined by 
</p>
<div class="equation" id="00CW">
    <span class="equation-label"><a href="/tag/00CW" data-tag="00CW">18.4.5</a></span>
    <div>\begin{equation} \label{e:pairing} (\varphi , \varphi ')=(\mathbf{1}\xrightarrow {\operatorname{coev}_ A}A\otimes A^*\xrightarrow {\varphi \otimes \varphi '} B\otimes B^*\xrightarrow {\operatorname{ev}_ B}\mathbf{1}). \end{equation}</div>
</div>
<p>
 In particular, this gives us a non-degenerate pairing 
</p>
<div class="equation" id="00CX">
    <span class="equation-label"><a href="/tag/00CX" data-tag="00CX">18.4.6</a></span>
    <div>\begin{equation} \label{e:dual} \langle A_1,\dots ,A_ n\rangle \otimes \langle A_ n^*,\dots ,A_1^*\rangle \to \mathbf{k}\end{equation}</div>
</div>
<p>
 and thus, functorial isomorphisms $\langle A_1,\dots ,A_ n\rangle ^*\simeq \langle A_ n^*,\dots ,A_1^*\rangle $ compatible with the cyclic permutations (<a href="/tag/00CR" data-tag="00CR">18.4.1</a>). 
</p>
<p>
<article class="env-remark" id="00CY">
  <p><a class="environment-identifier" href="/tag/00CY">Remark <span data-tag="00CY">18.4.1</span>.</a> Note that pairing (<a href="/tag/00CW" data-tag="00CW">18.4.5</a>) requires a pivotal structure. For a general fusion category, we have a partial replacement for that. Namely, let $X$ be a simple object in a fusion category $\mathcal{C}$. Define the pairing </p>
  <div class="equation" id="00CZ">
    <span class="equation-label"><a href="/tag/00CZ" data-tag="00CZ">18.4.7</a></span>
    <div>\begin{equation} \label{e:pairing2} (\,  , \, )_ X\colon \operatorname{Hom}(A,X)\otimes \operatorname{Hom}(A^*, X^*)\to \mathbf{k}\end{equation}</div>
</div>
  <p> by </p>
  <div class="equation">
  \[  (\mathbf{1}\xrightarrow {\operatorname{coev}_ A}A\otimes A^*\xrightarrow {\varphi \otimes \varphi '}X\otimes X^*) = (\varphi , \psi )_ X \cdot \operatorname{coev}_ X  \]
</div>
  <p> (note that since $X$ is simple, Schur's lemma implies that the space $\operatorname{Hom}_\mathcal{C}(\mathbf{1}, X\otimes X^*)$ is one-dimensional). In the pivotal case, this differs from the pairing (<a href="/tag/00CW" data-tag="00CW">18.4.5</a>) by a factor of $\dim X$: for $\varphi \in \operatorname{Hom}(A,X)$, $\psi \in \operatorname{Hom}(A^*,X^*)$, we have $(\varphi ,\psi )_ X=\frac{1}{\dim X} (\varphi ,\psi )$. </p>
</article> 
</p>
