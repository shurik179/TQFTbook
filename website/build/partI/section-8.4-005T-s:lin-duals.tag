<h2 id="s:lin-duals" class="tex-section"><span data-tag="005T">8.4</span> Duality in $\mathbf{Lin}$</h2>
<p>
 As the simplest example of duality in a 2-category, let us consider the 2-category $\mathbf{Lin}$ of locally finite $\mathbf{k}$-linear categories, introduced in Section&#160;<a href="/tag/004W" data-tag="004W">7.4</a>. Recall that objects of that category are $\mathbf{k}$-linear abelian categories such that all $\operatorname{Hom}$ spaces are finite-dimensional and every object has finite length. This 2-category has a natural symmetric monoidal structure, given by Deligne's product $\boxtimes $. 
</p>
<p>
Let us now analyze which objects of $\mathbf{Lin}$ are rigid, i.e., for which categories $\mathcal{C}$ there exist a category $\mathcal{D}$ and functors 
</p>
<div class="equation">
  \begin{align*}  \eta & \colon \mathbf{Vec_ f}\to \mathcal{D}\boxtimes \mathcal{C}\\  \epsilon & \colon \mathcal{C}\boxtimes \mathcal{D}\to \mathbf{Vec_ f}\end{align*}
</div>
<p>
 satisfying the rigidity axioms. Clearly, defining the functor $\eta $ is equivalent to choosing an object 
</p>
<div class="equation">
  \[  e=\eta (\mathbf{k})=\bigoplus _{i=1}^ k Y_ i\boxtimes X_ i\in \mathcal{D}\boxtimes \mathcal{C} \]
</div>
<p>
 together with functorial isomorphisms 
</p>
<div class="equation" id="005U">
    <span class="equation-label"><a href="/tag/005U" data-tag="005U">8.4.1</a></span>
    <div>\begin{equation} \label{e:rigidity-lin} \begin{aligned}  X& \simeq \bigoplus \varepsilon (X,Y_ i)\otimes X_ i\\  Y& \simeq \bigoplus \varepsilon (X_ i,Y)\otimes Y_ i \end{aligned} \end{equation}</div>
</div>
<p>
 for every $X\in \mathcal{C}$, $Y\in \mathcal{D}$. 
</p>
<p>
<article class="env-theorem" id="005V">
  <p><a class="environment-identifier" href="/tag/005V">Theorem <span data-tag="005V">8.4.1</span>.</a> Let $\mathbf{k}$ be an algebraically closed field of characteristic zero. Then a category $\mathcal{C}\in \mathbf{Lin}$ is rigid as an object of $\mathbf{Lin}$ if and only if it is semisimple and has finitely many isomorphism classes of simple objects. In this case, the dual category $\mathcal{D}$ is equivalent to the category of $\mathbf{k}$-linear functors $\mathcal{C}\to \mathbf{Vec_ f}$; under this equivalence, the counit $\varepsilon \colon \mathcal{C}\boxtimes \mathcal{D}\to \mathbf{Vec_ f}$ is given by </p>
  <div class="equation">
  \[  \varepsilon (X,F) = F(X)\in \mathbf{Vec_ f},\qquad X\in \mathcal{C}, F\in \operatorname{Fun}(\mathcal{C}, \mathbf{Vec_ f})  \]
</div>
  <p> and the object $e=\bigoplus Y_ i\boxtimes X_ i$ is given by </p>
  <div class="equation">
  \[  e=\bigoplus X^ i \boxtimes X_ i  \]
</div>
  <p> where the sum is over isomorphism classes of simple objects $X_ i\in \mathcal{C}$, and for such a simple object, we define </p>
  <div class="equation">
  \[  X^ i=\operatorname{Hom}(X_ i, -)\in \operatorname{Fun}(\mathcal{C}, \mathbf{Vec_ f}).  \]
</div>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      Our proof follows <span class="cite">[<a href="/bibliography/bdspv">BDSPV2015</a>, <span class="postnote">Section A.6</span>]</span>, where the proof is attributed to André Henriques. (Note that they work in greater generality: they do not require the category to be abelian, instead imposing a weaker condition of Cauchy completeness.) 
    <p>
      First, finiteness easily follows from the observation that by (<a href="/tag/005U" data-tag="005U">8.4.1</a>), any $X\in \mathcal{C}$ is a subobject in a finite direct sum of copies of $X_1, \dots , X_ k$. Thus, the only simple objects that can appear in the Jordan–Hölder series for $X$ are those simple objects that appear in the Jordan–Hölder series for one of the $X_ i$; which implies that there are only finitely many of them. 
    <p>
      To prove semisimplicity, let $0\to A_1\to A_2\to A_3\to 0$ be a short exact sequence in $\mathcal{C}$. Using (<a href="/tag/005U" data-tag="005U">8.4.1</a>), we can rewrite it as a short exact sequence 
    <p>
      <div class="equation">
  \[  0 \to \bigoplus \varepsilon (Y_ i, A_1)\otimes X_ i \to \bigoplus \varepsilon (Y_ i, A_2)\otimes X_ i \to \bigoplus \varepsilon (Y_ i, A_3)\otimes X_ i \to 0.  \]
