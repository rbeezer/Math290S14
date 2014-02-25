︠f6dc19e6-c662-49fb-bcd0-0a54b767db60i︠
%auto
%load mathbook-modern-3.css

︡c50e9221-a34f-4aa8-ade5-3974bfdba5fa︡︡
︠dfe1401c-710a-45e6-9314-b3da26e3b80bi︠
%html
<div>\(\)</div>
︡51a48489-1572-4101-9394-c325c56a7f85︡{"html":"<div>\\(\\)</div>"}︡
︠27b4e4a0-5cd1-4f8b-95c8-d6cf791911fci︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section MISLE</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Spring 2014</div>
</div>
︡974360f5-55c0-40cc-acbe-32557594e3e9︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section MISLE</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Spring 2014</div>\n</div>"}︡
︠90a91d52-b829-44b5-9fbb-d05cfb936435i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">An invertible matrix</div>
</div></div>
︡3bbf19ae-f02f-4001-bbf3-6170aeb55c68︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">An invertible matrix</div>\n</div></div>"}︡
︠38c1e7dc-7afa-4df3-99c1-fc0de09eb5f8i︠
%html
<p>An invertible \(6\times 6\) matrix.</p>
︡7883ff4f-f998-4964-81af-b43d61983dcb︡{"html":"<p>An invertible \\(6\\times 6\\) matrix.</p>"}︡
︠12f761b3-015a-40d1-90b7-8157132518d5︠
A = matrix(QQ, [[1, 2, -1, -2, -1, -6], 
                [-2, -3, 1, 3, 1, 6], 
                [2, 4, -1, -4, 0, -7], 
                [0, -1, 1, 2, -1, 1], 
                [2, 4, -2, -4, -1, -8], 
                [1, 0, 0, 0, -1, 2]])
A

︡ee9b3bb9-b0b3-4e7f-8414-345392a64b80︡{"stdout":"[ 1  2 -1 -2 -1 -6]\n[-2 -3  1  3  1  6]\n[ 2  4 -1 -4  0 -7]\n[ 0 -1  1  2 -1  1]\n[ 2  4 -2 -4 -1 -8]\n[ 1  0  0  0 -1  2]\n"}︡
︠1e5548fd-e09e-456c-aee9-f7caf5a8f27b︠
Ainv = A.inverse()
Ainv

︡bd63c5c8-7d1e-418f-9381-28a7e8fe3489︡{"stdout":"[ -8 -12  -6   0   1  -5]\n[  2   6   3   1   1   2]\n[  5   6   4   0  -2   3]\n[ -5  -5  -3   1   2  -3]\n[ -6  -8  -4   0   1  -4]\n[  1   2   1   0   0   1]\n"}︡
︠affcabee-1989-4d57-9b47-c544c8911d7d︠
Ainv*A

︡b284b00f-2a61-46ab-b7bb-1267bf21ded0︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n[0 0 0 0 0 1]"}︡{"stdout":"\n"}︡
︠62da2bea-a03c-49b3-8b9f-bc4e945ba247︠
A*Ainv

︡c0f0f677-74fa-4658-b3be-1a618a0c23c8︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n[0 0 0 0 0 1]\n"}︡
︠2912db6e-3ce1-44c0-b404-10a750b0ae88i︠
%html
<p>Building the inverse, column by column. Use several different columns of the identity matrix.</p>
︡25ac2de1-f8f4-4de5-94dd-741b50f29e6a︡{"html":"<p>Building the inverse, column by column. Use several different columns of the identity matrix.</p>"}︡
︠205e1d34-1ee1-4705-acad-f9235077aa32︠
y = vector(QQ, [0,0,0,0,0,1])
P = A.augment(y, subdivide=True)
P.rref()

︡90246d09-53cc-4b06-97f4-73878617cc2b︡{"stdout":"[ 1  0  0  0  0  0|-5]\n[ 0  1  0  0  0  0| 2]\n[ 0  0  1  0  0  0| 3]\n[ 0  0  0  1  0  0|-3]\n[ 0  0  0  0  1  0|-4]\n[ 0  0  0  0  0  1| 1]\n"}︡
︠b2e8681f-41d7-4cba-8d37-60236dc09284i︠
%html
<p>The following is the approach of Theorem CINM.</p>
︡e4443f3b-d5ed-4878-962a-3af1234a109c︡{"html":"<p>The following is the approach of Theorem CINM.</p>"}︡
︠1bacbbf9-9779-4c13-a4b2-9e02195aa5a3︠
B = A.augment(identity_matrix(6), subdivide=True)
B

︡0018ee01-9ac4-4fa9-b3b5-deb49386142c︡{"stdout":"[ 1  2 -1 -2 -1 -6| 1  0  0  0  0  0]\n[-2 -3  1  3  1  6| 0  1  0  0  0  0]\n[ 2  4 -1 -4  0 -7| 0  0  1  0  0  0]\n[ 0 -1  1  2 -1  1| 0  0  0  1  0  0]\n[ 2  4 -2 -4 -1 -8| 0  0  0  0  1  0]\n[ 1  0  0  0 -1  2| 0  0  0  0  0  1]\n"}︡
︠d975ceba-ca80-4724-8148-9e3a85a016e8︠
B.rref()

