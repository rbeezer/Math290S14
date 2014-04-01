︠c87f6176-2b6a-43fb-86cf-0b55233a0b66i︠
load('mathbook-modern-3.css')

︡50a13318-6ce6-420e-b30e-a6a805fd128c︡︡
︠51096047-067b-44db-ace5-98d287032182x︠
%html
<div>\(\)</div>
︡58f7c0f2-4089-431e-acf3-42f9c6e30d8b︡︡
︠3910210c-6539-4d85-b0e8-240516f30604x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section EE</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Spring 2014<br>April 1, 2014</div>
</div>
︡eb693ebb-2576-4407-baa6-da7e669da1c5︡︡
︠85a45892-b1b7-4cde-93c4-1d7ad4ddb884x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Eigenvalues and Eigenvectors</div>
</div></div>
︡01c6ffd6-1765-4090-a162-94c3a2b5bc97︡︡
︠f78905f8-9938-425c-bca1-8f0536158d6fx︠
%html
<p>A \(6\times 6\) matrix with nice eigenvalues.</p>
︡9493137e-435a-4dd6-b5c9-cff635f74fac︡︡
︠cc969939-5386-49d7-b99f-cb1b810657b7︠
A = matrix(QQ, [
    [-31, -23, -16, 12, 120, -17], 
    [-3, 7, 0, -12, 60, -21], 
    [-28, -14, -9, -4, 152, -30], 
    [-36, -20, -16, -1, 192, -32], 
    [-9, -5, -4, 0, 47, -8],
    [-1, 1, 0, -4, 20, -3]
    ])
A

︡cd4435c1-9571-41d1-a73d-4a4540fc57b2︡︡
︠25bb6919-2a2a-4167-be60-93481a06f9f5︠
p = A.characteristic_polynomial()
p

︡b2e57a57-0658-4b7e-b25f-4b8be1c218a0︡︡
︠ca1173b8-f966-4f7d-a0ae-b2a3d14cdb16︠
p.factor()

︡0a37d6d5-3c02-4504-9a52-a7b711c5af05︡︡
︠1c1a94a4-973f-4221-bbb0-207cc845c040x︠
%html
<p>Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p>
︡1575bc70-05e2-441e-964a-cf007bbe9fdb︡︡
︠bf56e034-bed1-4517-b31b-62608baac337︠
A.eigenvalues()

