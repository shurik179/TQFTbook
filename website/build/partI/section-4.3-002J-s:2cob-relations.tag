<h2 id="s:2cob-relations" class="tex-section"><span data-tag="002J">4.3</span> Generators and relations of $\mathbf{Cob}_2$</h2>

<p>
Now let us apply the general theory above to the question of classification of 2d TQFTs. 
</p>
<p>
First, choosing an excellent Morse function on a 2d cobordism $M$, we get a decomposition of $M$ into a composition of elementary cobordisms. Each elementary cobordism is a disjoint union of copies of the connected elementary cobordisms; and each connected elementary cobordism is isomorphic to one of the standard cobordisms shown in Table&#160;<a href="/tag/0029" data-tag="0029">4.1.1</a>: pair of pants, copants, cap, and cup. 
</p>
<p>
Let us denote by $A=Z(S^1)$ the vector space associated to the circle, and by $m, i, \Delta , \varepsilon $ the linear operators corresponding to the standard cobordisms as shown below. 
</p>
<div class="equation" id="002K">
    <span class="equation-label"><a href="/tag/002K" data-tag="002K">4.3.1</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c4-eqfig01.svg"></div>
</div>
<p>
Then a choice of an excellent Morse function $f$ on $M$, together with a choice of isomorphism $\varphi _ i$ of each of the connected elementary cobordisms defined by $f$ with one of the “standard” ones, gives us a presentation of $Z(M)$ as a composition of tensor products of operators $m, i, \Delta , \varepsilon $ (and the identity operator $\operatorname{id}_ A$). Therefore, the structure of TQFT is completely determined by these 4 operators. Note also that $m$ and $\Delta $ are symmetric: $m\circ P= m$, where $P\colon A\otimes A\to A\otimes A$ is the permutation $P(a\otimes b)= b\otimes a$. Indeed, this follows from the isomorphism of cobordisms shown below: the standard copants surface admits a self-diffeomorphism (a $180^\circ $ rotation about its central vertical axis) that swaps the two input boundary circles and fixes the output boundary circle. 
</p>
<div class="equation" id="00F2">
    <span class="equation-label"><a href="/tag/00F2" data-tag="00F2">4.3.2</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c4-fig13.svg"></div>
</div>
<p>
 The analogous argument applied to the pants surface (turn the picture upside down) gives $P\circ \Delta = \Delta $. 
