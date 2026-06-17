<h1 id="c:2d-classification" class="tex-chapter"><span data-tag="0021">4</span> Classification of 2d TQFT</h1>
<p>
 In this chapter, we present a full classification of 2-dimensional TQFTs; the final answer, given in Theorem&#160;<a href="/tag/002S" data-tag="002S">4.3.3</a>, states that such theories are classified by commutative Frobenius algebras. This is a relatively simple result; it goes back to at least 1989, see Dijkgraaf's thesis <span class="cite">[<a href="/bibliography/dijkgraaf-thesis">Dij1989</a>]</span>, but was probably known to experts much earlier. For us, it will serve as a model example for all future constructions. 
</p>
<p>
For a two-dimensional TQFT, there is only one $1$-dimensional oriented closed manifold: the circle $S^1$, and any orientation-preserving diffeomorphism $S^1\to S^1$ is isotopic to the identity. It also seems obvious (and in fact can be justified using Morse theory, as we discuss below) that any cobordism can be obtained by gluing pieces diffeomorphic to one of the cobordisms below together with the cylinder $S^1\times I$: 
</p>
<div class="centered"> <img class="includegraphics" src="/static/figures/c4-fig01.svg" /> </div>
<p>
It is also not hard to write some relations, such as the associativity relation 
</p>
<div class="equation" id="00F1">
    <span class="equation-label"><a href="/tag/00F1" data-tag="00F1">4.0.1</a></span>
    <div class="centered"><img class="includegraphics" src="/static/figures/c4-fig02.svg"></div>
</div>
<p>
However, how can one show that this is the full list of relations? 
</p>
<p>
There are two approaches. One, used in <span class="cite">[<a href="/bibliography/kock">Koc2004</a>]</span>, uses the classification of surfaces; using that, we show that the relations we have are enough to bring any composition of generators to some canonical form. This approach does not require much beyond the classification of surfaces, but it does not generalize to higher dimensions. 
</p>
<p>
There is, however, an alternative approach, based on Morse and Cerf theory. This goes back at least to <span class="cite">[<a href="/bibliography/abrams">Abr1996</a>]</span>, who used a handle-decomposition viewpoint to give a classification of 2d TQFTs; the Cerf-theoretic version is presented in <span class="cite">[<a href="/bibliography/moore-segal">MS</a>]</span> and <span class="cite">[<a href="/bibliography/freed-bordism">Fre2012</a>, <span class="postnote">Lecture&#160;23</span>]</span>, the latter of which our exposition follows. One can also find more details in the unpublished paper <span class="cite">[<a href="/bibliography/gay-wehrheim-woodward">GWW2012</a>]</span>. 
</p>
