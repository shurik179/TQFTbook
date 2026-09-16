<h2 id="s:stringnet" class="tex-section"><span data-tag="00HB">19.5</span> String-net model</h2>

<p>
FIXME: stringnet model of $Z(N)$ for closed surface $N$, following <span class="cite">[<a href="/bibliography/kirillov-stringnet">Kir2011</a>]</span>. 
</p>
<p>
In this section we look at a physics model which, in a certain limit, is described by Turaev–Viro TQFT. This model was introduced by Levin-Wen <span class="cite">[<a href="/bibliography/levin-wen">LW2005</a>]</span>, and is known as the string-net model. Roughly speaking, a state in this model consists of highly fluctuating “string-nets” on a closed surface $N$, which are colored graphs on $N$ modulo some local relations. The allowed graphs on these string-nets alongwith the local relations encode the data of a spherical fusion category $\mathcal{C}$. We will here outline the correspondence between the string-net model and Turaev–Viro TQFT. Formal details, including the most general proof for this correspondence can be found in <span class="cite">[<a href="/bibliography/kirillov-stringnet">Kir2011</a>]</span>. We also use this section to make some general comments about how TQFTs are viewed in relation to gapped quantum systems in physics. 
</p>
<p>
Using the Definition&#160;<a href="/tag/00GV" data-tag="00GV">18.5.1</a> of a colored graph, we denote 
</p>
<div class="equation">
  \[  \mathrm{Graph}(N)=\text{set of all $\mathcal{C}$-colored graphs in $N$ }  \]
</div>
<p>
We can also consider formal linear combinations of colored graphs. We denote 
</p>
<div class="equation">
  \[  \mathrm{VGraph}(N)=\text{formal linear combinations of graphs }\Gamma \in \mathrm{Graph}(N)  \]
</div>
<p>
<article class="env-definition" id="00HC">
  <p><a class="environment-identifier" href="/tag/00HC">Definition <span data-tag="00HC">19.5.1</span>.</a> Let $D \in N$ be an embedded disk. We define a null graph $\boldsymbol {\Gamma } = c_1 \Gamma _1 + \cdots + c_ n \Gamma _ n \in \mathrm{VGraph}(N)$ to be a linear combination of clolored graphs in $N$ such that: </p>
  <p><ol>
  <li><p>
$\Gamma $ is transerversal to $\partial D$ (i.e., no vertices of $\Gamma _ i$ are on the boundary of $D$ and edges of each $\Gamma _ i$ meet $\partial D$ transversally). 
</p>
</li><li><p>
All $\Gamma _ i$ coincide outside of $D$. 
</p>
</li><li><p>
$\langle  \boldsymbol {\Gamma } \rangle _ D = \sum c_ i \langle  \Gamma _ i \cap D \rangle _ D =0$, where $ \langle  \Gamma _ i \cap D \rangle _ D$ is the expectation value defined by Theorem&#160;<a href="/tag/00D3" data-tag="00D3">18.5.1</a>. 
</p>
</li>
</ol></p>
</article> 
</p>
<p>
The local relations ( adapted to our discussion ) are given in Figure&#160;<a href="/tag/00D4" data-tag="00D4">18.5.2</a>. More physics oriented illustrations of local relations can be found in the original paper <span class="cite">[<a href="/bibliography/levin-wen">LW2005</a>]</span>. 
</p>
<p>
<article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">19.5.2</span>.</a>Let $N$ be an oriented closed surface. The string-net space $H^{string}(N)$ is the quotient space </p>
  <div class="equation">
  \[  H^{string}(N) = \mathrm{VGraph}(N)/\mathrm{VGraph}_0(N)  \]
</div>
  <p> where $\mathrm{VGraph}_0(N)$ is the subspace spanned by null graphs ( for all possible embedded disks $D \in N$). </p>
</article> 
</p>
<p>
The correspondence between Turaev–Viro TQFT and string-net models is the following theorem. 
</p>
<p>
<article class="env-theorem" id="00HD">
  <p><a class="environment-identifier" href="/tag/00HD">Theorem <span data-tag="00HD">19.5.1</span>.</a> Let $N$ be a closed oriented surface. Then one has a canonical isomorphism </p>
  <div class="equation">
  \[  H^{string}(N) \simeq Z(N),  \]
</div>
  <p> where the Turaev–Viro functor $Z(N)$ was defined in Definition&#160;<a href="/tag/00GX" data-tag="00GX">19.2.4</a>. </p>
</article> 
</p>
<p>
In fact, the correspondence can also be extended to surfaces with boundaries. In the languge of string-nets, surfaces with boundaries describe excited states. A surface with boundaries can be obtained from an oriented closed surface by removing some discs. These would-be-discs are said to host quasiparticles or anyons. Different possible quasiparticles in the string-net model are given by the simple objects of $\mathcal{Z}(\mathcal{C})$ — the Drinfeld center of $\mathcal{C}$. The proof and the precise statement can again be found in <span class="cite">[<a href="/bibliography/kirillov-stringnet">Kir2011</a>]</span>. Heuristically, a quasiparticle must admit a consistent rule for moving any string labeled by an object of $\mathcal{C}$ past it. Such a rule is precisely the half-braiding, and its compatibility with the tensor product of $\mathcal{C}$ is the hexagon axiom (compare Definition&#160;<a href="/tag/00DJ" data-tag="00DJ">18.7.1</a>). 
</p>
<p>
The string-net model provides a microscopic Hamiltonian ( on a lattice ) for the given spherical fusion category $\mathcal{C}$. The Hamiltonian operator is engineered such the its ground states necessarily obey the local relations. The states invariant under the local moves are constructed by taking superposition of all graphs related through local moves. In this sense, the ground states in the string-net model are described as fluctuating string-nets, or condensed string-nets. Note that the actual string-net model has excited states too, but their energy gap relative to the ground state(s) is large enough that they can be ignored while working with low energy processes. We say that the string-net model is “gapped”, and the model flows ( under renormalization ) to a TQFT. This is a recurring theme in the physics literature: the low energy limit of a gapped quantum system is described by a TQFT. After enough coarse-graining, any observable should be insensitive to local relations. The microscopic details, including the choice of lattice, get washed out when the theory reaches the low energy fixed point of the renormalization group flow. This was partly the motivation used by Levin-Wen to come up with the string-net model. 
</p>