</p>
<p>
Next, observe that the choice of isomorphisms $\varphi _ i$ is in fact irrelevant. Indeed, since any orientation-preserving diffeomorphism $\varphi $ of $S^1$ is isotopic to the identity, by Lemma&#160;<a href="/tag/001V" data-tag="001V">3.4.2</a> its action on $A$ is trivial: $\varphi _*=\operatorname{id}_ A$. From this it immediately follows that if $M$ is topologically a disk, considered as a cobordism $\varnothing \Rightarrow  S^1$ (i.e., a cap), then the operator $Z(M)\colon \mathbf{k}\to A$ does not depend on the choice of the isomorphism of $M$ with the standard cap; a similar result holds for the cup. 
</p>
<p>
If $M$ is a cobordism $S^1\sqcup S^1\to S^1$ which is isomorphic to the standard pair of pants, there are just two isomorphisms up to isotopy; one is obtained from the other by composing with the diffeomorphism that interchanges the two circles that form the in-boundary. But since $m$ is symmetric as discussed above, both choices of isomorphism give us the same operator $Z(M)=m\colon A\otimes A\to A$. A similar statement holds for the cobordism $S^1\Rightarrow  S^1\sqcup S^1$. 
</p>
<p>
Summarizing, we see that for any cobordism $M$, the presentation of $Z(M)$ as a composition of tensor products of $m, i, \Delta , \varepsilon $ only depends on the choice of an excellent Morse function and does not depend on any additional data. 
</p>
<p>
Thus, to check that $Z(M)$ does not depend on any choices, we need to check that $Z(M)$ is invariant under the Cerf moves described in Theorem&#160;<a href="/tag/002H" data-tag="002H">4.2.2</a>. Let us analyze what these moves look like for $n=2$. 
</p>
<p>
The birth-death moves (type $\alpha $) are easily seen to be of one of the following two types: 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c4-eqfig02.svg" /></div>
<p>
Now let us consider the crossing move. Assume that we have a family of Morse functions $f_ s$ and two critical points $p_1, p_2$ such that for $s&lt;0$, $c_1&lt;c_2$, for $s&gt;0$, $c_1&gt;c_2$, and for $s=0$, $c_1=c_2=c$. Choose some $a_0&lt;c$, $a_1&gt;c$ and consider the (non-elementary) cobordism $M=f_{0}^{-1}[a_0, a_1]$. 
</p>
<p>
Since operators of the form $X\otimes 1$ and $1\otimes Y$ commute anyway, if the points $p_1, p_2$ are in different connected components of the cobordism $M$, then the crossing move does not give any new conditions on $m, i, \Delta , \varepsilon $. Therefore, we only need to consider the case when the two critical points $p_1, p_2$ are in the same connected component of the critical level set $S=f_0^{-1}(c)$. This immediately implies that each of the critical points is of index 1. 
</p>
<p>
The set $S$ is a smooth curve except at critical points, where $S$ looks like a coordinate cross; thus, $S$ is a graph with two 4-valent vertices $p_1$, $p_2$. Moreover, since $M$ is oriented, we can define an orientation on $S$ (for example, defining the tangent vector $v$ to $S$ by the condition that $(v, \operatorname{grad}f)$ is a positively oriented frame). Orientation also gives a cyclic order of edges at each vertex $p_ i$. Using Morse lemma, it is easy to see that near each critical points $S$ looks as shown below: 
</p>
<div class="equation" id="00F3">
    <span class="equation-label"><a href="/tag/00F3" data-tag="00F3">4.3.3</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c4-fig14.svg"></div>
</div>
<p>
<article class="env-lemma" id="002L">
  <p><a class="environment-identifier" href="/tag/002L">Lemma <span data-tag="002L">4.3.1</span>.</a> Let $S$ be a connected directed graph with two vertices $p_1, p_2$ of degree 4, together with a cyclic order of edges at each vertex, such that near each vertex it is locally isomorphic to the graph shown in (<a href="/tag/00F3" data-tag="00F3">4.3.3</a>). </p>
  <p>Then $S$ is isomorphic to one of the four graphs shown in Figure&#160;<a href="/tag/002M" data-tag="002M">4.3.1</a>, and their orientation reversals. </p>
</article> The proof of this lemma is an elementary combinatorics argument; we leave details to the reader. 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c4-fig15.svg" /> 
</p>
<figcaption class="figcaption">Figure 4.3.1. Possible shapes of critical level set $S$. Note that for the last graph, intersection points are not vertices.</figcaption>


