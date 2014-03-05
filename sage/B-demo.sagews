︠a3454b60-eaa2-4149-8b19-8342ee2024dfi︠
load('mathbook-modern-3.css')

︡eb9bc15a-f90c-4480-87db-accf4b0b93b1︡︡
︠8eba81a8-e296-4467-9499-4e4757f16721x︠
%html
<div>\(\)</div>
︡e6799da5-7cbf-41d6-a032-08b19f19f426︡︡
︠e9f5b0e8-2d88-4301-8b66-d9c8bebd0c7cx︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section B</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Spring 2014</div>
</div>
︡efc59a7d-f053-4b9d-8036-eb2ef52b4f12︡︡
︠0067823b-de19-478f-8033-0cca495b0272x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Bases</div>
</div></div>
︡e78d10bc-7a97-4106-8c7b-e4107d3d3db8︡︡
︠864a23fd-ffa0-498e-8acb-f6c7f88b4bb6x︠
%html
<p>Five “random” vectors, each with 4 entries, collected into a set <tt class="code">S</tt>.</p>
︡efe468f6-98f1-46a7-9e4a-699cf62ac752︡︡
︠8bf312d8-1303-4730-9855-9c076244cb79︠
v1 = vector(QQ, [-4, -2, 3, -11])
v2 = vector(QQ, [-2, 7, 3, 9])
v3 = vector(QQ, [6, -4, -7, 5])
v4 = vector(QQ, [-1, 0, 3, -4])
v5 = vector(QQ, [-4, 5, -5, 11])
S = [v1, v2, v3, v4, v5]

︡b5d9becd-52f5-41fb-a7e4-55b478a3ae6c︡︡
︠970d0b5c-5c36-47f9-9237-1a5effb36a24x︠
%html
<p>Consider the subspace spanned by these five vectors.  We will make these vectors the <em>rows</em> of a matrix and row-reduce to see a basis for the space (subspace, or row space, take your pick).</p>
︡6d1a8c0d-28a6-4281-9e48-48d76e30484c︡︡
︠38542e48-8cad-45e6-93fa-da7088b32fb1︠
A = matrix(S)
A

︡bb16e46d-4389-4683-8a23-7b7af4c633cd︡︡
︠47df7e00-d992-4e00-87de-4296c74fe747︠
A.rref()

︡54391ce0-c613-46c6-ba7c-339a7b8d7b2c︡︡
︠b9bffa64-7e88-48d4-82e2-d33fd11ed098x︠
%html
<p>Sage does this semi-automatically.</p>
︡b3fd734b-61da-4829-82f7-18212f5bea36︡︡
︠16f5e506-6a6c-4e3e-90f3-0ff32fcf35f4︠
W = span(S)
B = W.basis()
B

︡5238dd7d-9b70-4da5-b780-a0edafa0144f︡︡
︠eaeba18c-32af-4e7f-83b6-2c93fbf20640x︠
%html
<p>Construct a <em>random</em> vector in this subspace.</p>
︡da0c89d7-ccca-4f95-a981-c28105af64ec︡︡
︠e84dfde5-bd6c-400a-acb0-b48cf39b4bda︠
w = *v1 + *v2 + *v3 + *v4 + *v5
w

︡ab0f429a-ca4f-4e99-8849-71af8e0543ac︡︡
︠898a3583-8892-4e8d-b354-64bff8a48037x︠
%html
<p>Quick check?</p>
︡f97f4571-af41-44f7-9ac0-30b38f0512c9︡︡
︠b80c941d-f1fd-4b51-946b-066418b3107d︠
w in W

︡9b290b46-7a1a-4dd8-bf25-c0a3035954a0︡︡
︠e23b2473-738e-48e0-9ebe-5633b71e761ax︠
%html
<p>This vector (or any other linear combination of the five vectors) should be a (unique) linear combination of the three basis vectors.  Can you construct the correct linear combination from the three basis vectors? How many ways?</p>
︡a95d504c-671c-4b91-8626-883e71e54201︡︡
︠2e4a2eb6-ad54-4673-90cf-3298062ac442︠
*B[0] + *B[1] + *B[2]

