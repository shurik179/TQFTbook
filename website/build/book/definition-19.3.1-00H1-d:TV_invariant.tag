<article class="env-definition" id="00H1">
  <p><a class="environment-identifier" href="/tag/00H1">Definition <span data-tag="00H1">19.3.1</span>.</a> Let $M$ be a combinatorial 3-manifold with boundary and $\mathcal{C}$ - a spherical category. Then for any coloring $l$, define a vector </p>
  <div class="equation">
  \[  Z(M,l) \in H( \partial M,l)  \]
</div>
  <p> by </p>
  <div class="equation">
  \[  Z(M,l) = \operatorname{ev}\left( \bigotimes _ F Z(F,l) \right)  \]
</div>
  <p> where </p>
  <p><ul>
  <li><p>
$F$ runs over all 3-cells in $M$, each taken with the induced orientation, so that 
</p>
<div class="equation">
  \[  \bigotimes _ F Z(F,l) \in \bigotimes _ F H(\partial F,l) = H(\partial M,l) \otimes \bigotimes _ c H(c',l) \otimes H(c'',l)  \]
</div>
</li><li><p>
$c$ runs over all unoriented 2-cells in the interior of $M$; $c'$,$c''$ are the two orientations of such a cell, so that $c'=\overline{c''}$. 
</p>
</li><li><p>
$\operatorname{ev}$ is the tensor product over all $c$ of evaluation maps $H(c',l)\otimes H(c'',l)=H(c',l)\otimes H(c',l)^* \rightarrow \mathbf{k}$ 
</p>
</li>
</ul></p>
  <p> Finally we define </p>
  <div class="equation">
  \[  Z(M)= \DD ^{-v (M)} \sum _{l} \left( Z( M,l) \prod _{e} d^{n_ e}_{l(e)} \right)  \]
</div>
  <p> where </p>
  <p><ul>
  <li><p>
the sum is taken over all equivalence classes of simple labelings of $M$, 
</p>
</li><li><p>
$e$ runs over the set of all ( unoriented ) edges of $M$, 
</p>
</li><li><p>
$\DD $ is the dimension of the category ( defined in Theorem&#160;<a href="/tag/00DP" data-tag="00DP">18.7.4</a>), and $v(M)=$number of internal vertices of $M$ + $\frac{1}{2}$(number of vertices on $\partial M$), 
</p>
</li><li><p>
$d_{l(e)} $ is the categorical dimension of $l(e)$, and 
</p>
<div class="equation">
  \[  n_ e = \begin{cases}  1,\quad e \text{ is an internal edge}\\  \tfrac {1}{2},\quad e\in \partial M \end{cases}  \]
</div>
</li>
</ul></p>
</article>