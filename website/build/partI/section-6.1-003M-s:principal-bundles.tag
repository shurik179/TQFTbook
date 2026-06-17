<h2 id="s:principal-bundles" class="tex-section"><span data-tag="003M">6.1</span> Principal $G$-bundles</h2>

<p>
<article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">6.1.1</span>.</a> A $G$-bundle over a manifold $M$ is a finite covering $\pi \colon P\to M$ together with a right action of $G$ on $P$ which preserves $\pi $ and such that the action of $G$ on each fiber $P_ x=\pi ^{-1}(x)$ is free and transitive. </p>
</article> The reason for choosing a right action instead of a left one is purely technical; one could also use left action and get an equivalent definition. 
</p>
<p>
We define an isomorphism of $G$-bundles (for the same $G$ and $M$) in the obvious way. We denote by $\operatorname{Bun}_ G(M)$ the category of $G$-bundles on $M$, with morphisms being isomorphisms of $G$-bundles. This category is a <em>groupoid</em>, i.e., a category in which all morphisms are invertible. In particular, for a $G$-bundle $P$ we denote by $\operatorname{Aut}(P)$ the group of automorphisms of $P$. 
</p>
<p>
Since $G$ is discrete, any $G$-bundle comes with a flat connection: given a path $\gamma $ in $M$ connecting points $x_0, x_1\in M$, and a choice of lift $\tilde x_0\in P_{x_0}$, there is a unique way to lift $\gamma $ to a path in $P$. This gives a holonomy map $\rho _\gamma \colon P_{x_0} \to P_{x_1}$ which commutes with the right action of $G$. In particular, this gives us the monodromy map 
</p>
<div class="equation" id="003N">
    <span class="equation-label"><a href="/tag/003N" data-tag="003N">6.1.1</a></span>
    <div>\begin{equation} \label{e:monodromy} \rho \colon \pi _1(M,x)\to \operatorname{Aut}(P_ x) \end{equation}</div>
</div>
<p>
 where $\operatorname{Aut}(P_ x)$ is the group of all bijections $P_ x\to P_ x$ which commute with the right action of $G$. 
</p>
<p>
If we choose a point $\tilde x\in P_ x$, we can identify $P_ x$ with $G$; this gives an identification $\operatorname{Aut}(P_ x)\xrightarrow {\sim }G$ (since any bijection $G\to G$ which commutes with the right action of $G$ is given by left multiplication by some element of $G$). Thus, a pair $(P, \tilde x)$ gives rise to a monodromy map $\rho \colon \pi _1(M,x)\to G$. It is easy to see that conversely, for connected $M$, any group homomorphism $\pi _1(M,x)\to G$ defines a $G$-bundle $P$ together with a choice of a base point $\tilde x \in P_ x$. In other words, we have the following lemma. 
</p>
<p>
<article class="env-lemma" id="003P">
  <p><a class="environment-identifier" href="/tag/003P">Lemma <span data-tag="003P">6.1.1</span>.</a> Let $M$ be a connected manifold; fix a choice of base point $x\in M$. Then the set of isomorphism classes of pairs $(P, \tilde x)$, $\tilde x\in P_ x$, is in bijection with </p>
  <div class="equation">
  \[  \operatorname{Hom}(\pi _1(M,x),G).  \]
</div>
  <p> Moreover, such pairs have no non-trivial automorphisms: if $(P, \tilde x)$ and $(P', \tilde x')$ are two such pairs, then the isomorphism between them, if it exists, is unique. </p>
</article> 
</p>
<p>
We will refer to a pair $(P, \tilde x)$ as in the lemma as a <em>based $G$-bundle</em>. One can restate this lemma as follows: the groupoid $\widetilde{\operatorname{Bun}}_ G$ of based $G$-bundles is equivalent as a groupoid to the set $\operatorname{Hom}(\pi _1(M,x), G)$ (considered as a trivial groupoid: the only morphisms are identity morphisms). 
</p>
<p>
If we change the choice of $\tilde x$, replacing it by $\tilde x g$ (for the same $P$), then it is easy to see that the monodromy map (<a href="/tag/003N" data-tag="003N">6.1.1</a>) is conjugated by $g^{-1}$. Thus, we get the following result. 
</p>
<p>
<article class="env-lemma" id="003Q">
  <p><a class="environment-identifier" href="/tag/003Q">Lemma <span data-tag="003Q">6.1.2</span>.</a> Let $M$ be connected. Then the set of isomorphism classes of objects in $\operatorname{Bun}_ G(M)$ is in bijection with </p>
  <div class="equation">
  \[  \operatorname{Hom}(\pi _1(M,x),G)/G  \]
</div>
  <p> where $G$ acts by conjugation. Moreover, for $\rho \in \operatorname{Hom}(\pi _1(M,x),G)$, the automorphism group of the corresponding bundle $P$ is </p>
  <div class="equation" id="003R">
    <span class="equation-label"><a href="/tag/003R" data-tag="003R">6.1.2</a></span>
    <div>\begin{equation} \label{e:aut-bundle-monodromy} \operatorname{Aut}(P) = \{ g\in G\;  | \; g\rho g^{-1} = \rho \} . \end{equation}</div>
</div>
</article> One can restate it as an equivalence of groupoids. <article class="env-definition" id="">
  <p><a class="environment-identifier" href="/tag/">Definition <span data-tag="">6.1.2</span>.</a>Let $X$ be a set with an action of a group $G$. We define the groupoid $X/ \!  /G$ as the category whose objects are points $x\in X$ and $\operatorname{Hom}(x_0, x_1)=\{ g\in G\;  | \; g(x_0)=x_1\} $. </p>
</article> Then Lemma&#160;<a href="/tag/003Q" data-tag="003Q">6.1.2</a> says that for a connected $M$, the groupoid $\operatorname{Bun}_ G(M)$ is equivalent to $\operatorname{Hom}(\pi _1(M,x),G)/ \!  /G$. 
</p>
<p>
<article class="env-example" id="003S">
  <p><a class="environment-identifier" href="/tag/003S">Example <span data-tag="003S">6.1.1</span>.</a> Let $M=S^1$. Then $\widetilde{\operatorname{Bun}}_ G(S^1)\simeq G$, and $\operatorname{Bun}_ G(S^1)\simeq G/ \!  /G$ (in the second identity, $G$ acts on $G$ by conjugation). In particular, there is a bijection between the set of isomorphism classes of $\operatorname{Bun}_ G(S^1)$ and the set of conjugacy classes in $G$; if we denote by $P_ g$ the bundle corresponding to $g\in G$, then $\operatorname{Aut}(P_ g)$ is the centralizer of $g$: $\operatorname{Aut}(P_ g)\simeq Z_ g=\{ h\in G\;  | \; hgh^{-1}=g\} $. </p>
</article> 
</p>
