︠83f487fa-10f2-4335-a613-e7f8903e1a61i︠
load('mathbook-modern-3.css')

︡c8d2dd3f-9c0a-46b2-9713-ee52a78ad9f3︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/23f889c0-9f25-47e1-890f-7ef633840cc4/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"/projects/23f889c0-9f25-47e1-890f-7ef633840cc4/.sagemathcloud/sage_salvus.py\", line 2665, in load\n    load_html_resource(arg)\n  File \"/projects/23f889c0-9f25-47e1-890f-7ef633840cc4/.sagemathcloud/sage_salvus.py\", line 2583, in load_html_resource\n    url = salvus.file(filename, show=False)\n  File \"/projects/23f889c0-9f25-47e1-890f-7ef633840cc4/.sagemathcloud/sage_server.py\", line 616, in file\n    file_uuid = self._conn.send_file(filename)\n  File \"/projects/23f889c0-9f25-47e1-890f-7ef633840cc4/.sagemathcloud/sage_server.py\", line 128, in send_file\n    return self.send_blob(open(filename, 'rb').read())\nIOError: [Errno 2] No such file or directory: u'mathbook-modern-3.css'\n"}︡
︠66fd8a9b-750a-4aee-9b58-2e64e7e552c7i︠
%html
<div>\(\)</div>
︡bae57d08-6b54-49a0-8d9e-63cdd79a6434︡{"html":"<div>\\(\\)</div>"}︡
︠59cd4d55-03fa-4fc4-9fc4-8ee238b636e3i︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section PDM</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Spring 2014<br>April 1, 2014</div>
</div>
︡dfe2008b-6fec-43f0-ae90-db3cf663c1b7︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section PDM</div>\n<div class=\"authorgroup\">Robert Beezer</div>\n<div class=\"date\">Math 290, Spring 2014<br>April 1, 2014</div>\n</div>"}︡
︠696a5ad3-d42c-4b0c-9d3c-397321328395i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">LU Decomposition, Triangular Form</div>
</div></div>
︡27ed59d5-3950-4625-b0d7-6c3e836c28fe︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">LU Decomposition, Triangular Form</div>\n</div></div>"}︡
︠d14318a8-bb96-4eb8-bf56-8e8f72ea3016i︠
%html
<p>This is a topic not covered in our text.  You <em>can</em> find a discussion in <span class="booktitle">A Second Course in Linear Algebra</span> linked off the Math 420 course page.</p>
︡fe3e1239-b131-4630-adf9-d49374b84d83︡{"html":"<p>This is a topic not covered in our text.  You <em>can</em> find a discussion in <span class=\"booktitle\">A Second Course in Linear Algebra</span> linked off the Math 420 course page.</p>"}︡
︠ed0f7982-f303-4706-82dd-8b874b401136i︠
%html
<p>Our goal is to row-reduce a matrix with elementary matrices, track the changes, and arrive at an expression for a square matrix \(A\) as a product of a lower-triangular matrix, \(L\), and an upper-triangular matrix, \(U\), that is \[A=LU\] the so-called “LU” decomposition.  I sometimes prefer to call it “triangular form.”</p>
︡bad4c8af-33fb-47bd-9a22-a8e9304eeecb︡{"html":"<p>Our goal is to row-reduce a matrix with elementary matrices, track the changes, and arrive at an expression for a square matrix \\(A\\) as a product of a lower-triangular matrix, \\(L\\), and an upper-triangular matrix, \\(U\\), that is \\[A=LU\\] the so-called “LU” decomposition.  I sometimes prefer to call it “triangular form.”</p>"}︡
︠3b95288f-9030-444b-a07f-875af3ee3c4b︠
entries = [[-6, -10, 0, 10, 14],
[2, 3, 0, -4, -3],
[0, -2, -3, 1, 8],
[5, 6, -3, -7, -3],
[-1, 1, 6, -1, -8]]
A = matrix(QQ, entries)
A