</div>
    <p>
       Since a direct sum of complexes is exact if and only if each summand is exact, this implies that each complex 
    <p>
      <div class="equation">
  \[  K_ i = \Bigl ( 0 \to \varepsilon (Y_ i, A_1)\otimes X_ i \to \varepsilon (Y_ i, A_2)\otimes X_ i \to \varepsilon (Y_ i, A_3)\otimes X_ i \to 0 \Bigr )  \]
</div>
    <p>
       is exact. This in turn is equivalent to the requirement that the complex of vector spaces 
    <p>
      <div class="equation">
  \[  0 \to \varepsilon (Y_ i, A_1) \to \varepsilon (Y_ i, A_2) \to \varepsilon (Y_ i, A_3) \to 0  \]
</div>
    <p>
       is exact. But each short exact sequence of vector spaces splits; thus, each short exact sequence $K_ i$ splits, which implies that the original short exact sequence $0\to A_1\to A_2\to A_3\to 0$ also splits. Thus, $\mathcal{C}$ is semisimple. 
    <p>
      We leave the proof of the remaining parts of the theorem as an exercise to the reader. 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
After establishing duality for objects of $\mathbf{Lin}$, we can turn to establishing duality for 1-morphisms. For simplicity, we give the answer for a slightly smaller 2-category of <em>finite</em> $\mathbf{k}$-linear categories. 
</p>
<p>
<article class="env-definition" id="005W">
  <p><a class="environment-identifier" href="/tag/005W">Definition <span data-tag="005W">8.4.1</span>.</a> A locally finite $\mathbf{k}$-linear category $\mathcal{A}$ is called <em>finite</em> if it satisfies the following additional conditions </p>
  <p><ul>
  <li><p>
The set of isomorphism classes of simple objects in $\mathcal{A}$ is finite. 
</p>
</li><li><p>
There are enough projective objects. 
</p>
</li>
</ul></p>
</article> A more detailed discussion of finite categories can be found, e.g., in <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 1.8</span>]</span>. 
</p>
<p>
<article class="env-theorem" id="005X">
  <p><a class="environment-identifier" href="/tag/005X">Theorem <span data-tag="005X">8.4.2</span>.</a> Assume that $\mathbf{k}$ is an algebraically closed field of characteristic zero. Let $\mathcal{C}$, $\mathcal{D}\in \mathbf{Lin}$ be finite $\mathbf{k}$-linear categories. Then a functor $F\colon \mathcal{C}\to \mathcal{D}$ has a left adjoint if and only if it is left exact. </p>
</article> A proof of this theorem can be found in <span class="cite">[<a href="/bibliography/dsps-balanced">DSPS2019</a>, <span class="postnote">Proposition 1.7</span>]</span> (strangely enough, even though the result was part of folklore for years, it was not written down prior to this paper). 
</p>
<p>
<article class="env-corollary" id="005Y">
  <p><a class="environment-identifier" href="/tag/005Y">Corollary <span data-tag="005Y">8.4.3</span>.</a> Let $\mathcal{C}, \mathcal{D}$ be finite semisimple categories. Then any functor $F\colon \mathcal{C}\to \mathcal{D}$ admits both left and right adjoints. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="005Z">
  <p><a class="environment-identifier" href="/tag/005Z">Exercise <span data-tag="005Z">8.4.1</span>.</a> Under the assumptions of Corollary&#160;<a href="/tag/005Y" data-tag="005Y">8.4.3</a>, let $X_ i$, $i=1, \dots , n$ be simple objects of $\mathcal{C}$ and $Y_ j, j=1, \dots , m$ be simple objects of $\mathcal{D}$. </p>
  <p><ol>
  <li><p>
Show that the category of functors $\operatorname{Fun}(\mathcal{C}, \mathcal{D})$ is naturally equivalent to the category whose objects are $m\times n$ matrices of finite-dimensional vector spaces. (Hint: it suffices to consider functors $\mathbf{Vec_ f}\to \mathbf{Vec_ f}$). 
</p>
</li><li><p>
Show that the (two-sided) adjoint of such a matrix of vector spaces is the matrix obtained by transposing the original matrix and replacing each vector space by the dual. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
Combining Theorem&#160;<a href="/tag/005V" data-tag="005V">8.4.1</a> with Corollary&#160;<a href="/tag/005Y" data-tag="005Y">8.4.3</a>, we get the following result. 
</p>
<p>
<article class="env-theorem" id="0060">
  <p><a class="environment-identifier" href="/tag/0060">Theorem <span data-tag="0060">8.4.4</span>.</a> Assume that $\mathbf{k}$ is an algebraically closed field of characteristic zero. Then fully dualizable objects in $\mathbf{Lin}$ are finite semisimple $\mathbf{k}$-linear categories. </p>
</article> 
</p>
<p>
<br /> 
</p>
