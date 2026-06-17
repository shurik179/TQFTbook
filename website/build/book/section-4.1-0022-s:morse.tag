<h2 id="s:morse" class="tex-section"><span data-tag="0022">4.1</span> Morse theory basics</h2>

<p>
We start with an overview of Morse theory; details can be found, e.g., in <span class="cite">[<a href="/bibliography/matsumoto">Mat2002</a>]</span>. 
</p>
<p>
Recall that given a smooth real-valued function $f$ on an $n$-dimensional manifold $M$, a point $p\in M$ is a <em>non-degenerate critical point</em>  if $\partial _ i f (p)=0$ and the Hessian matrix $a_{ij}=\frac{\partial ^2 f}{\partial x^ i \partial x^ j}(p)$ is non-degenerate. It is easy to see that this is independent of the choice of coordinate system. It is also known that in such a case, one can choose local coordinates in a neighborhood of $p$ so that 
</p>
<div class="equation" id="00EH">
    <span class="equation-label"><a href="/tag/00EH" data-tag="00EH">4.1.1</a></span>
    <div>\begin{equation} \label{e:crit-point} f(x^1, \dots , x^ n)=c-(x^1)^2 -\dots -(x^ r)^2 + (x^{r+1})^2+ \dots + (x^ n)^2 \end{equation}</div>
</div>
<p>
 (this statement is usually called the <em>Morse lemma</em>). The number $r$ of minuses in (<a href="/tag/00EH" data-tag="00EH">4.1.1</a>) is called the <em>index</em> of the critical point. 
</p>
<p>
It is immediate from the definition that a non-degenerate critical point is isolated; thus, if $M$ is compact, there can be only finitely many non-degenerate critical points. 
</p>
<p>
<article class="env-definition" id="0024">
  <p><a class="environment-identifier" href="/tag/0024">Definition <span data-tag="0024">4.1.1</span>.</a> Let $M$ be a closed $n$-manifold. A Morse function is a smooth function $f\colon M\to \mathbb {R}$ such that all critical points of $f$ are non-degenerate. </p>
</article> 
</p>
<p>
It will be more useful to impose a stronger condition. 
</p>
<p>
<article class="env-definition" id="0025">
  <p><a class="environment-identifier" href="/tag/0025">Definition <span data-tag="0025">4.1.2</span>.</a> Let $M$ be a closed $n$-manifold. A Morse function $f\colon M\to \mathbb {R}$ is called <em>excellent</em> if all critical values $c_ i=f(p_ i)$ are distinct. </p>
</article> 
</p>
<p>
It was proved by Morse that such functions exist; moreover, the set $\mathcal{F}^0$ of excellent functions is an open and dense subset in $C^\infty (M)$ (in an appropriate topology). 
</p>
<p>
We can generalize the notion of excellent functions to manifolds with boundary, or to cobordisms $N_0\Rightarrow  N_1$. 
</p>
<p>
<article class="env-definition" id="0026">
  <p><a class="environment-identifier" href="/tag/0026">Definition <span data-tag="0026">4.1.3</span>.</a> Let $N_0\Rightarrow  N_1$ be an $n$-dimensional cobordism. A Morse function on $M$ is a smooth function $f\colon M\to \mathbb {R}$ such that </p>
  <p><ul>
  <li><p>
$f$ is constant on both in-boundary and out-boundary: $f|_{N_0}=a_0=\min _ M f$, $f|_{N_1}=a_1=\max _ M f$ 
</p>
</li><li><p>
All critical points of $f$ are in the interior $M\setminus (N_0\cup N_1)$, and all critical points are non-degnerate. 
</p>
</li>
</ul></p>
  <p> If, in addition, all critical values of $f$ are distinct, then $f$ is called <em>excellent</em>. </p>
