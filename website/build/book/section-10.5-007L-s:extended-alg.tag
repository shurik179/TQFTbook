<h2 id="s:extended-alg" class="tex-section"><span data-tag="007L">10.5</span> Extended TQFTs with values in $\mathbf{Alg}$</h2>

<p>
As a special case of the general theory above, let us describe the 2d extended TQFTs with values in the 2-category $\mathbf{Alg}$ defined in Example&#160;<a href="/tag/004D" data-tag="004D">7.1.2</a>. Recall that objects of that category are associative algebras over $\mathbf{k}$, and 1-morphisms are bimodules; monoidal structure is given by the usual tensor product of algebras. 
</p>
<p>
For simplicity, in the remainder of this section we assume that the ground field $\mathbf{k}$ has characteristic zero. 
</p>
<p>
Recall that by Theorem&#160;<a href="/tag/007J" data-tag="007J">10.4.2</a>, to define an extended 2d TQFT $Z\colon \mathbf{Bord}_2\to \mathcal{C}$, we need the following data: 
</p>
<ol>
  <li><p>
A coherent dual pair $(A,B, \operatorname{ev}, \operatorname{coev}, \alpha , \beta )$, where $A=Z(\bullet ^+)$ 
</p>
</li><li><p>
Adjunction data for $\operatorname{ev}\dashv \operatorname{coev}$, $\operatorname{coev}\dashv \operatorname{ev}$, i.e., 2-morphisms 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig06.svg" /></div>
<p>
 which must satisfy the adjunction relations (<a href="/tag/0054" data-tag="0054">8.1.1</a>) and an additional compatibility relation, the cusp flip relation. (In fact, any one of these 4 pieces of data uniquely determines the remaining three, if they exist). 
</p>
</li>
</ol>
<p>
Let us now apply it to the case when $\mathcal{C}$ is the 2-category $\mathbf{Alg}$. In this case, by the results of Section&#160;<a href="/tag/0062" data-tag="0062">9.1</a>, any algebra $A$ has a dual, the opposite algebra $B=A^{\mathrm{op}}$, with evaluation and coevaluation given by 
</p>
<div class="equation">
  \begin{align*}  \operatorname{ev}& = A_{A\otimes A^{\mathrm{op}}} \colon A\otimes A^{\mathrm{op}}\to \mathbf{k}\\  \operatorname{coev}& = {}_{A\otimes A^{\mathrm{op}}} A \colon \mathbf{k}\to A\otimes A^{\mathrm{op}}. \end{align*}
</div>
<p>
 This implies that for such a TQFT, we have 
</p>
<div class="equation">
  \[  Z(S^1)=A\otimes _{A^ e} A =A/[A,A]  \]
</div>
<p>
Moreover, in Section&#160;<a href="/tag/006F" data-tag="006F">9.3</a> we discussed the data needed to define adjunctions $\operatorname{ev}\dashv \operatorname{coev}$, $\operatorname{coev}\dashv \operatorname{ev}$. In particular, it was shown that the data of adjunction $\operatorname{ev}_ A\dashv \operatorname{coev}_ A$ is equivalent to defining on $A$ a structure of a symmetric Frobenius algebra (thus, $A$ must be finite-dimensional). Therefore, an extended 2d TQFT defines on $A$ a structure of a symmetric Frobenius algebra, with counit 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig07.svg" /></div>
<p>
 In this case, as discussed in the proof of Theorem&#160;<a href="/tag/006H" data-tag="006H">9.3.1</a>, the operator <img class="includegraphics" src="/static/figures/c10-eqfig11.svg" /> is given by 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig08.svg" /></div>
<p>
 where $x_ i, x^ i$ are dual bases in $A$ with respect to the Frobenius pairing $(a,b)=\varepsilon (ab)$. This makes it easier to see the role of all the copies of $A$ in $\eta _+$: they correspond to four vertical segments in the cobordism shown below. 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c10-fig04.svg" /> </div>
<p>
Similarly, 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig09.svg" /></div>
<p>
 define a separability idempotent $E=\sum \tilde x_ i C \tilde x^ i\in A\otimes A$ where $\tilde x_ i\otimes \tilde x^ i=\varepsilon _-(1\otimes 1)$, and $C=\eta _-(1)$, see Theorem&#160;<a href="/tag/006M" data-tag="006M">9.3.3</a>. 
</p>
<p>
We can now explain the role of the cusp flip relation. <article class="env-lemma" id="007M">
  <p><a class="environment-identifier" href="/tag/007M">Lemma <span data-tag="007M">10.5.1</span>.</a> The cusp flip relation is equivalent to the equality $\varepsilon _-=\eta _+$ (considered as a morphism of modules ${}_{A_1} A_{A_2}\otimes {}_{A^{\mathrm{op}}_3}A_{A^{\mathrm{op}}_4} \to {}_{A_1} A_{A_3}\otimes {}_{A_4}A_{A_2})$. </p>
</article> 
</p>
<p>
Thus, we arrive at the following theorem. 
</p>
<p>
<article class="env-theorem" id="007N">
  <p><a class="environment-identifier" href="/tag/007N">Theorem <span data-tag="007N">10.5.2</span>.</a> Let $Z$ be an extended 2d TQFT with values in the 2-category $\mathbf{Alg}$, and let $A=Z(\bullet ^+)$. Then $A$ is separable, $Z(S^1)\simeq A/[A,A]$, and $A$ has a structure of a symmetric Frobenius algebra, with counit $\varepsilon $, such that </p>
  <p><div class="centered"><img class="includegraphics" src="/static/figures/c10-eqfig10.svg" /></div></p>
  <p> where $x_ i, x^ i$ are dual bases in $A$ with respect to the Frobenius pairing, and $w=\sum x_ ix^ i$ is the Euler element. </p>
  <p>Conversely, every separable symmetric Frobenius algebra $A$ defines an extended 2d TQFT such that the formulas above hold. </p>
</article> 
</p>
<p>
In other words, an extended 2d TQFT is equivalent to a separable symmetric Frobenius algebra $A$. 
</p>
<p>
Note that “symmetric Frobenius algebra” is an additional structure on an algebra $A$, whereas “separable” is a property of the algebra $A$. 
</p>
