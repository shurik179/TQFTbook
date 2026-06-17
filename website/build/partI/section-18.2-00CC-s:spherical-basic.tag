<h2 id="s:spherical-basic" class="tex-section"><span data-tag="00CC">18.2</span> Dimensions in a spherical category</h2>

<p>
As before, let $\mathcal{C}$ be a spherical fusion category. Recall that by the Schur lemma (Lemma&#160;<a href="/tag/000E" data-tag="000E">2.2.1</a>), for any simple $X$, we have $\operatorname{End}(X)=\mathbf{k}$. 
</p>
<p>
For an object $X\in \mathcal{C}$ and a simple object $X_ i$, we define the multiplicity $[X:X_ i]$ by 
</p>
<div class="equation">
  \[  [X:X_ i]=\dim \operatorname{Hom}(X_ i, X).  \]
</div>
<p>
 Semisimplicity immediately implies that then 
</p>
<div class="equation">
  \[  X\simeq \bigoplus _{\mathcal{O}(\mathcal{C})} n_ i X_ i, \quad n_ i = [X:X_ i].  \]
</div>
<p>
 In fact, one has a stronger statement. <article class="env-lemma" id="00CD">
  <p><a class="environment-identifier" href="/tag/00CD">Lemma <span data-tag="00CD">18.2.1</span>.</a> One has a functorial isomorphism </p>
  <div class="equation">
  \[  X\simeq \bigoplus _{i\in \mathcal{O}(\mathcal{C})} \operatorname{Hom}(X_ i, X)\otimes X_ i.  \]
</div>
</article> 
</p>
<p>
It is obvious that for a simple object $X$, its dual $X^*$ is also simple; this gives an involution $*$ on the set $\mathcal{O}(\mathcal{C})$ such that $X_ i^*\simeq X_{i^*}$. 
</p>
<p>
<article class="env-exercise" id="00CE">
  <p><a class="environment-identifier" href="/tag/00CE">Exercise <span data-tag="00CE">18.2.1</span>.</a> Show that $[X_ i\otimes X_ j:\mathbf{1}]=\delta _{i, j^*}$. </p>
</article> 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">18.2.1</span>.</a>It is tempting (and is frequently done in physics papers) to choose isomorphisms $X_{i}^*\simeq X_{i^*}$ and write $X_ i^*=X_{i^*}$. However, this can lead to trouble, so we will not be doing this. </p>
</article> 
</p>
<p>
We denote by $\dim X\in \mathbf{k}$ dimension of an object $X\in \mathcal{C}$ (see Definition&#160;<a href="/tag/00C3" data-tag="00C3">17.3.3</a>); in particular, we will use notation 
</p>
<div class="equation">
  \[  d_ i=\dim X_ i  \]
</div>
<p>
 for dimensions of simple objects. Obviously, $\dim \mathbf{1}=1$. 
</p>
<p>
<article class="env-lemma" id="00CF">
       
  <p><a class="environment-identifier" href="/tag/00CF">Lemma <span data-tag="00CF">18.2.2</span>.</a></p>
  <p><ol>
  <li><p>
$\dim (X\oplus Y)= \dim X +\dim Y$ 
</p>
</li><li><p>
$\dim (X\otimes Y)= \dim X \dim Y$ 
</p>
</li><li><p>
For a simple $X=X_ i$, its dimension $d_ i$ is non-zero. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">18.2.2</span>.</a>In general, dimensions are not integers; for example, in so-called Fibonacci category we have an object $X$ satisfying $X\otimes X\simeq X\oplus \mathbf{1}$, which implies that $\dim X= (1\pm \sqrt{5})/2$. It can be shown, however, that in a spherical fusion category dimensions are always algebraic integers (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Corollary 4.7.13</span>]</span>). </p>
</article> 
</p>
<p>
<article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">18.2.1</span>.</a> The dimension of a spherical fusion category is defined by </p>
  <div class="equation">
  \[  \dim (\mathcal{C})=\sum _{X\in \mathcal{O}(\mathcal{C})} d_ X^2.  \]
</div>
</article> 
</p>
<p>
<article class="env-example" id="00CG">
  <p><a class="environment-identifier" href="/tag/00CG">Example <span data-tag="00CG">18.2.1</span>.</a> Let $\mathcal{C}=\operatorname{Rep}(G)$ be the category of finite-dimensional representations of a finite group $G$. Then $\dim (\operatorname{Rep}G)=|G|$. </p>
</article> 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">18.2.3</span>.</a>If $\mathcal{C}$ is pivotal but not necessarily spherical, we can still define its dimension by $\dim \mathcal{C}=\sum d_ X d_{X^*}$. Moreover, one can show that $|X|^2=d_ X d_{X^*}$ is independent of a choice of the pivotal structure and in fact can be defined without using pivotal structure at all (<span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section 7.21</span>]</span>); thus, $\dim \mathcal{C}$ is well-defined for any fusion category. However, we will only be using it for spherical categories. </p>
</article> 
</p>
<p>
<article class="env-theorem" id="00CH">
  <p><a class="environment-identifier" href="/tag/00CH">Theorem <span data-tag="00CH">18.2.3</span>.</a> Let $\mathcal{C}$ be a pivotal fusion category over a field $\mathbf{k}$ of characteristic zero. Then </p>
  <p><ol>
  <li><p>
$\dim \mathcal{C}\ne 0$. 
</p>
</li><li><p>
If $\mathbf{k}\subset \mathbb {C}$, then for any simple $X$, $d_ X$ is real and non-zero, and $\dim \mathcal{C}$ is real and $\ge 1$. 
</p>
</li>
</ol></p>
</article> This result is non-trivial, since a priori, all dimensions are just elements of $\mathbf{k}$. We refer the reader to <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Theorem 7.21.12</span>]</span> for the proof. Note that it is easily shown to be false in positive characteristic. 
</p>
