︠c87f6176-2b6a-43fb-86cf-0b55233a0b66i︠
load('mathbook-modern-3.css')

︡50a13318-6ce6-420e-b30e-a6a805fd128c︡︡
︠51096047-067b-44db-ace5-98d287032182i︠
%html
<div>\(\)</div>
︡7d12bc64-904b-4edf-8cf4-30c58ff59fd7︡{"html":"<div>\\(\\)</div>"}︡
︠3910210c-6539-4d85-b0e8-240516f30604i︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section EE</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Spring 2014<br>April 1, 2014</div>
</div>
︡ede00b4d-561a-417d-857e-b9da770e508e︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section EE</div>\n<div class=\"authorgroup\">Robert Beezer</div>\n<div class=\"date\">Math 290, Spring 2014<br>April 1, 2014</div>\n</div>"}︡
︠85a45892-b1b7-4cde-93c4-1d7ad4ddb884i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Eigenvalues and Eigenvectors</div>
</div></div>
︡cbf11888-755b-4d62-ada4-9379862cb7c5︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Eigenvalues and Eigenvectors</div>\n</div></div>"}︡
︠f78905f8-9938-425c-bca1-8f0536158d6fi︠
%html
<p>A \(6\times 6\) matrix with nice eigenvalues.</p>
︡5b0d40b5-d17a-4a6a-8c9a-b2e93cf54050︡{"html":"<p>A \\(6\\times 6\\) matrix with nice eigenvalues.</p>"}︡
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

︡c5df4fc7-8eca-41e8-b228-3b14c4fe8597︡{"stdout":"[-31 -23 -16  12 120 -17]\n[ -3   7   0 -12  60 -21]\n[-28 -14  -9  -4 152 -30]\n[-36 -20 -16  -1 192 -32]\n[ -9  -5  -4   0  47  -8]\n[ -1   1   0  -4  20  -3]\n"}︡
︠25bb6919-2a2a-4167-be60-93481a06f9f5︠
p = A.characteristic_polynomial()
p

︡8752cf33-3879-4559-abc4-85a4515877d0︡{"stdout":"x^6 - 10*x^5 + 30*x^4 - 8*x^3 - 79*x^2 + 42*x + 72\n"}︡
︠ca1173b8-f966-4f7d-a0ae-b2a3d14cdb16︠
p.factor()

︡69477545-1782-459c-80eb-3abe61c5fc47︡{"stdout":"(x - 4) * (x - 2) * (x - 3)^2 * (x + 1)^2"}︡{"stdout":"\n"}︡
︠1c1a94a4-973f-4221-bbb0-207cc845c040i︠
%html
<p>Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p>
︡5d1cb3c6-fc6d-4037-8a85-8d76bbbb1619︡{"html":"<p>Eigenvalues are the roots of the characteristic polynomial (Theorem EMRCP), which should be obvious from the factored version, including their (algebraic) multiplicities.  Of course, it can be very easy to get these in Sage.</p>"}︡
︠bf56e034-bed1-4517-b31b-62608baac337︠
A.eigenvalues()

