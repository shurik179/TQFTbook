<h2 id="s:sset" class="tex-section"><span data-tag="009P">14.5</span> Simplicial sets as models of topological spaces</h2>

<p>
In the previous section, simplicial sets (i.e., functors $\mathbf{\Delta }^{\mathrm{op}}\to \mathbf{Set}$) were introduced as a natural language to describe nerves of categories. However, historically simplicial sets appeared in topology. In this section, we briefly review that, referring the reader to the books <span class="cite">[<a href="/bibliography/may">May1992</a>]</span>, <span class="cite">[<a href="/bibliography/goerss-jardine">GJ1999</a>]</span> for details. 
</p>
<p>
Throughout this section, we will denote by $\mathbf{sSet}$ the category of simplicial sets. 
</p>
<p>
<article class="env-example" id="009Q">
  <p><a class="environment-identifier" href="/tag/009Q">Example <span data-tag="009Q">14.5.1</span>.</a> Let $X$ be a topological space. For any $n\ge 0$, define the set $\operatorname{Sing}(X)_ n$ by </p>
  <div class="equation">
  \[  \operatorname{Sing}(X)_ n= \{ \text{continuous maps }\Delta ^ n\to X\}   \]
</div>
  <p> where $\Delta ^ n$ is an $n$-dimensional simplex </p>
  <div class="equation" id="009R">
    <span class="equation-label"><a href="/tag/009R" data-tag="009R">14.5.1</a></span>
    <div>\begin{equation} \label{e:simplex} \Delta ^ n=\Bigl \{  (t_0, t_1, \dots , t_ n)\in \mathbb {R}^{n+1}\;  | \; 0\le t_ i \le 1, \quad \sum t_ i=1 \Bigr \} . \end{equation}</div>
</div>
  <p> Vertices of $\Delta ^ n$ are in natural bijection with $[n]$, and any order-preserving map $f\colon [m]\to [n]$ defines an affine linear map $f\colon \Delta ^ m \to \Delta ^ n$. Precomposition with $f$ defines on $\operatorname{Sing}_\bullet $ the structure of a simplicial set. </p>
</article> Thus, we have a functor 
</p>
<div class="equation">
  \[  \operatorname{Sing}\colon \mathbf{Top}\to \mathbf{sSet} \]
</div>
<p>
 usually called the <em>singular complex</em> of $X$. Moreover, many usual constructions for topological spaces, such as the notion of homotopy of maps, or the notion of direct product, can be easily generalized to simplicial sets. (In fact, it can be shown that for any topological space $X$, the singular complex $\operatorname{Sing}(X)$ has an additional property, existence of certain extensions; such simplicial sets are called <em>Kan complexes</em>.) 
</p>
<p>
It turns out that we also have a <em>geometric realization functor</em> $|\quad |\colon \mathbf{sSet}\to \mathbf{Top}$; roughly, for a simplicial set $K$ we take the disjoint union of (topological) simplices, one copy of $\Delta ^ n$ for each point $x\in K_ n$, and then “glue” them together using the face maps. Details can be found, e.g., in <span class="cite">[<a href="/bibliography/may">May1992</a>, <span class="postnote">Chapter III</span>]</span>. In particular, $|K|$ is always a CW complex. 
</p>
<p>
The functors $\operatorname{Sing}\colon \mathbf{Top}\to \mathbf{sSet}$ and $|\quad |\colon \mathbf{sSet}\to \mathbf{Top}$ are adjoints of each other: we have a functorial isomorphism 
</p>
<div class="equation">
  \[  \operatorname{Hom}_{\mathbf{sSet}}(K, \operatorname{Sing}(X))\simeq \operatorname{Hom}_{\mathbf{Top}}(|K|, X), \qquad X\in \mathbf{Top}, K\in \mathbf{sSet} \]
</div>
<p>
 (<span class="cite">[<a href="/bibliography/may">May1992</a>, <span class="postnote">§15</span>]</span>). The unit and counit of this adjunction, therefore, give us morphisms 
</p>
<div class="equation">
  \begin{align*}  \Psi & \colon K\to \operatorname{Sing}(|K|),\\  \Phi & \colon |\operatorname{Sing}(X)|\to X. \end{align*}
</div>
<p>
The following theorem is well-known (see e.g., <span class="cite">[<a href="/bibliography/may">May1992</a>, <span class="postnote">§16</span>]</span>; <span class="cite">[<a href="/bibliography/goerss-jardine">GJ1999</a>, <span class="postnote">Theorem I.11.4</span>]</span>). <article class="env-theorem" id="009S">
       
  <p><a class="environment-identifier" href="/tag/009S">Theorem <span data-tag="009S">14.5.1</span>.</a></p>
  <p><ol>
  <li><p>
For any simplicial set $K$, $\Psi \colon K\to \operatorname{Sing}(|K|)$ is an embedding of simplicial sets, which is a weak homotopy equivalence. If $K$ is a Kan complex, then $\Psi $ is a homotopy equivalence. 
</p>
</li><li><p>
For any topological space $X$, $\Phi \colon |\operatorname{Sing}(X)|\to X$ is surjective and is a weak homotopy equivalence. If $X$ is a CW complex, then $\Phi $ is a homotopy equivalence. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
Thus, one can think of simplicial sets as a combinatorial model for the study of homotopy of topological spaces. In many ways, $\mathbf{sSet}$ is easier to work with than the category $\mathbf{Top}$; for example, $\mathbf{sSet}$ has a natural structure of a Quillen closed model category (which we are not going to discuss; interested readers should check, e.g., <span class="cite">[<a href="/bibliography/simpson">Sim2012</a>, <span class="postnote">Section 7</span>]</span> or <span class="cite">[<a href="/bibliography/goerss-jardine">GJ1999</a>, <span class="postnote">Section I.11</span>]</span>). 
</p>
