︠6632db6c-9ede-439b-8cae-806fa6334559i︠
load('mathbook-modern-3.css')

︡7cd06bc5-7340-403e-9b77-0c61df4a9fd3︡︡
︠d9e2a324-f721-436d-9ff9-a11000ac7bd4x︠
%html
<div>\(\)</div>
︡4f7f71f7-b52d-4b50-888d-29eef690b335︡︡
︠43dc1b80-9fa6-49d0-82fb-fb067668a91bx︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section IVLT</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Fall 2013<br>April 15, 2014</div>
</div>
︡d3c61130-9397-4184-8b8f-36b9c3661be1︡︡
︠0ef475e4-4dea-4e6f-9ffe-2587909104a9x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Invertible Linear Transformations</div>
</div></div>
︡6db9051f-e0b3-406c-a45c-2b7beaa6993a︡︡
︠1f7a1546-8afa-4aeb-832e-68084e2e996ax︠
%html
<p>A carefully-crafted invertible linear transformation from \(\mathbb{Q}^5\) to \(\mathbb{Q}^5\).</p>
︡628a79f3-8d09-4b84-b7e4-ec76df1fb956︡︡
︠1767f4d7-fd54-4dd5-a566-18ea79b6a71b︠
A = matrix(QQ, [[1, 1, -1, -2, 0], [-3, -2, 1, 4, 7],
    [2, 2, -1, -3, -4], [-4, -3, 3, 8, 3], [5, 6, -7, -8, 8]])
T = linear_transformation(QQ^5, QQ^5, A, side='right')
T

︡b58981dc-6fae-4d97-b02f-09e5c4beba31︡︡
︠4f86ddca-1d58-4999-bf93-c0c4dba6151a︠
T.is_injective(), T.is_surjective()

︡23c02432-0d50-47d1-83d2-200a87b32996︡︡
︠ba113f93-7cbc-441a-961a-ae653c9fefe2︠
T.is_invertible()

︡596eb320-6104-4856-a85e-dfb194fca4e1︡︡
︠d4de94d2-07e0-4d4d-8005-ac755f36e804︠
S = T.inverse()
S

︡93e623af-9c76-4610-b2cb-5f7cdb6c5cd0︡︡
︠8dade95f-6c13-4004-87c0-29c2a71f67dfx︠
%html
<p>The <tt class="code">*</tt> operator, like we would use for multiplication, will create a composition.  This will perfectly natural once we discuss Section MR.  Here, composing an invertible linear transformation with its inverse will yield an identity linear transformation.</p>
︡88cdb887-a8a8-48fd-a638-5970a1ec39a5︡︡
︠f27c33da-008d-4feb-9c50-599d08465619︠
comp = S*T
comp

︡7cb73416-643f-46a7-8a75-512647ed9840︡︡
︠ebb2614b-6b45-45a3-98d7-f409bf175369︠
comp.is_identity()

︡5e47ddb2-33cc-4513-bb54-1f35e0bc6544︡︡
︠1328be88-bed2-46f2-b703-fb9ea1e97990x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Defining an Invertible Linear Transformation on Bases</div>
</div></div>
︡6f269dc2-7e61-4114-9d2f-8ecce9e31d71︡︡
︠5aa635c5-8fc8-4f54-9512-7e503e7eadf2x︠
%html
<p>Now, an invertible linear transformation defined on a basis, and the resulting inverse linear transformation.  We get two “random” bases of \(\mathbb{Q}^7\) from nonsingular (determinant one) matrices.</p>
︡d46ef6e5-f1dc-437e-8e3c-fc3e2a0c7575︡︡
︠9eb9640c-d65c-4597-b4ec-890abfe3246c︠
C = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Cbasis = C.columns()
D = random_matrix(QQ, 7, 7, algorithm='unimodular', upper_bound=99)
Dbasis = D.columns()

︡1ef91151-b4a9-44bc-9003-0d41fea3de21︡︡
︠1722e0e4-3fa8-4e72-a28b-fdeec8157806x︠
%html
<p>Vector spaces with defined user bases.</p>
︡7ec98d90-dc90-4ca4-a227-e63535d4c195︡︡
︠b82d40c9-5aac-471f-a1f2-574c18efa1ec︠
Cspace = (QQ^7).subspace_with_basis(Cbasis)
Dspace = (QQ^7).subspace_with_basis(Dbasis)
Cspace, Dspace