︡3fd0baf4-2bea-4f2d-81c8-2cc036136b02︡{"stdout":"[4, 2, 3, 3, -1, -1]\n"}︡
︠7b362436-5614-4353-862d-d1502319dc0di︠
%html
<p>We can create the singular matrices \(A-\lambda I_6\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p>
︡55150c6c-f07a-451e-955f-a87271d8c4bd︡{"html":"<p>We can create the singular matrices \\(A-\\lambda I_6\\) for each eigenvalue (we will choose to do two with “random” choices for the eigenvalue).   Row-reducing these matrices will exhibit their nonzero nullity.</p>"}︡
︠793a9c0a-3635-45fa-822e-e8baff970e97︠
(A-(2)*identity_matrix(6)).rref()

︡6bf3bf82-0663-4f40-a2da-3de3f5749354︡{"stdout":"[ 1  0  0  0  0 14]\n[ 0  1  0  0  0 -3]\n[ 0  0  1  0  0  8]\n[ 0  0  0  1  0 12]\n[ 0  0  0  0  1  3]\n[ 0  0  0  0  0  0]"}︡{"stdout":"\n"}︡
︠cfe138ca-543a-46b4-9790-5da5a95e2bb6︠
(A-(3)*identity_matrix(6)).rref()

︡a313a82c-c113-43d4-99a5-dfd51f0bce97︡{"stdout":"[ 1  0  0  0 -4  3]\n[ 0  1  0  0  0 -3]\n[ 0  0  1  0 -2 -1]\n[ 0  0  0  1 -4  0]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n"}︡
︠f89642c6-9893-4fde-84b1-7f79858ddaf2i︠
%html
<p>We now examine the eigenspace for the eigenvalue \(\lambda=3\), using Sage's right kernel command and the pivot basis.</p>
︡2be51198-17a7-492f-87cb-a6439150ceca︡{"html":"<p>We now examine the eigenspace for the eigenvalue \\(\\lambda=3\\), using Sage's right kernel command and the pivot basis.</p>"}︡
︠37a6a5de-3078-4fb9-932d-48b5eed1857a︠
E6 = (A-3*identity_matrix(6)).right_kernel(basis='pivot')
E6

︡7e16a866-59da-4c82-b534-54eeaaa69e0b︡{"stdout":"Vector space of degree 6 and dimension 2 over Rational Field\nUser basis matrix:\n[ 4  0  2  4  1  0]\n[-3  3  1  0  0  1]\n"}︡
︠71a5e80c-7491-42b0-bc2d-eb90f35460a1i︠
%html
<p>A basis for the eigenspace will allow us to create eigenvectors of <tt class="code">A</tt> for the eigenvalue \(\lambda=3\) at will.</p>
︡719bc089-96d6-41e8-94d7-2397627d504e︡{"html":"<p>A basis for the eigenspace will allow us to create eigenvectors of <tt class=\"code\">A</tt> for the eigenvalue \\(\\lambda=3\\) at will.</p>"}︡
︠8a999b64-9659-4752-9540-2c3739bd16ef︠
B = E6.basis()
B

︡275abbfb-76e4-4c05-9aa3-ef7481fdba2f︡{"stdout":"[\n(4, 0, 2, 4, 1, 0),\n(-3, 3, 1, 0, 0, 1)\n]\n"}︡
︠2e6a956d-ff9e-47ff-8d2d-051ce9c63d95i︠
%html
<p>An arbitrary linear combination of the basis vectors of the eigenspace:</p>
︡7949258d-3c0e-4a22-89ca-54746ab27096︡{"html":"<p>An arbitrary linear combination of the basis vectors of the eigenspace:</p>"}︡
︠d35bc5ed-8087-4237-9baa-8441c7323ba8︠
v = 5*B[0] + 6*B[1]
v

︡31c66d23-a091-48f0-9bc0-d0cc49801b69︡{"stdout":"(2, 18, 16, 20, 5, 6)\n"}︡
︠5e2a8bf1-3403-4174-87d8-f09d006532cci︠
%html
<p>We can check this.  Compare \(Av\) with \(3v\).</p>
︡87ac391a-10b5-41a8-8738-4a3d8c3a09f5︡{"html":"<p>We can check this.  Compare \\(Av\\) with \\(3v\\).</p>"}︡
︠dc4e84a8-b49b-445e-a071-921ddc256726︠
A*v

︡f7bf5fa6-5b26-445d-8875-cb492bf60301︡{"stdout":"(6, 54, 48, 60, 15, 18)\n"}︡
︠98584df8-d340-4b6b-a2dd-8b188136eba0︠
3*v

︡cb510c30-b978-4c9c-a383-a61f4650721a︡{"stdout":"(6, 54, 48, 60, 15, 18)\n"}︡
︠137cbe3e-1954-4eb1-8c51-7ec15a1b137ai︠
%html
<p>Here's an easy check:</p>
︡cd1d7d23-0562-44a8-8585-00a6d97246db︡{"html":"<p>Here's an easy check:</p>"}︡
︠f9b9e99a-9c80-4665-b55b-9e352b744240︠
A*v - 3*v

︡e1bc80e3-e0e6-4404-bda3-e02f3e25f69f︡{"stdout":"(0, 0, 0, 0, 0, 0)\n"}︡
︠420c6ffe-1048-49d6-938a-47cdc42cf417i︠
%html
<p>Can you make more eigenvectors?</p>
︡927aeffc-cfd5-4fe6-8b58-02f98ee7666f︡{"html":"<p>Can you make more eigenvectors?</p>"}︡
︠476a3738-cc89-4f59-a308-e01be9242b84i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Eigenspaces, Eigenmatrices</div>
</div></div>
︡455d4de0-54af-490e-b872-4837242b347b︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Eigenspaces, Eigenmatrices</div>\n</div></div>"}︡
︠16a639d3-80fe-47e3-98e7-55ce5e8c695bi︠
%html
<p>Continuing with <tt class="code">A</tt> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p>
︡601c10a6-e54b-42d9-be5e-96b53a9406af︡{"html":"<p>Continuing with <tt class=\"code\">A</tt> from above, we can get eigen-stuff quickly from Sage, once we understand what is really happening (according to the definitions).</p>"}︡
︠cda761f7-0569-4c4f-8ac5-2eab411244a1i︠
%html
<p>As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p>
︡ded6d071-48cf-4dea-a1f3-0657d945475b︡{"html":"<p>As always we want the “right” versions of the relevant commands.  Eigenspaces are in the second parts of pairs, where the first part of each pair is the eigenvalue.  Notice that they are vector spaces (with bases, etc).  The basis vectors are Sage's version of a basis, with vectors from an echelonized matrix, typically with lots of zeros and ones in the first part of the vectors.</p>"}︡
︠288cb32e-a9a8-46db-8991-2c657e01a91b︠
A.eigenspaces_right()

︡3c1a979a-f4be-458c-89e8-8e44fc13bd44︡{"stdout":"[\n(4, Vector space of degree 6 and dimension 1 over Rational Field\nUser basis matrix:\n[   1 -4/7  2/7  4/7  1/7 -1/7]),\n(2, Vector space of degree 6 and dimension 1 over Rational Field\nUser basis matrix:\n[    1 -3/14   4/7   6/7  3/14 -1/14]),\n(3, Vector space of degree 6 and dimension 2 over Rational Field\nUser basis matrix:\n[  1   0 1/2   1 1/4   0]\n[  0   1 5/6   1 1/4 1/3]),\n(-1, Vector space of degree 6 and dimension 2 over Rational Field\nUser basis matrix:\n[    1     0   3/4     1   1/4     0]\n[    0     1 13/12   4/3   1/4   1/3])\n]\n"}︡
︠c7e61669-6d3a-433e-b861-18ddd1e483efi︠
%html
<p>The <tt class="code">eigenmatrix</tt> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <tt class="code">i</tt> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <tt class="code">i</tt> of the first matrix.</p>
︡f9d82a7a-d041-4a35-a91b-c1249df6d092︡{"html":"<p>The <tt class=\"code\">eigenmatrix</tt> commands return pair of matrices.  The first is a diagonal matrix with the eigenvalues on the diagonal.  The second is a square matrix with linearly independent eigenvectors in the columns, and the order of the eigenvectors is the same as the order of the eigenvalues.  That is, the eigenvector in column <tt class=\"code\">i</tt> of the second matrix is a basis vector for the eigenspace of the eigenvalue in column <tt class=\"code\">i</tt> of the first matrix.</p>"}︡
︠6ada24d8-a68c-4d59-b77b-2b202f8a6a2c︠
A.eigenmatrix_right()

︡60bdfb43-ee12-403f-87ea-2da878303400︡︡
︠fcba2e1c-fc73-461d-bc75-c7ca094b7e01i︠
%html
<p>Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <tt class="code">C</tt> next, but was not the case with <tt class="code">A</tt> above.</p>
︡92e8307b-f469-45e9-ba81-9709375b76f8︡{"html":"<p>Sometimes the dimension of an eigenspace (the geometric multiplicity) is strictly less than the number of times the eigenvalue appears as a root of the characteristic polynomial.  This is the case with <tt class=\"code\">C</tt> next, but was not the case with <tt class=\"code\">A</tt> above.</p>"}︡
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
︠507af9d9-b953-4dad-be2a-a5c19e25020ei︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Fancy Footwork</div>
</div></div>
︡a8d85206-170c-41ea-8bf7-d5fabf39c9d4︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">Fancy Footwork</div>\n</div></div>"}︡
︠5a375a45-43f0-44db-b078-3e68b732a806i︠
%html
<p>A totally random matrix is unlikely to have a characteristic polynomial that factors if we restict ourseves to the rationals.  But we can find all the roots over \(\overline{Q}\), the set of all algebraic numbers.</p>
︡67b0c8ce-87ff-4deb-8444-b7f9fc603245︡{"html":"<p>A totally random matrix is unlikely to have a characteristic polynomial that factors if we restict ourseves to the rationals.  But we can find all the roots over \\(\\overline{Q}\\), the set of all algebraic numbers.</p>"}︡
︠04610404-f903-43b4-89cd-ec41fdbed1f6︠
D = random_matrix(QQ, 10)
D

