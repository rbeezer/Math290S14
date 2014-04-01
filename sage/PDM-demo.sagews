︠83f487fa-10f2-4335-a613-e7f8903e1a61i︠
load('mathbook-modern-3.css')

︡3877ceda-78fd-4662-9a2b-84483c6c0d5b︡︡
︠66fd8a9b-750a-4aee-9b58-2e64e7e552c7x︠
%html
<div>\(\)</div>
︡f2c924e3-9692-4836-a618-33c40cefbcfb︡︡
︠59cd4d55-03fa-4fc4-9fc4-8ee238b636e3x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section PDM</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Spring 2014<br>April 1, 2014</div>
</div>
︡8b24837d-7cd6-4b20-a123-beba50e9aea1︡︡
︠696a5ad3-d42c-4b0c-9d3c-397321328395x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">LU Decomposition, Triangular Form</div>
</div></div>
︡9e607277-09fb-49e1-a22c-316c1aab6a03︡︡
︠d14318a8-bb96-4eb8-bf56-8e8f72ea3016x︠
%html
<p>This is a topic not covered in our text.  You <em>can</em> find a discussion in <span class="booktitle">A Second Course in Linear Algebra</span> linked off the Math 420 course page.</p>
︡038447d6-f90d-4b2c-be9a-4d348f720669︡︡
︠ed0f7982-f303-4706-82dd-8b874b401136x︠
%html
<p>Our goal is to row-reduce a matrix with elementary matrices, track the changes, and arrive at an expression for a square matrix \(A\) as a product of a lower-triangular matrix, \(L\), and an upper-triangular matrix, \(U\), that is \[A=LU\] the so-called “LU” decomposition.  I sometimes prefer to call it “triangular form.”</p>
︡9f66422a-0564-4e69-a033-da780069b2b0︡︡
︠3b95288f-9030-444b-a07f-875af3ee3c4b︠
entries = [[-6, -10, 0, 10, 14],
[2, 3, 0, -4, -3],
[0, -2, -3, 1, 8],
[5, 6, -3, -7, -3],
[-1, 1, 6, -1, -8]]
A = matrix(QQ, entries)
A

︡23b57c04-81cb-4d18-92f2-09bee0966543︡︡
︠313eb3e6-44a9-4d0a-a176-32dedf676ab7x︠
%html
<p>Elementary matrices to “do” row operations in first column.</p>
︡250e58fd-1f58-429c-9ed5-33a50c116a17︡︡
︠28782bc6-58da-452c-a36d-be12a8e4432d︠
actionA = elementary_matrix(QQ, 5, row1=1, row2=0, scale=-2)*elementary_matrix(QQ, 5, row1=3, row2=0, scale=-5)*elementary_matrix(QQ, 5, row1=4, row2=0, scale=1)*elementary_matrix(QQ, 5, row1=0, scale=-1/6)
B = actionA*A
B

︡ffa8a85e-5586-4639-904d-f8f626803755︡︡
︠9b49c875-215f-4d11-a19a-be0f040d8f35x︠
%html
<p>Now in second column, moving to “row-echelon form” (i.e. not “reduced”).</p>
︡203e5973-298d-4b93-81ed-2716e4ef03b9︡︡
︠24839861-64f1-4268-a823-4d74a2ae77b3︠
actionB = elementary_matrix(QQ, 5, row1=2, row2=1, scale=2)*elementary_matrix(QQ, 5, row1=3, row2=1, scale=7/3)*elementary_matrix(QQ, 5, row1=4, row2=1, scale=-8/3)*elementary_matrix(QQ, 5, row1=1, scale=-3)
C = actionB*B
C

︡08949780-af4a-4144-adeb-c7381aede23c︡︡
︠c883f4f0-d0c4-4a6b-98e7-43daf7318540︠
actionC = elementary_matrix(QQ, 5, row1=3, row2=2, scale=3)*elementary_matrix(QQ, 5, row1=4, row2=2, scale=-6)*elementary_matrix(QQ, 5, row1=2, scale=-1/3)
D = actionC*C
D

︡a8699225-3d23-4527-a258-ea9c8379e28b︡︡
︠32b28b21-83a3-48ff-bb66-a7a4c0967710x︠
%html
<p>And now the penultimate column.</p>
︡4c8b9026-e577-471c-a06f-dd918037d344︡︡
︠b16bf2b9-6b09-4545-b0d8-53ed4a5ad11a︠
actionD = elementary_matrix(QQ, 5, row1=4, row2=3, scale=-2)*elementary_matrix(QQ, 5, row1=3, scale=1)
E = actionD*D
E

