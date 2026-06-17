<h1 id="c:frobenius" class="tex-chapter"><span data-tag="002T">5</span> Frobenius algebras</h1>

<p>
In the previous chapter, we have shown that 2-dimensional TQFTs are classified by commutative, cocommutative Frobenius algebras. In this chapter, we will study Frobenius algebras in detail. 
</p>
<p>
Recall that a Frobenius algebra is a vector space over a field $\mathbf{k}$ with two structures (see Definition&#160;<a href="/tag/002R" data-tag="002R">4.3.1</a>): 
</p>
<ul>
  <li><p>
A structure of an associative algebra, with multiplication $m$ and unit $i\colon \mathbf{k}\to A$. 
</p>
</li><li><p>
A structure of a coassociative coalgebra, with comultiplication $\Delta $ and counit $\varepsilon \colon A\to \mathbf{k}$. 
</p>
</li>
</ul>
<p>
 These two structures must satisfy the Frobenius condition (<a href="/tag/002Q" data-tag="002Q">4.3.6</a>). 
</p>
<p>
Note that the Frobenius condition can be restated as follows. Define on $A\otimes A$ an $A$-bimodule structure by $x (a_1\otimes a_2) = (xa_1)\otimes a_2$, $(a_1\otimes a_2) x = a_1\otimes (a_2 x)$. Then the Frobenius condition is equivalent to the following: 
</p>
<div class="equation" id="002U">
    <span class="equation-label"><a href="/tag/002U" data-tag="002U">5.0.1</a></span>
    <div>\begin{equation} \label{e:frobenius2} \Delta \colon A\to A\otimes A \text{ is a morphism of $A$-bimodules.} \end{equation}</div>
</div>
<p>
 Note that in this definition, we do not assume that $A$ is commutative or cocommutative. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">5.0.1</span>.</a>Given a vector space with structures of an associative algebra and coassociative coalgebra, there are several natural choices for compatibility between these two structures. By far the most commonly used ones are </p>
  <p><ul>
  <li><p>
<em>Bialgebra condition</em>: the comultiplication is a morphism of algebras. (Frequently one also requires existence of a certain involution, called the <em>antipode</em>; this gives the definition of a Hopf algebra.) Examples of bialgebras include group algebras, universal enveloping algebras of Lie algebras, and more. 
</p>
</li><li><p>
<em>Frobenius condition</em>: the comultiplication is a morphism of $A$-bimodules. 
</p>
</li>
</ul></p>
  <p> These are different choices: a Frobenius algebra is not the same as a Hopf algebra. They both have their uses; for 2d TQFT, we need the structure of a Frobenius algebra. </p>
</article> 
</p>
<p>
We will use a graphical presentation of various algebraic operations, representing linear operators $A^{\otimes k}\to A^{\otimes m}$ by graphs with $k$ legs at the top and $m$ legs at the bottom (thus, our operators act “from top to bottom”). 
</p>
<p>
Figure&#160;<a href="/tag/002V" data-tag="002V">5.0.1</a> shows graphs used to represent the common algebraic operations. 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c5-fig01.svg" /> 
</p>
<figcaption class="figcaption">Figure 5.0.1. Graphical presentation of operations in a Frobenius algebra. $P$ stands for permutation: $P(a\otimes b)=b\otimes a$.</figcaption>


</figure>
<p>
Thus, the Frobenius relation (<a href="/tag/002Q" data-tag="002Q">4.3.6</a>) is graphically represented by 
</p>
<div class="equation" id="002W">
    <span class="equation-label"><a href="/tag/002W" data-tag="002W">5.0.2</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c5-eqfig01.svg"></div>
</div>
