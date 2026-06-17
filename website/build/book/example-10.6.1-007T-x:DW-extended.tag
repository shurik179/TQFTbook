<article class="env-example" id="007T">
  <p><a class="environment-identifier" href="/tag/007T">Example <span data-tag="007T">10.6.1</span>.</a> Let $G$ be a finite group, and let $A=\mathbf{k}[G]$ be its group algebra. Define the counit $\varepsilon \colon A\to \mathbf{k}$ by </p>
  <div class="equation">
  \[  \varepsilon (g)=\delta _{g,1} = \frac{1}{|G|}\operatorname{tr}_ R(g), \qquad g\in G,  \]
</div>
  <p> where $R$ is the regular representation (note the difference in normalization with (<a href="/tag/00EP" data-tag="00EP">6.2.9</a>)). </p>
  <p>This is a semisimple symmetric Frobenius algebra; thus, it defines an extended TQFT $Z_ A\colon \mathbf{Bord}_2\to \mathbf{Alg}$. </p>
  <p>For this algebra, $e=\sum x_ i\otimes x^ i$ is given by </p>
  <div class="equation">
  \[  e=\sum _ G g\otimes g^{-1}  \]
</div>
  <p> so that $w=\sum x_ ix^ i=|G|$; thus, the isomorphism (<a href="/tag/006T" data-tag="006T">9.3.9</a>) $A/[A,A]\to z(A)$ becomes </p>
  <div class="equation">
  \[  x\mapsto \sum gxg^{-1}  \]
</div>
  <p> and the projector onto $z(A)$ is given by $p(x)=\frac{1}{|G|} \sum gxg^{-1}$ which is, of course, a very familiar formula in representation theory. </p>
  <p>In this case, we see that under identification $Z_ A(S^1)\simeq z(\mathbf{k}[G])$, the counit becomes $\tilde\varepsilon (z)=\frac{1}{|G|^2}\operatorname{tr}_ R(z)$ (note normalization!) which matches (<a href="/tag/00EP" data-tag="00EP">6.2.9</a>). Thus, the corresponding non-extended TQFT is the Dijkgraaf–Witten TQFT discussed in Chapter&#160;<a href="/tag/003K" data-tag="003K">6</a>. </p>
</article>