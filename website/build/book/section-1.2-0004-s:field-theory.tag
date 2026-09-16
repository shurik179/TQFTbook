<h2 id="s:field-theory" class="tex-section"><span data-tag="0004">1.2</span> Classical and quantum field theory</h2>
<p>
 Let us now move from mechanics to field theory. In field theory, the position variable $x\in N$ is replaced by a field $\varphi $, which is typically either a function on $N$ (with values in some target space $V$), a section of a vector bundle, or a connection. For simplicity, let us assume that the field $\varphi $ (at a given time) takes values in $V$: 
</p>
<div class="equation">
  \begin{equation*}  \varphi \colon N \rightarrow V. \end{equation*}
</div>
<p>
 As is common in the physics literature, we will assume that the field $\varphi $ is smooth enough for all purposes. We denote by $\mathcal{F}_ N$ the space of all fields (at fixed moment of time); in the simplest example above, $\mathcal{F}_ N=C^\infty (N,V)$. This space is the analog of configuration space $N$ in classical mechanics. 
</p>
<p>
The analog of a trajectory is now a field $\varphi (x,t)$ on spacetime $M = N \times [t_0,t_1]$. If the space $N$ is $(n-1)$-dimensional, then spacetime $M$ is $n$-dimensional; the corresponding field theory is referred to as $n$-dimensional field theory. 
</p>
<p>
Note that the space $N$ plays a different role here than in the mechanics. In a field theory, $N$ is the domain of field $\varphi $, whereas in mechanics, the configuration space $N$, was the target of “position field” $x$. From this perspective, we can think of the discussion in the previous section as a 0+1 dimensional field theory of the position field $x\colon \text{point} \to N$. 
</p>
<p>
As in mechanics, equations of motion come from the stationary action principle. Namely, for a field $\varphi $ defined on spacetime $M=N\times [t_0, t_1]$, we define the action functional by 
</p>
<div class="equation" >
    <span class="equation-label">1.2.1</span>
    <div>\begin{equation}  S[\varphi ] = \int _{t_0}^{t_1} L(\varphi , \partial _{\mu } \varphi ) dt = \int _{t_0}^{t_1} \left( \int _ N \mathcal{L}(\varphi , \partial _{\mu } \varphi ) d^{n-1} x \right) dt \end{equation}</div>
</div>
<p>
 $\mathcal{L}$ is called the Lagrangian density; it depends on the values of field $\varphi $ at point $(x,t)$, its first derivatives $\partial _\mu \varphi $, and on metric $g$ on spacetime. 
</p>
<p>
The classical equations of motion again follow from the stationary action principle: $\delta S[\varphi ]=0$. This is equivalent to a system of PDE's on $\varphi $, called the <em>Euler–Lagrange equations</em>. 
</p>
<p>
Similar to how we moved from classical to quantum mechanics, it is natural to expect that in quantum field theory, the state of the system is described by a functional $\psi \in L^2(\mathcal{F}_ N)$. The space $\mathcal{F}_ N$ is infinite-dimensional, and there is no canonical Lebesgue measure that we can define for it, so exact meaning of $L^2$ is not well-defined, but for the moment, let us ignore that. 
</p>
<p>
The time evolution operator $U_{t_0,t_1}\colon \mathcal{H}_ N \rightarrow \mathcal{H}_ N$ can again be defined using the path integral. Given a state $\psi $ at time $t_0$, the final state $U\psi $ at time $t_1$ can be written as: 
</p>
<div class="equation" id="00FP">
    <span class="equation-label"><a href="/tag/00FP" data-tag="00FP">1.2.2</a></span>
    <div>\begin{equation} \label{e:time-evolution} \begin{aligned}  (U \psi )[\varphi _1] & = \int _{\mathcal{F}_ N} K(\varphi _1,\varphi _0) \psi [\varphi _0] D \varphi _0\\  K(\varphi _1,\varphi _0) & = \int _{\substack {\Phi |_{t_0} =\varphi _0 \\ \begin{bgroup}  \Phi |_{t_1}=\varphi _1

\end{bgroup}}} e^{\frac{i}{\hbar } S[\Phi ]} D\Phi . \end{aligned} \end{equation}</div>
</div>
<p>
 Here $\Phi =\Phi (x,t)$ is a field on spacetime $M=N\times [t_0,t_1]$ with given values at $t=t_0$, $t=t_1$; it is an analog of path $\gamma $ in mechanics, and $D\Phi $ is some (not yet defined) measure on the space of fields. 
