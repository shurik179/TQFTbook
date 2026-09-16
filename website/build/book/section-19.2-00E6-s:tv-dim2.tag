<h2 id="s:tv-dim2" class="tex-section"><span data-tag="00E6">19.2</span> Turaev–Viro theory in dimension $2$</h2>

<p>
We will now consider what kind of data is assigned by $Z$ to a two-dimensional surface $N$. When $\partial N = \emptyset $, $Z(N)$ should be a functor from $Z(\emptyset _1)$ to $Z(\emptyset _1)$. 
</p>
<div class="equation">
  \[  Z(N): \mathbf{Vec_ f}\rightarrow \mathbf{Vec_ f} \]
</div>
<p>
<article class="env-exercise" id="">
  <p><a class="environment-identifier" href="/tag/">Exercise <span data-tag="">19.2.1</span>.</a>Show that $Z(N): \mathbf{Vec_ f}\rightarrow \mathbf{Vec_ f}$ is naturally isomorphic to tensoring with the vector space </p>
  <div class="equation">
  \[  W_ N := Z(N)(\mathbf{k}). \]
</div>
  <p> Namely for any vector space $V \in \mathbf{Vec_ f}$, we have $Z(N)(V) \simeq W_ M \otimes _\mathbf{k}V$. Thus we may identify the functor $Z(N)$ with the vector space space $W_ N$. </p>
</article> 
</p>
<p>
This exercise agrees with our expectation that a 3d TQFT should assign a vector space to a closed two-dimensional surface. 
</p>
<p>
More generally, if $\partial N \ne \emptyset $, $Z(N)$ is a functor from the finite abelian category $Z(\overline{\partial N})$ to $\mathbf{Vec_ f}$. Here again we are considering $N$ as a bordism from $\partial N$ to the empty set ( similar to Chapter&#160;<a href="/tag/008F" data-tag="008F">12</a> ). 
</p>
<div class="equation">
  \[  Z(N): Z(\overline{\partial N}) \rightarrow \mathbf{Vec_ f} \]
</div>
<p>
For a 2-cell $C$ with $n$ edges along it's boundary, this should be a functor: 
</p>
<div class="equation">
  \[  Z(C):\mathcal{C}^{\boxtimes n}\to \mathbf{Vec_ f} \]
</div>
<p>
Following the general recipe of lattice/state-sum models, we will ( soon ) define an invariant of a 3d manifold $M$ by labelling the edges in its cell decomposition by objects of $\mathcal{C}$. The orientation and edge labels for 2-cells will be induced from that 3d data. For that purpose, it will be useful to have the following defintion. 
</p>
<p>
<article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">19.2.1</span>.</a>A labeling of $M$ is a map $l:E \rightarrow \mathcal{O}(\mathcal{C})$ which assigns to every oriented edge $e$ of $M$ an object $l(e) \in \mathcal{O}(\mathcal{C})$ such that $l(\overline{e})=l(e)^*$. A labeling is called simple if for every edge, $l(e)$ is simple. </p>
  <p>Two labeling $l_1$ and $l_2$ are called equivalent if $l_1(e) \simeq l_2(e)$ for every $e \in E$. </p>
</article> 
</p>
<figure class="figure">
  <p>
 <img class="includegraphics" src="/static/figures/c19-fig02.svg" />  $H(C,l)=\langle X_1,X_2,\dots , X_5\rangle $ 
</p>
<figcaption class="figcaption">Figure 19.2.1. Defining the state space for a 2-cell</figcaption>


</figure>
<p>
For a given labeling $l$, we define, for every oriented 2-cell $C$, the state space 
</p>
<div class="equation" >
    <span class="equation-label">19.2.1</span>
    <div>\begin{equation}  H(C,l)=\langle l(e_1), l(e_2),\dots , l(e_ n)\rangle ,\qquad \partial C=e_1\cup e_2\dots \cup e_ n \end{equation}</div>
</div>
<p>
where the edges $e_1,\dots , e_ n$ are taken in the clockwise order on $\partial C$ as shown in Figure&#160;<a href="/tag/00GW" data-tag="00GW">19.2.1</a>. The functor $\langle \dots \rangle $ was defined and studied in Section&#160;<a href="/tag/00CP" data-tag="00CP">18.4</a>. In particular, the space $\langle c_1,c_2,\dots ,c_ n\rangle $ only depends on the cyclic order $c_1,c_2,\cdots ,c_ n$, and not on the starting edge. 
</p>
<p>
For an oriented 2-dimensional combinatorial manifold $N$, we define 
</p>
<div class="equation" >
    <span class="equation-label">19.2.2</span>
    <div>\begin{equation}  H(N, l)= \bigotimes _{C} H(C, l) \end{equation}</div>
</div>
<p>
where the product is over all 2-cells. Orientation on each 2-cell $C$ is induced from the orientation of $N$. 
</p>
<div class="equation" >
    <span class="equation-label">19.2.3</span>
    <div>\begin{equation}  H(N,l)=\bigoplus _ l H(N,l) \end{equation}</div>
</div>
<p>
Finally, we define the state space assigned by the Turaev–Viro theory to $N$ as 
</p>
<div class="equation" id="00GX">
    <span class="equation-label"><a href="/tag/00GX" data-tag="00GX">19.2.4</a></span>
    <div>\begin{equation} \label{d:TV-surface} H(N)= \bigoplus _ l H(N,l) \end{equation}</div>
</div>
<p>
where the sum is over all simple labelings up to equivalence. 
</p>
<p>
Note that it follows from (<a href="/tag/00CX" data-tag="00CX">18.4.6</a>) that we have canonical isomorphism 
</p>
<div class="equation" id="00GY">
    <span class="equation-label"><a href="/tag/00GY" data-tag="00GY">19.2.5</a></span>
    <div>\begin{equation} \label{e:H-duality} H(\overline{N}) = H(N)^* \end{equation}</div>
</div>
<p>
We have used the notation $H(N)$ for the $Z(N)$ functor in this section to suggest that this data corresponds to the state space associated with the surface $N$. This notation also helps distinguish this assignment from the additional 3d-data introduced in the next section. 
</p>