</article> Again, one can prove that such functions exist and form an open dense subset of all functions satisfying $f|_{N_0}=a_0$, $f|_{N_1}=a_1$. 
</p>
<p>
The main result of Morse theory is that given an excellent function $f$, the topology of the manifold $M_ t=f^{-1}((-\infty , t])$ does not change between critical values: if $c_ i&lt;c_{i+1}$ are critical values, with no other critical values between them, then for all $t\in I=[c_ i+\varepsilon , c_{i+1}-\varepsilon ]$, the manifolds $M_ t$ are diffeomorphic, and $M_ I=f^{-1}(I)\xrightarrow {\sim }N_{t_0} \times I$, where $N_{t_0}=f^{-1}(t_0)$ is a slice for any $t_0\in I$. Moreover, one can give an explicit description of how topology of $M_ t$ changes when one goes through a critical point (this is usually referred to as “attaching a handle”). In particular, this implies that if $f$ has no critical points, then $M$ is a cylinder: $M\xrightarrow {\sim }N\times I$. 
</p>
<p>
Therefore, one can use Morse functions to decompose a cobordism as a composition of “elementary” cobordisms. <article class="env-definition" id="0027">
  <p><a class="environment-identifier" href="/tag/0027">Definition <span data-tag="0027">4.1.4</span>.</a> An elementary cobordism is a cobordism that admits a Morse function with a single critical point. </p>
</article> 
</p>
<p>
Thus, given an excellent function with critical values $c_1&lt;\dots &lt;c_ k$, and values on the boundary $f|_{N_0}=a_0&lt;c_1$, $f|_{N_1}=a_ k&gt;c_ k$, we can choose intermediate values $a_ i\in (c_ i, c_{i+1})$; then we have 
</p>
<div class="equation" id="00EJ">
    <span class="equation-label"><a href="/tag/00EJ" data-tag="00EJ">4.1.2</a></span>
    <div>\begin{equation} \label{e:morse-decomposition} M=M_ k\circ \dots \circ M_1, \end{equation}</div>
</div>
<p>
 where $M_ i=f^{-1}([a_{i-1}, a_ i])$ is the elementary cobordism containing critical point $p_ i$. It follows from the result above that up to isomorphism, $M_ i$ does not depend on the choice of $a_ i$. We will refer to (<a href="/tag/00EJ" data-tag="00EJ">4.1.2</a>) as a <em>Morse decomposition</em> of a cobordism. 
</p>
<p>
In particular, for $n=2$, each connected elementary cobordism is isomorphic to one of the four cobordisms shown in Table&#160;<a href="/tag/0029" data-tag="0029">4.1.1</a>. Note that here we follow our convention that cobordisms go “top to bottom”; thus, the $y$-axis is directed downward, so that the minimal value of $f$ is at the top, and the maximal, at the bottom. 
</p>
 <div class="centered"><table class="tabular">
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black; border-left:1px solid black"
        rowspan=""
        colspan="">
      <p>
 Index 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 Elementary cobordism 
</p>

    </td>
  </tr>
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black; border-left:1px solid black"
        rowspan=""
        colspan="">
      <p>
 0 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 <img class="includegraphics" src="/static/figures/c4-fig03.svg" /> 
</p>

    </td>
  </tr>
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black; border-left:1px solid black"
        rowspan=""
        colspan="">
      <p>
 1 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 <img class="includegraphics" src="/static/figures/c4-fig04.svg" /> &#8195;&#8195;<img class="includegraphics" src="/static/figures/c4-fig05.svg" /> 
</p>

    </td>
  </tr>
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black; border-left:1px solid black; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
 2 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
 <img class="includegraphics" src="/static/figures/c4-fig06.svg" /> 
</p>

    </td>
  </tr>
</table> <figcaption class="figcaption">Table 4.1.1. Connected elementary $2$-cobordisms</figcaption>  </div>
<p>
 A (not necessarily connected) elementary cobordism is obtained as a disjoint union of one of the connected elementary cobordisms and several copies of the identity cobordism, i.e., $S^1\times I$. 
</p>
<p>
Thus, we see that a choice of an excellent function gives a presentation of a 2-cobordism as a composition of the generators shown in Table&#160;<a href="/tag/0029" data-tag="0029">4.1.1</a> (and identity cobordisms). 
</p>
