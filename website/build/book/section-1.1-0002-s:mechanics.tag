<h2 id="s:mechanics" class="tex-section"><span data-tag="0002">1.1</span> Classical and quantum mechanics</h2>

<p>
In classical mechanics, at any time $t$, a point particle is described by its position $x(t) \in N$ and its velocity $\dot x(t) \in T_{x(t)}N$. Here $N$ is the configuration space which, for a point particle, is the same as physical space, and $T_{x(t)}N$ is the tangent space to $N$ at point $x(t)$. (For a more general mechanical system, $N$ can be some other space of configurations.) The trajectory of a particle is a map from the time interval $[t_0,t_1]$ to $N$: 
</p>
<div class="equation" >
    <span class="equation-label">1.1.1</span>
    <div>\begin{equation}  \gamma \colon [t_0,t_1] \rightarrow N, \nonumber \end{equation}</div>
</div>
<p>
 We are using the position variable $x$ and the trajectory $\gamma $ interchangeably. They are both continuous maps from the time-interval to the configuration space, but the notation $\gamma $ is better suited for quantum mechanics where we will be considering all such maps. 
</p>
<p>
The equations of motion are usually derived using the Lagrangian formalism. Namely, for each trajectory $\gamma (t)$ we define its action functional: 
</p>
<div class="equation" >
    <span class="equation-label">1.1.1</span>
    <div>\begin{equation}  S[\gamma ]= \int L(x(t),\dot x(t)) dt \nonumber \end{equation}</div>
</div>
<p>
 where $L(x, \dot x)$ is a smooth function on $TN$ called the Lagrangian. The precise form of Lagrangian function $L$ depends on the physics governing the motion of the particle. 
</p>
<p>
The least action principle (more appropriately called the stationary action principle) states that the actual trajectory that the physical particle takes is one for which the functional variation of the action vanishes (in the class of all trajectories with fixed starting and ending position): 
</p>
<div class="equation" id="00FM">
    <span class="equation-label"><a href="/tag/00FM" data-tag="00FM">1.1.1</a></span>
    <div>\begin{equation} \label{e:stationary-path} \delta S[ x_{ph}(t)] = 0 , x_{ph}(t_0) = x_0, x_{ph}(t_1) = x_1 \end{equation}</div>
</div>
<p>
 This condition leads to so-called Euler–Lagrange equations, which are the equations of motion in classical mechanics. 
</p>
<p>
In quantum mechanics, the state of the particle is described by the wave function $\psi $, a vector in some Hilbert space $\mathcal{H}_ N$; for a single particle moving in configuration space $N$, $\mathcal{H}_ N$ is the space of square integrable functions on $N$: 
</p>
<div class="equation">
  \begin{equation*}  \psi \in \mathcal{H}_ N \cong L^2(N). \end{equation*}
</div>
<p>
The evolution of a quantum-mechanical system from time $t_0$ to $t_1$ is described by the evolution operator: 
</p>
<div class="equation">
  \begin{equation*}  U_{t_0,t_1}\colon \mathcal{H}_ N \to \mathcal{H}_ N. \end{equation*}
</div>
<p>
Traditionally, this operator is defined using the Schrödinger equation. However, there is an alternative approach, based on Feynman's path integral. Namely, let us express the evolution operator using an integral kernel: 
</p>
<div class="equation" >
    <span class="equation-label">1.1.2</span>
    <div>\begin{equation}  (U_{t_0,t_1} \psi )(x_1) = \int _{N} K(x_1,x_0) \psi (x_0) dx_0 \end{equation}</div>
</div>
<p>
The Feynman path integral prescription states that this integral kernel can be written as: 
</p>
<div class="equation" id="00FN">
    <span class="equation-label"><a href="/tag/00FN" data-tag="00FN">1.1.3</a></span>
    <div>\begin{equation} \label{e:feynman1} K(x_1,x_0) = \int _{\substack {\gamma (t_0)=x_0 \\ \gamma (t_1)=x_1}} e^{ \frac{i}{\hbar } S[\gamma ] } D\gamma \end{equation}</div>
</div>
<p>
 where $\hbar $ is the Planck constant. 
</p>
<p>
The physical essence of this formula is that all possible paths taking the particle from $x_0$ at $t_0$ to $x_1$ at $t_1$ contribute to its evolution. This prescription of integration over all trajectories is sometimes called “sum over histories”. 
</p>
<p>
Formula (<a href="/tag/00FN" data-tag="00FN">1.1.3</a>) expresses the evolution operator in terms of integral over the infinite-dimensional space of paths. Making sense of such integrals is non-trivial; however, heuristically one can argue that in the limit $\hbar \to 0$, the integral in (<a href="/tag/00FN" data-tag="00FN">1.1.3</a>) is dominated by the contribution from the neighborhood of critical points of the action. For finite-dimensional integrals of this form, method of stationary phase allows one to write asymptotic expansion in powers of $\hbar $; using that as inspiration, one can also write similar formulas for asymptotic expansion of integral (<a href="/tag/00FN" data-tag="00FN">1.1.3</a>). The lowest order term in this expansion corresponds to contribution from the classical path defined in (<a href="/tag/00FM" data-tag="00FM">1.1.1</a>). 
</p>
<p>
In Table <a href="/tag/0003" data-tag="0003">1.1.1</a>, we summarize the main structures of classical mechanics and the analogous quantities in quantum mechanics. In the next section, we will use this prescription of sum over histories to define time evolution in a quantum field theory. 
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
<strong>Classical mechanics</strong> 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 <strong>Quantum mechanics</strong> 
</p>

    </td>
  </tr>
  <tr>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:right; border-right:1px solid black; border-left:1px solid black"
        rowspan=""
        colspan="">
      <p>
 Position 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
$x\in N$ (configuration space) 
</p>

    </td>
    <td  style="border-top-style:solid; border-top-color:black; border-top-width:1px; text-align:left; border-right:1px solid black"
        rowspan=""
        colspan="">
      <p>
 $\psi \in \mathcal{H}_ N \cong L^2(N)$ 
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
$\gamma \colon [t_0, t_1]\to N$ 
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
$S[\gamma ]=\int L(\gamma ,\dot\gamma ) dt$ 
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
Stationary action principle
&#8195;$\delta S[\gamma ]=0$ (fixed endpoints)  
</p>

    </td>
    <td  style="text-align:left; border-right:1px solid black; border-bottom-style:solid; border-bottom-color:black; border-bottom-width:1px"
        rowspan=""
        colspan="">
      <p>
  Sum over histories 
$(U\psi )(x_1) = \int _ N K(x_1, x_0) \psi (x_0) dx_0$
$K(x_1,x_0) = \int e^{\frac{i}{\hbar } S[\gamma ]} D\gamma $  
</p>

    </td>
  </tr>
</table> <figcaption class="figcaption">Table 1.1.1. Summary of the main structures in classical and quantum mechanics</figcaption>  </div>