︡4d56e32d-7764-4320-9334-5111a2736a57︡︡
︠3e86a6fb-dcd0-43fc-a33e-caacf8278187x︠
%html
<p>The invertible linear transformation defined with images as the vectors in the codomain basis <tt class="code">D</tt>.</p>
︡dd3aef4b-c42f-44cc-9e42-ffd7ecd60531︡︡
︠30efaf9b-d87a-4141-a9cb-026ccda234d3︠
T = linear_transformation(Cspace, QQ^7, Dbasis)
T

︡33a1e679-041d-400c-96e6-5449b915dbd6︡︡
︠9deccddc-d034-4dfd-b45e-a7d2df9d2063︠
T.is_invertible()

︡6a74f4bd-a29a-458c-aff2-8b5c3fe72eaa︡︡
︠f86fd18e-65b5-4eb0-a2ab-5ed685656d30x︠
%html
<p>Now we simply “turn around” the definition, to make the inverse.</p>
︡dd9d4010-f082-4e23-85b2-6369828b66e4︡︡
︠c6261fd7-6b15-4c5c-bd23-32514478ffe0︠
S = linear_transformation(Dspace, QQ^7, Cbasis)
S

︡f4c8026f-4883-4986-8ad4-11d3622096c8︡︡
︠f486edd9-9578-4f06-88b7-b2df5e9dae2b︠
S.is_invertible()

︡2e98e0d1-a0a7-4b92-9399-c6021f5bd27c︡︡
︠7557647a-0d66-41c4-a0f0-523d90c75bb5x︠
%html
<p>Composition with vector spaces using different bases does not seem to be working properly.  So we just check some random inputs to the composition.</p>
︡5c0fc5ee-96b2-4cd9-aa29-d437ca2ba68c︡︡
︠674994c9-6776-44b9-99fa-9957f047d9b2︠
comp = S*T
comp.is_identity()

︡6d024e90-cbda-47ad-b8d8-d6bcb09dfa56︡︡
︠17e5fa41-a218-48ee-b675-0bffb63407d3︠
v = random_vector(QQ, 7)
v, T(S(v)) == v, S(T(v)) == v

︡26b2b5cf-2b2a-4b48-b092-7236853d2384︡︡
︠907b4d6f-e2d4-4587-af64-505b4a55b426x︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Rank and Nullity</div>
</div></div>
︡9cdf982a-72d4-4d29-8948-9922b30ebab3︡︡
︠9f24a4f5-aeb7-42d2-8133-34dd5364034cx︠
%html
<p>A general (i.e. not invertible) linear transformation from \(\mathbb{Q}^6\) to \(\mathbb{Q}^5\).</p>
︡d821c94e-16d1-4460-96d3-a1238014d2cd︡︡
︠60143afa-28ea-4ef2-a3e4-441df0622cf0︠
F = matrix(QQ, [[1, 0, 2, -1, -4, 2], [-1, -1, -4, 3, 6, -5], [0, 1, 3, -2, -4, 5],
    [0, 4, 6, -8, -4, 8], [0, 1, 2, -2, -2, 3]])
R = linear_transformation(QQ^6, QQ^5, F, side='right')
R

︡55727a43-7e46-48f3-8278-1aee2dc0d602︡︡
︠2000c470-5ea9-4534-b21e-853140bab5aax︠
%html
<p>Rank is dimension of range (image).  Note there are not left/right variants.</p>
︡c5911637-d864-442b-81fe-21831fe4ccc8︡︡
︠5f907afe-2581-49a7-be7b-21fc91399f27︠
R.image()

︡fdcdb238-6a08-4f2f-bb25-f99c7107b3e9︡︡
︠507d7249-b7ef-4655-8413-e64f5e1ebf01︠
R.rank()

︡4d3729c0-1f83-4e1d-bc3a-7b1c38e276b5︡︡
︠484278f5-4f22-475f-91b1-49f295b05f21x︠
%html
<p>Nullity is dimension of kernel.  Note there are not left/right variants.</p>
︡6bc67043-edb8-4ac7-ac18-305f80b24d95︡︡
︠74980306-7ad8-4173-a0d8-88903962b81f︠
R.kernel()

︡e78d0369-2564-45f4-a7d6-fab3ed07fb9b︡︡
︠46712375-2c66-49c6-a397-a0cdbd8dfb04︠
R.nullity()

︡a7e02e8b-450f-4b4c-9771-991b30c71cd0︡︡
︠ab4feab7-06eb-4df5-8ab2-9ea44e5f4fa8x︠
%html
<p>Note that rank and nullity sum to the dimension of the domain (which is \(6\) here).</p>
︡ffe9fc3b-ee67-42ae-966e-d41ba02b98c1︡︡

