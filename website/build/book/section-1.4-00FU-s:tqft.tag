<h2 id="s:tqft" class="tex-section"><span data-tag="00FU">1.4</span> Topological QFT</h2>

<p>
So far we have not specified what we mean by “manifold”. Usually in physics the spacetime is an oriented pseudo-Riemannian manifold, with metric of signature $(1, n-1)$. However, we will be interested in a very special case, namely when all the structures above do not use the metric on the space; thus, we only require $M$ to be an oriented smooth manifold. Such theories are called <em>topological</em>. The most famous example of such a theory is Chern–Simons theory (see <span class="cite">[<a href="/bibliography/witten-jones">Wit1989</a>]</span>), in which the spacetime $M$ must be 3-dimensional, and fields are $\mathrm{SU}(N)$ connections on $M$. After choosing a trivialization of the bundle, these fields can be described by one-forms, usually denoted by $A$, with values in the Lie algebra $\mathfrak {su}(N)$. The action is then given by 
</p>
<div class="equation" >
    <span class="equation-label">1.4.1</span>
    <div>\begin{equation}  S[A] = \frac{k}{4 \pi } \int _ M \operatorname{tr}(A\wedge dA + \tfrac {2}{3}A\wedge A\wedge A) \end{equation}</div>
</div>
<p>
The ‘level' $k$ is a fixed integer parameter of the theory. Although the numerical value of the Chern–Simons action may change by an integer multiple of $2\pi k$ under a change of trivialization, the exponentiated action $e^{i S[A]}$ is unchanged. The important thing to note here is that the path integrals defined using this action do not depend on the choice of the metric. So the partition functions assigned by this QFT are invariant under orientation-preserving diffeomorphisms. (It turns out that there are other observables in this theory besides the partition functions, namely the Wilson loops, but our preliminary definition of a TQFT is agnostic of these observables.) We can axiomatize the invariance under diffeomorphisms as a defining property of a topological theory. Together with the axioms of a QFT, we get the following preliminary definition: 
</p>
<p>
<article class="env-predefinition" id="00FV">
  <p><a class="environment-identifier" href="/tag/00FV">Preliminary Definition <span data-tag="00FV">1.4.1</span>.</a> An $n$-dimensional topological field theory (TQFT) is the following collection of data </p>
  <p><ul>
  <li><p>
For every closed $(n-1)$-dimensional oriented smooth manifold $N$, a vector space $Z_ N$ 
</p>
</li><li><p>
For every $n$-dimensional oriented manifold $M$ with boundary $\partial M=\overline{N_0}\sqcup N_1$, a linear operator $Z_ M\colon Z_{N_0}\to Z_{N_1}$, 
</p>
</li>
</ul></p>
  <p>such that </p>
  <p><ul>
  <li><p>
Orientation preserving diffeomorphisms preserve this data 
</p>
</li><li><p>
This data satisfies the disjoint union axiom and the gluing axiom defined above. 
</p>
</li>
</ul></p>
</article> 
</p>
<p>
There is a lot more detail to be filled in, but that requires some preparation. We will provide a more precise definition, due to Atiyah <span class="cite">[<a href="/bibliography/atiyah">Ati1988</a>]</span>, later (see Definition&#160;<a href="/tag/0018" data-tag="0018">3.1.4</a>). 
</p>
<p>
Remarkably, topological theories are much easier to define rigorously than general QFTs. For example, as we show later, in a TQFT all Hilbert spaces assigned to $(n-1)$-dimensional manifolds are automatically finite-dimensional, thus avoiding all analytical difficulties with convergence. And instead of defining a TQFT by a path integral or other global construction (which can be very hard to do), we can try to construct TQFTs by defining $Z(M)$ for “elementary blocks” and gluing every manifold from them. For example, for $n=2$, any manifold can be obtained by gluing copies of the disk, cylinder, and pair of pants. 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c1-fig02.svg" /> </div>
<p>
Of course, we need to have some compatibility conditions to ensure that different ways of gluing the manifold from pieces give the same result; essentially, we are trying to define manifolds by “generators and relations”. For $n=2$ it is not too hard (we will do so in Chapter&#160;<a href="/tag/0021" data-tag="0021">4</a>); for larger $n$, it is harder — e.g., for $n=3$ we can consider so-called Heegaard decomposition (which already requires infinitely many blocks, namely all handlebodies of arbitrary genus) or use surgery along knots. The difficulty lies in how fast the data grows with higher dimensions. Ideally, we would want the number of generators/relations to be as small as possible in a TQFT, or at least finite. One such notion is that of an extended TQFT. 
</p>
