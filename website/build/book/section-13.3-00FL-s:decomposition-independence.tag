<h2 id="s:decomposition-independence" class="tex-section"><span data-tag="00FL">13.3</span> Independence of cell decomposition</h2>
<p>
 We had to use a cell decomposition in the last section to define the functor $Z$. Since cell decomposition is not a part of the actual defect TQFT data, we need to prove that the state sum construction is independent of our choice of cell decomposition. The key part of the proof is the following lemma. 
</p>
<p>
<article class="env-lemma" id="00GM">
  <p><a class="environment-identifier" href="/tag/00GM">Lemma <span data-tag="00GM">13.3.1</span>.</a> For two colored bordisms $M$ and $M'$, $Z(M) = Z(M')$ if the cell decompositions of $M$ and $M'$ are related by one of the following classes: </p>
  <p><ol>
  <li><p>
Addition of an edge with a vertex to a 2-gon 
</p>



<div class="centered"><img class="includegraphics" src="/static/figures/c13-eqfig02.svg" /></div>
</li><li><p>
Addition of an edge inside an n-gon 
</p>





<div class="centered"><img class="includegraphics" src="/static/figures/c13-eqfig03.svg" /></div>
<p>
Apart from the pentagons shown above, the other diagrams included in this local move are all the n-gons with $n \ge 3$. The domain wall can run between any two edges. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
Note that the defect can also be $A$ itself, which is the same as having no defect at all in the diagrams shown above. We sketch here proofs for two of these moves. Let's first consider a move that inserts an edge and a vertex in a 2-gon, as given in Figure&#160;<a href="/tag/00GN" data-tag="00GN">13.3.1</a>. 
</p>
<figure class="figure">
  <div class="centered"><p>
<img class="includegraphics" src="/static/figures/c13-fig13.svg" /> 
</p>
<figcaption class="figcaption">Figure 13.3.1. Example(I) of a local modification of cell decomposition used in Lemma&#160;<a href="/tag/00GM" data-tag="00GM">13.3.1</a></figcaption>

</div>

</figure>
<p>
The contribution to projector $P$ coming from the new edges $e_3$ and $e_4$ is: 
</p>
<div class="equation">
  \begin{align*}  P_{e_3} \otimes P_{e_4}: \mathbf{k}& \rightarrow (A_ b \otimes A_ b) \otimes (X_ x \otimes X_ x^*)\\  1 & \mapsto \sum _ i (b_ i' \otimes b_ i) \otimes \sum _ j (u_ j \otimes u_ j^*)\\ \end{align*}
</div>
<p>
The total contribution of cells $p_1$ and $p_2$ from the right picture is 
</p>
<div class="equation">
  \begin{align*} &  \sum _{i,j} \varphi (b_ i'.u_ j)\  u_ j^{*}(b_ i.x)\\ &  =\sum _{i,j} \varphi (b_ i'.u_ j (u_ j^{*}(b_ i.x) ))\\ &  =\sum _{i} \varphi \left(b_ i'.\sum _{j}u_ j (u_ j^{*}(b_ i.x)) \right)\\ &  =\sum _{i} \varphi (b_ i'.b_ i.x )\\ &  =\varphi (x) \end{align*}
</div>
<p>
 In the intermediate step, the $\sum _ j u_ j $ basis has been used to express the bimodule $b_ i.x$ as $b_ i.x= \sum _ j u_ j u_ j^*(b_ i.x)$. The original contribution of cell $p$, shown in the left part of the figure, is also $\varphi (x)$. Similarly we can show that the other local move that divides the 2-gon also leaves the functor $Z$ invariant. 
</p>
<p>
Now, let's consider another example of a local move, given in Figure&#160;<a href="/tag/00GP" data-tag="00GP">13.3.2</a>. 
</p>
<figure class="figure">
  <div class="centered"><p>
<img class="includegraphics" src="/static/figures/c13-fig14.svg" /> 
</p>
<figcaption class="figcaption">Figure 13.3.2. Example(II) of a local modification of cell decomposition used in Lemma&#160;<a href="/tag/00GM" data-tag="00GM">13.3.1</a></figcaption>

</div>

</figure>
<p>
The contribution to projector $P$ coming from the new edge $e_6$ is: 
</p>
<div class="equation">
  \begin{align*}  P_{e_6}: \mathbf{k}& \rightarrow X_ x \otimes X_ x^*\\  1 & \mapsto \sum _ j u_ j \otimes u_ j^*\\ \end{align*}
</div>
<p>
The total contribution of cells $p_1$ and $p_2$ from the right picture is 
</p>
<div class="equation">
  \begin{align*} &  \sum _{j} \varphi (b_1.b_2.u_ j)\  u_ j^{*}(x.a)\\ &  =\sum _{j} \varphi (b_1.b_2.u_ j u_ j^{*}(x.a) )\\ &  =\varphi (b_1.b_2.x.a) \end{align*}
</div>
<p>
 This contribution is the same as that of the original pentagon shown in the left part of the figure. The proof for the invariance of functor $Z$ under the remaining local moves can be constructed similarly. 
</p>
