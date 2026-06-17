<h2 id="s:finite-categories" class="tex-section"><span data-tag="00AM">16.2</span> Finite $\mathbf{k}$-linear categories</h2>
<p>
 Our first step is defining a 2-category which will replace the category $\mathbf{Vec}$. For that, recall that we have defined the notion of a locally finite $\mathbf{k}$-linear abelian category as a $\mathbf{k}$-linear abelian category where all objects have finite length and all $\operatorname{Hom}$ spaces are finite-dimensional, see Section&#160;<a href="/tag/004W" data-tag="004W">7.4</a>. Such categories form a 2-category $\mathbf{Lin}$; this 2-category should be considered a natural categorical analog of the category of vector spaces. 
</p>
<p>
Let us now consider a more restrictive set of requirements. 
</p>
<p>
<article class="env-definition" id="00AN">
  <p><a class="environment-identifier" href="/tag/00AN">Definition <span data-tag="00AN">16.2.1</span>.</a> A $\mathbf{k}$-linear category $\mathcal{A}$ is called <em>finite</em>  if it satisfies the following properties: </p>
  <p><ol>
  <li><p>
For any $A,B\in \mathcal{A}$, the vector space $\operatorname{Hom}_\mathcal{A}(A,B)$ is finite-dimensional. 
</p>
</li><li><p>
Any object $A\in \mathcal{A}$ has finite length. 
</p>
</li><li><p>
$\mathcal{A}$ has enough projectives: any $A\in \mathcal{A}$ is a quotient of a projective object $P\in \mathcal{A}$. 
</p>
</li><li><p>
There are only finitely many isomorphism classes of simple objects. 
</p>
</li>
</ol></p>
</article> Note that we do not assume that $\mathcal{A}$ is semisimple. 
</p>
<p>
<article class="env-example" id="00AP">
  <p><a class="environment-identifier" href="/tag/00AP">Example <span data-tag="00AP">16.2.1</span>.</a> Let $A$ be a finite-dimensional algebra over $\mathbf{k}$. Then the category $A\mathbf{{-}mod}$ of finite-dimensional $A$-modules is a finite $\mathbf{k}$-linear category. Moreover, it is easy to show that conversely, every finite $\mathbf{k}$-linear category is equivalent to the category $A\mathbf{{-}mod}$ for some finite-dimensional algebra $A$ (see <span class="cite">[<a href="/bibliography/etingof-fusion">EGNO2015</a>, <span class="postnote">Section&#160;1.8</span>]</span>). </p>
</article> 
</p>
<p>
Unless stated otherwise, all functors between $\mathbf{k}$-linear categories will be assumed to be additive, $\mathbf{k}$-linear, and right exact. 
</p>
<p>
<article class="env-definition" id="00AQ">
  <p><a class="environment-identifier" href="/tag/00AQ">Definition <span data-tag="00AQ">16.2.2</span>.</a> We denote by $\mathbf{Lin_ f}$ the 2-category of finite $\mathbf{k}$-linear abelian categories together with additive and $\mathbf{k}$-linear right exact functors between them and functorial morphisms. </p>
</article> The so-defined 2-category $\mathbf{Lin_ f}$ is the categorical analog of the category of finite-dimensional vector spaces. 
</p>
<p>
<article class="env-remark" id="">
  <p><a class="environment-identifier" href="/tag/">Remark <span data-tag="">16.2.1</span>.</a>One might notice that we are not quite consistent: in the $n=2$ case, we started with category of all vector spaces, not necessarily finite-dimensional ones, so our 2-category $\mathbf{Alg}$ also included infinite-dimensional algebras — which, however, were irrelevant for constructing TQFTs: any fully dualizable (i.e., separable) algebra is automatically finite-dimensional. In the $n=3$ case, we start with finite linear categories from the beginning. </p>
  <p>The reason is mostly technical; many of the constructions below work for any locally finite category (i.e., a category only satisfying the first 2 conditions of Definition&#160;<a href="/tag/00AN" data-tag="00AN">16.2.1</a>). I expect that one can in fact define a version of the (not yet constructed) 3-category $\mathbf{Tens}$ starting with locally finite linear categories rather than finite; however, it does create some technical difficulties, and since we expect that the only categories we will need for extended 3d TQFTs will be finite anyway, we can save some trouble and only work with finite linear categories from the beginning. </p>
</article> 
</p>
