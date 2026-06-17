<h2 id="s:cerf" class="tex-section"><span data-tag="002A">4.2</span> Cerf theory</h2>

<p>
We have seen that excellent Morse functions allow one to present a cobordism as a composition of elementary cobordisms; for $n=2$, this gives us a set of generators for the category of cobordisms. 
</p>
<p>
To describe relations between generators, we need to see how one can go from one such presentation to another, or equivalently, how the presentation changes if we replace one excellent Morse function by another. 
</p>
<p>
It is easy to see that the space of excellent functions is not connected; thus, if $f_0$, $f_1$ are two excellent functions, and we want to connect them by a path $f_ s$, $s\in [0,1]$ in the space of functions, in general this path must go through some points which are not excellent. This was studied by Cerf in <span class="cite">[<a href="/bibliography/cerf">Cer1970</a>]</span> and is usually referred to as <em>Cerf theory</em>. 
</p>
<p>
<article class="env-example" id="002B">
  <p><a class="environment-identifier" href="/tag/002B">Example <span data-tag="002B">4.2.1</span>.</a> Consider the one-parameter family of functions $f_ s= x^3+sx$ on a neighborhood of the origin in $\mathbb {R}$, with local coordinate $x$, shown in Figure&#160;<a href="/tag/002C" data-tag="002C">4.2.1</a>. </p>
  <p>Then for $s&lt;0$, the function is Morse with two critical points of indices $0$ and $1$ respectively; for $s&gt;0$, it is also Morse, with no critical points; and for $s=0$, $f_0(x)=x^3$ is not a Morse function: zero is a degenerate critical point. Thus, in this case, $f_ s$, considered as a path in the function space, connects two Morse functions but goes through a non-Morse function $f_0=x^3$. This path describes annihilation of a pair of critical points (or, going in the opposite direction, birth of a pair of critical points). </p>
  <p><figure class="figure">
  <div class="centered"><img class="includegraphics" src="/static/figures/c4-fig07.svg" /> &#8195;&#8195;<img class="includegraphics" src="/static/figures/c4-fig08.svg" /> &#8195;&#8195;<img class="includegraphics" src="/static/figures/c4-fig09.svg" /> <figcaption class="figcaption">Figure 4.2.1. Birth-death of critical points in family $f_ s=x^3+sx$</figcaption>  </div>

</figure></p>
</article> 
</p>
<p>
<article class="env-example" id="002D">
  <p><a class="environment-identifier" href="/tag/002D">Example <span data-tag="002D">4.2.2</span>.</a> Consider the family of functions $f_ s(x)=x^2-x^4+sx$. Then for values of $s$ close to 0, it has three critical points, all of them non-degenerate: local minimum at $p_0$ close to 0, and local maxima at points $p_1&lt;0$, $p_2&gt;0$. </p>
  <p>For $s&lt;0$, we have $c_1&gt;c_2$; for $s&gt;0$, $c_1&lt;c_2$, and for $s=0$, $c_1 = c_2$ as shown below, so for $s=0$ this function is Morse but not excellent. Thus, we again get a path connecting two excellent functions going through a non-excellent function with $c_1=c_2$. </p>
  <p><figure class="figure">
  <div class="centered"><p>
<img class="includegraphics" src="/static/figures/c4-fig10.svg" /> &#8195;&#8195;<img class="includegraphics" src="/static/figures/c4-fig11.svg" /> &#8195;&#8195;<img class="includegraphics" src="/static/figures/c4-fig12.svg" /> 
</p>
<figcaption class="figcaption">Figure 4.2.2. Crossing of critical values in family $f_ s=x^2-x^4+sx$</figcaption>

</div>