︡cd176233-7fba-40e3-85c8-6ac6e01ffb9f︡{"stdout":"[   1    2   -1    0    1    0    1   -1   -1    2]\n[  -1    0    2   -1   -2 -1/2    0   -2    0   -1]\n[   1    0    0    1    0   -2   -2   -1    0   -1]\n[   0    0    0    0   -1    0   -1   -1    1   -1]\n[   2   -2  1/2    1   -2    2    0    1    1    2]\n[  -1    1   -1    0 -1/2  1/2    2    0    0    0]\n[   0    2  1/2    2    0    1 -1/2    1   -2    2]\n[   1   -1    0    0    1   -2    1    0 -1/2   -1]\n[   0   -2 -1/2    1    2    1    2    2    0    2]\n[  -1    1    0    1  1/2    1    0   -1 -1/2 -1/2]\n"}︡
︠4cdf967f-caff-4a35-b761-8362ca86d008︠
p = D.characteristic_polynomial()
p.factor()

︡d08a776d-ed0a-49a5-bb09-e18456c099f9︡{"stdout":"x^10 + 3/2*x^9 - 5/4*x^8 + 551/8*x^7 + 949/8*x^6 + 3581/16*x^5 + 24033/32*x^4 + 12313/32*x^3 + 41641/16*x^2 + 32403/32*x - 10143/8\n"}︡
︠7641ce79-3bf8-415d-ab7f-247957989d02︠
p.roots(ring=QQbar, multiplicities=False)