︡be60d425-9817-4337-9ffe-3437850b8c22︡{"stdout":"[ -6 -10   0  10  14]\n[  2   3   0  -4  -3]\n[  0  -2  -3   1   8]\n[  5   6  -3  -7  -3]\n[ -1   1   6  -1  -8]\n"}︡
︠313eb3e6-44a9-4d0a-a176-32dedf676ab7i︠
%html
<p>Elementary matrices to “do” row operations in first column.</p>
︡254eb224-f988-4439-a31a-840b6a2a750a︡{"html":"<p>Elementary matrices to “do” row operations in first column.</p>"}︡
︠28782bc6-58da-452c-a36d-be12a8e4432d︠
actionA = elementary_matrix(QQ, 5, row1=1, row2=0, scale=-2)*elementary_matrix(QQ, 5, row1=3, row2=0, scale=-5)*elementary_matrix(QQ, 5, row1=4, row2=0, scale=1)*elementary_matrix(QQ, 5, row1=0, scale=-1/6)
B = actionA*A
B

︡671e1ac3-cce2-4078-ac56-08a1f15d008b︡{"stdout":"[    1   5/3     0  -5/3  -7/3]\n[    0  -1/3     0  -2/3   5/3]\n[    0    -2    -3     1     8]\n[    0  -7/3    -3   4/3  26/3]\n[    0   8/3     6  -8/3 -31/3]\n"}︡
︠9b49c875-215f-4d11-a19a-be0f040d8f35i︠
%html
<p>Now in second column, moving to “row-echelon form” (i.e. not “reduced”).</p>
︡a35c768f-78e7-4af0-b3ea-2ab1b4db8cb9︡{"html":"<p>Now in second column, moving to “row-echelon form” (i.e. not “reduced”).</p>"}︡
︠24839861-64f1-4268-a823-4d74a2ae77b3︠
actionB = elementary_matrix(QQ, 5, row1=2, row2=1, scale=2)*elementary_matrix(QQ, 5, row1=3, row2=1, scale=7/3)*elementary_matrix(QQ, 5, row1=4, row2=1, scale=-8/3)*elementary_matrix(QQ, 5, row1=1, scale=-3)
C = actionB*B
C

︡4065fd8c-93da-48df-b83a-a499a4cb387a︡{"stdout":"[   1  5/3    0 -5/3 -7/3]\n[   0    1    0    2   -5]\n[   0    0   -3    5   -2]\n[   0    0   -3    6   -3]\n[   0    0    6   -8    3]\n"}︡
︠c883f4f0-d0c4-4a6b-98e7-43daf7318540︠
actionC = elementary_matrix(QQ, 5, row1=3, row2=2, scale=3)*elementary_matrix(QQ, 5, row1=4, row2=2, scale=-6)*elementary_matrix(QQ, 5, row1=2, scale=-1/3)
D = actionC*C
D

︡45f4a642-efe3-4feb-b4d1-3f8c25a12465︡{"stdout":"[   1  5/3    0 -5/3 -7/3]\n[   0    1    0    2   -5]\n[   0    0    1 -5/3  2/3]\n[   0    0    0    1   -1]\n[   0    0    0    2   -1]\n"}︡
︠32b28b21-83a3-48ff-bb66-a7a4c0967710i︠
%html
<p>And now the penultimate column.</p>
︡3d1d9e68-01cb-4bda-a88f-ec6276292dd1︡{"html":"<p>And now the penultimate column.</p>"}︡
︠b16bf2b9-6b09-4545-b0d8-53ed4a5ad11a︠
actionD = elementary_matrix(QQ, 5, row1=4, row2=3, scale=-2)*elementary_matrix(QQ, 5, row1=3, scale=1)
E = actionD*D
E

︡6f9a67e9-e77c-4d02-a381-22b12243535a︡{"stdout":"[   1  5/3    0 -5/3 -7/3]\n[   0    1    0    2   -5]\n[   0    0    1 -5/3  2/3]\n[   0    0    0    1   -1]\n[   0    0    0    0    1]\n"}︡
︠42a5d86c-6713-4c44-86a0-6d7ad59aa59di︠
%html
<p>And done.</p>
︡e95f82be-fcdb-4fa9-a874-c7d254d0ab33︡{"html":"<p>And done.</p>"}︡
︠c53387aa-061b-4597-80a4-a40ab1f6daac︠
actionE = elementary_matrix(QQ, 5, row1=4, scale=1)
F = actionE*E
F

