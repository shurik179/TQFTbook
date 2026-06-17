<h2 id="s:2d-xtqft-classification" class="tex-section"><span data-tag="007D">10.4</span> Classifying 2d extended TQFT</h2>

<p>
Having generators and relations for $\mathbf{Bord}_2$, we can now try to describe all extended 2d TQFTs with values in an arbitrary symmetric monoidal 2-category $\mathcal{C}$. Since there are a fair number of generators and relations, we will do it in steps. 
</p>
<p>
<strong>Step 1</strong>: 0- and 1-d generators. 
</p>
<p>
This is clear enough: these are equivalent to choosing a pair of objects $A=Z(\bullet ^+)$, $B=Z(\bullet ^-) \in \mathcal{C}$ and a pair of 1-morphisms 
</p>
<div class="equation">
  \[  \begin{aligned}  \operatorname{ev}&  \colon A\otimes B\to \mathbf{1}\\  \operatorname{coev}& \colon \mathbf{1}\to B\otimes A \end{aligned}  \]
</div>
<p>
 corresponding to left and right elbows. 
</p>
<p>
Note that since the target category $\mathcal{C}$ is a symmetric monoidal 2-category, we can switch the order of tensor product, e.g., considering $\operatorname{ev}$ as a morphism $B\otimes A\to \mathbf{1}$. 
</p>
<p>
<strong>Step 2</strong>: cusps, cusp relations, and swallowtail relations 
</p>
<p>
The cusp generators should give 2-morphisms 
</p>
<div class="equation">
  \[  \begin{aligned}  \alpha &  \colon z_ A \to 1_{A}\\  \alpha '&  \colon 1_{A}\to z_ A\\  \beta &  \colon z_ B \to 1_{B}\\  \beta '&  \colon 1_{B}\to z_ B \end{aligned}  \]
</div>
<p>
 where $z_ A, z_ B$ are zigzag 1-morphisms: 
</p>
<div class="equation" id="007E">
    <span class="equation-label"><a href="/tag/007E" data-tag="007E">10.4.7</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig01.svg"></div>