︡a24bc1b1-d57c-48e0-973a-0e655754d6db︡︡
︠da0e9af7-2937-41e1-84fc-61000fc0de56x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Nonsingular Matrices</div>
</div></div>
︡75c65ef4-506e-409b-a4f7-7ff492a7805f︡︡
︠e59a35c9-1bc2-4dfa-b19c-0cb6df2e46de︠
entries = [[1, 1, 1, -1, -2, 4, 2, -3, 1, -6],
[-2, -1, -2, 2, 4, -7, -4, 5, -1, 7],
[1, -1, 2, -2, -5, 8, 5, -3, 4, -4],
[-1, -2, 0, 1, 0, -5, 0, -3, -5, 6],
[0, -2, 1, -1, -2, 3, 2, 3, 3, 7],
[1, 0, 1, -1, -2, 4, 2, 0, 2, 0],
[-1, 0, -1, 1, 3, -1, -2, 7, 5, 1],
[1, 1, 1, -1, -2, 8, 3, 2, 8, -6],
[0, 2, -1, 1, 2, -1, -2, 2, 2, -6],
[1, 3, 0, 0, 1, 3, 0, 0, 3, -8]]
M = matrix(QQ, entries)
M

︡2a0cc921-b4a3-4180-bac8-839457e52b3f︡︡
︠1b99ceba-6500-41d3-b937-f350fc2f4124︠
not M.is_singular()

︡640868c6-6046-472f-b0ae-ef5988ee56b0︡︡
︠517f6cca-dbf6-4976-b933-54758cbd7fa2x︠
%html
<p>A totally random vector with 10 entries:</p>
︡e01e3efa-f5dd-40ef-926f-07a213965147︡︡
︠157a9135-2bcf-4d13-b542-f985d3deb990︠
v = random_vector(ZZ, 10, x=-9, y=9)
v

︡31b45205-eca4-4978-94d9-0af0f9450d27︡︡
︠a0f50235-1932-46f9-a769-f3c8cce547eex︠
%html
<p>The columns of the matrix are a basis of \(\mathbb{C}^{10}\).  So the vector <tt class="code">v</tt> should be a linear combination of the columns of the matrix.</p>
︡022031b5-fbf3-437b-9a3e-4500e8aa8924︡︡
︠bd085ee9-9835-4b2d-b28e-a6c83c7830d9x︠
%html
<p>First, the old-fashioned way, thus exposing Theorem NMUS.</p>
︡47af8f1c-50bc-4888-816a-556129ee45b9︡︡
︠c1d6b83f-ecfc-4e6b-8d14-7951acdf9cc1︠
aug = M.augment(v)
aug.rref()

︡609e5119-21c5-456f-a1cf-918d18b0cf3f︡︡
︠418cd9f9-ed9d-412a-a99f-bb034e99a461x︠
%html
<p>Now, the modern way, with an inverse, since a nonsingular matrix is invertible, thus exposing Theorem SNCM.</p>
︡9d02e350-eaa7-4638-a1c6-1f6f1e30da48︡︡
︠a5f4adde-0b55-4301-ae7d-9d2ab17b11ee︠
M.inverse()*v

︡a5cac98c-d431-4715-8769-7928dccb7b7b︡︡
︠0d72c723-75c0-4d22-b971-5ff5863eea63x︠
%html
<p>The Sage way. Create a space with a “user basis” and ask for a coordinatization, thus exposing Theorem VRRB.</p>
︡2800b8dd-912b-495c-827d-f3c633e9a7e0︡︡
︠deecdbd5-a838-46ab-82f1-6ec193a0c754︠
X = (QQ^10).subspace_with_basis(M.columns())
X.coordinates(v)

︡6d449eda-16f1-4884-ab79-d34819f726b5︡︡
︠dd3075d6-0892-4c10-a1f5-d0a0f5ec6fe0x︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Orthonormal Bases</div>
</div></div>
︡2fc66b08-7824-452e-90d6-bee0edd19b3d︡︡
︠abe9342a-9c3d-4f6b-aa0b-f9517d7995fax︠
%html
<p>A particularly simple orthonormal basis of \(\mathbb{C}^3\), collected into the set <tt class="code">S</tt>.</p>
︡ae9e1d4c-4a66-481c-973f-58c4a93d9acf︡︡
︠4f0b68c8-850f-4c2c-946e-b38f3916d558︠
v1 = vector(QQ, [1/3, 2/3, 2/3])
v2 = vector(QQ, [2/3, -2/3, 1/3])
v3 = vector(QQ, [2/3, 1/3, -2/3])
S = [v1, v2, v3]