︡6a5d846f-11df-42c7-af61-ef8c9661b32b︡{"stdout":"[-4.209471182248069?, -2.583202629310967?, -0.8911298462508118?, 0.5014855437241153?, -0.5192133380466241? - 1.956609242103030?*I, -0.5192133380466241? + 1.956609242103030?*I, 1.029121619279516? - 1.729203073127677?*I, 1.029121619279516? + 1.729203073127677?*I, 2.331250775809975? - 3.207652223798754?*I, 2.331250775809975? + 3.207652223798754?*I]"}︡{"stdout":"\n"}︡
︠39aca383-f4bc-4166-98d1-8168f4bf0dfdi︠
%html
<p>If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p>
︡e75facac-e807-4a26-a1c6-658ff10d3fb1︡{"html":"<p>If we make a “block diagonal” matrix, then the characteristic polynomial will definitely factor some</p>"}︡
︠9d6268c0-7dca-4e65-b295-0059e11e47ab︠
E = block_diagonal_matrix( [random_matrix(QQ, 5), random_matrix(QQ, 5)])
E

︡8da2b4f4-9367-4e98-83de-2acab09124fd︡{"stdout":"[   0    0    0    2   -1|   0    0    0    0    0]\n[   2    1   -2    0 -1/2|   0    0    0    0    0]\n[   0    0    0    0   -2|   0    0    0    0    0]\n[   1 -1/2    2    0    0|   0    0    0    0    0]\n[   0    0  1/2  1/2   -2|   0    0    0    0    0]\n[------------------------+------------------------]\n[   0    0    0    0    0|   0    0    2    1    0]\n[   0    0    0    0    0|   0    1    0  1/2    2]\n[   0    0    0    0    0| 1/2    0    0    1  1/2]\n[   0    0    0    0    0|   0   -1    0    2    1]\n[   0    0    0    0    0|   0   -1   -2    0   -1]\n"}︡
︠c848b82b-66c8-4e2a-8cf2-5166dc7060e6i︠
%html
<p><tt class="code">.fcp()</tt> is Sage shorthand for the “factored characteristic polynomial.”</p>
︡0cbf4001-cbab-4560-80e8-b280577faf28︡{"html":"<p><tt class=\"code\">.fcp()</tt> is Sage shorthand for the “factored characteristic polynomial.”</p>"}︡
︠dcc9df7a-ffdd-4c29-b2ab-efbe4689fe8e︠
E.fcp()

︡a5c2652d-e562-4a60-8123-a78e1e02f83c︡{"stdout":"(x^5 - 2*x^4 + 3/2*x^3 - 4*x - 2) * (x^5 + x^4 - 3*x^3 + 11/8*x^2 + 4*x + 4)\n"}︡
︠28b4902e-1f7a-4a5b-a6da-fc39f472f462i︠
%html
<p>Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p>
︡5c05f1e8-0aae-48a6-891a-6a65cc1743b6︡{"html":"<p>Finally a large example, illustrating how fast Sage is at making characteristic polynomials and at factoring.</p>"}︡
︠de7b4f6e-a7e2-4666-818f-008ab5125356i︠
F = block_diagonal_matrix( [random_matrix(QQ, 50), random_matrix(QQ, 50)])
F.fcp()

