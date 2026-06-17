<h2 id="s:nerve" class="tex-section"><span data-tag="009C">14.4</span> Nerve of a category</h2>
<p>
 Before giving a definition of a weak category, let us take another look at the definition of a usual category. Let $\mathcal{C}$ be a category; define a collection of sets $X_ n$, $n\ge 0$ by 
</p>
<div class="equation" id="009D">
    <span class="equation-label"><a href="/tag/009D" data-tag="009D">14.4.1</a></span>
    <div>\begin{equation} \label{e:nerve1} \begin{aligned}  X_0& = \operatorname{Obj}\mathcal{C}\quad (\text{objects of $\mathcal{C}$})\\  X_1& = \{  (x_0, x_1, f)\;  | \; x_ i \in \mathcal{C}, f\colon x_0\to x_1\}  \quad (\text{morphisms in $\mathcal{C}$})\\ & \dots \\  X_ n& =\{ (x_0, \dots , x_ n, f_1, \dots , f_ n)\;  | \; x_ i \in \mathcal{C}, f_ i\colon x_{i-1}\to x_ i \} \\ & \quad (\text{composable $n$-chains of morphisms in $\mathcal{C}$})\\ \end{aligned} \end{equation}</div>
</div>
<p>
 Then all compositions and units in $\mathcal{C}$ can be described in terms of maps between these sets. For example, we have the composition map 
</p>
<div class="equation">
  \begin{align*}  X_2& \to X_1\\  (x_0\xrightarrow {f_1} x_1 \xrightarrow {f_2}x_2)& \mapsto (x_0\xrightarrow {f_2f_1} x_2) \end{align*}
</div>
<p>
 and a unit map 
</p>
<div class="equation">
  \begin{align*}  X_0& \to X_1\\  x& \mapsto (x\xrightarrow {1_ x} x) \end{align*}
</div>
<p>
More generally, we have <em>face maps</em> 
</p>
<div class="equation" id="009E">
    <span class="equation-label"><a href="/tag/009E" data-tag="009E">14.4.8</a></span>
    <div>\begin{equation} \label{e:nerve2} \begin{aligned}  d_ i\colon X_ n& \to X_{n-1}, \qquad 0\le i \le n\\  (\dots x_{i-1}\xrightarrow {f_ i} x_ i \xrightarrow {f_{i+1}} x_{i+1}\to \dots ) & \mapsto (\dots x_{i-1}\xrightarrow {f_{i+1}f_ i} x_{i+1}\to \dots ) \end{aligned} \end{equation}</div>
</div>
<p>
 (for $i=0$, this map deletes both object $x_0$ and morphism $f_1$; for $i=n$, it deletes $x_ n$ and $f_ n$). 
</p>
<p>
We also have <em>degeneracy maps</em> 
</p>
<div class="equation" id="009F">
    <span class="equation-label"><a href="/tag/009F" data-tag="009F">14.4.11</a></span>
    <div>\begin{equation} \label{e:nerve3} \begin{aligned}  s_ i\colon X_ n& \to X_{n+1}, \qquad 0\le i \le n\\  (\dots \xrightarrow {f_ i} x_ i \xrightarrow {f_{i+1}} \dots ) & \mapsto (\dots \xrightarrow {f_ i} x_ i \xrightarrow {1_{x_ i}} x_ i \xrightarrow {f_{i+1}} \dots ) \end{aligned} \end{equation}</div>
