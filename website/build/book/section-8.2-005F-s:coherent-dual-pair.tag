<h2 id="s:coherent-dual-pair" class="tex-section"><span data-tag="005F">8.2</span> Dual objects in 2-categories</h2>

<p>
Let us now talk about dual objects in $\mathcal{C}$. It only makes sense if $\mathcal{C}$ has a monoidal structure; thus, in this section we assume that $\mathcal{C}$ is a monoidal weak 2-category. 
</p>
<p>
Recall that in a (usual) monoidal category, we defined a dual pair as the data $(A,B, \operatorname{ev}, \operatorname{coev})$, where $\operatorname{ev}\colon A\otimes B\to \mathbf{1}$, $\operatorname{coev}\colon \mathbf{1}\to B\otimes A$ are morphisms satisfying the zigzag (or rigidity) relations $z_ A= 1_ A$, $z_ B = 1_ B$, where 
</p>
<div class="equation" id="005G">
    <span class="equation-label"><a href="/tag/005G" data-tag="005G">8.2.1</a></span>
    <div>\begin{equation} \label{e:zigzags} \begin{aligned}  z_ A& = (A\xrightarrow {1_ A\otimes \operatorname{coev}} A\otimes B \otimes A \xrightarrow {\operatorname{ev}\otimes 1_ A} A)\\  z_ B & = (B \xrightarrow {\operatorname{coev}\otimes 1_ B} B\otimes A \otimes B \xrightarrow {1_ B\otimes \operatorname{ev}} B) \end{aligned} \end{equation}</div>
</div>
<p>
 (see Definition&#160;<a href="/tag/001F" data-tag="001F">3.3.1</a>). 
</p>
<p>
We now want to upgrade this definition, defining the notion of a dual pair in a monoidal weak 2-category. In this case, it makes no sense to require $z_ A=1_ A$, $z_ B=1_ B$; instead, we need isomorphisms $\alpha \colon z_ A\to 1_ A$, $\beta \colon z_ B\to 1_ B$. Moreover, it is natural to expect that these isomorphisms themselves should satisfy some compatibility relations. Following <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>]</span>, we will impose the following relations. 
</p>
<p>
Let $zz_+$ be the “double zigzag” 1-morphism 
</p>
<div class="equation" >
    <span class="equation-label">8.2.4</span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c8-eqfig01.svg"></div>
</div>
<p>
 (we have turned the picture 90 degrees counterclockwise, to match our convention that in 2-categories, 1-morphisms go “from left to right”). 
</p>
<p>
Then we have two different 2-morphisms $zz_+\to \operatorname{ev}$: $\alpha \otimes 1$, obtained by using $\alpha $ on the lower part of zigzag, and $1\otimes \beta $, obtained by using $\beta $ on the top part of zigzag (we leave it to the reader to write them algebraically). 
</p>
<p>
It is natural to require that these 2-morphisms are equal: 
</p>
<div class="equation" id="00F7">
    <span class="equation-label"><a href="/tag/00F7" data-tag="00F7">8.2.5</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c8-fig05.svg"></div>
</div>
<p>
 Similarly, we can define a 1-morphism $zz_-\colon \mathbf{1}\to B\otimes A$ by the picture below 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c8-eqfig02.svg" /></div>
<p>
 As with $zz_+$, there are two different 2-morphisms $zz_-\to \operatorname{coev}$, and we require that they are equal: 
</p>
<div class="equation" id="00F8">
    <span class="equation-label"><a href="/tag/00F8" data-tag="00F8">8.2.6</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c8-fig06.svg"></div>
</div>
<p>
 We will call relations (<a href="/tag/00F7" data-tag="00F7">8.2.5</a>), (<a href="/tag/00F8" data-tag="00F8">8.2.6</a>) <em>swallowtail relations</em>. The name comes from their geometric interpretation in terms of 2-cobordisms, which we will discuss in the next section. 
</p>
<p>
Thus, we are led to the following definition (we use the terminology of <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>]</span>). 
</p>
<p>
<article class="env-definition" id="005H">
  <p><a class="environment-identifier" href="/tag/005H">Definition <span data-tag="005H">8.2.1</span>.</a> A <em>coherent dual pair</em> in a weak monoidal 2-category $\mathcal{C}$ is the following collection of data: </p>
  <p><ul>
  <li><p>
Objects $A, B\in \mathcal{C}$. 
</p>
</li><li><p>
1-morphisms $\operatorname{ev}\colon A\otimes B\to \mathbf{1}$, $\operatorname{coev}\colon \mathbf{1}\to B\otimes A$. 
</p>
</li><li><p>
Invertible 2-morphisms $\alpha \colon z_ A\to 1_{A}$, $\beta \colon z_ B\to 1_{B}$, where $z_ A$, $z_ B$ are defined by (<a href="/tag/005G" data-tag="005G">8.2.1</a>). 
</p>
</li>
</ul></p>
  <p> such that $\alpha , \beta $ satisfy the swallowtail relations (<a href="/tag/00F7" data-tag="00F7">8.2.5</a>), (<a href="/tag/00F8" data-tag="00F8">8.2.6</a>). </p>
  <p>In this case, we say that $B$ is a right dual of $A$, and $A$ is a left dual of $B$. </p>
