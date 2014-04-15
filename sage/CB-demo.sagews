︠68f26746-d40a-440f-8f32-77ccb8ab66d3i︠
load('mathbook-modern-3.css')

︡ee67fff8-6380-40cd-96ef-abff6fdea146︡︡
︠34d41a0a-a797-4cf5-ac70-186900645c92x︠
%html
<div>\(\)</div>
︡f70f6551-0bc6-4c0e-b072-1881b62d7e51︡︡
︠65c628c8-f174-44bf-b205-cc1ba56d3315x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section CB</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Fall 2013<br>April 15, 2014</div>
</div>
︡7d71e9d9-cdd5-4867-ac6e-16d6117fdd19︡︡
︠dba1456f-7016-431c-a6be-a337d5f5839ex︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">A Linear Transformation, Two Vector Spaces, Four Bases</div>
</div></div>
︡0a20ad9b-ef02-4e2b-a601-56645466f52c︡︡
︠8d5925c1-4ccd-4de2-8bc3-252cb9134b3cx︠
%html
<p>In this section we deﬁne a linear transformation from \(\mathbb{C}^{3}\) to \(\mathbb{C}^{7}\). The deﬁnition is a \(7\times 3\) matrix of rank \(3\) that we will use to multiply input vectors with a matrix-vector product. It is not important if the linear transformation is injective and/or surjective.</p>
︡b10cbf0e-3d99-4dbc-8f20-fb7caeb7353e︡︡
︠f02c444c-a52b-47b3-a7a3-5b73cc44df6dx︠
%html
<p>We will build two representations, using a total of four bases — two for the domain and two for the codomain.</p>
︡18bf32c7-b689-4c0a-9acb-259b6b522f65︡︡
︠d9307e15-ff3b-451c-b8ec-70131708d368︠
m, n = 7, 3
A = random_matrix(QQ, m, n, algorithm='echelonizable', rank=n, upper_bound=9)
A

︡1cf8f3a8-888a-4f99-af14-70367a383ae6︡︡
︠ceaee014-bd8d-4765-871c-aec4dfcb7801︠
T = linear_transformation(A, side='right')
T

︡10699ab8-4ba7-45b5-a723-4375f8a0c976︡︡
︠f5969371-8a9e-46c8-9978-132c736227e1x︠
%html
<p>The four bases, associated with the two vector spaces.</p>
︡7bdddba3-4172-4854-a020-e2fc5252d762︡︡
︠5d09f283-84dc-4533-baa4-efdea8caf8d4︠
D1mat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D1 = D1mat.columns()
D1
VD1 = (QQ^n).subspace_with_basis(D1)
#
D2mat = random_matrix(QQ, n, n, algorithm='unimodular', upper_bound=9)
D2 = D2mat.columns()
D2
VD2 = (QQ^n).subspace_with_basis(D2)
#
C1mat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C1 = C1mat.columns()
C1
VC1 = (QQ^m).subspace_with_basis(C1)
#
C2mat = random_matrix(QQ, m, m, algorithm='unimodular', upper_bound=9)
C2 = C2mat.columns()
C2
VC2 = (QQ^m).subspace_with_basis(C2)

︡c1877c21-a3f8-468d-a1f4-355bb77ad7a5︡︡
︠6933f8d4-ed5e-4b09-96e1-20b116a27a41x︠
%html
<p>Check out a few of these…</p>
︡dd72b703-fdb3-43c2-8239-c2142a8e8398︡︡
︠1521768b-0766-4475-a609-76ba13401ee5︠
X

︡75505b62-6e5e-40d8-9f0b-6004e42c8036︡︡
︠bb9f2c77-118f-4965-8d63-bf9d7de1bd5fx︠
%html
<p>Now we build two <em>different</em> representations.</p>
︡c691b719-09a3-4105-93aa-d8db576e0a76︡︡
︠284dbcf7-a7dc-481d-af72-b95917d63a14︠
rep1 = T.restrict_domain(VD1).restrict_codomain(VC1)
rep1.matrix(side='right')

︡c1f41e48-a6ed-4b03-b250-a5ec44efb489︡︡
︠3d41be9b-9b16-49b3-9336-8122575d7fd2︠
rep2 = T.restrict_domain(VD2).restrict_codomain(VC2)
rep2.matrix(side='right')