</div>
<p>
 (compare with Section&#160;<a href="/tag/005F" data-tag="005F">8.2</a>). Cusp relations are equivalent to the statement that $\alpha '$ is the inverse of $\alpha $, and $\beta '$ is the inverse of $\beta $, so we do not need to specify $\alpha ', \beta '$; instead, we just need to require that $\alpha , \beta $ are isomorphisms. 
</p>
<p>
Finally, the swallowtail relations are exactly relations (<a href="/tag/00F7" data-tag="00F7">8.2.5</a>), (<a href="/tag/00F8" data-tag="00F8">8.2.6</a>). 
</p>
<p>
Thus, summarizing, we see that the data of Steps 1 and 2 is equivalent to a choice of a coherent dual pair in $\mathcal{C}$ (see Definition&#160;<a href="/tag/005H" data-tag="005H">8.2.1</a>). As discussed in Section&#160;<a href="/tag/005F" data-tag="005F">8.2</a>, such a pair is essentially uniquely determined by $A$; thus, Steps 1 and 2 are equivalent to choosing a rigid object $A\in \mathcal{C}$. We will denote by $B=A^*$ the dual object. 
</p>
<p>
Note that the data above is already enough to define the value of $Z$ on the circle, which we will denote by $\operatorname{\mathbf{dim}}A$: 
</p>
<div class="equation">
  \[  \operatorname{\mathbf{dim}}A = Z(S^1)= \operatorname{ev}\circ \operatorname{coev}\colon \mathbf{1}\to \mathbf{1} \]
</div>
<p>
 (in a 1d TQFT, it would be a number; in a 2d extended TQFT, it is a 1-morphism $\mathbf{1}\to \mathbf{1}$). 
</p>
<p>
Now we are ready to discuss the remaining structures. 
</p>
<p>
<strong>Step 3</strong>: saddles, cup and cap, and saddle relations 
</p>
<p>
Let us begin with the cup and the reverse saddle. They give us 2-morphisms 
</p>
<div class="equation" id="007F">
    <span class="equation-label"><a href="/tag/007F" data-tag="007F">10.4.8</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig02.svg"></div>
</div>
<p>
<article class="env-lemma" id="007G">
  <p><a class="environment-identifier" href="/tag/007G">Lemma <span data-tag="007G">10.4.1</span>.</a> The Morse relations involving cup and reverse saddle are equivalent to the requirement that $\eta _+$, $\varepsilon _+$ are the unit and the counit of adjunction $\operatorname{coev}\dashv \operatorname{ev}$. </p>
</article> The proof is left to the reader as an exercise. 
</p>
<p>
Similarly, the cap and the saddle give us 2-morphisms 
</p>
<div class="equation" id="007H">
    <span class="equation-label"><a href="/tag/007H" data-tag="007H">10.4.9</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig03.svg"></div>
</div>
<p>
 and the Morse relations involving them are equivalent to the requirement that $\eta _-$, $\varepsilon _-$ are the unit and the counit of adjunction $\operatorname{ev}\dashv \operatorname{coev}$. 
</p>
<p>
Following <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>]</span>, we will call a collection of data $(A, B, \operatorname{ev}, \operatorname{coev}, \alpha , \beta , \eta _\pm , \varepsilon _\pm )$, where $(A, B, \operatorname{ev}, \operatorname{coev}, \alpha , \beta )$ is a coherent dual pair, and $\eta _\pm , \varepsilon _\pm $ are unit and counit of adjunctions $\operatorname{ev}\dashv \operatorname{coev}$, $\operatorname{coev}\dashv \operatorname{ev}$, a <em>fully dual pair</em>. 
</p>
<p>
Finally, the cusp flip relation gives a consistency relation between them (note that it involves a saddle and reverse saddle, i.e., $\varepsilon _-$ and $\eta _+$). This can be written algebraically, which we skip, referring the reader to <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>, <span class="postnote">Section 3.2</span>]</span> (Note that in that paper, he considers a more general situation: he requires that $\operatorname{ev}$ has both right and left adjoints, but does not require that both of them are given by $\operatorname{ev}$. This is more suited to the study of the framed extended theory, as opposed to the oriented one we are considering.) 
</p>
<p>
As in <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>]</span>, we will call a fully dual pair <em>coherent</em> if it additionally satisfies the cusp flip relation. 
</p>
<p>
This gives the following theorem. 
</p>
<p>
<article class="env-theorem" id="007J">
  <p><a class="environment-identifier" href="/tag/007J">Theorem <span data-tag="007J">10.4.2</span>.</a> An extended 2d TQFT $Z\colon \mathbf{Bord}_2\to \mathcal{C}$ is equivalent to the data of a coherent fully dual pair $(A, B, \operatorname{ev}, \operatorname{coev}, \alpha , \beta , \eta _\pm , \varepsilon _\pm )$ in $\mathcal{C}$. </p>
</article> 
</p>
<p>
However, this can be simplified. We have already discussed that the coherent dual pair $(A, B, \operatorname{ev}, \operatorname{coev}, \alpha , \beta )$ is essentially uniquely determined by $A$, which must be dualizable, i.e., have a dual in $h\mathcal{C}$. Similarly, one can show that if a fully dual pair exists, then one can make it coherent by modifying one of the counits and keeping the rest of the data intact (see <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>, <span class="postnote">Theorem 3.16</span>]</span>). Thus, we get the following statement. 
</p>
<p>
<article class="env-theorem" id="007K">
  <p><a class="environment-identifier" href="/tag/007K">Theorem <span data-tag="007K">10.4.3</span>.</a> An extended 2d TQFT $Z\colon \mathbf{Bord}_2\to \mathcal{C}$ is equivalent to the following data: </p>
  <p><ul>
  <li><p>
A dualizable object $A=Z(\bullet ^+)$ in $\mathcal{C}$. We denote by $A^*$ the dual object and by $\operatorname{ev}, \operatorname{coev}$ the corresponding evaluation and coevaluation morphisms (as discussed before, they are essentially unique). 
</p>
</li><li><p>
Adjunction data for $\operatorname{ev}\dashv \operatorname{coev}$. 
</p>
</li>
</ul></p>
  <p> such that in addition, $\operatorname{ev}$ is also the right adjoint of $\operatorname{coev}$: $\operatorname{coev}\dashv \operatorname{ev}$. </p>
</article> 
</p>
<p>
Note that the adjunction unit and counit for $\operatorname{coev}\dashv \operatorname{ev}$ are not part of the required data: we just need to know that they exist. 
</p>
