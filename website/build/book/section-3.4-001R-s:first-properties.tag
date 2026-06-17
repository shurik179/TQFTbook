<h2 id="s:first-properties" class="tex-section"><span data-tag="001R">3.4</span> First properties of TQFTs</h2>

<p>
Let us now try to establish some properties of general $n$-dimensional TQFTs. 
</p>
<p>
<article class="env-theorem" id="001S">
  <p><a class="environment-identifier" href="/tag/001S">Theorem <span data-tag="001S">3.4.1</span>.</a> Let $Z\colon \mathbf{Cob}_ n\to \mathcal{C}$ be an $n$-dimensional TQFT with values in a symmetric monoidal category $\mathcal{C}$. Then for any closed $(n-1)$-dimensional manifold $N$, $Z(N)\in \mathcal{C}$ is rigid, and $Z(\overline{N})$ is a dual of $Z(N)$. </p>
</article> The proof is the same as in the one-dimensional case. 
</p>
<p>
In particular, for TQFTs with values in $\mathbf{Vec}$, for any closed $(n-1)$-dimensional manifold $N$, the vector space $Z(N)$ is finite-dimensional. 
</p>
<p>
<article class="env-exercise" id="001T">
  <p><a class="environment-identifier" href="/tag/001T">Exercise <span data-tag="001T">3.4.1</span>.</a> Let $Z$ be an $n$-dimensional TQFT with values in $\mathbf{Vec}$. Prove that then $Z(N\times S^1)=\dim Z(N)$ for any closed $(n-1)$-dimensional manifold $N$. </p>
</article> 
</p>
<p>
Note that unlike the one-dimensional case, in general we cannot claim that any rigid object of $\mathcal{C}$ defines a TQFT. The proper generalization of that statement is the cobordism hypothesis, which we will discuss later. 
</p>
<p>
Another property of TQFTs is functoriality. As mentioned before, it is natural to expect that a diffeomorphism $\varphi \colon N_0\to N_1$ between two $(n-1)$-dimensional closed manifolds gives rise to an isomorphism $Z(\varphi )\colon Z(N_0)\to Z(N_1)$; however, we didn't include that as part of the definition. It turns out it is not necessary. 
</p>
<p>
Let $\varphi \colon N_0\to N_1$ be a diffeomorphism. Define the cobordism 
</p>
<div class="equation" id="001U">
    <span class="equation-label"><a href="/tag/001U" data-tag="001U">3.4.1</a></span>
    <div>\begin{equation} \label{e:Cph} N_0\Rightarrow  N_1 \end{equation}</div>
</div>
<p>
 to be the cylinder $N_1\times I$, with the identification $\overline{N_0}\sqcup N_1 \to \partial C_\varphi $ given by $\varphi \sqcup \operatorname{id}$. 
</p>
<p>
<article class="env-lemma" id="001V">
  <p><a class="environment-identifier" href="/tag/001V">Lemma <span data-tag="001V">3.4.2</span>.</a> Let $C_\varphi $ be defined above. Then: </p>
  <p><ol>
  <li><p>
The isomorphism class of $C_\varphi $ (as a cobordism) only depends on the isotopy class of $\varphi $: if $\varphi , \varphi '$ are isotopic to each other, then $C_\varphi \simeq C_{\varphi '}$. 
</p>
</li><li><p>
Given diffeomorphisms $\varphi _1\colon N_0\to N_1$, $\varphi _2\colon N_1\to N_2$, we have an isomorphism of cobordisms 
</p>
<div class="equation">
  \[  C_{\varphi _2}\circ C_{\varphi _1}\simeq C_{\varphi _2 \varphi _1}.  \]
</div>
</li>
</ol></p>
</article> Recall that $\varphi , \varphi '$ are called isotopic if there exists a one-parameter family $\varphi _ t$ of smooth maps $N_0\to N_1$ such that $\varphi _ t$ is a diffeomorphism for all $t$, and $\varphi _0=\varphi $, $\varphi _1=\varphi '$. 
</p>
<p>
We leave the proof of this lemma as an easy exercise to the reader. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">3.4.1</span>.</a>In fact, there is a stronger statement: $C_\varphi \simeq C_{\varphi '}$ if and only if $\varphi , \varphi '$ are <em>pseudo-isotopic</em>, see <span class="cite">[<a href="/bibliography/milnor-h-cobordism">Mil1965</a>, <span class="postnote">Theorem 1.9</span>]</span>. </p>
</article> 
</p>
<p>
As an immediate corollary, we get the following theorem. <article class="env-theorem" id="001W">
  <p><a class="environment-identifier" href="/tag/001W">Theorem <span data-tag="001W">3.4.3</span>.</a> Let $Z\colon \mathbf{Cob}_ n\to \mathcal{C}$ be an $n$-dimensional TQFT. </p>
  <p><ol>
  <li><p>
For any diffeomorphism $\varphi \colon N_0\to N_1$, define $Z(\varphi )\colon Z(N_0)\to Z(N_1)$ by $Z(\varphi )=Z(C_\varphi )$. Then $Z(\varphi _2\varphi _1)= Z(\varphi _2)\circ Z(\varphi _1)$. 
</p>
</li><li><p>
If $\varphi _0,\varphi _1$ are isotopic, then $Z(\varphi _0)=Z(\varphi _1)$. 
</p>
</li>
</ol></p>
</article> <br /> 
</p>