︡1c7635d4-0971-4971-91f2-c9bc2b3ed6d7︡{"stdout":"(x^50 - 16*x^49 + 267/2*x^48 - 949*x^47 + 132107/16*x^46 - 1892819/32*x^45 + 9066521/32*x^44 - 149589999/128*x^43 + 3213332747/256*x^42 - 74519578705/512*x^41 + 231415501969/256*x^40 - 2598570780409/1024*x^39 - 12960815156021/2048*x^38 + 366342467543949/8192*x^37 - 2913654477674061/8192*x^36 + 5474309941138239/4096*x^35 - 914600172797433295/65536*x^34 - 4302981204021963051/131072*x^33 + 795713569179298304211/262144*x^32 - 42139255932085642519/2048*x^31 + 70138957522088302896035/1048576*x^30 - 473324273408528416947531/2097152*x^29 + 6329861842838341090440643/4194304*x^28 - 15729577422827543762999013/2097152*x^27 + 103076014264130222334731285/4194304*x^26 - 924913326065922891435079603/4194304*x^25 + 307892635630265168524259131517/67108864*x^24 - 2167612166620840390213825967139/67108864*x^23 + 6435733363888665067532085955131/67108864*x^22 - 37920435277827780309003119731935/536870912*x^21 - 1457331766495560796227364173048929/1073741824*x^20 + 14232115276833937890947884515256797/1073741824*x^19 - 77791925293620689921907654452574791/536870912*x^18 + 4757563844098750619915976006443107937/8589934592*x^17 - 3399957438243284419408431388292071423/17179869184*x^16 - 184781668370817638519709357858135876505/34359738368*x^15 + 335212129353462008415105208416379558215/8589934592*x^14 - 3700310217049008419818938093819836132897/34359738368*x^13 + 271816229632423587004920449246809341359/8589934592*x^12 + 687583727949001269747043609904927027413887/274877906944*x^11 - 15124098765316096759373279602893872620995009/1099511627776*x^10 + 6732537863667552815451609382470596185357773/2199023255552*x^9 + 498811618099863912665111890096588242442681539/4398046511104*x^8 - 1593116907051240554078423564575427428670989635/4398046511104*x^7 + 4923285333366572612808307899654334844372868559/17592186044416*x^6 + 77118503532296402949850864032387091943079415619/35184372088832*x^5 - 214492752072853618285358437546765802032131358961/70368744177664*x^4 - 47902815597952058303385472734445815864675276049/4398046511104*x^3 + 3916083653905559866927599073558276857681129177447/140737488355328*x^2 - 12126341582011907313744710611492319669417269851495/562949953421312*x + 969719713885036656119986931454223659123860879049/281474976710656) * (x^50 - 295/4*x^48 - 779/8*x^47 + 41053/16*x^46 + 688961/32*x^45 - 8173791/64*x^44 - 353578015/128*x^43 + 935864015/128*x^42 + 69391755267/512*x^41 - 100245138437/512*x^40 - 14238251709227/2048*x^39 + 3067246050577/2048*x^38 + 1950903579263447/4096*x^37 - 5898059597814155/16384*x^36 - 447227217943227131/32768*x^35 + 3173525180183810179/65536*x^34 + 57227482530341908807/131072*x^33 - 383823587320044744463/262144*x^32 - 9132987280793400123443/524288*x^31 + 41501839843186116916389/1048576*x^30 + 169760813952229062859335/1048576*x^29 - 14695434415078394028153891/4194304*x^28 - 57691083733356104549502799/8388608*x^27 + 707557885607501080955500111/16777216*x^26 - 159003675757054077569111253/2097152*x^25 + 67696274625746449930894019479/33554432*x^24 + 412216406474151947102312452771/67108864*x^23 - 21588113998680737976111701076523/268435456*x^22 + 122861195234023311499499217726405/268435456*x^21 + 3393428064395511501636150620008751/1073741824*x^20 - 15072165970307056939096425847727453/1073741824*x^19 - 159397542479568810841933000347392053/4294967296*x^18 + 1128594427072485880214310063316021793/4294967296*x^17 + 123016288514334932254548299179975571/2147483648*x^16 - 86700206784474211408365849075031549735/17179869184*x^15 - 6528712933715983413997743870773312443/8589934592*x^14 + 6135991156570694613932260487900672419525/68719476736*x^13 - 23595925475264022144190208130643928174461/274877906944*x^12 - 1881479908759107248324069672751867793109/2147483648*x^11 + 2045083362212842883358030181263744055033499/1099511627776*x^10 + 3623837500922769087971750795338350053265715/549755813888*x^9 - 186003850992965242949371499561062824145376859/4398046511104*x^8 - 744903792769835426839129471673984722387498363/8796093022208*x^7 + 1240485919228762356569912302221137009360319643/17592186044416*x^6 - 27918953646482469384760699575864090989483120737/35184372088832*x^5 - 101123788075130481539450486379340352617756212151/35184372088832*x^4 - 461141906931457059167627416087409769458185876827/140737488355328*x^3 + 1682386584372718695747498430372018365225430380755/281474976710656*x^2 + 2812710327718704152352222393749744283962595123083/562949953421312*x - 747710251307537139352067617564590959158291338333/562949953421312)"}︡{"stdout":"\n"}︡
︠6af6c1ec-b852-432a-92ed-a65b0eafbcf2i︠
%html
<p>Nothing short of amazing!</p>
︡d005a9b5-125e-47ef-8ece-0781d6aeb0d9︡{"html":"<p>Nothing short of amazing!</p>"}︡
︠3d49092c-7f9c-4ded-aa83-aad51ff96bf2i︠
%html
<div class="section"><div class="heading">
<div class="number">4</div>
<div class="title">Numerical Matrices</div>
</div></div>
︡934446a8-22a2-41d5-93e9-ac17e587dcd6︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">4</div>\n<div class=\"title\">Numerical Matrices</div>\n</div></div>"}︡
︠d428db1d-189f-4dc1-9dad-f45df30a0e6ai︠
%html
<p>If we use <tt class="code">CDF</tt> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p>
︡1230ce0f-491d-4b2c-a898-6da392f12335︡{"html":"<p>If we use <tt class=\"code\">CDF</tt> (Complex Double Field) for the number system of the entries of our matrix, we get (good) approximate values for eigenvalues.  (If we are OK with the approximate nature, these routines are very, very fast.)</p>"}︡
︠c21265d9-3cb9-4f88-be30-21eaf3aa4f2f︠
G = random_matrix(QQ, 300)
H = G.change_ring(CDF)
H.eigenvalues()