︡53a1f6dd-a60a-4bbf-84f0-e32783d17854︡{"stdout":"[  1   0   0   0   0   0| -8 -12  -6   0   1  -5]\n[  0   1   0   0   0   0|  2   6   3   1   1   2]\n[  0   0   1   0   0   0|  5   6   4   0  -2   3]\n[  0   0   0   1   0   0| -5  -5  -3   1   2  -3]\n[  0   0   0   0   1   0| -6  -8  -4   0   1  -4]\n[  0   0   0   0   0   1|  1   2   1   0   0   1]\n"}︡
︠b8e1ed74-1448-4f70-b48e-c8fb6ceb0be2i︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">A matrix without an inverse</div>
</div></div>
︡73dbf96f-09b5-4475-8529-819605cc2f27︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">A matrix without an inverse</div>\n</div></div>"}︡
︠b6422549-c1b4-4eff-a4a7-663a17115156i︠
%html
<p>Now, a non-invertible \(6\times 6\) matrix.</p>
︡f45342ce-8e05-4b78-8258-059a76d2d9f1︡{"html":"<p>Now, a non-invertible \\(6\\times 6\\) matrix.</p>"}︡
︠7a4590a6-1762-4778-9676-f8f4d3c0705a︠
C = matrix(QQ, [[-1, 0, 2, 8, 8, 0], 
                [-1, -1, 0, 1, 0, 3], 
                [-1, -2, -1, -4, -4, 5], 
                [1, 2, 1, 4, 5, -5], 
                [-1, -1, -1, -1, -8, 4], 
                [0, 1, 0, 3, 5, -1]])
C

︡702c437f-5f11-4b7f-9088-ca695e995de7︡{"stdout":"[-1  0  2  8  8  0]\n[-1 -1  0  1  0  3]\n[-1 -2 -1 -4 -4  5]\n[ 1  2  1  4  5 -5]\n[-1 -1 -1 -1 -8  4]\n[ 0  1  0  3  5 -1]\n"}︡
︠5d4e38c7-7695-47ae-bd9a-e322c0483c8f︠
C.inverse()

︡e94d61e0-8393-4033-b804-6933b85246a0︡{"stderr":"Error in lines 1-1\nTraceback (most recent call last):\n  File \"/projects/23f889c0-9f25-47e1-890f-7ef633840cc4/.sagemathcloud/sage_server.py\", line 733, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"matrix2.pyx\", line 7532, in sage.matrix.matrix2.Matrix.inverse (sage/matrix/matrix2.c:40678)\n  File \"matrix_rational_dense.pyx\", line 641, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__ (sage/matrix/matrix_rational_dense.c:9435)\n  File \"matrix_rational_dense.pyx\", line 750, in sage.matrix.matrix_rational_dense.Matrix_rational_dense.__invert__main (sage/matrix/matrix_rational_dense.c:10088)\nZeroDivisionError: input matrix must be nonsingular\n"}︡
︠ce63c922-df4c-4650-b109-a97ef7e2a32di︠
%html
<p>Trying to build the inverse, column by column.  Try different columns.</p>
︡7e1a60cc-cdd8-42da-ab2b-1eda72a34c1e︡{"html":"<p>Trying to build the inverse, column by column.  Try different columns.</p>"}︡
︠31808c54-bbaf-4671-b84a-503ebbe41eb4︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()

︡005b72a6-f793-483b-ba3a-7bf2c93595e1︡{"stdout":"[ 1  0  0 -4  0 -2| 0]\n[ 0  1  0  3  0 -1| 0]\n[ 0  0  1  2  0 -1| 0]\n[ 0  0  0  0  1  0| 0]\n[ 0  0  0  0  0  0| 1]\n[ 0  0  0  0  0  0| 0]\n"}︡
︠7a6b507b-f4a1-4bf3-b991-7a7fedb3f79di︠
%html
<p>Any one of these results is enough to conclude that \(C\) does not have an inverse, following the logic of Example MWIAA.</p>
︡12587119-0e31-4f42-976b-256d556fd773︡{"html":"<p>Any one of these results is enough to conclude that \\(C\\) does not have an inverse, following the logic of Example MWIAA.</p>"}︡
︠d1d5300b-042f-414d-a1df-508c226495d1i︠
%html
<p>It also happens that <em>no</em> column of the identity matrix leads to a
       consistent system (for this matrix).</p>
︡27b984d8-7f43-4fba-a16c-b3572c147e7b︡{"html":"<p>It also happens that <em>no</em> column of the identity matrix leads to a\n       consistent system (for this matrix).</p>"}︡
︠6d7749ce-c520-4da1-93ca-c00d4e78d882︠
D = C.augment(identity_matrix(6), subdivide=True)
D

︡b67fd14f-f074-4796-9b66-5d6784abfa23︡{"stdout":"[-1  0  2  8  8  0| 1  0  0  0  0  0]\n[-1 -1  0  1  0  3| 0  1  0  0  0  0]\n[-1 -2 -1 -4 -4  5| 0  0  1  0  0  0]\n[ 1  2  1  4  5 -5| 0  0  0  1  0  0]\n[-1 -1 -1 -1 -8  4| 0  0  0  0  1  0]\n[ 0  1  0  3  5 -1| 0  0  0  0  0  1]\n"}︡
︠91c47f14-afcb-49ba-8ca1-61443602d9bf︠
D.rref()

︡864df872-b42b-43e0-81a2-f9a7f2ba761e︡{"stdout":"[    1     0     0    -4     0    -2|    0    -1     0  -5/8  -5/8  -3/8]\n[    0     1     0     3     0    -1|    0     0     0   5/8   5/8   3/8]\n[    0     0     1     2     0    -1|    0     1     0     1     0    -1]\n[    0     0     0     0     1     0|    0     0     0  -1/8  -1/8   1/8]\n[    0     0     0     0     0     0|    1    -3     0 -13/8   3/8   5/8]\n[    0     0     0     0     0     0|    0     0     1   9/8   1/8  -1/8]\n"}︡
︠8b0a36ec-f410-4601-aa78-a7fe67c98a33︠


︡a600eceb-9aca-45de-b1ae-c968695fc684︡︡