︡26256999-5e9e-46ba-a2dc-6e521a113674︡︡
︠435ab979-7344-42f4-9029-2811071f3f68x︠
%html
<p>If these vectors are an orthonormal basis, then as the columns of a matrix they should create an orthonormal basis.</p>
︡25b1ecfa-180b-46db-a4d3-ea8d89fda78e︡︡
︠2414e4f1-f1f5-4650-a3dc-20a06a343236︠
Q = column_matrix(S)
Q

︡4dcecc4d-7449-473e-8b23-4150f625dd6b︡︡
︠9c5130af-d0f4-4f41-a26f-aecc583e63e1︠
Q.conjugate_transpose()*Q

︡2c8c080a-7726-44e9-8aa4-817ca3bf3c10︡︡
︠3520b373-706f-4bb6-b8ff-59f1abdf8fad︠
Q.is_unitary()

︡702201fb-8c14-47e1-a327-c678b3fa1dbf︡︡
︠bc044f78-148a-4117-b26e-db3278f8749bx︠
%html
<p>A totally random vector with 3 entries.</p>
︡e8c7740a-f178-4fae-92a7-9cff5a11f82c︡︡
︠8cbbe76c-fb53-49fc-b30b-14b85dce1d99︠
v = random_vector(ZZ, 3, x=-9, y=9)
v

︡689cc027-d96c-4a58-9f88-e668fa7885eb︡︡
︠e7b79342-c753-4977-8d23-33c8d111f596x︠
%html
<p>Four ways to express <tt class="code">c</tt> as a (unique) linear combination of the basis vectors.  Which is most efficient?</p>
︡33b41f5f-0894-4beb-9d0c-10333519fb92︡︡
︠5b59db6c-9ee4-4771-b100-d5f88ab30cc9x︠
%html
<p>First, the old-fashioned way, thus exposing Theorem NMUS.</p>
︡ccf65ab7-85ef-4bcb-bef3-47491f795a49︡︡
︠a036289e-d354-49c3-8f2f-b618260c60f8︠
aug = Q.augment(v)
aug.rref()

︡9082dff3-78a3-406e-8909-0ab7a612ef85︡︡
︠a4c1507e-bd09-4252-918a-d885f5591328x︠
%html
<p>Now, the modern way, with an inverse, since a nonsingular matrix is invertible,  thus exposing Theorem SNCM.</p>
︡fee640c5-2fdd-46d1-b296-7c9d110a6a84︡︡
︠d8e71ce0-ed37-4833-945e-38d59cc63af2︠
Q.inverse()*v

︡0880b883-6e3f-4ef6-91b1-103e374b2d0e︡︡
︠74a3bd34-4d2e-4780-8724-ddb03dea2d54x︠
%html
<p>The Sage way. Create a space with a “user basis” and ask for a coordinatization, thus exposing Theorem VRRB.</p>
︡30b6f5d0-b37c-40ed-8988-e63ab85c143e︡︡
︠aa9910dc-cdd0-4fd1-99e2-88ae835d3351︠
X = (QQ^3).subspace_with_basis(Q.columns())
X.coordinates(v)

︡6ac7cd40-9531-439d-92fa-23cb3a3dbc1f︡︡
︠97888880-1a48-4dbd-a4a1-334b38a30da0x︠
%html
<p>Finally, exploiting the orthonormal basis, and computing scalars for the linear combination with an inner product, thus exposing Theorem COB.  (Sage's <tt class="code">.inner_product()</tt> does not conjugate the entries of either vector, so we avoid it.)</p>
︡d9685e41-10b5-4aeb-8e03-dc2afa7326db︡︡
︠1e6be127-7bde-48bc-a986-c875e01c1cd0︠
a1 = v1.hermitian_inner_product(v)
a2 = v2.hermitian_inner_product(v)
a3 = v3.hermitian_inner_product(v)
a1, a2, a3

︡8408b28a-8f1c-43ea-a57c-08449af97aed︡︡