︡8086eca7-f94b-4ae7-8c31-01cdda15466f︡{"stdout":"[   1  5/3    0 -5/3 -7/3]\n[   0    1    0    2   -5]\n[   0    0    1 -5/3  2/3]\n[   0    0    0    1   -1]\n[   0    0    0    0    1]\n"}︡
︠bcd0adf3-c3fe-4497-95ba-6816bea9a07ci︠
%html
<p>Clearly, \(F\) has determinant 1.  By virtue of the above manipulations (row operations) we expect that \[\det(A) = \left(\frac{1}{-1/6}\right)\left(\frac{1}{-3}\right)\left(\frac{1}{-1/3}\right)\left(\frac{1}{1}\right)\left(\frac{1}{1}\right)\det(F) = -6.\] Let's check.</p>
︡5513dd57-a1ef-4d99-90fd-9e5fe68d05b4︡{"html":"<p>Clearly, \\(F\\) has determinant 1.  By virtue of the above manipulations (row operations) we expect that \\[\\det(A) = \\left(\\frac{1}{-1/6}\\right)\\left(\\frac{1}{-3}\\right)\\left(\\frac{1}{-1/3}\\right)\\left(\\frac{1}{1}\\right)\\left(\\frac{1}{1}\\right)\\det(F) = -6.\\] Let's check.</p>"}︡
︠4e78c5a2-b193-44ee-8582-1ebaf70d3b6d︠
A.determinant()

︡655dead8-320e-463b-8d6f-46e4e592c65d︡{"stdout":"-6\n"}︡
︠2333a399-abde-4cfd-94fc-dbedb464ecf8i︠
%html
<p>Yep.  But it gets better.  \(F\) is the product of the “action” matrices on the left of \(A\).</p>
︡1dba2676-9454-4101-b727-7bedcbaeaf28︡{"html":"<p>Yep.  But it gets better.  \\(F\\) is the product of the “action” matrices on the left of \\(A\\).</p>"}︡
︠f5e4a1bd-b173-4078-baac-a852099988e1︠
total_action = prod([actionE, actionD, actionC, actionB, actionA])
total_action

︡6d69dd20-1823-4fbb-87c3-a849da4bd5a8︡{"stdout":"[-1/6    0    0    0    0]\n[  -1   -3    0    0    0]\n[ 2/3    2 -1/3    0    0]\n[ 1/2   -1   -1    1    0]\n[-5/2   -2    4   -2    1]\n"}︡
︠3fb86534-a874-48dc-a807-17d264c6cc55i︠
%html
<p>Notice that the elementary matrices we used are all lower triangular (because we just created zeros below the diagonal, no row swaps), and so their product is lower triangular.  Now check that we have the correct matrix.</p>
︡73efd154-04fa-49a4-a68b-f9b3e245ca4f︡{"html":"<p>Notice that the elementary matrices we used are all lower triangular (because we just created zeros below the diagonal, no row swaps), and so their product is lower triangular.  Now check that we have the correct matrix.</p>"}︡
︠30baa6a8-a74a-4730-8118-878cd25d1580︠
F == total_action * A

︡5433a71b-6e4c-43e6-963f-a05b51e3f28f︡{"stdout":"True\n"}︡
︠9aadeaa0-090e-41ae-899b-5d5a84fa30c0i︠
%html
<p>The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So the product is nonsingular.  Futhermore, the inverse is again lower triangular.</p>
︡60731c62-89a4-445d-b75a-357e942ebec3︡{"html":"<p>The “total action” matrix is a product of elementary matrices, which are individually nonsingular.  So the product is nonsingular.  Futhermore, the inverse is again lower triangular.</p>"}︡
︠384f3de3-72dd-41aa-9682-0757b625b636︠
ta_inv = total_action.inverse()
ta_inv