</figure></p>
</article> 
</p>
<p>
It turns out that these two model examples are enough: any two excellent functions can be connected by a one-parameter family where all non-excellent functions are at worst as in these examples. More precisely, we have the following. 
</p>
<p>
<article class="env-definition" id="002F">
  <p><a class="environment-identifier" href="/tag/002F">Definition <span data-tag="002F">4.2.1</span>.</a> A <em>good</em> function on an $n$-dimensional closed manifold $M$ is a smooth function of one of the following types: </p>
  <p><ul>
  <li><p>
<strong>Type $\alpha $</strong>: all critical values are distinct, and all critical points are non-degenerate, except for one. Near this point, there is a local coordinate system where $f$ is given by 
</p>
<div class="equation">
  \[  f(x^1, \dots , x^ n)=c+(x^1)^3 -(x^2)^2-\dots -(x^ r)^2+(x^{r+1})^2 + \dots +(x^ n)^2.  \]
</div>
</li><li><p>
<strong>Type $\beta $</strong>: all critical points are non-degenerate, and all critical values are distinct except for one pair: $c_ i = c_ j$ for some $i\ne j$. 
</p>
</li>
</ul></p>
  <p> In a similar way one defines good function on a cobordism $M$. </p>
</article> 
</p>
<p>
(The name “good” is not standard.) 
</p>
<p>
It was shown by Cerf that this is the beginning of a stratification of the space $\mathcal{F}=C^\infty (M)$: we can write $\mathcal{F}= \mathcal{F}^0\sqcup \mathcal{F}^1\sqcup \dots $, where $\mathcal{F}^0$ is the set of excellent functions, which is open and dense in $\mathcal{F}$; the set $\mathcal{F}^1$ consists of good functions and is a codimension 1 subset of $\mathcal{F}$, and so on. (One can also define higher codimension strata, but we will not need them.) A review of this theory can be found, e.g., in <span class="cite">[<a href="/bibliography/hatcher-wagoner">HW1973</a>, <span class="postnote">Section I.2</span>]</span>. 
</p>
<p>
<article class="env-theorem" id="002G">
  <p><a class="environment-identifier" href="/tag/002G">Theorem <span data-tag="002G">4.2.1</span>.</a> Let $f_0, f_1$ be two excellent functions on a cobordism $M$. Then one can find a one-parameter family $f_ s$ of smooth functions on $M$ such that: </p>
  <p><ol>
  <li><p>
$f_ s$ is excellent for all $s$ except for finitely many values $s_1, \dots , s_ p$ 
</p>
</li><li><p>
At each of these special values, $f_ s$ is good. 
</p>
</li>
</ol></p>
</article> In other words, any two points in $\mathcal{F}^0$ can be connected by a path contained in $\mathcal{F}^0\cup \mathcal{F}^1$. 
</p>
<p>
Moreover, this path can be chosen so that it is transversal to $\mathcal{F}^1$ (we skip the precise definition, referring the reader to <span class="cite">[<a href="/bibliography/hatcher-wagoner">HW1973</a>]</span>). This allows one to describe how the Morse decomposition changes when we cross one of the components of $\mathcal{F}^1$ (“walls”). Crossing a component corresponding to a type-$\alpha $ function produces a <em>birth-death move</em>: two adjacent critical points (of indices $r-1, r$) appear or disappear. Crossing a component corresponding to a type-$\beta $ function produces a <em>crossing move</em>: two critical values $c_ i, c_{i+1}$ exchange their order. 
</p>
<p>
<article class="env-theorem" id="002H">
  <p><a class="environment-identifier" href="/tag/002H">Theorem <span data-tag="002H">4.2.2</span>.</a> Let $M$ be a cobordism, and let $f_0, f_1$ be two excellent functions on $M$, with corresponding Morse decompositions $\mathcal{D}_0$, $\mathcal{D}_1$ as in (<a href="/tag/00EJ" data-tag="00EJ">4.1.2</a>). Then $\mathcal{D}_0$ and $\mathcal{D}_1$ can be obtained from each other by a finite sequence of birth-death moves and crossing moves and their inverses. </p>
</article> 
</p>
