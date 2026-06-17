<h2 id="s:frobenius-pairing" class="tex-section"><span data-tag="002X">5.1</span> Frobenius pairing</h2>
<p>
 It turns out that there is an alternative definition of Frobenius algebras. 
</p>
<p>
<article class="env-theorem" id="002Y">
  <p><a class="environment-identifier" href="/tag/002Y">Theorem <span data-tag="002Y">5.1.1</span>.</a> Let $A$ be a Frobenius algebra. Then $A$ is finite-dimensional and the bilinear pairing </p>
  <div class="equation" id="002Z">
    <span class="equation-label"><a href="/tag/002Z" data-tag="002Z">5.1.1</a></span>
    <div>\begin{equation} \label{e:frob-pairing-thm} (a,b) = \varepsilon (ab) \end{equation}</div>
</div>
  <p> is non-degenerate; the corresponding coevaluation map $\mathbf{k}\to A\otimes A$ is given by $\Delta \circ i$. </p>
</article> 
</p>
<p>
We will use “cup” and “cap” graphics to denote the pairing $\varepsilon (ab)$ and the coevaluation $\Delta \circ i$: 
</p>
<div class="equation" id="00EK">
    <span class="equation-label"><a href="/tag/00EK" data-tag="00EK">5.1.2</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c5-eqfig02.svg"></div>
</div>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      Define maps $\operatorname{ev}\colon A\otimes A \to \mathbf{k}$ and $\operatorname{coev}\colon \mathbf{k}\to A\otimes A$ by (<a href="/tag/00EK" data-tag="00EK">5.1.2</a>). Then it immediately follows from the Frobenius relation that these maps satisfy the rigidity condition: 
    <p>
      <div class="equation" id="0031">
    <span class="equation-label"><a href="/tag/0031" data-tag="0031">5.1.3</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c5-eqfig03.svg"></div>
</div>
    <p>
       where $x_ i, x^ i$ are defined by $\Delta (1)=\sum x_ i \otimes x^ i$. Thus, by Lemma&#160;<a href="/tag/001D" data-tag="001D">3.2.2</a>, $A$ is finite-dimensional, and $\varepsilon (ab)$ is a non-degenerate pairing. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
As an immediate corollary, we see that the comultiplication is uniquely determined by the unit, the multiplication, and the counit. Indeed, by Theorem&#160;<a href="/tag/002Y" data-tag="002Y">5.1.1</a>, $e= \Delta (1)$ is given by 
</p>
<div class="equation" id="0032">
    <span class="equation-label"><a href="/tag/0032" data-tag="0032">5.1.4</a></span>
    <div>\begin{equation} \label{e:e1} e= \Delta (1) = \sum x_ i \otimes x^ i \end{equation}</div>
</div>
<p>
 where $x_ i, x^ i$ are dual bases in $A$ with respect to the Frobenius pairing: $(x^ i,x_ j)=\delta _{ij}$. On the other hand, it follows from the Frobenius relation that 
</p>
<div class="equation" id="0033">
    <span class="equation-label"><a href="/tag/0033" data-tag="0033">5.1.5</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c5-eqfig04.svg"></div>
</div>
<p>
<article class="env-exercise" id="0034">
  <p><a class="environment-identifier" href="/tag/0034">Exercise <span data-tag="0034">5.1.1</span>.</a> Let $A$ be a Frobenius algebra, and let $x_ i, x^ i$ be as in (<a href="/tag/0032" data-tag="0032">5.1.4</a>). </p>
  <p><ol>
  <li><p>
Define the map $\lambda \colon A\otimes A \otimes A \to \mathbf{k}$ by $\lambda (a_1\otimes a_2\otimes a_3)= \varepsilon (a_1a_2a_3)$: 
</p>
<div class="equation" >
    <span class="equation-label">5.1.6</span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c5-eqfig05.svg"></div>
</div>
<p>
 Let $c_{ijk}=\lambda (x_ i, x_ j, x_ k)=\varepsilon (x_ i x_ j x_ k)$. 
</p>
<p>
Prove that then the structure constants of the multiplication and the comultiplication are obtained by “raising indices” of $c_{ijk}$: 
</p>
<div class="equation">
  \begin{align*}  x_ i x_ j & = \sum c_{ijk}g^{kl}x_ l =\sum g^{lk}c_{kij}x_ l,\\  \Delta (x_ i)& = \sum c_{ijk}g^{jj'}g^{kk'}x_{k'}\otimes x_{j'} = \sum c_{jki}g^{j'j}g^{k'k}x_{k'}\otimes x_{j'} \end{align*}
</div>
<p>
 where $g^{ji}$ is the inverse matrix of $g_{ij}=(x_ i, x_ j)$ (thus, $x^ i = \sum g^{ij}x_ j$). Note that we do not assume that $g_{ij}$ is symmetric. 
</p>
</li><li><p>
Prove that the comultiplication is also given by the picture below: 
</p>
<div class="equation" id="00F4">
    <span class="equation-label"><a href="/tag/00F4" data-tag="00F4">5.1.7</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c5-fig02.svg"></div>
</div>
</li>
</ol></p>
</article> 
</p>
<p>
<article class="env-corollary" id="0035">
  <p><a class="environment-identifier" href="/tag/0035">Corollary <span data-tag="0035">5.1.2</span>.</a> If a Frobenius algebra $A$ is commutative, it is also cocommutative. </p>
