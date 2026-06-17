<h2 id="s:separable" class="tex-section"><span data-tag="0067">9.2</span> Separable algebras</h2>

<p>
Theorem&#160;<a href="/tag/0065" data-tag="0065">9.1.2</a> shows that in order for the coevaluation morphism $\mathbf{k}\to A^{\mathrm{op}}\otimes A$ (which is given by $A$ considered as a left $A^{\mathrm{op}}\otimes A$ module) to have a right adjoint in $\mathbf{Alg}$, it is necessary that $A$ is a projective $A^{\mathrm{op}}\otimes A$ module. This naturally leads us to the notion of a <em>separable</em> algebra. We give a brief review of this notion here, referring the reader to <span class="cite">[<a href="/bibliography/pierce">Pie1982</a>, <span class="postnote">Chapter 10</span>]</span> for details. 
</p>
<p>
<article class="env-lemma" id="0068">
  <p><a class="environment-identifier" href="/tag/0068">Lemma <span data-tag="0068">9.2.1</span>.</a> Let $A$ be an associative algebra over a field $\mathbf{k}$. Then the following are equivalent: </p>
  <p><ol>
  <li><p>
$A$ is projective as a left module over $A^ e=A\otimes A^{\mathrm{op}}$. 
</p>
</li><li><p>
The multiplication map $m\colon A\otimes A\to A$, considered as a morphism of $A$-bimodules ${}_ AA\otimes A_ A \to {}_ A A_ A$, has a one-sided inverse: there exists a morphism of $A$-bimodules $\Delta \colon A\to A\otimes A$ such that $m\circ \Delta =\operatorname{id}_ A$. 
</p>
</li><li><p>
There exists an element $E=\sum x_ i\otimes y_ i\in A\otimes A$ which is central: $\sum ax_ i \otimes y_ i=\sum x_ i \otimes y_ ia$ and satisfies $m(E)=\sum x_ iy_ i=1$. 
</p>
</li>
</ol></p>
</article> 
</p>
<article class="env-proof">
    <p>
      <strong>Proof.</strong>
      (1)$\implies $(2) is a standard fact of basic algebra: if $P$ is a projective module, then any surjective morphism $X\to P\to 0$ has a one-sided inverse. 
    <p>
      Similarly, (2)$\implies $(1) is immediate from the definition: if such a morphism $\Delta $ exists, then $A$ is a direct summand in the free $A^ e$-module $A\otimes A\simeq A^ e$. 
    <p>
      Finally, (3) is just a rewriting of (2). 
      <span class="qed">$\square$</span>
    </p>
</article>
<p>
 <article class="env-definition" id="0069">
  <p><a class="environment-identifier" href="/tag/0069">Definition <span data-tag="0069">9.2.1</span>.</a> An algebra satisfying one of the equivalent conditions of Lemma&#160;<a href="/tag/0068" data-tag="0068">9.2.1</a> is called <em>separable</em>. </p>
</article> An element $E\in A\otimes A$ as in part (3) of the lemma above is called a <em>separability idempotent</em>. This terminology is justified by the following exercise. <article class="env-exercise" id="006A">
  <p><a class="environment-identifier" href="/tag/006A">Exercise <span data-tag="006A">9.2.1</span>.</a> Let $A$ be a separable algebra with separability idempotent $E$. Then $E$, considered as an element in the algebra $A\otimes A^{\mathrm{op}}$, satisfies $E^2=E$. </p>
</article> 
</p>
<p>
Note that the separability idempotent is not unique, nor does it have to be symmetric, as is illustrated by the following example. <article class="env-example" id="006B">
  <p><a class="environment-identifier" href="/tag/006B">Example <span data-tag="006B">9.2.1</span>.</a> Let $A=\operatorname{Mat}_ n(\mathbf{k})$ be the matrix algebra. Choose an index $k$ and define $e_ k=\sum _ i E_{ik}\otimes E_{ki}$, where $E_{ij}$ are matrix units. Then each of $e_ k$ is a separability idempotent, so $A$ is separable. </p>
  <p>We can also take as the separability idempotent the element </p>
  <div class="equation">
  \[  E=\tfrac {1}{n}\sum E_{ij}\otimes E_{ji}  \]
</div>
  <p> which has the added benefit of being symmetric. </p>
</article> <article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">9.2.1</span>.</a>It can be shown that a <em>symmetric</em> separability idempotent, if it exists, is unique, see <span class="cite">[<a href="/bibliography/aguiar">Agu2000</a>, <span class="postnote">Theorem 3.1</span>]</span>. </p>
</article> 
</p>
<p>
One of the main results of this theory is the following. <article class="env-theorem" id="006C">
  <p><a class="environment-identifier" href="/tag/006C">Theorem <span data-tag="006C">9.2.2</span>.</a> If $\mathbf{k}$ has characteristic zero, an algebra $A$ over $\mathbf{k}$ is separable if and only if it is finite-dimensional and semisimple. In this case, for any field extension $\mathbf{k}\subset F$, the algebra $A_ F=A\otimes _\mathbf{k}F$ is also semisimple over $F$. </p>
</article> We skip the proof of this result, referring the reader to <span class="cite">[<a href="/bibliography/pierce">Pie1982</a>, <span class="postnote">Section 10.7</span>]</span>. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">9.2.2</span>.</a>In fact, Theorem&#160;<a href="/tag/006C" data-tag="006C">9.2.2</a> can be generalized: it works for any perfect field, i.e., a field such that any finite extension of it is separable in the sense used in Galois theory. This includes not only fields of characteristic zero, but also finite fields. </p>
</article> 
</p>
<p>
Since any module over a semisimple algebra is projective, the results of the previous section immediately imply the following theorem. <article class="env-theorem" id="006D">
  <p><a class="environment-identifier" href="/tag/006D">Theorem <span data-tag="006D">9.2.3</span>.</a> Let $\mathbf{ssAlg}\subset \mathbf{Alg}$ be the category whose objects are separable algebras, and 1-morphisms are finite-dimensional bimodules. Then $\mathbf{ssAlg}$ is a category with duals as defined in Definition&#160;<a href="/tag/005M" data-tag="005M">8.2.2</a>. </p>
</article> 
</p>
<p>
<article class="env-exercise" id="006E">
  <p><a class="environment-identifier" href="/tag/006E">Exercise <span data-tag="006E">9.2.2</span>.</a> Show that for a separable algebra $A$, the Serre automorphism as defined in Definition&#160;<a href="/tag/005Q" data-tag="005Q">8.3.1</a> is given by $A^*$ (dual vector space), considered as an $A$-bimodule. </p>
</article> 
</p>
