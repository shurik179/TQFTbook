<h2 id="s:TQFT-def" class="tex-section"><span data-tag="0013">3.1</span> Category $\mathbf{Cob}_ n$ and definition of TQFT</h2>
<p>
 <article class="env-definition" id="0014">
  <p><a class="environment-identifier" href="/tag/0014">Definition <span data-tag="0014">3.1.1</span>.</a> Let $N_0, N_1$ be closed $(n-1)$-dimensional manifolds. A <em>cobordism</em> from $N_0$ to $N_1$ is an $n$-dimensional manifold $M$ together with an isomorphism </p>
  <div class="equation">
  \[  \varphi \colon \overline{N_0}\sqcup N_1 \xrightarrow {\sim }\partial M.  \]
</div>
  <p> We will refer to $N_0$ as the incoming boundary (or simply the in-boundary), and to $N_1$ as the outgoing boundary (out-boundary). </p>
  <p>Following <span class="cite">[<a href="/bibliography/kock">Koc2004</a>]</span>, we will write $N_0\Rightarrow  N_1$ to indicate that $M$ is a cobordism from $N_0$ to $N_1$. </p>
</article> 
</p>
<p>
The picture below shows a 2-dimensional cobordism between a circle and a union of two circles; this cobordism is usually called <em>pair of pants</em>. 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c3-fig01.svg" /> </div>
<p>
<article class="env-convention" id="">
  <p><a class="environment-identifier" href="/tag/">Convention <span data-tag="">3.1.1</span>.</a>In our pictures, cobordisms go “top to bottom”: the in-boundary is at the top, and the out-boundary is at the bottom. </p>
</article> 
</p>
<p>
<article class="env-definition" id="0015">
  <p><a class="environment-identifier" href="/tag/0015">Definition <span data-tag="0015">3.1.2</span>.</a> An isomorphism of two cobordisms $M_1, M_2\in \mathbf{Cob}_ n(N_0,N_1)$ is a diffeomorphism $f\colon M_1\to M_2$ which makes this diagram commutative: </p>
  <div class="equation" id="00EY">
    <span class="equation-label"><a href="/tag/00EY" data-tag="00EY">3.1.1</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c3-fig02.svg"></div>
</div>
</article> Given two cobordisms $N_0\Rightarrow N_1$, $N_1\Rightarrow N_2$, it is natural to ask if they can be glued together in a single cobordism $M=M_2\circ M_1$ 
</p>
<div class="equation">
  \[  N_0\Rightarrow N_2.  \]
</div>
<p>
 Clearly, as a manifold, $M$ should be obtained by gluing $M_1$ and $M_2$ along the common boundary $N_1$: $M= M_1\cup _{N_1} M_2$. However, there is a problem: it is easy to define $M$ as a topological space, but the smooth structure is not unique. There are several ways to deal with this problem. 
</p>
<ul>
  <li><p>
One can switch to the category of PL manifolds and cobordisms, where the problem does not arise: the PL structure on $M_1\cup _{N_1} M_2$ is uniquely determined by the PL structures on $M_1$, $M_2$. 
</p>
</li><li><p>
One can consider <em>collared</em> manifolds: instead of isomorphism $\overline{N_0}\sqcup N_1\to \partial M$, we can require in the definition of cobordism an isomorphism of $(\overline{N_0}\sqcup N_1)\times [0, \epsilon )$ with a neighborhood of $\partial M$ in $M$. 
</p>
</li>
</ul>
<p>
 However, the simplest way is to note that while the smooth structure is not unique, different smooth structures give isomorphic cobordisms. 
</p>
<p>
<article class="env-theorem" id="0016">
  <p><a class="environment-identifier" href="/tag/0016">Theorem <span data-tag="0016">3.1.1</span>.</a> The smooth structure on $M=M_1\cup _{N_1} M_2$ which agrees with the given smooth structures on $M_1$, $M_2$, is unique up to isomorphism: if $\alpha , \alpha '$ are two different smooth structures on $M$, then $(M,\alpha )$, $(M,\alpha ')$ are isomorphic as cobordisms. </p>
</article> You can find a proof of this in <span class="cite">[<a href="/bibliography/kock">Koc2004</a>, <span class="postnote">Theorem 1.3.12</span>]</span>. 
</p>
<p>
<article class="env-definition" id="0017">
  <p><a class="environment-identifier" href="/tag/0017">Definition <span data-tag="0017">3.1.3</span>.</a> The cobordism category $\mathbf{Cob}_ n$ is the category whose objects are closed $(n-1)$-dimensional manifolds, and $\operatorname{Hom}(N_0, N_1)$ is the set of isomorphism classes of cobordisms $N_0\Rightarrow N_1$. The composition of cobordisms $N_0\Rightarrow N_1$, $N_1\Rightarrow N_2$ is given by </p>
  <div class="equation">
  \[  M_2\circ M_1 = M_1\cup _{N_1} M_2  \]
</div>
  <p> (by the previous theorem it is independent of the choice of smooth structure). The identity morphism $\operatorname{id}_ N$ is the cylinder $N\times I$. </p>
</article> Similarly one defines the PL version of cobordism category. 
</p>
<p>
This category has a natural structure of a symmetric monoidal category with respect to disjoint union. 
</p>
<p>
<article class="env-definition" id="0018">
  <p><a class="environment-identifier" href="/tag/0018">Definition <span data-tag="0018">3.1.4</span>.</a> An $n$-dimensional TQFT is a symmetric monoidal functor $Z\colon \mathbf{Cob}_ n\to \mathbf{Vec}$. </p>
</article> This definition was first given in <span class="cite">[<a href="/bibliography/atiyah">Ati1988</a>]</span> in slightly different language. 
</p>
<p>
One can also generalize this definition, allowing the TQFT to take values in other categories. 
</p>
<p>
<article class="env-definition" id="0019">
  <p><a class="environment-identifier" href="/tag/0019">Definition <span data-tag="0019">3.1.5</span>.</a> Let $\mathcal{C}$ be a symmetric monoidal category. Then an $n$-dimensional TQFT with values in $\mathcal{C}$ is a symmetric monoidal functor $Z\colon \mathbf{Cob}_ n\to \mathcal{C}$. </p>
</article> 
</p>