︡0ec20764-1737-418c-a947-463883f2eda2︡︡
︠42a5d86c-6713-4c44-86a0-6d7ad59aa59dx︠
%html
<p>And done.</p>
︡f8af883c-1ee1-4fbf-8a0f-820094fa4810︡︡
︠c53387aa-061b-4597-80a4-a40ab1f6daac︠
actionE = elementary_matrix(QQ, 5, row1=4, scale=1)
F = actionE*E
F

︡c24d4cb3-5f38-4923-822f-f620af2bb5ac︡︡
︠bcd0adf3-c3fe-4497-95ba-6816bea9a07cx︠
%html
<p>Clearly, \(F\) has determinant 1.  By virtue of the above manipulations (row operations) we expect that \[\det(A) = \left(\frac{1}{-1/6}\right)\left(\frac{1}{-3}\right)\left(\frac{1}{-1/3}\right)\left(\frac{1}{1}\right)\left(\frac{1}{1}\right)\det(F) = -6.\] Let's check.</p>
︡58095064-6929-4ba2-baa0-c30460ea3be0︡︡
︠4e78c5a2-b193-44ee-8582-1ebaf70d3b6d︠
A.determinant()

︡67d0a577-167d-437c-bf3f-f00651029455︡︡
︠2333a399-abde-4cfd-94fc-dbedb464ecf8x︠
%html
<p>Yep.  But it gets better.  \(F\) is the product of the “action” matrices on the left of \(A\).</p>
︡a74bb556-270f-4ced-9823-ebdbb4675ad9︡︡
︠f5e4a1bd-b173-4078-baac-a852099988e1︠
total_action = prod([actionE, actionD, actionC, actionB, actionA])
total_action

︡1fee1b87-e31e-4963-bac7-067a6a93c434︡︡
︠3fb86534-a874-48dc-a807-17d264c6cc55x︠
%html
<p>Notice that the elementary matrices we used are all lower triangular (because we just created zeros below the diagonal, no row swaps), and so their product is lower triangular.  Now check that we have the correct matrix.</p>
︡c6cbc5bb-3f2b-4dab-adc4-6462dfa36355︡︡
︠30baa6a8-a74a-4730-8118-878cd25d1580︠
F == total_action * A

︡e74d92a5-9d8a-4dc2-aa7e-59cbdb5864a6︡︡
︠9aadeaa0-090e-41ae-899b-5d5a84fa30c0x︠
%html
<p>The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So the product is nonsingular.  Futhermore, the inverse is again lower triangular.</p>
︡b58d2ff3-b0c2-44c0-a5b5-41cd4ad3a113︡︡
︠384f3de3-72dd-41aa-9682-0757b625b636︠
ta_inv = total_action.inverse()
ta_inv

︡4323c311-dd5c-40c6-8ddc-33a476396565︡︡
︠554b822a-0b81-41b8-8a65-c90b4808f425x︠
%html
<p>We reach our goal by rearranging the equality above, writing \(A\) as a product of a lower-triangular matrix with an upper-triangular matrix,</p>
︡42418980-7e9a-44ba-9b46-40ed8e607bb7︡︡
︠d1b63e33-696e-4ba1-814a-c394f152fe33︠
A == ta_inv * F

︡f1a0e719-d212-47ec-8d11-3610e6bd7b2e︡︡
︠4d80c3a8-70ea-4fac-982c-74a8517b3908x︠
%html
<p>Yes.  So we have decomposed the original matrix (\(A\)) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (\(F\), the row-echelon matrix).</p>
︡c25227f7-f35d-4ac4-8985-a55bb4080b66︡︡
︠3eed214e-31dd-422f-929a-6079a08e6a77︠
A, ta_inv, F

︡9e73f9bf-c85e-4b7e-9ae3-9ec545281348︡︡
︠9931adb7-348b-4a5e-ad26-f01bd1096419x︠
%html
<p>This decomposition (an “LU decomposition”) can be useful for solving systems quickly.  You “back solve” with one matrix, then “forward solve” with the other.</p>
︡9fa770cc-d87c-4093-99e0-8b59a09e4c74︡︡

