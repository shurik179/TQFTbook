<article class="env-example" id="000T">
  <p><a class="environment-identifier" href="/tag/000T">Example <span data-tag="000T">2.3.6</span>.</a> Recall the category of $G$-graded vector spaces $\mathbf{Vec}_ G$ defined in Example&#160;<a href="/tag/000L" data-tag="000L">2.3.3</a>. This category has a generalization. Namely, let $\omega \colon G\times G\times G\to \mathbf{k}^\times $ be a 3-cocycle, i.e., a function satisfying the condition </p>
  <div class="equation">
  \[  \omega (g_1g_2, g_3, g_4)\omega (g_1, g_2, g_3g_4) = \omega (g_1, g_2, g_3) \omega (g_1, g_2g_3, g_4)\omega (g_2, g_3, g_4).  \]
</div>
  <p> Consider the category $\mathbf{Vec}^\omega _ G$ which coincides with $\mathbf{Vec}_ G$ as an abelian category; moreover, it has the same tensor product functor $\otimes $ and unit object $\mathbf{1}=\mathbf{k}_1$. However, the associativity and unit isomorphisms are different: namely, $\alpha \colon (V\otimes W)\otimes U \to V \otimes (W\otimes U)$ is given by </p>
  <div class="equation">
  \[  \alpha ((v \otimes w) \otimes u )= \omega (g,h,m) v \otimes (w\otimes u), \qquad v\in V_ g, w\in W_ h, u\in U_ m,  \]
</div>
  <p> and the unit isomorphisms $l_ V\colon \mathbf{1}\otimes V\to V$, $r_ V\colon V\otimes \mathbf{1}\to V$ are given by </p>
  <div class="equation">
  \[  l_ V(1\otimes v)=\omega (1,1,g)^{-1}\,  v, \qquad r_ V(v\otimes 1)=\omega (g,1,1)\,  v, \qquad v\in V_ g.  \]
</div>
  <p> The cocycle condition immediately implies that the $\alpha $ so defined satisfies the pentagon axiom. Moreover, taking $(g_1,g_2,g_3,g_4)=(g,1,1,h)$ in the cocycle condition gives $\omega (g,1,h)=\omega (g,1,1)\, \omega (1,1,h)$, which is exactly the triangle axiom (<a href="/tag/00EU" data-tag="00EU">2.3.1</a>) for these $\alpha $, $l$, $r$. (If $\omega (g,1,h)=1$ for all $g,h$, then $l$ and $r$ are the usual unit isomorphisms of $\mathbf{Vec}_ G$; for a general 3-cocycle, however, the usual unit isomorphisms would violate the triangle axiom.) </p>
</article>