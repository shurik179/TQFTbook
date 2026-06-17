<h2 id="s:field-theory" class="tex-section"><span data-tag="0004">1.2</span> Classical/quantum field theory</h2>
<p>
 In field theory, a point $x\in N$ is replaced by the field $\varphi $, which is typically either a function on $N$ (with values in some target space $V$) or a section of a vector bundle or a connection. We will denote by $\mathcal{F}_ N$ the space of all fields on $N$. 
</p>
 <div class="centered"><table class="tabular">
  <tr>
    <td  style="text-align:right; border-right:1px solid black"
        rowspan=""
        colspan="">
      
    </td>
    <td  style="text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
Classical field theory 
</p>

    </td>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
 QFT 
</p>

    </td>
  </tr>
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:right; border-right:1px solid black"
        rowspan=""
        colspan="">
      

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
$\varphi \in \mathcal{F}_ N$ 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left"
        rowspan=""
        colspan="">
      <p>
 $\psi \in \mathcal{H}_ N=L^2(\mathcal{F}_ N)$ 
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:right; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 Trajectory 
</p>

    </td>
    <td  style="text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
$\varphi \in \mathcal{F}_{M}$, $M=N\times [t_0, t_1]$ 
</p>

    </td>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
$U_{t_0,t_1}\colon \mathcal{H}_ N\to \mathcal{H}_ N$ 
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:right; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 Action 
</p>

    </td>
    <td  style="text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 $S[\varphi ]=\int _ M L(\varphi , \partial _\mu \varphi ) d^{n}x$ 
</p>

    </td>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      
    </td>
  </tr>
  <tr>
    <td  style="text-align:right; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 Laws of motion 
</p>

    </td>
    <td  style="text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
