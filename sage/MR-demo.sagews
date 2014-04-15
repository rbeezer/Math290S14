︠f87f3019-8348-48a0-acab-89928c63f913i︠
load('mathbook-modern-3.css')

︡85b2d972-3786-4f13-904d-deca4cbc824c︡︡
︠e15b0a6f-d4ab-4e96-a26f-2a0bfb4dfd77x︠
%html
<div>\(\)</div>
︡8d19a80c-afba-43b9-917c-162c899d487c︡︡
︠e0a9d513-2b69-4e35-a74a-c4e402659ab5x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section MR</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Fall 2013<br>April 15, 2014</div>
</div>
︡f07b9654-4ed3-4faa-9b64-c16422c047d8︡︡
︠0ffab747-0340-4c64-a14e-862b33d64177x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">A Linear Transformation and some Bases</div>
</div></div>
︡1fb47888-d5d9-4d36-803d-0f6d93ea6674︡︡
︠90a52cca-da62-48a5-8d9f-7b8260567028x︠
%html
<p>In this section we define a linear transformation from \(\mathbb{C}^6\) to \(\mathbb{C}^4\).  The definition is a \(4\times 6\) matrix of rank \(4\) that we will use to multiply input vectors with a matrix-vector product.  It is not important if the linear transformation is injective and/or surjective.</p>
︡8fb0ff1a-88e5-4e04-a58a-e6c73201e4d9︡︡
︠8fbd3f8a-bf00-472b-9ad3-dbff2190ea52︠
m, n = 4, 6
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=m, upper_bound=9)
A

︡147476ee-47e5-4257-a2e6-49c39fc13283︡︡
︠b6d36f71-a373-4d84-ac19-1719affba644︠
T = linear_transformation(A, side='right')
T

︡fd49ce4b-d62a-4795-b1af-4f141ff65cbd︡︡
︠a0ec6d90-6730-45e1-8b88-a35cc5be0618x︠
%html
<p>And we construct two random bases, one for the domain and one for the codomain, extracted from the columns of unimodular matrices.</p>
︡62301c57-cc67-4596-86f2-228aa77805bc︡︡
︠61ddb2a9-6c9f-4665-bf78-848b896e2b6e︠
Dmat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D = Dmat.columns()
D

︡4f360da8-07b3-47a6-ac2b-01e2c2c75869︡︡
︠6ddfad3f-c43a-4f11-ab6d-1f3a1902f17a︠
Cmat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C = Cmat.columns()
C

︡befddc3f-591c-4cdd-a9a4-679bdd4ba023︡︡
︠43711299-0cc3-4366-a711-cc3fef02205cx︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">A Matrix Representation, Old Style</div>
</div></div>
︡ed9df595-6c45-4283-871c-152c81a1d4d0︡︡
︠74dc0ebf-dcee-4de6-8404-07107a1dac2dx︠
%html
<p>We will coordinatize the outputs of the linear transformation, for inputs from the basis of the domain, relative to the basis of the codomain, and pack them in a matrix.</p>
︡d6e75fa5-957f-4d83-bb86-cb1f7c877876︡︡
︠5a65389d-27c9-449b-a674-6deb9f10bc68x︠
%html
<p>Outputs on the domain basis first.</p>
︡4a7ef558-732c-4305-9bf6-f53a560f91e7︡︡
︠a6eeaf25-b5c5-4f48-aa79-608cff884774︠
outputs = [T(b) for b in D]
outputs

︡2bace776-c5df-4c0a-ab0b-413b2f7e2bdc︡︡
︠2eee3917-cb83-48e7-95a2-b7d33d3cae71x︠
%html
<p>We make a vector space for the codomain, with the desired basis.</p>
︡77f19c8e-c56b-49a0-b711-dc45f1316c3a︡︡
︠198eef07-7bf2-4627-bfcf-04d5a704c2b0︠
VC = (QQ^m).subspace_with_basis(C)
VC

︡025b50db-dbb2-47b7-b45c-36995f453ab8︡︡
︠ddc3ef95-61e4-4108-88ba-d5ca573b10fax︠
%html
<p>Now, coordinate versions of the outputs.</p>
︡83d86988-9329-44dd-8937-d72ebea0b5dd︡︡
︠02dde1bc-9256-4bb3-8472-e5494240580e︠
coord = [VC.coordinate_vector(t) for t in outputs]
coord

︡c830b90d-1c86-40e7-9bbf-6b80907d7e6d︡︡
︠536e195a-f3cc-42e0-9388-6f628a36b864x︠
%html
<p>And then we pack them into a matrix.</p>
︡df1f43db-f943-4ee1-a918-90271d754e9f︡︡
︠3418900b-e614-4eb1-a428-e6cf2feb68da︠
rep = column_matrix(coord)
rep

