<h2 id="s:proof" class="tex-section"><span data-tag="00H5">19.4</span> Proof of independence of PLCW decomposition</h2>

<p>
In this section, we give proofs of Theorem&#160;<a href="/tag/00H2" data-tag="00H2">19.3.1</a>, Theorem&#160;<a href="/tag/00H3" data-tag="00H3">19.3.2</a>, i.e. prove that TV invariants are independent of the choice of PLCW decomposition. Before giving the proof, we will enumerate the moves that were mentioned in Theorem&#160;<a href="/tag/008C" data-tag="008C">11.3.1</a>, in a form more suited to this chapter. 
</p>
<dl>
  <dt>M1: removing a vertex</dt>
  <dd><p>
Let $v$ be a vertex which has a neighborhood whose intersection with the 2-skeleton is homeomorphic to the “open book” shown below with $k\ge 1$ leaves; moreover, assume that all leaves in the figure are distinct 2-cells and the two 1-cells are also distinct (i.e., not two ends of the same edge). Then move M1 removes vertex $v$ and replaces two 1-cells adjacent to it with a single 1-cell. 
</p>
<figure class="figure">
  <div class="equation">
  \[ \figscale {0.7}{figures/M1a.pdf} \xxto {\text{remove vertex } v} \figscale {0.7}{figures/M1b.pdf}  \]
</div>
<figcaption class="figcaption">Figure 19.4.1. Move M1</figcaption>


</figure>
</dd>
  <dt>M2: removing an edge</dt>
  <dd><p>
Let $e$ be a 1-cell which is regular and which is adjacent to exactly two distinct 2-cells $c_1, c_2$ as shown in the figure below. Then the move M2 removes the edge $e$ and replaces the cells $c_1,c_2$ with a single cell $c$. 
</p>
<figure class="figure">
  <div class="equation">
  \[ \figscale {0.7}{figures/M2a.pdf} \xxto {\text{remove edge } e} \figscale {0.7}{figures/M2b.pdf}  \]
</div>
<figcaption class="figcaption">Figure 19.4.2. Move M2</figcaption>


</figure>
</dd>
  <dt>M3: removing a 2-cell</dt>
  <dd><p>
Let $c$ be a 2-cell which is regular and which is adjacent to exactly two distinct 3-cells $F_1, F_2$ as shown in the figure below. Then the move M2 removes the 2-cell $c$ and replaces the cells $F_1,F_2$ with a single cell $F$. 
</p>
<figure class="figure">
  <div class="equation">
  \[ \figscale {0.7}{figures/M3a.pdf} \xxto {\text{remove face } c} \figscale {0.7}{figures/M3b.pdf}  \]
</div>
<figcaption class="figcaption">Figure 19.4.3. Move M3</figcaption>


</figure>
</dd>
</dl>
<p>
We will now show that the TV state sum is invariant under M1–M3. 
</p>
<h3 id="a0000000004" class="tex-subsection"><span data-tag="">None</span> Invariance under M1</h3>
<p>
 First we consider move M1. Note that by applying M2 and M3, we can transform an open book with any number of pages to one with only one page (see Figure&#160;<a href="/tag/00H9" data-tag="00H9">19.4.4</a>). 
</p>
<figure class="figure">
  <div class="equation">
  \begin{align*} & \figscale {0.7}{figures/book0.pdf} \xxto {\text{add edge to each page}} \figscale {0.7}{figures/book1.pdf} \\ &  \xxto {\text{add faces between new edges}} \figscale {0.7}{figures/book2.pdf} \xxto {\text{remove all pages but one}} \figscale {0.7}{figures/book3.pdf} \end{align*}
</div>
<figcaption class="figcaption">Figure 19.4.4. Decomposing an open book into a single page book</figcaption>


</figure>
<p>
Thus, it suffices to prove invariance under M1 in this special case. Drawing the dual graph in the vicinity of the vertex, invariance under M1 is equivalent to the following equality: 
</p>
<div class="equation">
  \[  \frac{1}{\DD }\sum _{j,k\in \mathcal{O}(\mathcal{C})}d_{j}d_{k}\tzPairingVII = \sum _{i\in \mathcal{O}(\mathcal{C})}d_{i}\tzPairingIII  \]
</div>
<p>
 Note the normalizing factor $\frac{1}{\mathcal{D}^2}$ which comes from the fact that we are removing a vertex. 
</p>
<p>
Using semisimplicity of $\mathbb {C}$, it is easy to see that it suffices to show this equality in the special case when $V=V_1\otimes \dots \otimes V_ n$ is simple: 
</p>
<div class="equation">
  \[  \frac{1}{\DD }\sum _{j,k\in \mathcal{O}(\mathcal{C})}d_{j}d_{k}\tzPairingVIII = \sum _{i\in \mathcal{O}(\mathcal{C})}d_{i}\tzPairingIX  \]
</div>
<p>
By Lemma&#160;<a href="/tag/" data-tag="">None</a>, the right-hand side is equal to $\operatorname{coev}_ V\colon \mathbf{1}\to V\otimes V^*$. Since $\operatorname{Hom}(\mathbf{1}, V\otimes V^*)$ is one-dimensional, the left-hand side is also a multiple of $\operatorname{coev}_ V$. Composing it with the evaluation morphism $\operatorname{ev}_ V$, we get 
</p>
<div class="equation">
  \begin{align*} & \frac{1}{\DD }\sum _{j,k}d_ jd_ kN_{1}^{Vjk} = \frac{1}{\DD }\sum _{j,k}N_{k^*}^{Vj}d_ kd_ j\\ & \quad =\frac{1}{\DD }\sum _{j}\Bigl (\sum _{k}N_{k^*}^{Vj}d_ k\Bigr )d_ j= \frac{1}{\DD }\sum _{j}(d_{V}d_ j)d_ j=d_ V, \end{align*}
</div>
<p>
 which proves that the left-hand side is equal to $\operatorname{coev}_ V$. 
</p>
<h3 id="a0000000003" class="tex-subsection"><span data-tag="">None</span> Invariance under M2</h3>
<p>
 The invariance under M2 is seen as follows. By definition, the edge being removed is incident to exactly two faces $c_1, c_2$. Each face bounds the same two 3-cells $F_1, F_2$. In Figure&#160;<a href="/tag/00HA" data-tag="00HA">19.4.5</a>, we draw the dual graphs. In each of the summands we have two graphs corresponding to cells $F_1, F_2$, separated by a dot. The equality follows immediately from the fact that if $\varphi _\alpha ,\varphi ^\alpha $ and $\psi _\beta ,\psi ^\beta $ are dual bases, then so are $\varphi _\alpha \ccc {X_ i}\psi _\beta $, $\psi ^\beta \ccc {X_ i^*}\varphi ^\alpha $ (cf. Corollary&#160;<a href="/tag/" data-tag="">None</a>). 
</p>
<figure class="figure">
  <div class="equation">
  \begin{align*} & \sum _{i,\alpha ,\beta }d_{i}\tzMoveMtwoI \tzMoveMtwoII \\ & \quad = \sum _{i,\alpha ,\beta } \tzMoveMtwoIII \tzMoveMtwoIV \end{align*}
</div>
<figcaption class="figcaption">Figure 19.4.5. </figcaption>


</figure>
<h3 id="a0000000002" class="tex-subsection"><span data-tag="">None</span> Invariance under M3</h3>
<p>
 Finally, we consider M3. In this case the invaraince immediately follows from Lemma&#160;<a href="/tag/" data-tag="">None</a>, whith two subgraphs corresponding to two 3-cells separated by the 2-cell being removed. 
</p>
