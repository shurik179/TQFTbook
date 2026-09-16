<h2 id="s:tv-dw3" class="tex-section"><span data-tag="00E8">19.6</span> Example: Dijkgraaf–Witten in 3 dimensions</h2>
<p>
 In this section we look at an explicit example. We consider $\mathcal{C}= \mathbf{Vec}_ G$, which was defined in Example&#160;<a href="/tag/000L" data-tag="000L">2.3.3</a>. We choose $G$ to be some finite group, and the underlying field is $\mathbb {C}$ . We shall see that the Turaev–Viro theory associated to this $\mathcal{C}$ is the Dijkgraaf–Witten theory in 3 dimensions. We refer the reader to <span class="cite">[<a href="/bibliography/petit">Pet2006</a>, <span class="postnote">Theorem 4.2</span>]</span> for a proof. 
</p>
<p>
The simple objects in $\mathcal{C}$ are complex one-dimensional spaces graded with an element $g \in G$. We denote such a simple object as $\mathbb {C}_ g$. A simple labeling $l$ will assign a group element $g_ e$ to every oriented edge. To a $n$-side face whose boundary labels are ${g_1},\dots ,{g_ n}$ ( in cylic order ), the functor $Z$ assigns 
</p>
<div class="equation" id="00HE">
    <span class="equation-label"><a href="/tag/00HE" data-tag="00HE">19.6.1</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c19-eqfig01.svg"></div>
</div>
<p>
So the state space $H(N)$ for a 2-dimensional manifold $N$ is the space of flat $G$-connections. The categorical dimension of each edge is $1$ for $\mathcal{C}$ . This gives $\mathrm{dim}(\mathcal{C})= |G|$. The projector $A_ N$ thus takes the form 
</p>
<div class="equation">
  \[  A_ N = \frac{1}{|G|^{v(N \times I)}} \sum _{l_{\mathrm{flat}} } \left( Z( N \times I ,l_{\mathrm{flat}}) \right).  \]
</div>
<p>
For a state $|a \rangle  \in H(N)$, the sum over all flat gauge configurations $l_\mathrm {flat}$ on $N \times I$ gives a sum over all states $| h.a \rangle $, that are connected to $|a\rangle $ via some some element $h$ of the gauge group $G^{v(N)}$. As shown in Figure&#160;<a href="/tag/00HF" data-tag="00HF">19.6.1</a>, for each labeling $|a \rangle $ of $N$, an element $h \in G^{v(N)}$ leads to another labeling $| b \rangle $ that is related to $| a \rangle $ by a gauge transformation. So the action of averaging over $G^{v(N)}$ projects the states in $H(N)$ to $G^{v(N)}$-invariant states. Thus $Z(N)$ is precisely the vector space spanned by gauge equivalence classes of $G$-connections on $N$. 
</p>
<figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c19-fig06.svg" /> <figcaption class="figcaption">Figure 19.6.1. A sample configuration appearing in the $\sum _{l_{\mathrm{flat}}} Z(N \times I , l_{\mathrm{flat}} )$. Bottom of the diagram shows a portion of configuration $| a \rangle $ assigned to a closed 2-manifold $N$. $|a\rangle $ assigns an $a_ e \in G$ to each edge $e$, but we are showing only the edge $e$ between $s$ and $t$ here. We label the vertical edges by elements $h_ v$ of $G^{v(N)}$ for each $v \in v(N)$. The flatness condition imposes that the configuration $|b\rangle $ on the other end of interval $I$ is a gauge transformation of $|a\rangle $, i.e. $|b\rangle =|h.a\rangle $.</figcaption>  </div>

</figure>
<p>
Similarly, for a 3-dimensional manifold $M$, we have 
</p>
<div class="equation" id="00HG">
    <span class="equation-label"><a href="/tag/00HG" data-tag="00HG">19.6.2</a></span>
    <div>\begin{equation} \label{e:untwisted-DW} Z(M) = \frac{1}{|G|^{v(M)}} (\text{number of flat colorings}) \end{equation}</div>
</div>
<p>
 For a closed manifold, this counts isomorphism classes of principal G-bundles on $M$ ( with the appropriate weight that was described in Section&#160;<a href="/tag/003T" data-tag="003T">6.2</a> ). This is same as the untwisted Dijkgraaf–Witten theory in 3 dimensions. 
</p>
<p>
We can generalize this example by considering $\mathcal{C}= \mathbf{Vec}_ G^\omega $ as was defined in Example&#160;<a href="/tag/000T" data-tag="000T">2.3.6</a>. The choice of the 3-cocycle $\omega $ does not change the flatness condition coming from (<a href="/tag/00HE" data-tag="00HE">19.6.1</a>). But the contribution $\langle \Gamma ,l,\{  \varphi _ C\} \rangle _{S^2\setminus \{ p\} }$ coming from each oriented 3-cell $[0,1,2,3]$ now gets modified by $\omega (g_{01},g_{12},g_{23})$ or $\omega (g_{01},g_{12},g_{23})^{-1}$ depending on its orientation with respect to the manifold $M$. Note that a 3-cell has only 3 independent edge labels due to flatness condition. The Turaev–Viro partition function then takes the form 
</p>
<div class="equation" id="00HH">
    <span class="equation-label"><a href="/tag/00HH" data-tag="00HH">19.6.3</a></span>
    <div>\begin{equation} \label{e:twisted-DW} Z(M) = \frac{1}{|G|^{v(M)}} \sum _{l_\mathrm {flat}} \prod _{c \in \mathrm{3-cells}} \omega (g_1(c),g_2(c),g_3(c))^{\sigma (c)} \end{equation}</div>
</div>
<p>
 where $\sigma (c) = \pm 1 $ depending on the relative orientation of the 3-cell $c$ with respect to $M$, and $g_1(c),g_2(c),g_3(c)$ are group elements labelling the edges of $c$ in a certain order. This turns out to be the state sum defintion of the twisted 3-dimensional Dijkgraaf–Witten theory ( compare (<a href="/tag/00GA" data-tag="00GA">6.3.1</a>) ). The untwisted theory (<a href="/tag/00HG" data-tag="00HG">19.6.2</a>) can be obtained from (<a href="/tag/00HH" data-tag="00HH">19.6.3</a>) by settings $\omega =1$. 
</p>
<p>
It is worth commenting here that Turaev–Viro TQFTs based on $\mathbf{Vec}_ G$, with $G$ a finite abelian group, are also very interesting from the physics perspective. These TQFTs describe the topological phases realized by quantum double models. In particular, the simple objects in $Z(S^1)$ correspond to anyons in a quantum double model, which have potential applications in topological quantum computing. A famous example is Kitaev's toric code <span class="cite">[<a href="/bibliography/kitaev">Kit2003</a>]</span>, which is based on $G=\mathbb {Z}_2$. 
</p>