︡f1f676fc-6da1-4d84-b25a-ef374a70d8a1︡{"stdout":"[  -6    0    0    0    0]\n[   2 -1/3    0    0    0]\n[   0   -2   -3    0    0]\n[   5 -7/3   -3    1    0]\n[  -1  8/3    6    2    1]\n"}︡
︠554b822a-0b81-41b8-8a65-c90b4808f425i︠
%html
<p>We reach our goal by rearranging the equality above, writing \(A\) as a product of a lower-triangular matrix with an upper-triangular matrix,</p>
︡a8ecf1c9-0ddf-4000-8514-ec6e93cb5335︡{"html":"<p>We reach our goal by rearranging the equality above, writing \\(A\\) as a product of a lower-triangular matrix with an upper-triangular matrix,</p>"}︡
︠d1b63e33-696e-4ba1-814a-c394f152fe33︠
A == ta_inv * F

︡80612375-6797-484e-94bf-89c5c4b38fd0︡{"stdout":"True\n"}︡
︠4d80c3a8-70ea-4fac-982c-74a8517b3908i︠
%html
<p>Yes.  So we have decomposed the original matrix (\(A\)) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (\(F\), the row-echelon matrix).</p>
︡b3961263-52a9-4291-af42-bc2ee40a0adf︡{"html":"<p>Yes.  So we have decomposed the original matrix (\\(A\\)) into the product of a lower triangular matrix (inverse of the total action matrix) and an upper triangular matrix with all ones on the diagonal (\\(F\\), the row-echelon matrix).</p>"}︡
︠3eed214e-31dd-422f-929a-6079a08e6a77︠
A, ta_inv, F

︡39727edd-d1f8-4082-997b-b4a217dcf5de︡{"stdout":"([ -6 -10   0  10  14]\n[  2   3   0  -4  -3]\n[  0  -2  -3   1   8]\n[  5   6  -3  -7  -3]\n[ -1   1   6  -1  -8], [  -6    0    0    0    0]\n[   2 -1/3    0    0    0]\n[   0   -2   -3    0    0]\n[   5 -7/3   -3    1    0]\n[  -1  8/3    6    2    1], [   1  5/3    0 -5/3 -7/3]\n[   0    1    0    2   -5]\n[   0    0    1 -5/3  2/3]\n[   0    0    0    1   -1]\n[   0    0    0    0    1])\n"}︡
︠22909c19-b39d-4063-9660-20f5f2ded2dd︠
A
︡c4114c97-cc4c-49e0-9932-4968125d8f70︡{"stdout":"[ -6 -10   0  10  14]\n[  2   3   0  -4  -3]\n[  0  -2  -3   1   8]\n[  5   6  -3  -7  -3]\n[ -1   1   6  -1  -8]\n"}︡
︠bb704c73-52ab-4501-b0a0-43ed5f28a4c1︠
ta_inv
︡6aa1f2b0-65e7-4df4-9850-6060a3d63f74︡{"stdout":"[  -6    0    0    0    0]\n[   2 -1/3    0    0    0]\n[   0   -2   -3    0    0]\n[   5 -7/3   -3    1    0]\n[  -1  8/3    6    2    1]\n"}︡
︠76c32b84-7188-42bd-b5ea-9c58888207dd︠
F
︡a09045db-adc9-4939-87ff-fd4f1010ad8c︡{"stdout":"[   1  5/3    0 -5/3 -7/3]\n[   0    1    0    2   -5]\n[   0    0    1 -5/3  2/3]\n[   0    0    0    1   -1]\n[   0    0    0    0    1]\n"}︡
︠9931adb7-348b-4a5e-ad26-f01bd1096419i︠
%html
<p>This decomposition (an “LU decomposition”) can be useful for solving systems quickly.  You “back solve” with one matrix, then “forward solve” with the other.</p>
︡92803fc0-2aff-4182-a304-bed7a4cb7608︡{"html":"<p>This decomposition (an “LU decomposition”) can be useful for solving systems quickly.  You “back solve” with one matrix, then “forward solve” with the other.</p>"}︡
︠6833f866-5608-41df-8dec-2cbc0d5bf2ed︠