</div>
<p>
One should think of $d_ i$ as “erasing” the object $x_ i$ in the chain, and $s_ i$ as doubling $x_ i$ and inserting the identity morphism. (The names “face map” and “degeneracy map” are motivated by the relation to homotopy theory; see Section&#160;<a href="/tag/009P" data-tag="009P">14.5</a>.) 
</p>
<p>
These maps satisfy a number of relations, which follow from (and in fact are equivalent to) the associativity and unit axioms for the category $\mathcal{C}$. One can write these relations explicitly; however, there is a more elegant way to do that, using the notion of <em>simplicial set</em>. 
</p>
<p>
<article class="env-definition" id="009G">
  <p><a class="environment-identifier" href="/tag/009G">Definition <span data-tag="009G">14.4.1</span>.</a> The <em>simplex category</em> $\mathbf{\Delta }$ is the category whose objects are totally ordered sets $[n] = \{ 0,1,\dots ,n\} $, $n \ge 0$, and morphisms are (non-strictly) order preserving functions. </p>
</article> In particular, for each $n\ge 0$, there are $n + 1$ injections $d^ i\colon [n-1] \to [n]$, called the coface maps, and $n + 1$ surjections $s^ i \colon [n + 1] \to [n]$, called the codegeneracy maps, defined as follows: 
</p>
<div class="equation">
  \[  d^ i(k) = \begin{cases}  k &  \quad k&lt;i\\  k+1 &  \quad k\ge i \end{cases} \qquad \qquad s^ i(k) = \begin{cases}  k &  \quad k\le i\\  k-1 &  \quad k&gt; i \end{cases}  \]
</div>
<p>
 The $i$-th coface map $d^ i$ misses the element $i$ in the image, while $s^ i$ sends two elements to $i$. It is easy to show that these maps generate all morphisms in $\mathbf{\Delta }$: any order-preserving map is a composition of coface and codegeneracy maps. 
</p>
<p>
<article class="env-definition" id="009H">
  <p><a class="environment-identifier" href="/tag/009H">Definition <span data-tag="009H">14.4.2</span>.</a> A simplicial set is a functor $X\colon \mathbf{\Delta }^{\mathrm{op}}\to \mathbf{Set}$. </p>
</article> It is common to use notation $X_ n=X([n])$ and $d_ i=X(d^ i)\colon X_{n}\to X_{n-1}$, $s_ i = X(s^ i)\colon X_ n\to X_{n+1}$. 
</p>
<p>
(Again, the motivation for the name “simplicial set” will be given in Section&#160;<a href="/tag/009P" data-tag="009P">14.5</a>.) 
</p>
<p>
It is easy to see that simplicial sets form a category, with morphisms being morphisms of functors; in other words, given two simplicial sets $X_\bullet $, $Y_\bullet $, a morphism $f\colon X_\bullet \to Y_\bullet $ is a collection of maps $f_ n\colon X_ n\to Y_ n$ which commute with all $d_ i, s_ i$. We denote by $\mathbf{sSet}$ the category of simplicial sets. 
</p>
<p>
<article class="env-theorem" id="009J">
  <p><a class="environment-identifier" href="/tag/009J">Theorem <span data-tag="009J">14.4.1</span>.</a> Let $\mathcal{C}$ be a category. Then formulas (<a href="/tag/009D" data-tag="009D">14.4.1</a>)–(<a href="/tag/009F" data-tag="009F">14.4.11</a>) define a simplicial set, called the <em>nerve</em> of $\mathcal{C}$.  </p>
</article> <article class="env-exercise" id="009K">
  <p><a class="environment-identifier" href="/tag/009K">Exercise <span data-tag="009K">14.4.1</span>.</a> Write explicitly the associativity axiom in $\mathcal{C}$ as an equality of two maps $X_3\to X_1$, and write the corresponding relation between coface maps $d^ i$ in $\mathbf{\Delta }$. </p>
</article> 
</p>
<p>
One can ask if it is possible to describe which simplicial sets appear as nerves of categories. To answer that, we recall the notion of fiber product. 
</p>
<p>
Assume that we have two sets $A_1, A_2$ and maps $p_ i\colon A_ i\to B$. The fiber product $A_1\times _ B A_2$ is defined by 
</p>
<div class="equation">
  \[  A_1\times _ B A_2 = \{ (a_1, a_2)\in A_1\times A_2\;  | \; p_1(a_1)=p_2(a_2)\}   \]
</div>
<p>
 Clearly, we have canonical maps $A_1\times _ B A_2\to A_ i$ which make the diagram below commutative (this diagram is frequently called the <em>pullback square</em>) 
</p>
<div class="equation" id="00FA">
    <span class="equation-label"><a href="/tag/00FA" data-tag="00FA">14.4.18</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c14-fig01.svg"></div>
</div>
<p>
A better definition — which also works in other situations, for example when $A_ i, B$ are topological spaces and all maps are continuous — defines $A_1\times _ B A_2$ as the universal object in the category of diagrams: for every diagram below, there is a unique map $P\to A_1\times _ B A_2$ 
</p>
<div class="centered"><img class="includegraphics" src="/static/figures/c14-eqfig01.svg" /></div>
<p>
It is easy to see that for the nerve of a category $\mathcal{C}$, in other words, when $X_ n$ is given by (<a href="/tag/009D" data-tag="009D">14.4.1</a>), we have maps 
</p>
<div class="equation">
  \begin{align*}  p_ i \colon X_ n& \to X_1\\  (\dots \to x_{i-1} \xrightarrow {f_ i} x_ i\to \dots )& \mapsto ( x_{i-1} \xrightarrow {f_ i} x_ i). \end{align*}
</div>
<p>
 Thus, by the universality property of the fiber product, we have the <em>Segal map</em>  
</p>
<div class="equation" id="009L">
    <span class="equation-label"><a href="/tag/009L" data-tag="009L">14.4.19</a></span>
    <div>\begin{equation} \label{e:segal-map} s_ n\colon X_ n \to X_1\times _{X_0} X_1\times _{X_0} X_1 \times \dots \times _{X_0} X_1. \end{equation}</div>
</div>
<p>
 Maps $p_ i$ (and thus, the Segal map $s_ n$) can be defined for any simplicial set: they correspond to the map $[1]\to [n]\colon 0\mapsto (i-1), 1\mapsto i$ in $\mathbf{\Delta }$. 
</p>
<p>
<article class="env-theorem" id="009M">
  <p><a class="environment-identifier" href="/tag/009M">Theorem <span data-tag="009M">14.4.2</span>.</a> A simplicial set $X$ is a nerve of some category $\mathcal{C}$ if and only if the following <em>Segal condition</em> holds: for every $n\ge 1$, the Segal map (<a href="/tag/009L" data-tag="009L">14.4.19</a>) is a bijection </p>
  <div class="equation" id="009N">
    <span class="equation-label"><a href="/tag/009N" data-tag="009N">14.4.20</a></span>
    <div>\begin{equation} \label{e:segal1} X_ n \simeq X_1\times _{X_0} X_1\times _{X_0} X_1 \times \dots \times _{X_0} X_1. \end{equation}</div>
</div>
</article> The proof of this theorem is straightforward: it is just another way of saying that any composable chain of morphisms consists of an $n$-tuple of morphisms where the target of the $i$-th morphism coincides with the source of the $(i+1)$-st one. 
</p>
<p>
Thus, (usual) categories can be described as simplicial sets satisfying the Segal condition (<a href="/tag/009N" data-tag="009N">14.4.20</a>). 
</p>