︡da3e7e61-c661-4868-8576-6c90c1fa44ca︡︡
︠9b40021a-ba3b-4e7c-b558-1fe0b4e46640x︠
%html
<p>Does the representation “work” as it should?  We need a vector space for the domain before we can check.</p>
︡14858224-1389-4bea-b8e1-93bbb752095c︡︡
︠eac84f80-6e14-4c29-8d8c-d9cbc1632e65︠
VD = (QQ^n).subspace_with_basis(D)
VD

︡f5125254-ebb7-4547-b004-6e8a5a487faa︡︡
︠cff71dc2-a5a8-47b3-a74b-fed600809dfbx︠
%html
<p>OK, coordinatize input, multiply by representation matrix, un-coordinatize (linear combination).  This is the fundamental Theorem FTMR at work.</p>
︡d2274744-32f4-42e3-accd-f964a10adb8e︡︡
︠0bb19e5a-0c69-4eed-bb74-373dd0a6bc62︠
u = random_vector(QQ, 6)
out = VC.linear_combination_of_basis(rep*VD.coordinate_vector(u))
u, out, T(u) ==  out

︡4d6d8f82-2589-4bb6-8bcd-133d251868eb︡︡
︠e8bcb220-2e6a-4c9f-be16-0dee3957a7fbx︠
%html
<p>Nice.</p>
︡aab091ed-66e4-4df1-93de-358eed5ca350︡︡
︠23cdb95e-0960-4c61-afca-4154a7fc5eb8x︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">A Matrix Representation, Sage Style</div>
</div></div>
︡3634da05-314d-4cfd-af1a-7726e727a3a8︡︡
︠1c1cb558-f92f-4097-9e8f-40beb229b37ax︠
%html
<p>Now we do it Sage style.  The matrix of the linear transformation first, as we like to see it.</p>
︡822f957f-9290-4a4f-8383-652ed3f62619︡︡
︠5debeff2-1c2d-423d-818d-a0bc16c6a886︠
T.matrix(side='right')

︡ccb6029f-9311-4770-9a78-86af34b08643︡︡
︠98126a6d-1312-4982-ae77-3d5dbf4b151ex︠
%html
<p>Now we replace the domain and codomain with new vector spaces, carrying different bases.  We are not really “restricting” the domain and codomain, we are replacing them.</p>
︡7aade21e-8b95-49b9-b666-492e4189ada2︡︡
︠5521fc52-8033-46b8-9507-7b467f999e9c︠
S = T.restrict_domain(VD).restrict_codomain(VC)
rep2 = S.matrix(side='right')
rep2

︡8b8ca426-42e8-439c-9a21-cb169dd965da︡︡
︠86ab17b8-fb94-40e6-bf77-3b01026c953ex︠
%html
<p>Bingo!  This is representation we found above.  A one-liner in Sage.</p>
︡95048a0d-df8c-46f7-9132-d1c71b0a8033︡︡
︠e3099301-7506-4c19-a4c1-399f6e7499fd︠
rep2 == rep

︡ab65ea58-9c23-43c2-a682-e63d018fe6a0︡︡
︠3ae275a6-1f72-496c-a20d-d66b0fa8f66ex︠
%html
<div class="section"><div class="heading">
<div class="number">4</div>
<div class="title">Sneak Preview</div>
</div></div>
︡48376968-9e18-4597-871e-f59af54058eb︡︡
︠7e473037-de51-4577-90fd-c84ed8f631edx︠
%html
<p>Ponder the following computation — matrix representations and nonsingular matrices with columns from the two bases.</p>
︡3162a862-a5eb-493b-a3ba-54d994a3b236︡︡
︠89561173-b42e-48c8-8690-de38161c01c6︠
S.matrix(side='right') - Cmat.inverse()*T.matrix(side='right')*Dmat

︡53286198-a009-4406-a726-3eefbba1a798︡︡
︠cd0df756-03c7-4421-919a-db796b4cdf5ex︠
%html
<p>Notice how Sage is conflicted about if <tt class="code">S</tt> and <tt class="code">T</tt> are equal or not.</p>
︡7f9e2f18-f7cb-4c52-ba05-5872c586a52b︡︡
︠f5449101-af16-449f-83d9-e1d1ab0f2f01︠
S == T

︡3ed5f6ae-ed05-480b-a143-a8d2a4ae69d3︡︡
︠96a4ea67-414c-431d-b825-cbde7b39e543︠
S.is_equal_function(T)

︡c6d78f21-8df7-4a5a-95db-c1d00173d955︡︡