︡74066fbc-c34a-4340-9edf-3aa2d7676572︡{"stdout":"[-20.2207438975 + 8.52651282912e-14*I, -17.2628729339 - 9.41084270052*I, -17.2628729339 + 9.41084270052*I, -9.871526499 + 16.6528461404*I, -9.871526499 - 16.6528461404*I, -14.8635884869 + 11.6396718117*I, 18.1467255819 - 7.25688158383*I, -10.45592651 + 15.8296827082*I, 18.1467255819 + 7.25688158383*I, 7.7646541488 - 17.7774835252*I, -14.8635884869 - 11.6396718117*I, 7.7646541488 + 17.7774835252*I, -10.45592651 - 15.8296827082*I, -12.5820205528 + 13.5220446737*I, -16.2641349982 + 9.03646117757*I, -5.86654694545 + 17.7439089138*I, 14.8927320519 - 11.5579280627*I, 18.6738776015 - 2.45116806844*I, 18.6738776015 + 2.45116806844*I, 14.8927320519 + 11.5579280627*I, 10.7966405876 - 15.3246188803*I, 10.7966405876 + 15.3246188803*I, 16.98570008 + 7.60225783515*I, -2.6305265147 + 18.5219290373*I, 16.98570008 - 7.60225783515*I, 17.5887273013 + 5.15868393933*I, -3.30626726167 + 18.0046537595*I, 0.966796760903 + 18.1703105984*I, -2.14191911159 + 17.9607434356*I, 17.5887273013 - 5.15868393933*I, 14.675012165 + 10.725655696*I, 9.60807708559 + 15.3405321245*I, 17.7568923818 + 2.77749508277*I, 7.33898217015 + 16.4129911115*I, -12.5820205528 - 13.5220446737*I, -5.86654694545 - 17.7439089138*I, 14.675012165 - 10.725655696*I, -2.6305265147 - 18.5219290373*I, 17.7568923818 - 2.77749508277*I, -16.2641349982 - 9.03646117757*I, 15.5596672719 + 8.47688127267*I, 9.60807708559 - 15.3405321245*I, -3.30626726167 - 18.0046537595*I, 0.966796760903 - 18.1703105984*I, 7.33898217015 - 16.4129911115*I, 15.5596672719 - 8.47688127267*I, -2.14191911159 - 17.9607434356*I, 1.63770531816 + 17.5351023332*I, -6.35531118286 + 16.1529689564*I, -0.28556240816 + 17.2919772558*I, 16.950477532 + 1.18764143647*I, 16.950477532 - 1.18764143647*I, 15.5441729926 + 6.46802688434*I, 4.21477325491 + 16.670819993*I, 2.11767842083 + 16.9025574467*I, 13.4167365148 + 10.3600664678*I, 12.3094632947 + 11.3742463562*I, 11.2593382782 + 12.5140022565*I, 9.75953958428 + 13.7188376142*I, -18.3703716554 + 0.331270594769*I, -18.3703716554 - 0.331270594769*I, 13.4167365148 - 10.3600664678*I, 15.5441729926 - 6.46802688434*I, 1.63770531816 - 17.5351023332*I, -0.28556240816 - 17.2919772558*I, 4.21477325491 - 16.670819993*I, 11.2593382782 - 12.5140022565*I, 12.3094632947 - 11.3742463562*I, 9.75953958428 - 13.7188376142*I, 2.11767842083 - 16.9025574467*I, -6.35531118286 - 16.1529689564*I, -17.2487106528 + 4.85156459207*I, -17.2487106528 - 4.85156459207*I, -16.4082877649 + 6.09500064859*I, -15.3034721127 + 7.82408741246*I, -17.3294646961 + 2.72585936461*I, 14.0469824206 + 8.15682286164*I, -16.4082877649 - 6.09500064859*I, -9.98831113609 + 13.4772954937*I, -17.3294646961 - 2.72585936461*I, 8.3372508243 + 14.0306949354*I, -13.977974645 + 9.27295490584*I, -5.21726367456 + 15.645905634*I, 5.66551676766 + 15.1870631305*I, -4.53633373383 + 15.8398262984*I, -15.3034721127 - 7.82408741246*I, 14.2769236382 + 6.5751551756*I, -12.9177016459 + 9.72297319059*I, 12.1878966838 + 9.93637738696*I, -2.95168293227 + 15.5381122102*I, -8.1698140782 + 13.631098877*I, -9.15516130101 + 12.9493215387*I, 14.0469824206 - 8.15682286164*I, -9.98831113609 - 13.4772954937*I, -13.977974645 - 9.27295490584*I, 8.3372508243 - 14.0306949354*I, -5.21726367456 - 15.645905634*I, -4.53633373383 - 15.8398262984*I, -12.9177016459 - 9.72297319059*I, 5.66551676766 - 15.1870631305*I, -15.7282180203 + 4.15748224032*I, -2.95168293227 - 15.5381122102*I, -8.1698140782 - 13.631098877*I, -9.15516130101 - 12.9493215387*I, -15.7282180203 - 4.15748224032*I, -15.7942546518 + 2.39225498265*I, 12.1878966838 - 9.93637738696*I, -15.8298413753 + 1.09939220127*I, -15.7942546518 - 2.39225498265*I, -15.8298413753 - 1.09939220127*I, 14.2769236382 - 6.5751551756*I, -10.7046284862 + 10.5600395362*I, 2.90434528175 + 15.0706049154*I, -11.9842388143 + 9.01296134694*I, 9.62952440421 + 11.4366648488*I, -12.7881254865 + 7.51100481914*I, -4.40190891231 + 13.9685028546*I, 2.71563341408 + 14.4690457581*I, -7.64246468407 + 12.344409699*I, 3.54751478471 + 14.1217495251*I, -6.19829035525 + 12.8316310031*I, 13.4706788899 + 5.1634932247*I, 1.16569595932 + 14.1908921669*I, 14.9086242229 + 1.99438879744*I, 10.2037687358 + 9.8845797696*I, 14.9086242229 - 1.99438879744*I, 14.0475695293 + 2.74978668666*I, 14.7852180484 + 3.29807597663e-14*I, 13.4706788899 - 5.1634932247*I, 14.6584871352 - 2.01374191556e-14*I, 5.33816149896 + 12.8629675346*I, 9.62952440421 - 11.4366648488*I, 14.0475695293 - 2.74978668666*I, 6.96494288687 + 11.8656823095*I, 2.90434528175 - 15.0706049154*I, -10.7046284862 - 10.5600395362*I, -11.9842388143 - 9.01296134694*I, -12.7881254865 - 7.51100481914*I, -4.40190891231 - 13.9685028546*I, 2.71563341408 - 14.4690457581*I, 3.54751478471 - 14.1217495251*I, 13.9429397338 + 3.40216303982e-14*I, 10.2037687358 - 9.8845797696*I, -10.0189304883 + 10.0115425441*I, -7.64246468407 - 12.344409699*I, -6.19829035525 - 12.8316310031*I, 1.16569595932 - 14.1908921669*I, -10.0189304883 - 10.0115425441*I, 5.33816149896 - 12.8629675346*I, -8.10395697994 + 10.9990506091*I, -14.1719316413 + 1.83689482605*I, -14.4154756798 - 1.2395276052e-14*I, -14.1719316413 - 1.83689482605*I, 6.96494288687 - 11.8656823095*I, -8.10395697994 - 10.9990506091*I, -13.103181908 + 4.17893785446*I, -10.7223046968 + 8.05759014013*I, -13.103181908 - 4.17893785446*I, -10.7223046968 - 8.05759014013*I, 7.74410517033 + 10.8316334958*I, 10.9970365166 + 7.25918706982*I, 7.74410517033 - 10.8316334958*I, 10.958998564 + 6.6689984209*I, 7.92530075389 + 9.92736782279*I, 9.79599865906 + 8.05667313025*I, 13.1141787165 + 3.07174616888e-14*I, 10.9970365166 - 7.25918706982*I, 10.958998564 - 6.6689984209*I, 7.92530075389 - 9.92736782279*I, 9.79599865906 - 8.05667313025*I, 12.1792774617 - 1.76203534413*I, -13.4297959184 + 1.12976117497e-14*I, 12.1792774617 + 1.76203534413*I, -13.2631799594 + 2.49510590673e-15*I, -11.1971658105 + 5.63540816288*I, -4.74656128922 + 11.4027355487*I, -1.99641960949 + 12.194096446*I, 4.96372278509 + 10.682303531*I, 1.00196036545 + 11.9679645335*I, -1.43272308706 + 11.8667911952*I, 2.58527194626 + 11.3593097693*I, 0.760614769966 + 11.6508416288*I, -11.1971658105 - 5.63540816288*I, -3.49945182568 + 10.9844500263*I, -4.74656128922 - 11.4027355487*I, -7.14570411418 + 8.73918662287*I, -11.5552835105 + 3.24786662395*I, -1.99641960949 - 12.194096446*I, 4.96372278509 - 10.682303531*I, -1.43272308706 - 11.8667911952*I, 1.00196036545 - 11.9679645335*I, 2.58527194626 - 11.3593097693*I, 0.760614769966 - 11.6508416288*I, -11.5552835105 - 3.24786662395*I, -7.14570411418 - 8.73918662287*I, -3.49945182568 - 10.9844500263*I, -9.3416333082 + 6.31813557502*I, -9.72847300402 + 5.19632520237*I, -11.2638741201 + 2.14190557146*I, -9.3416333082 - 6.31813557502*I, -11.2638741201 - 2.14190557146*I, -9.72847300402 - 5.19632520237*I, -10.8585087132 + 1.77027676314*I, -10.8585087132 - 1.77027676314*I, 5.0944262682 + 9.33961800601*I, -5.06938785788 + 8.83993236788*I, -1.50765887691 + 10.2696259904*I, -5.69404464804 + 8.24248439706*I, 0.131167943859 + 10.1756842392*I, -3.24335598414 + 9.20480501465*I, -7.33841765506 + 6.48127407309*I, -10.1273068101 - 8.6854653996e-16*I, 9.99002474677 + 4.58399884405*I, -9.73173986537 - 3.30414531004e-14*I, -9.30145472151 + 1.87383605859*I, -9.30145472151 - 1.87383605859*I, -5.06938785788 - 8.83993236788*I, -5.69404464804 - 8.24248439706*I, -7.33841765506 - 6.48127407309*I, 2.70124403314 + 9.50093837516*I, -1.50765887691 - 10.2696259904*I, 7.54126630323 + 6.89063290034*I, 5.0944262682 - 9.33961800601*I, 10.9536954108 - 6.5740693236e-15*I, 9.99002474677 - 4.58399884405*I, 0.131167943859 - 10.1756842392*I, 8.15940846277 + 5.77007846113*I, -3.24335598414 - 9.20480501465*I, 9.77151495853 + 3.25073330814*I, 7.54126630323 - 6.89063290034*I, 9.77151495853 - 3.25073330814*I, 8.15940846277 - 5.77007846113*I, -7.27756687795 + 4.7603291532*I, 1.87568746262 + 8.92165581451*I, 2.70124403314 - 9.50093837516*I, 5.6562890636 + 6.9928663385*I, -2.20952718525 + 8.26208958985*I, 9.51402048643 + 1.05654366304e-14*I, 5.6562890636 - 6.9928663385*I, 9.15728738573 + 2.21983813772*I, 9.15728738573 - 2.21983813772*I, -7.27756687795 - 4.7603291532*I, 8.55896694308 - 2.3652932769*I, 8.55896694308 + 2.3652932769*I, 7.30792559023 + 4.41776860794*I, 1.87568746262 - 8.92165581451*I, 7.30792559023 - 4.41776860794*I, -2.20952718525 - 8.26208958985*I, -5.99339466433 + 5.02529006503*I, -4.52709406741 + 6.1435139179*I, 2.84817419854 + 7.06140381457*I, -7.83942337482 + 1.67096126303e-17*I, 1.02556292757 + 7.54751755631*I, -5.99339466433 - 5.02529006503*I, 4.96853312754 + 5.65423438073*I, -4.52709406741 - 6.1435139179*I, 4.96853312754 - 5.65423438073*I, 2.84817419854 - 7.06140381457*I, 1.02556292757 - 7.54751755631*I, -2.93971718003 + 6.13493813791*I, -2.93971718003 - 6.13493813791*I, -5.39762607471 + 3.60321119079*I, -5.39762607471 - 3.60321119079*I, -6.23686598676 + 4.88708836267e-15*I, -5.84656796572 + 1.81170320694*I, 5.64947472251 + 3.46386599957*I, -5.84656796572 - 1.81170320694*I, 5.64947472251 - 3.46386599957*I, 1.79785052287 + 5.73026454541*I, -4.39672487806 + 2.58149352177*I, -1.7861995307 + 4.71812538809*I, 0.495540757429 + 5.28332613193*I, 1.79785052287 - 5.73026454541*I, 5.94531727965 + 1.41509235074*I, -4.39672487806 - 2.58149352177*I, 5.94531727965 - 1.41509235074*I, -1.7861995307 - 4.71812538809*I, 0.495540757429 - 5.28332613193*I, 5.24856382821 + 2.48251749993e-15*I, 5.09617400173 + 0.298479824274*I, 5.09617400173 - 0.298479824274*I, 2.02271593363 + 3.87240173863*I, -3.78982754958 + 1.47287675234*I, -3.78982754958 - 1.47287675234*I, -0.739606068092 + 3.50566356498*I, 2.37669458419 + 2.61899692244*I, 1.33925503586 + 3.05023118962*I, -0.739606068092 - 3.50566356498*I, -3.42741623096 + 3.69198622412e-15*I, -2.2167431278 + 1.08581065768*I, -2.2167431278 - 1.08581065768*I, 2.02271593363 - 3.87240173863*I, 2.37669458419 - 2.61899692244*I, 1.33925503586 - 3.05023118962*I, 0.930926362545 + 1.30365165619*I, 1.821798736 + 0.865242411411*I, 0.930926362545 - 1.30365165619*I, 1.821798736 - 0.865242411411*I, -1.38910207986 + 6.13684052373e-16*I, 2.14960359189 + 8.20125651346e-16*I]"}︡{"stdout":"\n"}︡
︠9299d0b0-768a-4b63-a774-dfdd01ad3df5︠









