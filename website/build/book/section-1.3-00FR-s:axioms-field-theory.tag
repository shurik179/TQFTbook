<h2 id="s:axioms-field-theory" class="tex-section"><span data-tag="00FR">1.3</span> Axioms of quantum field theory</h2>

<p>
Let us ignore the problems involved in the above definition of QFT, and let us only focus on the formal properties that any sensible quantum field theory should satisfy, focusing on a few axioms that are necessary to transition to TQFTs. 
</p>
<p>
Taking motivation from the path integral formulation of QFT outlined in the previous section, we define a QFT as the following structure: 
</p>
<ul>
  <li><p>
For every $(n-1)$-dimensional manifold $N$, we have a <em>Hilbert space</em> $\mathcal{H}_ N$. 
</p>
</li><li><p>
For every $n$-dimensional manifold $M$ together with decomposition $\partial M=\overline{N_0}\sqcup N_1$, we have the evolution operator $Z_ M\colon \mathcal{H}_{N_0}\to \mathcal{H}_{N_1}$, given by the path integral formula (<a href="/tag/00FP" data-tag="00FP">1.2.2</a>). (Previously, we used $U$ for the time evolution; we switch the notation to $Z$ which is more common in QFT). 
</p>
</li>
</ul>
<p>
These two pieces of data should satisfy certain conditions for consistency: 
</p>
<ol>
  <li><p>
<strong>Disjoint union axiom</strong>: Assume that $N$ is disconnected: $N=N_1\sqcup N_2$. Then for the space of fields, we have $\mathcal{F}_{N}=\mathcal{F}_{N_1}\times \mathcal{F}_{N_2}$. Using the heuristic definition $\mathcal{H}_ N=L^2(\mathcal{F}_ N)$, we therefore require 
</p>
<div class="equation" id="00EG">
    <span class="equation-label"><a href="/tag/00EG" data-tag="00EG">1.3.1</a></span>
    <div>\begin{equation} \label{e:qft-axiom1} \mathcal{H}_{N_1\sqcup N_2} \cong \mathcal{H}_{N_1}\otimes \mathcal{H}_{N_2} \end{equation}</div>
</div>
</li><li><p>
<strong>Gluing axiom</strong>: So defined evolution operators satisfy the gluing axiom, which is a generalization of (<a href="/tag/00FQ" data-tag="00FQ">1.2.6</a>). 
</p>
<p>
Consider a manifold $M$ that can be cut into two manifolds $M_1$ and $M_2$ along a codimension one submanifold $N$, see Figure&#160;<a href="/tag/00FT" data-tag="00FT">1.3.1</a> for an illustration. If $\partial M = \overline{N_0} \sqcup N_1$, then $\partial M_{1} = \overline{N_0} \sqcup N$, and $\partial M_{2} = \overline{N} \sqcup N_1$. 
</p>
<p>
Gluing axiom says that operator $Z_{M}$ is the same as composing operators $ Z_{M_1}$ and $Z_{M_2}$: 
</p>
<div class="equation" id="00FS">
    <span class="equation-label"><a href="/tag/00FS" data-tag="00FS">1.3.2</a></span>
    <div>\begin{equation} \label{e:gluing-axiom} Z_{M} = Z_{M_2} \circ Z_{M_1} \end{equation}</div>
</div>
<p>
 In the path integral picture, this is a natural expectation. Instead of doing path integral over entire manifold $M$, we can do the path integral in two ( or more ) steps. Evolving a state $\psi $ from $\mathcal{H}_{N_0}$ to $\mathcal{H}_{N}$ with operator $Z_{M_1}$, and then evolving the state $Z_{M_1} \psi $ from $\mathcal{H}_{N}$ to $\mathcal{H}_{M_1}$ with operator $Z_{M_1}$ produces the state $( Z_{M_2} \circ Z_{M_1} ) \psi $. We expect this final state to equal $Z_ M \psi $ for every initial state $\psi $. 
</p>
<p>
Note that the manifolds don't need to be cylinders. If we consider the case where $M_1=N\times [t_0,t_1]$, $M_2=N\times [t_1,t_2]$, then we recover (<a href="/tag/00FQ" data-tag="00FQ">1.2.6</a>) from the previous section. 
</p>
<figure class="figure">
  <div class="centered"><p>
<img class="includegraphics" src="/static/figures/c1-fig01.svg" /> 
</p>
<figcaption class="figcaption">Figure 1.3.1. Cutting of a manifold $M$ into two manifolds $M_1$ and $M_2$, along a codimension one submanifold $N$. Gluing axiom asserts that $Z_ M=Z_{M_2} \circ Z_{M_1}$. </figcaption>

</div>

</figure>
<p>
Gluing axiom is a very strong axiom. It allows us to compute the path integral of a manifold from smaller pieces. The gluing axiom tells us how the (path integrals of) smaller pieces are to be glued along their boundaries in order to reconstruct the path integral of the original manifold. The underlying assumption that we can compute path integral of smaller pieces individually makes the locality of a theory manifest. 
</p>
<p>
Note that for an empty space $\varnothing $, it is natural to expect $\mathcal{H}_\varnothing =\mathbb {C}$. This easily follows from the multiplication axiom since $\varnothing $ is the unit of disjoint union operation : $ \mathcal{H}_{N} \cong \mathcal{H}_{N \sqcup \varnothing } \cong \mathcal{H}_{N}\otimes \mathcal{H}_{\varnothing } $. Thus, for a closed spacetime (i.e., $\partial M=\varnothing $), we get an operator 
</p>
<div class="equation" >
    <span class="equation-label">1.3.3</span>
    <div>\begin{equation}  Z_ M\colon \mathbb {C}\to \mathbb {C}. \end{equation}</div>
</div>
<p>
 In other words, $Z_ M\in \mathbb {C}$ is a number; in physics it is usually called the <em>partition function</em> and denoted by $Z(M)$. 
</p>
</li>
</ol>