</figure>
<p>
Each of these graphs uniquely determines the corresponding connected component of the cobordism $M=f_0^{-1}(c-\varepsilon , c+\varepsilon )$; we can recover it by replacing each arc of the graph by a thin ribbon. For example, for graph A, the corresponding cobordism is shown below (for reader's convenience, we also show it in a more familiar form): 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c4-eqfig03.svg" /></div>
<p>
In this case, one easily sees that the corresponding Cerf move is given by 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c4-eqfig04.svg" /></div>
<p>
 Reversing the orientation of the graph $A$ is equivalent to flipping the picture in the vertical direction, which gives the Cerf move below: 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c4-eqfig05.svg" /></div>
<p>
Similarly, graph $B$ gives the following Cerf move: 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c4-eqfig06.svg" /></div>
<p>
Graphs $C$ and $D$ are less obvious. For $C$, the cobordism $M$ is of type 2-2: it is a surface of genus zero, with two circles as in-boundary, and two circles as out-boundary. However, in this case, the Cerf move looks like: 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c4-eqfig07.svg" /></div>
<p>
 In other words, both for $s&lt;0$ and for $s&gt;0$ in the family of Morse functions $f_ s$, the corresponding Morse decomposition of the cobordism is a composition of copants and pants. Thus, it gives no new conditions on $m, \Delta $. 
</p>
<p>
Similarly, graph $D$ gives a cobordism of genus 1 from $S^1$ to $S^1$; again, in this case both for $s&lt;0$ and for $s&gt;0$ the Morse decomposition looks like 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c4-eqfig08.svg" /></div>
<p>
 and thus the corresponding Cerf move gives no new conditions on $m,\Delta $. 
</p>
<p>
Summarising, we see that the non-trivial Cerf moves (both birth-death and crossings) for $n=2$ are shown in Figure&#160;<a href="/tag/002N" data-tag="002N">4.3.2</a>. In this table, we also include the algebraic identities on the operators $m, i, \Delta , \varepsilon $ (defined by (<a href="/tag/002K" data-tag="002K">4.3.1</a>)) corresponding to each of the moves. 
</p>
<figure class="figure">
  <div class="centered"> <table class="tabular">
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left"
        rowspan=""
        colspan="">
      <p>
 <strong>Name</strong> 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:center"
        rowspan=""
        colspan="">
      <p>
 <strong>Cerf move</strong> 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left"
        rowspan=""
        colspan="">
      <p>
 <strong>Algebraic identity</strong>
</p>

    </td>
  </tr>
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left"
        rowspan=""
        colspan="">
      <p>
 Unit 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:center"
        rowspan=""
        colspan="">
      <p>
 <img class="includegraphics" src="/static/figures/c4-fig16.svg" /> 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left"
        rowspan=""
        colspan="">
      <p>
 $m\circ (i\otimes \operatorname{id}_ A) = \operatorname{id}_ A$
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
 Counit 
</p>

    </td>
    <td  style="text-align:center"
        rowspan=""
        colspan="">
      <p>
 <img class="includegraphics" src="/static/figures/c4-fig17.svg" /> 
</p>

    </td>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
 $(\varepsilon \otimes \operatorname{id}_ A)\circ \Delta = \operatorname{id}_ A$
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
 Associativity 
</p>

    </td>
    <td  style="text-align:center"
        rowspan=""
        colspan="">
      <p>
 <img class="includegraphics" src="/static/figures/c4-fig18.svg" /> 
</p>

    </td>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
 $m\circ (m\otimes \operatorname{id}_ A) = m\circ (\operatorname{id}_ A\otimes m)$
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
 Coassociativity 
</p>

    </td>
    <td  style="text-align:center"
        rowspan=""
        colspan="">
      <p>
 <img class="includegraphics" src="/static/figures/c4-fig19.svg" /> 
</p>

    </td>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
 $(\Delta \otimes \operatorname{id}_ A)\circ \Delta = (\operatorname{id}_ A\otimes \Delta )\circ \Delta $
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:left; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
 Frobenius 
</p>

    </td>
    <td  style="text-align:center; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
 <img class="includegraphics" src="/static/figures/c4-fig20.svg" /> 
</p>

    </td>
    <td  style="text-align:left; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
 $\begin{aligned}  \Delta \circ m & = (m\otimes \operatorname{id}_ A)\circ (\operatorname{id}_ A\otimes \Delta )\\ & = (\operatorname{id}_ A\otimes m)\circ (\Delta \otimes \operatorname{id}_ A) \end{aligned}$
</p>

    </td>
  </tr>
</table> <figcaption class="figcaption">Figure 4.3.2. Cerf moves in dimension 2 and the corresponding algebraic identities</figcaption> </div>

</figure>
<p>
It is easy to see that the identities given by the unit and associativity moves are equivalent to the statement that $m, i$ define on $A=Z(S^1)$ a structure of an associative algebra. Similarly, coassociativity and counit say that $\Delta , \varepsilon $ define on $A$ a structure of coassocaitive coalgebra. 
</p>
<p>
Combining these identities with the symmetry relations $m\circ P = m$, $P\circ \Delta = \Delta $ established in (<a href="/tag/00F2" data-tag="00F2">4.3.2</a>), we obtain the following theorem. 
</p>
<p>
<article class="env-theorem" id="002P">
  <p><a class="environment-identifier" href="/tag/002P">Theorem <span data-tag="002P">4.3.2</span>.</a> A 2d TQFT is equivalent to the following collection of data. </p>
  <p><ul>
  <li><p>
A vector space $A=Z(S^1)$. 
</p>
</li><li><p>
Linear maps $m\colon A\otimes A\to A$, $i\colon \mathbf{k}\to A$. 
</p>
</li><li><p>
Linear maps $\Delta \colon A\to A\otimes A$, $\varepsilon \colon A\to \mathbf{k}$. 
</p>
</li>
</ul></p>
  <p> This data has to satisfy the following conditions: </p>
  <p><ul>
  <li><p>
$(A,m, i)$ is a commutative algebra with unit; as usual, we will use the notation $ab$ as a shorthand for $m(a\otimes b)$. 
</p>
</li><li><p>
$(A,\Delta , \varepsilon )$ is a cocommutative coalgebra with counit. 
</p>
</li><li><p>
The Frobenius condition 
</p>
<div class="equation" id="002Q">
    <span class="equation-label"><a href="/tag/002Q" data-tag="002Q">4.3.6</a></span>
    <div>\begin{equation} \label{e:frobenius} \Delta (a_1 a_2) = (a_1\otimes 1) \Delta (a_2)= \Delta (a_1)(1\otimes a_2). \end{equation}</div>
</div>
</li>
</ul></p>
</article> 
</p>
<p>
<article class="env-remark" id="00FC">
  <p><a class="environment-identifier" href="/tag/00FC">Remark <span data-tag="00FC">4.3.1</span>.</a> Since $\Delta , m$ are symmetric, any one of the two Frobenius relations implies the other; we include both for use in the more general case. </p>
</article> 
</p>
<p>
<article class="env-remark" id="00FD">
  <p><a class="environment-identifier" href="/tag/00FD">Remark <span data-tag="00FD">4.3.2</span>.</a> Note that commutativity of $m$ and cocommutativity of $\Delta $ do not come from any of the Cerf moves in Figure&#160;<a href="/tag/002N" data-tag="002N">4.3.2</a>; they follow from the symmetric-pants argument (<a href="/tag/00F2" data-tag="00F2">4.3.2</a>) (and its mirror image), which in turn reflects the symmetric monoidal structure of $\mathbf{Cob}_2$. </p>
</article> 
</p>
<p>
A standard way to restate the above theorem is using the notion of Frobenius algebra. <article class="env-definition" id="002R">
  <p><a class="environment-identifier" href="/tag/002R">Definition <span data-tag="002R">4.3.1</span>.</a> A Frobenius algebra is a vector space over a field $\mathbf{k}$ with two structures: </p>
  <p><ul>
  <li><p>
A structure of an associative algebra, with multiplication $m$ and unit $i\colon \mathbf{k}\to A$. 
</p>
</li><li><p>
A structure of a coassociative coalgebra, with comultiplication $\Delta $ and counit $\varepsilon \colon A\to \mathbf{k}$. 
</p>
</li>
</ul></p>
  <p> These two structures must satisfy the Frobenius condition (<a href="/tag/002Q" data-tag="002Q">4.3.6</a>). </p>
</article> Note that in this definition, we do not assume that $A$ is commutative or cocommutative. 
</p>
<p>
Then Theorem&#160;<a href="/tag/002P" data-tag="002P">4.3.2</a> can be rewritten as follows. <article class="env-theorem" id="002S">
  <p><a class="environment-identifier" href="/tag/002S">Theorem <span data-tag="002S">4.3.3</span>.</a> A 2d TQFT is equivalent to a commutative, cocommutative Frobenius algebra. </p>
</article> In the next section we will show that cocommutativity follows from commutativity, so it is enough to require $A$ to be commutative; see Corollary&#160;<a href="/tag/0035" data-tag="0035">5.1.2</a>. 
</p>
<p>
<br /> 
</p>
