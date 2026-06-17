<h2 id="s:weak-2cat" class="tex-section"><span data-tag="004K">7.2</span> Weak 2-categories</h2>
<p>
 There is one problem with the notion of strict 2-category: this definition is too strict. For example, in the proposed 2-category of algebras and bimodules, the identity 1-morphism $1_ A\in \operatorname{Hom}(A,A)$ is $A$ considered as an $A$-bimodule. But if $M$ is an $A$-$B$-bimodule, $A\otimes _ A M$ is not equal to $M$: it is only isomorphic. Thus, we need to relax the associativity condition for composition of 1-morphisms, similarly to what we did with the associativity condition for monoidal categories. 
</p>
<p>
<article class="env-definition" id="004L">
  <p><a class="environment-identifier" href="/tag/004L">Definition <span data-tag="004L">7.2.1</span>.</a> A <em>weak 2-category</em> (also called a bicategory) $\mathcal{C}$ is the following collection of data: </p>
  <p><ul>
  <li><p>
A class of objects $\mathcal{C}_0$ 
</p>
</li><li><p>
For any $X, Y\in \mathcal{C}_0$, a category $\operatorname{Hom}_\mathcal{C}(X,Y)$. Objects of this category are called $1$-morphisms from $X$ to $Y$; morphisms of $\operatorname{Hom}_\mathcal{C}(X,Y)$ are called $2$-morphisms of $\mathcal{C}$ 
</p>
</li><li><p>
A (horizontal) composition functor 
</p>
<div class="equation">
  \[  H\colon \operatorname{Hom}(X,Y)\times \operatorname{Hom}(Y,Z)\to \operatorname{Hom}(X,Z)  \]
</div>
</li><li><p>
For every $X\in \mathcal{C}_0$, an identity 1-morphism $1_ X\in \operatorname{Hom}(X,X)$ 
</p>
</li><li><p>
For any quadruple of objects $X,Y,Z,W\in \mathcal{C}$, an isomorphism $\alpha $ of functors $H\circ (H\times \operatorname{id})$ and $H\circ (\operatorname{id}\times H)$, both considered as functors 
</p>
<div class="equation">
  \[  \operatorname{Hom}(X,Y)\times \operatorname{Hom}(Y,Z)\times \operatorname{Hom}(Z,W)\to \operatorname{Hom}(X,W).  \]
</div>
</li><li><p>
Left and right unit isomorphisms 
</p>
</li>
</ul></p>
  <p> which satisfy the pentagon and triangle axioms. </p>
</article> The pentagon and triangle axioms are similar to those for a monoidal category; details can be found, e.g., in <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>, <span class="postnote">Section 1.5</span>]</span>. 
</p>
<p>
<article class="env-example" id="004M">
      
  <p><a class="environment-identifier" href="/tag/004M">Example <span data-tag="004M">7.2.1</span>.</a></p>
  <p><ol>
  <li><p>
The 2-category $\mathbf{Alg}$ of algebras and bimodules, introduced in Example&#160;<a href="/tag/004D" data-tag="004D">7.1.2</a>, is indeed a weak 2-category. 
</p>
</li><li><p>
The 2-category $\mathbf{Cat}$ of (small) categories, introduced in Example&#160;<a href="/tag/004C" data-tag="004C">7.1.1</a>, is indeed a weak 2-category. 
</p>
</li><li><p>
As a variation of the above, we can define a weak 2-category $\mathbf{Ab}_\mathbf{k}$ of $\mathbf{k}$-linear abelian categories, together with $\mathbf{k}$-linear functors between them. We can also impose some additional restrictions, such as local finiteness (all $\operatorname{Hom}$ spaces are finite-dimensional, and every object has finite length) or semisimplicity. 
</p>
</li>
</ol></p>
</article> <article class="env-example" id="004N">
  <p><a class="environment-identifier" href="/tag/004N">Example <span data-tag="004N">7.2.2</span>.</a> Let $\mathcal{C}$ be a monoidal category. Define the 2-category $\mathcal{B}\mathcal{C}$ as the 2-category with one object $*$ and morphisms given by $\operatorname{Hom}_{\mathcal{B}\mathcal{C}}(*,*) =\mathcal{C}$, with horizontal composition given by tensor product. It is easy to see that this is indeed a 2-category; conversely, every 2-category with only one object is obtained in this way. This is sometimes called <em>delooping</em> of $\mathcal{C}$. </p>