︡02116210-6128-449d-bd06-6dc50fc26dda︡︡
︠7b362436-5614-4353-862d-d1502319dc0dx︠
%html
<p>We can create the singular matrices \(A-\lambda I_6\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p>
︡f03127de-4d51-4afa-b9aa-10a0f3a71dba︡︡
︠793a9c0a-3635-45fa-822e-e8baff970e97︠
(A-( )*identity_matrix(6)).rref()

︡76e20085-c91d-4ad6-9eb0-8f9260651b85︡︡
︠cfe138ca-543a-46b4-9790-5da5a95e2bb6︠
(A-( )*identity_matrix(6)).rref()

︡099bc79b-2c9d-48c7-b052-559ad63f8ef8︡︡
︠f89642c6-9893-4fde-84b1-7f79858ddaf2x︠
%html
<p>We now examine the eigenspace for the eigenvalue \(\lambda=3\), using Sage's right kernel command and the pivot basis.</p>
︡ca84bda1-d002-4178-b5a3-d9ab41903d3e︡︡
︠37a6a5de-3078-4fb9-932d-48b5eed1857a︠
E6 = (A-3*identity_matrix(6)).right_kernel(basis='pivot')
E6

︡aeef43e1-d0d7-4158-a083-2f6ab835e44a︡︡
︠71a5e80c-7491-42b0-bc2d-eb90f35460a1x︠
%html
<p>A basis for the eigenspace will allow us to create eigenvectors of <tt class="code">A</tt> for the eigenvalue \(\lambda=3\) at will.</p>
︡b8031649-1e23-4123-a49e-d360867720c9︡︡
︠8a999b64-9659-4752-9540-2c3739bd16ef︠
B = E6.basis()
B

︡83aaefeb-3a02-4c43-a20d-02e9e3b0821a︡︡
︠2e6a956d-ff9e-47ff-8d2d-051ce9c63d95x︠
%html
<p>An arbitrary linear combination of the basis vectors of the eigenspace:</p>
︡abd440bb-bf0d-4740-bb4a-2e1d1d6a2a3b︡︡
︠d35bc5ed-8087-4237-9baa-8441c7323ba8︠
v = *B[0] + *B[1]
v

︡cb2aa203-60d3-45d2-ab25-1ba8a7f15101︡︡
︠5e2a8bf1-3403-4174-87d8-f09d006532ccx︠
%html
<p>We can check this.  Compare \(Av\) with \(3v\).</p>
︡43b9b0ef-7b64-4a7d-8152-458c72a1e99d︡︡
︠dc4e84a8-b49b-445e-a071-921ddc256726︠
A*v

︡a65a1ec0-7971-4967-b2c3-f88c12163ca3︡︡
︠98584df8-d340-4b6b-a2dd-8b188136eba0︠
3*v

︡0768ae9a-0ef4-4939-b772-e8f851da4f70︡︡
︠137cbe3e-1954-4eb1-8c51-7ec15a1b137ax︠
%html
<p>Here's an easy check:</p>
︡a899a412-c2f2-47a2-8f0b-7d871db29ccd︡︡
︠f9b9e99a-9c80-4665-b55b-9e352b744240︠
A*v - 3*v

︡c37ef661-1a8c-4bbb-89db-01ecb7503858︡︡
︠420c6ffe-1048-49d6-938a-47cdc42cf417x︠
%html
<p>Can you make more eigenvectors?</p>
︡afed2b16-c4a6-437a-8c21-6fc37829bc0f︡︡
︠476a3738-cc89-4f59-a308-e01be9242b84x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Eigenspaces, Eigenmatrices</div>
</div></div>
︡7a5574d6-72f5-4296-ab7f-b37c9deaef3d︡︡
︠16a639d3-80fe-47e3-98e7-55ce5e8c695bx︠
%html
<p>Continuing with <tt class="code">A</tt> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p>
︡0ae5b233-03f6-4409-b82b-0bb4dc059b96︡︡
︠cda761f7-0569-4c4f-8ac5-2eab411244a1x︠
%html
<p>As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p>
︡0579280e-15a2-4403-b314-107ff710ff71︡︡
︠288cb32e-a9a8-46db-8991-2c657e01a91b︠
A.eigenspaces_right()

︡36f6f438-f028-4a8a-a579-9a7da96dcdc3︡︡
︠c7e61669-6d3a-433e-b861-18ddd1e483efx︠
%html
<p>The <tt class="code">eigenmatrix</tt> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <tt class="code">i</tt> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <tt class="code">i</tt> of the first matrix.</p>
︡4cb34ea5-9955-4478-afca-a6a223d48788︡︡
︠6ada24d8-a68c-4d59-b77b-2b202f8a6a2c︠
A.eigenmatrix_right()

︡60bdfb43-ee12-403f-87ea-2da878303400︡︡
︠fcba2e1c-fc73-461d-bc75-c7ca094b7e01x︠
%html
<p>Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <tt class="code">C</tt> next, but was not the case with <tt class="code">A</tt> above.</p>
︡e7d70215-9a66-44b4-b74c-03340587c70e︡︡
︠6c288e26-fe77-4d68-acda-5da4d1f5a77e︠
C = matrix(QQ, [
    [128, 20, 44, -50, 236, -18, -330, -565], 
    [-23, -16, -5, 6, -40, 27, 62, 128], 
    [-44, -12, -15, 16, -78, 20, 110, 207], 
    [-2, 10, -4, 3, -10, -23, 20, -9], 
    [-61, 5, -25, 27, -116, -26, 153, 225], 
    [-12, -12, -1, 2, -20, 24, 34, 82], 
    [-23, -3, -8, 9, -42, 2, 57, 99], 
    [13, 6, 3, -4, 23, -12, -35, -72]
    ])
C

︡33f64a3e-5924-45c4-81a5-36578bcea4c3︡︡
︠ebbc70c7-d5e2-40ee-b3da-17005773671d︠
C.eigenmatrix_right()

︡697a2b5b-42fa-4c07-a7ab-6d2bcbabe6cf︡︡
︠507af9d9-b953-4dad-be2a-a5c19e25020ex︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Fancy Footwork</div>
</div></div>
︡a9de3018-0c56-4846-8629-eab4729d8106︡︡
︠5a375a45-43f0-44db-b078-3e68b732a806x︠
%html
<p>A totally random matrix is unlikely to have a characteristic polynomial that factors if we restict ourseves to the rationals.  But we can find all the roots over \(\overline{Q}\), the set of all algebraic numbers.</p>
︡2d454107-f472-404f-b450-cef498551d0a︡︡
︠04610404-f903-43b4-89cd-ec41fdbed1f6︠
D = random_matrix(QQ, 10)
D

︡a0bd948d-cd22-4fdd-97f8-4ab18d8bfce4︡︡
︠4cdf967f-caff-4a35-b761-8362ca86d008︠
p = D.characteristic_polynomial()
p.factor()

︡2eff08d7-77df-41ad-8661-37f43bebcd39︡︡
︠7641ce79-3bf8-415d-ab7f-247957989d02︠
p.roots(ring=QQbar, multiplicities=False)

︡65746e1d-1200-458b-880f-c258da34aa7a︡︡
︠39aca383-f4bc-4166-98d1-8168f4bf0dfdx︠
%html
<p>If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p>
︡c4d04c5e-4711-49dd-84e5-b895ebb61967︡︡
︠9d6268c0-7dca-4e65-b295-0059e11e47ab︠
E = block_diagonal_matrix( [random_matrix(QQ, 5), random_matrix(QQ, 5)])
E

︡28739227-b9e5-4733-8bad-2d9906082768︡︡
︠c848b82b-66c8-4e2a-8cf2-5166dc7060e6x︠
%html
<p><tt class="code">.fcp()</tt> is Sage shorthand for the “factored characteristic polynomial.”</p>
︡51656ad7-210b-458e-a490-80fd9d80ec20︡︡
︠dcc9df7a-ffdd-4c29-b2ab-efbe4689fe8e︠
E.fcp()

︡973bf11a-f530-481d-9779-8a5c306ce5e9︡︡
︠28b4902e-1f7a-4a5b-a6da-fc39f472f462x︠
%html
<p>Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p>
︡d20e3f46-e527-4156-9673-a76d2a7af2e3︡︡
︠de7b4f6e-a7e2-4666-818f-008ab5125356︠
F = block_diagonal_matrix( [random_matrix(QQ, 50), random_matrix(QQ, 50)])
F.fcp()

︡70a32403-30cf-45bd-9f1b-9042f4cb3f9c︡︡
︠6af6c1ec-b852-432a-92ed-a65b0eafbcf2x︠
%html
<p>Nothing short of amazing!</p>
︡789dff0c-5b6c-487d-b323-f5574e365047︡︡
︠3d49092c-7f9c-4ded-aa83-aad51ff96bf2x︠
%html
<div class="section"><div class="heading">
<div class="number">4</div>
<div class="title">Numerical Matrices</div>
</div></div>
︡4bff1725-90d8-4336-8c52-35f0bf8d5c3a︡︡
︠d428db1d-189f-4dc1-9dad-f45df30a0e6ax︠
%html
<p>If we use <tt class="code">CDF</tt> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p>
︡b7301b6c-8bbb-46d6-9fac-a30c0892a150︡︡
︠c21265d9-3cb9-4f88-be30-21eaf3aa4f2f︠
G = random_matrix(QQ, 300)
H = G.change_ring(CDF)
H.eigenvalues()

︡050bd1b5-af4d-4b0f-80d8-e6b877e431f3︡︡

