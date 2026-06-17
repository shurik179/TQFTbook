<h2 id="s:cobordism-hypothesis" class="tex-section"><span data-tag="00AC">15.1</span> Definition of extended TQFT and cobordism hypothesis</h2>
<p>
 In this section, we finally give a definition of an extended TQFT in any dimension $n$. 
</p>
<p>
Recall that in Section&#160;<a href="/tag/00A9" data-tag="00A9">14.9</a> we have defined the $(\infty ,n)$ category $\mathbf{Bord}_ n$ of $n$ bordisms with corners; to be precise, we have defined two versions: framed bordism category $\mathbf{Bord^{fr}}_ n$ and oriented bordism category $\mathbf{Bord^{or}}_ n$. Moreover, each of these categories has a structure of symmetric monoidal $(\infty ,n)$ category, with the monoidal structure given by the disjoint union. 
</p>
<p>
We can now give the key definition of these lectures. 
</p>
<p>
<article class="env-definition" id="00AD">
  <p><a class="environment-identifier" href="/tag/00AD">Definition <span data-tag="00AD">15.1.1</span>.</a> Let $\mathcal{C}$ be a symmetric monoidal $(\infty , n)$ category. A framed extended $n$-dimensional TQFT is a symmetric monoidal functor </p>
  <div class="equation">
  \[  Z\colon \mathbf{Bord^{fr}}\to \mathcal{C}.  \]
</div>
  <p> In a similar way one defines the notion of an oriented TQFT. </p>
</article> 
</p>
<p>
We denote the set of all such functors by 
</p>
<div class="equation">
  \[  \operatorname{Fun}^{\otimes }(\mathbf{Bord^{fr}}, \mathcal{C})  \]
</div>
<p>
 (respectively, $\operatorname{Fun}^{\otimes }(\mathbf{Bord^{fr}}, \mathcal{C})$). By FIXME, this is itself an $(\infty , 0)$ category, so we can talk, e.g., about isomorphism between two TQFTs. 
</p>
<p>
A fundamental result in this area is the following result. 
</p>
<p>
<article class="env-theorem" id="00AE">
  <p><a class="environment-identifier" href="/tag/00AE">Theorem <span data-tag="00AE">15.1.1</span> <span class="named">(Cobordism hypothesis)</span>.</a> Let $\mathcal{C}$ be a symmetric monoidal $(\infty , n)$ category. Then we have an equivalence of categories </p>
  <div class="equation">
  \[  \operatorname{Fun}^{\otimes }(\mathbf{Bord^{fr}}, \mathcal{C})\simeq \widetilde{\mathcal{C}^{{\mathrm{fd}}}} \]
</div>
  <p> given by $Z\mapsto Z(\bullet )$, where $\mathcal{C}^{\mathrm{fd}}$ the full subcategory of $\mathcal{C}$ whose objects are fully dualizable objects in $\mathcal{C}$, and $\widetilde{\mathcal{C}^{{\mathrm{fd}}}}$ is the subcategory obtained from $\mathcal{C}^{\mathrm{fd}}$ by discarding all non-invertible morphisms (of all orders). By definition, $\widetilde{\mathcal{C}^{{\mathrm{fd}}}}$ is an $(\infty ,0)$ category. </p>
</article> 
</p>
<p>
Note that here it is crucial that we use the framed version of bordism category. 
</p>
<p>
Before discussing the proof, let us note that it immediately implies the following. <article class="env-corollary" id="">
  <p><a class="environment-identifier" href="/tag/">Corollary <span data-tag="">15.1.2</span>.</a>An $n$-dimensional framed extended TQFT is determined uniquely up to isomorphism by the object $Z(\bullet )\in \mathcal{C}$ which must be fully dualizable. </p>
</article> This is a very far-reaching generalization of Theorem&#160;<a href="/tag/001Q" data-tag="001Q">3.3.2</a> which proved a similar statement for 1-dimensional TQFTs. 
</p>
<p>
The cobordism hypothesis has a very long history. It was first stated as a conjecture by Baez and Dolan <span class="cite">[<a href="/bibliography/baez-dolan-tqft">BD1995</a>]</span> in 1995. In 2008, Jacob Lurie published a famous paper <span class="cite">[<a href="/bibliography/lurie-cobordism">Lur2009a</a>]</span>, where he restated this conjecture in the language of $(\infty , n)$ categories and outlined the proof. The crucial ingredient of the proof is result of Igusa on framed Morse functions <span class="cite">[<a href="/bibliography/igusa">Igu1987</a>]</span>. Since then, many people worked on filling the details of the proof and extending it to other situations, such as <span class="cite">[<a href="/bibliography/ayala-francis2017">AF</a>]</span>. 
</p>