︡005459a8-cd71-4241-a810-7249b5081928︡︡
︠7c4946da-de3f-4acb-9796-7ffd838db86fx︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Change of Basis Matrices</div>
</div></div>
︡fb7a752c-139a-45ac-80d0-a2a5f2c3f599︡︡
︠18e71d7f-6056-4df7-ac09-f11d0d546037x︠
%html
<p>A natural way to build a change-of-basis matrix in Sage is to adjust the bases for the identity linear transformation.</p>
︡47d7ffde-c785-4eff-8165-ac9d0e2ab2ab︡︡
︠d883ab07-d689-456e-9fd6-c4e5d7d1d20c︠
identity_domain = linear_transformation(QQ^n, QQ^n, identity_matrix(n))
identity_domain

︡4fc55776-0851-4aef-90c4-9f587570c667︡︡
︠fd7424fe-107c-4546-b34b-779732cbdc10︠
CBdom = identity_domain.restrict_domain(VD1).restrict_codomain(VD2)
CBdom_mat = CBdom.matrix(side='right')
CBdom_mat

︡7a88650b-0d44-4272-ab94-5dcd6d59ee85︡︡
︠66c798b5-6bb3-4cb2-a721-7c91c30f8972x︠
%html
<p>This matrix should convert between the two bases for the domain.  Here's a check of Theorem CB.</p>
︡b40ed500-f0b3-4e70-b587-197d8797ea85︡︡
︠3b30215e-7493-49d0-8e76-13a2d07e1204︠
u = random_vector(QQ, n)
u1 = VD1.coordinate_vector(u)
u2 = VD2.coordinate_vector(u)
u, u1, u2, u2 == CBdom_mat*u1

︡3163ad20-2650-4b56-b738-a14341ab1c41︡︡
︠7010e370-dca7-42aa-9944-6f23c254304dx︠
%html
<p>Same drill in the codomain.</p>
︡96599660-6367-4adb-bcd9-070d7da4cfb1︡︡
︠ce7a5bd2-6251-4c75-8164-9041f33774b1︠
identity_codomain = linear_transformation(QQ^m, QQ^m, identity_matrix(m))
identity_codomain

︡db1567bd-8778-45c3-8537-2fd8072ef25e︡︡
︠65419b8a-de7e-448c-b990-d682798ca3c5︠
CBcodom = identity_codomain.restrict_domain(VC1).restrict_codomain(VC2)
CBcodom_mat = CBcodom.matrix(side='right')
CBcodom_mat

︡f1f375fe-3fbf-4a61-ad27-8679e75599a3︡︡
︠6948bbb7-6f7e-42d3-9c25-eca0128030eax︠
%html
<p>And here is the check on Theorem MRCB.  Convert from domain basis 1 to domain basis 2, use the second representation, then convert back from codomain basis 2 to codomain basis 1 and get as a result the representation relative to the first bases.</p>
︡b1188717-98a3-40eb-9f8a-a569ba480788︡︡
︠cb165c1a-b85a-4fff-87f6-522baab44f93︠
rep1.matrix(side='right') == CBcodom_mat.inverse()*rep2.matrix(side='right')*CBdom_mat

︡7137bdaf-7d57-4453-bd7b-bd56f22d18db︡︡
︠04350f69-bc0a-46bd-980f-4416c9cc2687x︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">A Diagonal Representation</div>
</div></div>
︡b8f92ba7-6dfa-4b56-8ea6-4ec4422e066c︡︡
︠ea21ec7c-9326-45bc-a207-750d9f3516f1x︠
%html
<p>We specialize to linear transformations with equal domain and codomain.</p>
︡1d16970d-7dad-48dd-a24a-31b3125abb8e︡︡
︠aee3ec25-9079-404a-a883-5745de670c2dx︠
%html
<p>First a matrix representation using a square matrix.</p>
︡24804f14-b6bb-4c2b-a331-42b86995a065︡︡
︠026dc445-bbed-4f51-8078-b0f66c770e4b︠
A = matrix(QQ,
[[-2, 3, -20, 15, 1, 30, -5, 17],
[-27, -38, -30, -50, 268, -73, 210, -273],
[-12, -24, -7, -30, 142, -48, 100, -160],
[-3, -15, 35, -32, 35, -57, 20, -71],
[-9, -9, -10, -10, 65, -11, 50, -59],
[-3, -6, -20, 0, 58, 1, 40, -55],
[3, 0, 5, 0, -10, -3, -12, 1],
[0, 3, 0, 5, -19, 10, -15, 25]])
T = linear_transformation(A, side='right')
T