</article> 
</p>
<p>
<article class="env-lemma" id="005J">
  <p><a class="environment-identifier" href="/tag/005J">Lemma <span data-tag="005J">8.2.1</span>.</a> Let $(A, B, \operatorname{ev}, \operatorname{coev}, \alpha , \beta )$ be as in the definition of coherent dual pair, but without the swallowtail relations. Then one can replace $\beta $ by another 2-isomorphism $\tilde\beta $ so that $(A, B, \operatorname{ev}, \operatorname{coev}, \alpha , \tilde\beta )$ is a coherent dual pair. </p>
</article> 
</p>
<p>
In other words, if you have any isomorphisms $z_ A\to 1_ A$, $z_ B\to 1_ B$, then you can modify one of them to satisfy the swallowtail relations. 
</p>
<p>
The proof of this lemma is similar to Lemma&#160;<a href="/tag/005E" data-tag="005E">8.1.4</a>, where we also argued that given a pair of isomorphisms, we can modify one of them to satisfy an additional consistency requirement (in that case, the adjunction property). We refer the reader to <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>, <span class="postnote">Theorem 2.7</span>]</span> for details of the proof. 
</p>
<p>
Recall that for a weak 2-category $\mathcal{C}$, we defined a (usual) category $h\mathcal{C}$ by making 1-morphisms that were isomorphic in $\mathcal{C}$ equal in $h\mathcal{C}$, see Definition&#160;<a href="/tag/004S" data-tag="004S">7.2.2</a>. Then Lemma&#160;<a href="/tag/005J" data-tag="005J">8.2.1</a> implies that any dual pair $(A,B, \operatorname{ev}, \operatorname{coev})$ in $h\mathcal{C}$ can be “upgraded” to a coherent dual pair in $\mathcal{C}$. In particular, this implies the following. 
</p>
<p>
<article class="env-corollary" id="005K">
  <p><a class="environment-identifier" href="/tag/005K">Corollary <span data-tag="005K">8.2.2</span>.</a> An object $A\in \mathcal{C}$ has a right (respectively, left) dual in $\mathcal{C}$ if and only if it has the right (respectively, left) dual in the homotopy category $h\mathcal{C}$. </p>
</article> 
</p>
<p>
We can also ask whether, for a given $A$, all coherent dual pairs including it are equivalent. To do that, we define the notion of an isomorphism of dual pairs, which consists of a pair of isomorphisms of objects and 2-isomorphisms between evaluation and coevaluation; details can be found in <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>, <span class="postnote">Section 2.2</span>]</span>. 
</p>
<p>
<article class="env-theorem" id="005L">
  <p><a class="environment-identifier" href="/tag/005L">Theorem <span data-tag="005L">8.2.3</span>.</a> Let $A$ be an object in $\mathcal{C}$, and let $(A,B, \dots )$, $(A, B', \dots )$ be two coherent dual pairs including $A$. Then there exists an isomorphism between them which is identity on $A$. </p>
</article> 
</p>
<p>
(This is a simplified version; a more accurate statement, which also answers the question of whether such an isomorphism is unique, is given in <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>, <span class="postnote">Theorem 2.14</span>]</span> and says that the 2-groupoid of coherent dual pairs is equivalent to the 2-groupoid of objects in $\mathcal{C}$ which have a right dual.) 
</p>
<p>
In summary, we see that any dual pair in $h\mathcal{C}$ can be “upgraded” to a coherent dual pair in $\mathcal{C}$, and any two such upgrades are isomorphic. Thus, producing such a coherent dual pair is essentially equivalent to producing an object $A\in \mathcal{C}$ which has a right dual in $h\mathcal{C}$. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">8.2.1</span>.</a>In all our discussions in this section, we ignored associativity and unit isomorphisms in the monoidal 2-category $\mathcal{C}$. Technically speaking, this is not correct, and we must include them. Unfortunately, if we do that, all diagrams become hopelessly complicated — for example, here is the diagram of one of the swallowtail relations in all glorious detail, taken from <span class="cite">[<a href="/bibliography/pstragowski">Pst2022</a>]</span>: </p>
  <p><img class="includegraphics" src="swallowtail.pdf" /> </p>
</article> 
</p>
<p>
Finally, we give the following definitions. 
</p>
<p>
<article class="env-definition" id="005M">
  <p><a class="environment-identifier" href="/tag/005M">Definition <span data-tag="005M">8.2.2</span>.</a> A symmetric monoidal weak 2-category $\mathcal{C}$ is called a <em>category with duals</em> if </p>
  <p><ol>
  <li><p>
Every object $A\in \mathcal{C}$ is rigid, i.e., has a dual in $\mathcal{C}$. 
</p>
</li><li><p>
Every 1-morphism has both left and right adjoints. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
<article class="env-definition" id="005N">
  <p><a class="environment-identifier" href="/tag/005N">Definition <span data-tag="005N">8.2.3</span>.</a> An object $A$ in a symmetric monoidal weak 2-category $\mathcal{C}$ is called <em>fully dualizable</em> if it lies in some subcategory $\mathcal{D}\subset \mathcal{C}$ which is a category with duals. </p>
</article> 
</p>
<p>
It is not difficult to show (see <span class="cite">[<a href="/bibliography/lurie-cobordism">Lur2009a</a>, <span class="postnote">Proposition 4.2.3</span>]</span>) that an object $A$ is fully dualizable if and only if $A$ has a dual $A^*$ and the corresponding evaluation and coevaluation 1-morphisms have left and right adjoints. Moreover, the existence of adjoints for $\operatorname{ev}$ implies the existence of adjoints for $\operatorname{coev}$ and vice versa. 
</p>