Least action principle
&#8195;$\delta S[\varphi ]=0$ (fixed restriction to $t=t_0$,$t=t_1$)  
</p>

    </td>
    <td  style="text-align:left"
        rowspan=""
        colspan="">
      <p>
  $(U\psi )(\varphi _1) = \int _ N (K(\varphi _0, \varphi _1) \psi (\varphi _0) D\varphi _0$
$K(\varphi _0,\varphi _1) = \int _ P e^{\frac{i}{\hbar } S[\varphi ]} D\varphi $
$P=\{ \varphi \in \mathcal{F}_ M: \varphi (t_0)=\varphi _0, \varphi (t_1)=\varphi _1$} 
</p>

    </td>
  </tr>
</table> <figcaption class="figcaption">Table 1.2.1. FIXME</figcaption>  </div>
<p>
 The above formulas freely use integrals over infinite-dimensional spaces of paths/fields, which are very hard to define rigorously; as of now, QFT cannot be defined rigorously as a mathematical theory except very few special cases. Usually the best one can do is to write the asymptotics formulas, expanding the operator $U$ or the kernel $K$ as a series in powers of $\hbar $, and even that requires a lot of work. 
</p>
<p>
However, if we ignore that and assume that all the above makes sense, we get the following structure (again, at the moment we choose to ignore details) 
</p>
<ol>
  <li><p>
For every $n-1$-dimensional manifold $N$, we have a Hilbert space $\mathcal{H}_ N$. Moreover, since $\mathcal{F}_{N_1\sqcup N_2} = \mathcal{F}_{N_1}\times \mathcal{F}_{N_2}$, we get 
</p>
<div class="equation" id="00EG">
    <span class="equation-label"><a href="/tag/00EG" data-tag="00EG">1.2.1</a></span>
    <div>\begin{equation} \label{e:qft-axiom1} \mathcal{H}_{N_1\sqcup N_2} = \mathcal{H}_{N_1}\otimes \mathcal{H}_{N_2} \end{equation}</div>
</div>
</li><li><p>
The definition of operator $U_{t_0, t_1}$ immediately generalizes, using the same formulas, to arbitrary $n$-dimensional manifold $M$ and not only the cylinder $N\times [t_0, t_1]$: if $\partial M= N_0\sqcup N_1$ (with appropriate orientations), then $U_ M$ is an operator 
</p>
<div class="equation" >
    <span class="equation-label">1.2.2</span>
    <div>\begin{equation}  U_ M\colon \mathcal{H}_{N_0}\to \mathcal{H}_{N_1} \end{equation}</div>
</div>
<p>
 In particular, for a closed spacetime (i.e. $\partial M=\varnothing $), we get $U_ M\in \mathbb {C}$ is a number; in physics it is usually called the <em>partition function</em> and denoted by $Z(M)$. 
</p>
</li><li><p>
So defined operators satisfy the gluing axiom: (FIXME) 
</p>
</li>
</ol>
<p>
So far we haven't specified what we mean by “manifold”. Usually in physics the spacetime is an oriented pseudo-Riemannian manifold, with metric of signature $(1, n-1)$. However, we will be interested in a very special case, namely when all the structures above do not use the metric on the space; thus, we only require $M$ to be an oriented smooth manifold. Such theories are called <em>topological</em>. The most famous example of such a theory is Chern–Simons theory (see <span class="cite">[<a href="/bibliography/witten-jones">Wit1989</a>]</span>), in which the spacetime $M$ must be 3-dimensional, fields are $\mathrm{SU}(n)$ connections on $M$ (which, after choosing a trivialization of the bundle, can be described by one-forms with values in the Lie algebra $\mathfrak {su}(n)$) and the action is given by 
</p>
<div class="equation" >
    <span class="equation-label">1.2.3</span>
    <div>\begin{equation}  S[A] = g \int _ M \operatorname{tr}(A\wedge dA + \tfrac {2}{3}A\wedge A\wedge A) \end{equation}</div>
</div>
<p>
We can take properties above as axioms. <article class="env-predefinition" id="">
  <p><a class="environment-identifier" href="/tag/">Preliminary Definition <span data-tag="">1.2.1</span>.</a>An $n$-dimensional topological field theory (TQFT) is the following collection of data </p>
  <p><ul>
  <li><p>
For every $(n-1)$-dimensional oriented smooth manifold $N$, a vector space $Z(N)$ 
</p>
</li><li><p>
For every $n$-dimensional oriented manifold $M$ such that $\partial M=N_0\sqcup N_1$, a linear operator $Z_ M\colon Z_{N_0}\to Z_{N_1}$, 
</p>
</li>
</ul></p>
  <p> This data has to satisfy the properties above (gluing axiom, disjoint union). </p>
</article> 
</p>
<p>
(Clearly, there is a lot more detail to be filled in, which we will do later). 
</p>
<p>
This definition is due to Atiyah (<span class="cite">[<a href="/bibliography/atiyah">Ati1988</a>]</span>). 
</p>
<p>
Having this definition, instead of defining a TQFT by a path integral or other global construction (which can be very hard to do), we can try to construct TQFTs by defining $Z(M)$ for “elementary blocks” and gluing every manifold from them. For $n=2$, these blocks are disk, cylinder, and pair of pants. 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c1-fig01.svg" /> </div>
<p>
Of course, we need to have some compatibility conditions to ensure that different ways of gluing the manifold from pieces give the same result; essentially, we are trying to define manifolds by “generators and relations”. For $n=2$ it is not too hard (we will do so next week); for larger $n$, it is harder — e.g. for $n=3$ we can consider so-called Heegard decomposition (which already requires infinitely many blocks, all handlebodies of arbitrary genus) or use surgery along knots (again, to be discussed later). 
</p>
<p>
However, there is another idea: why stop at manifolds with boundary? If we allow manifold with corners of any codimension, the set of “elementary blocks” is greatly simplified: any manifold can be glued together from just one block, an $n$-dimensional simplex. Such theories are called fully extended (or sometimes local) TQFTs; see <span class="cite">[<a href="/bibliography/lurie-cobordism">Lur2009a</a>]</span>. 
</p>
<p>
But the price you pay is algebraic complexity: for closed $n$-manifold, the theory gives you a number; for a codimension 1 manifold, a vector space. What is the next level? 
</p>
<p>
One way to answer is that codimension 2 should give you a category, and so on; thus, doing it properly requires a notion of $n$-categories (or a variation of that, called $(\infty , n)$ categories). This gets confusing quite fast…
</p>
<p>
<br /> 
</p>
