<h2 id="s:lattice-gauge" class="tex-section"><span data-tag="0095">12.3</span> Finite group gauge theory as lattice theory</h2>
<p>
 Let us consider a special example, which we have already discussed using a different approach in Example&#160;<a href="/tag/007T" data-tag="007T">10.6.1</a>, namely when the algebra $A=\mathbf{k}[G]$ is the group algebra of a finite group $G$ and Frobenius structure is given by 
</p>
<div class="equation">
  \[  \varepsilon (g)=\delta _{g,1} = \frac{1}{|G|}\operatorname{tr}_ R(g), \qquad g\in G,  \]
</div>
<p>
 where $R$ is the regular representation. 
</p>
<p>
In this case the element $e=\sum x_ i\otimes x^ i\in A\otimes A$ is given by 
</p>
<div class="equation">
  \[  e=\sum _{g\in G}g\otimes g^{-1}  \]
</div>
<p>
 so that $w=|G|$. 
</p>
<p>
In this case, the map $\langle \,  , \, \rangle $ is given by 
</p>
<div class="equation">
  \[  \langle g_1, \dots , g_ k\rangle =\begin{cases}  1, &  g_1\dots g_ k=1\\  0, &  \text{otherwise} \end{cases}  \]
</div>
<p>
 Thus, one easily sees that for a closed 2-manifold $M$ the state-sum (<a href="/tag/008P" data-tag="008P">12.1.6</a>) becomes 
</p>
<div class="equation">
  \[  Z_ A(M,K)=\frac{1}{|G|^ V} \sum _{c} 1  \]
</div>
<p>
 where $V$ is the number of vertices of $K$ and the sum is over all “colorings” of edges, i.e., ways of assigning a group element $g_ r$ to each oriented edge $r$ so that for two opposite orientations of the same edge, $g_{r'}=g_{r''}^{-1}$ and such that the product of colors over the boundary of any 2-cell is equal to 1. 
</p>
<p>
One easily sees that it is a discrete version of a connection in $G$-bundles: without the factor $\frac{1}{|G|^ V}$, this counts $G$-bundles on $M$ together with trivializations at every vertex. Thus, dividing by $|G|^ V$ exactly gives the number of $G$-bundles on $M$ counted as in Chapter&#160;<a href="/tag/003K" data-tag="003K">6</a>; in other words, this recovers the Dijkgraaf–Witten TQFT. 
</p>