</article> 
</p>
<p>
<article class="env-remark" id="004P">
  <p><a class="environment-identifier" href="/tag/004P">Remark <span data-tag="004P">7.2.1</span>.</a> The notation $\mathcal{B}\mathcal{C}$ is motivated by the following. Let $M$ be a monoid (for example, a group). Define the category $\mathcal{B}M$ as the category with a single object $*$ and $\operatorname{Hom}(*,*)=M$. Then it is immediate from the definition that for a group $G$, the so-defined category is equivalent to the fundamental groupoid of the classifying space $BG$: $\mathcal{B}G\simeq \Pi _1(BG)$; therefore, $\mathcal{B}$ is the categorical analog of the classifying space construction. </p>
  <p>The word “delooping” is justified by the following observation: for a path-connected topological space $X$, let $\Omega X$ be the space of based loops in $X$. Then we have a homotopy equivalence $\Omega BG \simeq G$; thus, in some sense $B$ is the inverse operation to $\Omega $, hence the name “delooping”. </p>
</article> 
</p>
<p>
One can also define the notion of functor between (weak) 2-categories, which we skip, referring the reader to <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>, <span class="postnote">Definition 1.5.8</span>]</span>. (Note: what we will be using is called “weak lax functors” in <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>]</span>.) This allows one to define the notion of equivalence of weak 2-categories. 
</p>
<p>
<article class="env-theorem" id="004Q">
  <p><a class="environment-identifier" href="/tag/004Q">Theorem <span data-tag="004Q">7.2.1</span>.</a> Any weak 2-category is equivalent to a strict 2-category. </p>
</article> This theorem is similar to the coherence theorem Theorem&#160;<a href="/tag/000V" data-tag="000V">2.3.3</a>; we refer the reader to <span class="cite">[<a href="/bibliography/leinster">Lei2004</a>, <span class="postnote">Theorem 1.5.15</span>]</span> for the proof. 
</p>
<p>
<article class="env-remark" id="004R">
  <p><a class="environment-identifier" href="/tag/004R">Remark <span data-tag="004R">7.2.2</span>.</a> Do not let this theorem give you the wrong idea. For $n=3$, the notion of a weak $3$-category (which is quite hard to define, see <span class="cite">[<a href="/bibliography/gordon-power-street">GPS1995</a>]</span>) is not equivalent to that of a strict 3-category (which is relatively easy to define). We will return to this when discussing higher categories in Chapter&#160;<a href="/tag/0098" data-tag="0098">14</a>. </p>
</article> 
</p>
<p>
<article class="env-convention" id="">
  <p><a class="environment-identifier" href="/tag/">Convention <span data-tag="">7.2.1</span>.</a>From now on, the name “2-category” will mean a weak 2-category unless explicitly stated otherwise. </p>
</article> Note that it is easy to go from a 2-category to a 1-category. <article class="env-definition" id="004S">
  <p><a class="environment-identifier" href="/tag/004S">Definition <span data-tag="004S">7.2.2</span>.</a> Let $\mathcal{C}$ be a weak 2-category. Define the category $\tau _{\leq 1}\mathcal{C}$ as follows: </p>
  <p><ul>
  <li><p>
Objects of $\tau _{\leq 1}\mathcal{C}$ are the same as objects of $\mathcal{C}$. 
</p>
</li><li><p>
Morphisms of $\tau _{\leq 1}\mathcal{C}$ are isomorphism classes of 1-morphisms in $\mathcal{C}$ 
</p>
</li>
</ul></p>
  <p> We will call $\tau _{\leq 1}\mathcal{C}$ the 1-truncation of $\mathcal{C}$; it is also frequently called the <em>homotopy category</em> of $\mathcal{C}$. Alternative notation for $\tau _{\leq 1}\mathcal{C}$ is $h\mathcal{C}$. </p>
</article> 
</p>
