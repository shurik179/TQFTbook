<h2 id="s:sym-mon-2cat" class="tex-section"><span data-tag="004T">7.3</span> Symmetric monoidal 2-categories</h2>

<p>
Our next goal is defining the notion of a monoidal weak 2-category. We will outline the construction but skip all the details, referring the reader to <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>, <span class="postnote">Appendix C</span>]</span>. 
</p>
<p>
Throughout this section, $\mathcal{C}$ is a weak 2-category. 
</p>
<p>
As with a usual monoidal category, the starting point is a tensor product functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$. However, we need to define what it means for $\otimes $ to be associative. To put it into perspective, recall the notion of associativity at previous levels of complexity: 
</p>
<ul>
  <li><p>
when defining a monoid, we had a map of sets $M\times M \to M$ and we required $a(bc) = (ab)c$ 
</p>
</li><li><p>
when defining a monoidal category, we had a functor $\otimes \colon \mathcal{C}\times \mathcal{C}\to \mathcal{C}$; the requirement $A\otimes (B \otimes C) = (A\otimes B) \otimes C$ does not make sense (objects in a category are never equal), so instead we introduced the associativity isomorphism $\alpha \colon (A\otimes B)\otimes C \to A\otimes (B \otimes C)$ and imposed an extra consistency relation, the pentagon axiom (which comes from trying to identify all 5 possible ways of bracketing the tensor product of 4 objects) 
</p>
</li><li><p>
now, in a 2-category, we need to have the tensor product functor and the associativity isomorphism $\alpha $. But now each side of the pentagon axiom is a composition of 1-morphisms. By the same logic, it is meaningless to require that this diagram is commutative — 1-morphisms in a 2-category are rarely equal, just isomorphic. Thus, we need to provide a 2-isomorphism $\pi $ between the two sides of the pentagon diagram; we will call it “pentagrammator”. 
</p>
</li>
</ul>
<div class="equation" id="00F6">
    <span class="equation-label"><a href="/tag/00F6" data-tag="00F6">7.3.1</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c7-fig06.svg"></div>
</div>
<p>
The so-defined pentagrammator must itself satisfy some compatibility conditions. Not surprisingly, it comes from a cell of dimension 3 in Stasheff's associahedron $K_5$ (see Remark&#160;<a href="/tag/000N" data-tag="000N">2.3.1</a>). Recall that this polyhedron has 14 vertices, corresponding to 14 bracketings of the tensor product of 5 objects; edges of $K_5$ correspond to application of associativity isomorphisms, and 2-cells correspond to pentagon axiom and functoriality relation. As discussed before, the MacLane coherence axiom for monoidal categoires implies that the 2-skeleton of $K_5$ is simply-connected. In fact, it is homeomorphic to a 2-sphere: $K_5$ is topologically a 3-ball, and the 2-skeleton is the boundary of that ball. 
</p>
<p>
We now add a relation corresponding to the single 3-cell in $K_5$; this relation has the form 
</p>
<div class="equation">
  \begin{align*} & \text{(composition of 2-morphisms in the 2-cells in the upper hemisphere)}\\ &  \qquad = \text{(composition of 2-morphisms in the 2-cells in the lower hemisphere)}. \end{align*}
</div>
<p>
This gives us a consistency relation for the pentagrammator 2-morphism, called the <em>associahedron</em> equation. To give you some idea of what it looks like, Figure&#160;<a href="/tag/004U" data-tag="004U">7.3.1</a> shows the pasting diagram for one side of the associahedron equation, which corresponds to the upper hemisphere in the 14-vertex 3-cell. The lower side is similar. (This diagram is copied from <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>, <span class="postnote">Appendix C</span>]</span>; he uses $a$ instead of $\alpha $ for the associativity 1-morphism.) 
</p>
<figure class="figure">
  <p>
 l/.style=font=88 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c7-fig07.svg" /></div>
<figcaption class="figcaption">Figure 7.3.1. Pasting diagram for the left-hand side of the associahedron axiom. Green 2-cells correspond to commutative diagrams given by functoriality.</figcaption>


</figure>
<p>
In a similar way, instead of requiring the commutativity of diagrams involving the left and right unit isomorphisms, we now need to introduce 2-morphisms (“unitors”) filling these diagrams, and then impose additional relations on them coming from 3-cells. 
</p>
<p>
We will not be providing any details of this, referring the reader to <span class="cite">[<a href="/bibliography/schommer-pries">SP2009</a>]</span>. Instead, we will show some examples. 
</p>
<p>
<article class="env-example" id="004V">
  <p><a class="environment-identifier" href="/tag/004V">Example <span data-tag="004V">7.3.1</span>.</a> Let $\mathbf{Alg}$ be the weak 2-category of algebras and bimodules as defined in Example&#160;<a href="/tag/004D" data-tag="004D">7.1.2</a>. Then it has a natural structure of a symmetric monoidal 2-category, with $\otimes $ being the usual tensor product of algebras. </p>
</article> 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">7.3.1</span>.</a>Recall that a monoidal category $\mathcal{C}$ is essentially the same as a weak 2-category $\mathcal{B}\mathcal{C}$ with one object. Similarly, a monoidal 2-category is the same as a weak 3-category with one object; the associahedron equation is a special case of a consistency equation for associativity of composition of 1-morphisms in a 3-category. </p>
</article> 
</p>