︡22949c0e-54c5-42f4-9fdf-7e1d22723df7︡︡
︠ca0fb3f9-1a28-4f75-9631-cd25e0103b49x︠
%html
<p>A basis of \(\mathbb{C}^8\). And a vector space with this basis.</p>
︡6a54aafe-b258-4e45-9910-b62fe0c80bf6︡︡
︠4d69a676-7069-46f8-afdb-5e26e3e26573︠
v1 = vector(QQ, [-4, -6, -1, 7, -2, -4, 1, 0])
v2 = vector(QQ, [3, -10, -6, -6, -2, 0, 0, 1])
v3 = vector(QQ, [0, -9, -4, -1, -3, -1, 1, 0])
v4 = vector(QQ, [1, -12, -8, -5, -3, -2, 0, 1])
v5 = vector(QQ, [0, 3, 2, 2, 1, 0, 0, 0])
v6 = vector(QQ, [1, 0, 0, -2, 0, 1, 0, 0])
v7 = vector(QQ, [0, 0, 2, 3, 0, 0, 1, 0])
v8 = vector(QQ, [3, -4, -2, -3, 0, 0, 0, 1])
B = [v1, v2, v3, v4, v5, v6, v7, v8]
V = (QQ^8).subspace_with_basis(B)

︡1515fdfb-9c17-44f5-b8b0-aab5229bf203︡︡
︠e53cf51e-030a-4b0b-9f11-708feae0ff32︠
S = T.restrict_domain(V).restrict_codomain(V)
S.matrix(side='right')

︡b4341da0-4ab9-42bf-a0eb-c88b31aa0722︡︡
︠33d5e7b4-e0fc-4676-abcd-99437a7b5143x︠
%html
<p>That's a nice representation!  Where did the basis come from?</p>
︡d00d4593-a09b-472d-a854-157574785230︡︡
︠35edc156-dced-41d5-aee1-a45334f7f70f︠
A.eigenvalues()

︡ef146fff-b552-4257-8d95-75036fdccbbf︡︡
︠9c67dc2f-df17-4714-b52b-d78d313fa0fdx︠
%html
<p>Some (right) eigenvectors.</p>
︡58c8f1a7-efe7-4786-bc36-60dee20741e9︡︡
︠f996d052-b882-48fe-a9bf-6a51ffd7672c︠
(A - 3).right_kernel(basis='pivot').basis()

︡fda7057e-7ef3-4ffd-803b-9454031b728e︡︡
︠dfc5e995-bb8b-482b-bac6-9a4098f5e67dx︠
%html
<p>Eigenvalues are a property of the linear transformation.</p>
︡0ba2543b-4694-43c1-97ff-c1317ea53019︡︡
︠90065ed2-6bb4-428a-95b8-7d1069a7c168︠
T.eigenvalues()

︡aad31ecf-b04e-4543-8fa9-5ad710b75c13︡︡
︠1c02d405-3ac7-4950-bf3b-ecd326631c67x︠
%html
<p>Bases for the eigenspaces depend on the representation, but the actual eigenvectors are also a property of the linear transformation.</p>
︡c1bf62a0-4553-4af0-b72d-46f186cebe6d︡︡
︠2105a54f-be9c-41d8-a592-0cda1e3acf78︠
S.eigenvectors()

︡78441255-7fb5-455b-864d-49ce77749466︡︡
︠739ac63a-d0c8-4fb4-9827-636d9f5b9ceb︠
T.eigenvectors()

︡e4920d32-7fd4-49a8-9b32-fda0ab23c57c︡︡
︠4fc627e6-54c2-45bc-a531-183a620d2f4ax︠
%html
<p>We could do the same thing, but in the style of Section SD, using a change-of-basis matrix.</p>
︡50a089f3-8ada-40ce-830e-0a294ca91f3e︡︡
︠41f9ef70-afa1-4f97-a5bd-ba7d0d11abd6︠
identity = linear_transformation(QQ^8, QQ^8, identity_matrix(8))
identity

︡d2af6009-8378-4a46-91dd-9da0c26edddf︡︡
︠3a82d4f6-203a-4212-a20d-7b8d6e5341f3︠
CB = identity.restrict_domain(V).restrict_codomain(QQ^8)
CB

︡7ea6d6a9-a016-4315-913e-dd75e1ed5e3f︡︡
︠b680c213-aa29-4482-bd5f-0ab428ab92a8x︠
%html
<p>Here is similarity, in disguise.</p>
︡ba2bc7ce-f3d4-4f78-ad05-d4b8b3cd3810︡︡
︠9fd9454b-a995-4a76-becb-9b2693f0bbf8︠
CBmat = CB.matrix(side='right')
CBmat.inverse()*T.matrix(side='right')*CBmat

︡3b9a10ef-312f-4eb7-ab16-0a1238fdb298︡︡