</article> 
</p>
<p>
Conversely, one can recover the structure of a Frobenius lagebra from the pairing $(, \,  \, )$. 
</p>
<p>
<article class="env-theorem" id="0036">
  <p><a class="environment-identifier" href="/tag/0036">Theorem <span data-tag="0036">5.1.3</span>.</a> Let $A$ be a finite-dimensional associative algebra and let $\varepsilon \colon A\to \mathbf{k}$ be a linear map such that the bilinear pairing $(a,b) = \varepsilon (ab)$ is non-degenerate. Let $e= \sum x_ i \otimes x^ i\in A\otimes A$, where $x_ i, x^ i$ are dual bases with respect to $(\,  , \, )$: $(x^ i, x_ j)= \delta _{ij}$. Then $e$ is central: $(a\otimes 1)e = e (1\otimes a)$, and $A$ has a canonical Frobenius algebra structure with the comultiplication given by (<a href="/tag/0033" data-tag="0033">5.1.5</a>). </p>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      The sequence of pictures below gives a graphical proof that $e$ is central; we leave it to the reader to rewrite it algebraically: 
    <p>
      <div class="equation" id="00F5">
    <span class="equation-label"><a href="/tag/00F5" data-tag="00F5">5.1.8</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c5-fig03.svg"></div>
</div>
    <p>
       Coassociativity, the counit axiom, and the Frobenius property are proved by very similar computations, which we leave to the reader. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
 Thus, we could give an alternative definition of a Frobenius algebra. <article class="env-definition" id="0037">
  <p><a class="environment-identifier" href="/tag/0037">Definition <span data-tag="0037">5.1.1</span>.</a> A Frobenius algebra is a finite-dimensional associative algebra $A$ together with a map $\varepsilon \colon A\to \mathbf{k}$ such that the bilinear pairing </p>
  <div class="equation" id="00EL">
    <span class="equation-label"><a href="/tag/00EL" data-tag="00EL">5.1.9</a></span>
    <div>\begin{equation} \label{e:frob-pairing} (a,b) = \varepsilon (ab) \end{equation}</div>
</div>
  <p> is non-degenerate. </p>
</article> By Theorems <a href="/tag/002Y" data-tag="002Y">5.1.1</a> and <a href="/tag/0036" data-tag="0036">5.1.3</a>, this is equivalent to the previously given definition (Definition&#160;<a href="/tag/002R" data-tag="002R">4.3.1</a>). 
</p>
<p>
There are also many other equivalent definitions of Frobenius algebras; see, e.g., <span class="cite">[<a href="/bibliography/kock">Koc2004</a>, <span class="postnote">Section 2.2</span>]</span>. 
</p>
<p>
Note that while in general, the pairing $(a,b) = \varepsilon (ab)$ need not be symmetric, in most examples of interest to us it is. <article class="env-definition" id="0039">
  <p><a class="environment-identifier" href="/tag/0039">Definition <span data-tag="0039">5.1.2</span>.</a> A Frobenius algebra $A$ is <em>symmetric</em> if $\varepsilon $ is trace-like, i.e., </p>
  <div class="equation">
  \[  \varepsilon (ab)=\varepsilon (ba).  \]
</div>
</article> Of course, every commutative Frobenius algebra is symmetric; however, the examples below show that an algebra can be symmetric without being commutative. 
</p>
<p>
<article class="env-example" id="003A">
  <p><a class="environment-identifier" href="/tag/003A">Example <span data-tag="003A">5.1.1</span>.</a> Let $A=\mathbb {C}[x]/(x^{n+1})$, with $\varepsilon (x^ k)=1$ if $k=n$ and $\varepsilon (x^ k)=0$ otherwise. This is a commutative Frobenius algebra which has a natural topological interpretation: it is the cohomology of $\mathbb {C}P^ n$. In particular, for $n=1$, this Frobenius algebra and the corresponding TQFT play an important role in the theory of Khovanov homology. </p>
</article> <article class="env-example" id="003B">
  <p><a class="environment-identifier" href="/tag/003B">Example <span data-tag="003B">5.1.2</span>.</a> Let $A$ be the algebra of $n\times n$ matrices over $\mathbf{k}$, with $\varepsilon (a)=\lambda \cdot \operatorname{tr}(a)$, for some $\lambda \ne 0$. Then $A$ is a symmetric Frobenius algebra. </p>
</article> 
</p>
<p>
The following lemma is immediate from the definition. <article class="env-lemma" id="003C">
  <p><a class="environment-identifier" href="/tag/003C">Lemma <span data-tag="003C">5.1.4</span>.</a> Let $A$ be a symmetric Frobenius algebra, and let $e=\sum x_ i\otimes x^ i\in A\otimes A$ be as in Theorem&#160;<a href="/tag/0036" data-tag="0036">5.1.3</a>. Then </p>
  <p><ol>
  <li><p>
$e$ is symmetric: $P(e)=e$, where $P\colon A\otimes A\colon a\otimes b\mapsto b\otimes a$. 
</p>
</li><li><p>
$e$ is <em>bicentral</em>: 
</p>
<div class="equation">
  \begin{align*}  \sum ax_ i\otimes x^ i& =\sum x_ i\otimes x^ i a,\\  \sum x_ ia\otimes x^ i& =\sum x_ i\otimes ax^ i. \end{align*}
</div>
</li>
</ol></p>
</article> 
</p>