</p>
<p>
Note that the integral in (<a href="/tag/00FP" data-tag="00FP">1.2.2</a>) does not explicitly use the decomposition of spacetime $M$ as a product of space $N$ and time interval $[t_0, t_1]$: it only uses the metric on $M$ (which is used in the Lagrangian density) and the fact that $M$ has two boundary components, $N_0=N\times \{ t_0\} $ and $N_1 = N\times \{ t_1\} $. The same integral makes perfect sense if we allow spacetime $M$ to have a different topology: for any $n$-dimensional manifold $M$ whose boundary is presented as $\partial M=\overline{N_0}\sqcup N_1$ (where bar stands for orientation reversal), formula (<a href="/tag/00FP" data-tag="00FP">1.2.2</a>) defines an operator $U\colon \mathcal{H}_{N_0}\to \mathcal{H}_{N_1}$. 
</p>
<p>
The above formulas freely use integrals over infinite-dimensional spaces of paths/fields, which are very hard to define rigorously; there are many continuum quantum field theories for which a complete rigorous construction of the path integral is not currently available. Usually the best one can do is to write the asymptotic formulas, expanding the operator $U$ or the kernel $K$ as a series in powers of $\hbar $, and even that requires a lot of work. 
</p>
<p>
However, if one is willing to ignore these problems for now, then we can use path integral formula (<a href="/tag/00FP" data-tag="00FP">1.2.2</a>) for showing various properties of QFT. For example, it is easy to show the composition property 
</p>
<div class="equation">
  \[  U_{t_0,t_2}= U_{t_1,t_2} U_{t_0,t_1}  \]
</div>
<p>
 Indeed, since a field $\Phi \in \mathcal{F}_{N\times [t_0,t_2]}$ is the same as a pair of fields $\Phi _1\in \mathcal{F}_{N\times [t_0,t_1]}$, $\Phi _2\in \mathcal{F}_{N\times [t_1,t_2]}$ whose values at the common boundary $N\times \{ t_1\} $ coincide, we get 
</p>
<div class="equation" id="00FQ">
    <span class="equation-label"><a href="/tag/00FQ" data-tag="00FQ">1.2.6</a></span>
    <div>\begin{equation} \label{e:gluing} K_ M(\varphi _2,\varphi _0) = \int _{\mathcal{F}_ N} K_{M_2}( \varphi _2,\varphi _1) K_{M_1}(\varphi _1, \varphi _0) D \varphi _1 \end{equation}</div>
</div>
<p>
 where $M_1=N\times [t_0,t_1]$, $M_2=N\times [t_1,t_2]$. 
</p>
<p>
More generally, the same (non-rigorous) argument shows that for more general spacetimes $M$, we can choose an arbitrary codimension one slice $N$, and split the path integral into two components of $M$ that share $N$ as a common boundary. 
</p>
<p>
In the next section, we will try to bypass these rigor-related problems by approaching QFT in a more axiomatic manner. The main structures appearing in classical and quantum field theories are summarized in Table <a href="/tag/0005" data-tag="0005">1.2.1</a>. 
</p>
 <div class="centered"><table class="tabular">
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:right; border-right:1px solid black; border-left:1px solid black"
        rowspan=""
        colspan="">
      

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
<strong>Classical field theory</strong> 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 <strong>QFT</strong> 
</p>

    </td>
  </tr>
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:right; border-right:1px solid black; border-left:1px solid black"
        rowspan=""
        colspan="">
      <p>
 Field/State 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
$\varphi \in \mathcal{F}_ N$ 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 $\psi \in \mathcal{H}_ N \cong L^2(\mathcal{F}_ N)$ 
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:right; border-right:1px solid black; border-left:1px solid black"
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
    <td  style="text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
$U_{t_0,t_1}\colon \mathcal{H}_ N\to \mathcal{H}_ N$ 
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:right; border-right:1px solid black; border-left:1px solid black"
        rowspan=""
        colspan="">
      <p>
 Action 
</p>

    </td>
    <td  style="text-align:center; border-right:1px solid black"
        rowspan=""
        colspan="2">
      <p>
 $S[\varphi ]=\int _ M \mathcal{L}(\varphi , \partial _\mu \varphi ) d^{n}x$ 
</p>

    </td>
  </tr>
  <tr>
    <td  style="text-align:right; border-right:1px solid black; border-left:1px solid black; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
 Laws of motion 
</p>

    </td>
    <td  style="text-align:left; border-right:1px solid black; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
Euler-Lagrange equations
&#8195;$\delta S[\varphi (t)]=0$  
</p>

    </td>
    <td  style="text-align:left; border-right:1px solid black; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
  $(U \psi )[\varphi _1] = \int _{\mathcal{F}_ N} K(\varphi _1,\varphi _0) \psi [\varphi _0] D \varphi _0$
$K(\varphi _1,\varphi _0) = \int e^{\frac{i}{\hbar } S[\Phi ]} D\Phi $ 
</p>

    </td>
  </tr>
</table> <figcaption class="figcaption">Table 1.2.1. A schematic comparison of main structures in classical and quantum field theory. See main text for details.</figcaption>  </div>
