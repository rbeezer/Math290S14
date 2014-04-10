︠641e36a0-eaeb-4a33-b6c1-4d83a5ed9cf6i︠
load('mathbook-modern-3.css')

︡7d71750d-932e-4296-97d2-f6d648ee62ca︡︡
︠5567539e-4db1-4a0f-96fc-8024ed775ed7i︠
%html
<div>\(\)</div>
︡b54219e7-394c-4909-8e27-d72288a5ad92︡{"html":"<div>\\(\\)</div>"}︡
︠c5acf4d3-cc38-4c9e-b321-77c9472bc537i︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section SD</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Spring 2014<br>April 1, 2014</div>
</div>
︡04b50cd0-c20d-4442-896b-7dd42b1886c9︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section SD</div>\n<div class=\"authorgroup\">Robert Beezer</div>\n<div class=\"date\">Math 290, Spring 2014<br>April 1, 2014</div>\n</div>"}︡
︠11868145-dc60-47b3-8aa7-99427d529a57i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Similarity</div>
</div></div>
︡6b92f1b8-f944-4d52-973b-ddd3be69993e︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Similarity</div>\n</div></div>"}︡
︠f055a105-fd06-40aa-85d2-e07a26a5ba57i︠
%html
<p>We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p>
︡5c39304f-0f3c-476e-aee4-345e1d223529︡{"html":"<p>We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p>"}︡
︠26cc22f5-f0db-4d9d-bcd3-62157d4aeea3︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B

︡9cd66fa2-bb18-4d9d-857b-2a242e7f2fc2︡{"stdout":"([ 6 -8 -6  2  3 -9 -7 -5  2 -7]\n[-9  3  4  4 -3  0 -7  0 -9 -1]\n[ 3 -8  1 -9  5  2 -1 -3 -9  7]\n[-8  8 -4 -9 -3 -8 -9 -6  6 -2]\n[ 6 -9  5 -6 -1  5 -7  2 -3 -3]\n[-8 -5 -1 -7  1  1 -8 -5  3 -4]\n[-1  4 -8  3 -4 -1 -2  5 -2  3]\n[-6 -7 -2 -3  4  2  8  7  7  3]\n[-3  1  2 -7  3  6  1  3  8 -9]\n[-6  2 -5  0  5 -4 -1 -8 -1  8], [  1087  -1720   2943  -2396 -10002   3498  -3083  -3239   3675  -2879]\n[  -199    573  -1310    889   3107  -1293    341   1271  -2624    985]\n[  1047  -1759   3227  -2480 -10196   3671  -2881  -3349   4666  -2897]\n[   348   -768   1689  -1134  -4248   1712   -672  -1581   3417  -1210]\n[   272   -576   1061   -818  -3114   1145   -827  -1056   1457  -1044]\n[   744  -1326   2529  -1948  -7919   2861  -2178  -2705   3416  -2351]\n[   369   -470    846   -686  -3138   1080   -981  -1036   1073   -746]\n[   164    -87    101   -137  -1000    268   -511   -273   -222   -120]\n[  -366    596  -1098    855   3553  -1272   1006   1189  -1534    996]\n[   219   -397    749   -579  -2311    844   -601   -806   1073   -690])\n"}︡
︠521018cc-59d7-48ce-a28f-57083ef89377i︠
%html
<p>This command seems to be broken.  My fault.  It could be fixed using rational canonical form (from Math 420).</p>
︡e67fd158-fcb1-47a6-98ee-5642086716a3︡{"html":"<p>This command seems to be broken.  My fault.  It could be fixed using rational canonical form (from Math 420).</p>"}︡
︠ff200ea9-f5d7-4d2e-ad5c-ec3d7aea0267︠
A.is_similar(B)

︡42c93f24-b3e3-4dbd-83a9-e07bddc554ce︡︡
︠5fdbac8f-bad6-436b-bb8b-45c0f333dbbai︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Diagonalization</div>
</div></div>
︡81696343-6e9d-4d61-b008-7d137cea79ea︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Diagonalization</div>\n</div></div>"}︡
︠8884bf7b-fb4d-4606-9544-d36efbc615d3i︠
%html
<p>These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <tt class="code">eigenmatrix</tt> commands.</p>
︡810c687d-41be-448b-9993-252d7a197201︡{"html":"<p>These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <tt class=\"code\">eigenmatrix</tt> commands.</p>"}︡
︠722e2f95-9b13-4555-9971-7f1e479a4f8d︠
A = matrix(QQ, [
    [-31, -23, -16, 12, 120, -17], 
    [-3, 7, 0, -12, 60, -21], 
    [-28, -14, -9, -4, 152, -30], 
    [-36, -20, -16, -1, 192, -32], 
    [-9, -5, -4, 0, 47, -8],
    [-1, 1, 0, -4, 20, -3]
    ])
A

︡722baaa1-6c65-4ca7-af53-ff1c1b9f25e5︡{"stdout":"[-31 -23 -16  12 120 -17]\n[ -3   7   0 -12  60 -21]\n[-28 -14  -9  -4 152 -30]\n[-36 -20 -16  -1 192 -32]\n[ -9  -5  -4   0  47  -8]\n[ -1   1   0  -4  20  -3]\n"}︡
︠1788224e-102b-4361-8adf-d9fc31bf9a6ai︠
%html
<p><tt class="code">S</tt>, the matrix whose columns are eigenvectors, will “diagonalize” <tt class="code">A</tt>.</p>
︡751c8aee-4f43-4bdb-824c-3d5ce2fbbd34︡{"html":"<p><tt class=\"code\">S</tt>, the matrix whose columns are eigenvectors, will “diagonalize” <tt class=\"code\">A</tt>.</p>"}︡
︠d65955fe-11c1-4e6a-8cb8-42396d8cb8f8︠
D, S = A.eigenmatrix_right()
D, S

︡9d687229-00e3-44a2-882a-669a453224c8︡{"stdout":"([ 4  0  0  0  0  0]\n[ 0  2  0  0  0  0]\n[ 0  0  3  0  0  0]\n[ 0  0  0  3  0  0]\n[ 0  0  0  0 -1  0]\n[ 0  0  0  0  0 -1], [    1     1     1     0     1     0]\n[ -4/7 -3/14     0     1     0     1]\n[  2/7   4/7   1/2   5/6   3/4 13/12]\n[  4/7   6/7     1     1     1   4/3]\n[  1/7  3/14   1/4   1/4   1/4   1/4]\n[ -1/7 -1/14     0   1/3     0   1/3])\n"}︡
︠593ba758-0957-4996-913c-e4394f85db39︠
S.inverse()*A*S == D

︡e5292d0c-7b2d-47e1-bbc4-7b2ee2408ccd︡{"stdout":"True\n"}︡
︠ac0c345d-d681-46b8-b6d9-27f559e2ad25i︠
%html
<p>Here is an equivalent formulation.</p>
︡54cf04c8-8870-4358-ad0c-cf60d416bdda︡{"html":"<p>Here is an equivalent formulation.</p>"}︡
︠5dcbaf0d-d5f4-4f7a-9fc4-0f77a5468562︠
A*S == S*D

︡1065b3fe-dbdd-42d1-a092-98272154aa7d︡{"stdout":"True\n"}︡
︠5de4777b-03e5-4d25-9e02-5b00b68d0908i︠
%html
<p>Now, in contrast, a matrix that is not diagonalizable.</p>
︡12e0ae9a-3021-4d57-a322-40e43185dd2a︡{"html":"<p>Now, in contrast, a matrix that is not diagonalizable.</p>"}︡
︠e53eafc8-ae78-435d-9cc3-eff4019165f7︠
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

︡6fa071fa-e433-44a7-950e-cbeb8ea1071d︡{"stdout":"[ 128   20   44  -50  236  -18 -330 -565]\n[ -23  -16   -5    6  -40   27   62  128]\n[ -44  -12  -15   16  -78   20  110  207]\n[  -2   10   -4    3  -10  -23   20   -9]\n[ -61    5  -25   27 -116  -26  153  225]\n[ -12  -12   -1    2  -20   24   34   82]\n[ -23   -3   -8    9  -42    2   57   99]\n[  13    6    3   -4   23  -12  -35  -72]\n"}︡
︠7965c3dd-e378-4c4b-b60b-79a02f1d957f︠
D, S = C.eigenmatrix_right()
D, S

︡7e7c6212-498c-4a9c-845b-eeaafef0554c︡{"stdout":"([ 1  0  0  0  0  0  0  0]\n[ 0  1  0  0  0  0  0  0]\n[ 0  0  1  0  0  0  0  0]\n[ 0  0  0 -2  0  0  0  0]\n[ 0  0  0  0 -2  0  0  0]\n[ 0  0  0  0  0 -2  0  0]\n[ 0  0  0  0  0  0 -2  0]\n[ 0  0  0  0  0  0  0 -2], [     1      0      0      1      0      0      0      0]\n[ -3/25      0      0      0      1      0      0      0]\n[ -8/25      0      0 -12/31  -2/31      0      0      0]\n[ -1/25      0      0  -3/31 -16/31      0      0      0]\n[-27/50      0      0 -19/31 -29/31      0      0      0]\n[ -1/25      0      0   1/31  26/31      0      0      0]\n[ -9/50      0      0  -6/31  -1/31      0      0      0]\n[  2/25      0      0   2/31 -10/31      0      0      0])\n"}︡
︠b01302f4-e778-4599-8aee-23cde3760679︠
S
︡0fb2ad63-4bb6-4ac4-b5e7-0233f079bbe7︡{"stdout":"[     1      0      0      1      0      0      0      0]\n[ -3/25      0      0      0      1      0      0      0]\n[ -8/25      0      0 -12/31  -2/31      0      0      0]\n[ -1/25      0      0  -3/31 -16/31      0      0      0]\n[-27/50      0      0 -19/31 -29/31      0      0      0]\n[ -1/25      0      0   1/31  26/31      0      0      0]\n[ -9/50      0      0  -6/31  -1/31      0      0      0]\n[  2/25      0      0   2/31 -10/31      0      0      0]\n"}︡
︠e9319165-216b-4b2d-9bfb-c4d4b9303e71︠
(C+2).rref()
︡106817e2-bf84-4bcf-8f80-15fb60b69d4b︡{"stdout":"[   1    0    0    0    0    0    5 -1/2]\n[   0    1    0    0    0    0    1    3]\n[   0    0    1    0    0    0   -2    0]\n[   0    0    0    1    0    0   -1 -3/2]\n[   0    0    0    0    1    0   -4 -5/2]\n[   0    0    0    0    0    1    1  5/2]\n[   0    0    0    0    0    0    0    0]\n[   0    0    0    0    0    0    0    0]\n"}︡
︠4a932c86-76df-44e6-a0f7-8830024b07d0i︠
%html
<p>The zero columns in <tt class="code">S</tt> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <tt class="code">C</tt> is not diagonalizable.</p>
︡c9d8bf2a-7a47-4334-bc8c-2320f917e0f8︡{"html":"<p>The zero columns in <tt class=\"code\">S</tt> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <tt class=\"code\">C</tt> is not diagonalizable.</p>"}︡
︠b3ba146a-7e8c-4d34-86a3-7db94905565di︠
%html
<p>A second consequence of the zero columns of <tt class="code">S</tt> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p>
︡1645ffac-7eea-4fc7-b577-513f47179e0d︡{"html":"<p>A second consequence of the zero columns of <tt class=\"code\">S</tt> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p>"}︡
︠36ce8f33-2089-4824-b339-be0bbbdb32ba︠
C*S == S*D

︡a1412c96-e381-4b80-870f-da5109106246︡{"stdout":"True\n"}︡
︠06aac1fc-6931-4427-8364-57b1703785cbi︠
%html
<p>Perhaps simpler is the built-in function <tt class="code">.is_diagonalizable()</tt>.</p>
︡65859725-e970-4623-b8d9-6d047368d379︡{"html":"<p>Perhaps simpler is the built-in function <tt class=\"code\">.is_diagonalizable()</tt>.</p>"}︡
︠1566d51c-2300-43c8-95b2-86e60dcaa29e︠
A.is_diagonalizable()

︡e2efbfd7-6de9-45d0-8ad1-1e8a980b3b54︡{"stdout":"True\n"}︡
︠03ebf15e-fcce-44bb-8b91-9744ce48553d︠
C.is_diagonalizable()

︡f011fd14-38d2-46db-a0c7-110290d0d8be︡{"stdout":"False\n"}︡
︠ab0558c4-36c8-4d4b-88b1-ad1eb9b7f2e0i︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Nearly Diagonalizable</div>
</div></div>
︡6ae5ca20-1f58-496f-ad64-1d07aa18baf5︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">Nearly Diagonalizable</div>\n</div></div>"}︡
︠441a70c8-6d97-4200-b4b6-0bf5f32e02f6i︠
%html
<p>A matrix that is not diagonalizable will always be similar to a matrix that is \textbf{almost} diagonalizable.  The “nearly diagonal” matrix is called the Jordan Canonical Form of the matrix.  While beyond the scope of this course, here is Sage computing this canonical form for the matrix <tt class="code">C</tt>.  Notice the eigenvalues of <tt class="code">C</tt> on the diagonal and the 1's on the “super-diagonal”.</p>
︡78f4818f-90b3-4ac8-8f1b-c538055f3cbd︡{"html":"<p>A matrix that is not diagonalizable will always be similar to a matrix that is \\textbf{almost} diagonalizable.  The “nearly diagonal” matrix is called the Jordan Canonical Form of the matrix.  While beyond the scope of this course, here is Sage computing this canonical form for the matrix <tt class=\"code\">C</tt>.  Notice the eigenvalues of <tt class=\"code\">C</tt> on the diagonal and the 1's on the “super-diagonal”.</p>"}︡
︠d4f08acd-bfb4-44b1-87e0-30f57067d39e︠
J, T = C.jordan_form(transformation=True)
J, T

︡de2f0074-a827-4e20-bc2b-20762b395f7f︡{"stdout":"([ 1  1  0| 0  0  0| 0  0]\n[ 0  1  1| 0  0  0| 0  0]\n[ 0  0  1| 0  0  0| 0  0]\n[--------+--------+-----]\n[ 0  0  0|-2  1  0| 0  0]\n[ 0  0  0| 0 -2  1| 0  0]\n[ 0  0  0| 0  0 -2| 0  0]\n[--------+--------+-----]\n[ 0  0  0| 0  0  0|-2  1]\n[ 0  0  0| 0  0  0| 0 -2], [  75/32 -125/16       1      11 -173/11       1   42/11       1]\n[  -9/32   15/16       0      -4  258/55       0  -51/55       0]\n[   -3/4     5/2  -17/64      -4  359/55       0  -78/55       0]\n[  -3/32   17/64       0       1    2/55       0    6/55       0]\n[ -81/64  135/32  -45/64      -3  248/55       0  -81/55      -1]\n[  -3/32    5/16    5/64      -3  208/55   -3/11  -36/55    2/11]\n[ -27/64   45/32   -3/16      -2  152/55   -4/55  -39/55  -12/55]\n[   3/16    -5/8    1/32       2  -31/11   17/55    6/11   -4/55])\n"}︡
︠f6b0dad4-ef51-4a5c-a88c-bf543ed22d7a︠
J
︡860f6715-e5f1-4823-82ba-108206c86581︡{"stdout":"[ 1  1  0| 0  0  0| 0  0]\n[ 0  1  1| 0  0  0| 0  0]\n[ 0  0  1| 0  0  0| 0  0]\n[--------+--------+-----]\n[ 0  0  0|-2  1  0| 0  0]\n[ 0  0  0| 0 -2  1| 0  0]\n[ 0  0  0| 0  0 -2| 0  0]\n[--------+--------+-----]\n[ 0  0  0| 0  0  0|-2  1]\n[ 0  0  0| 0  0  0| 0 -2]\n"}︡
︠22ed51b9-aeda-4a59-aa18-8e366b436ddei︠
%html
<p>The transformation matrix, <tt class="code">T</tt>, is invertible and will “almost diagonalize” <tt class="code">C</tt>.</p>
︡0c7b4970-d85e-4b83-8395-3c0e07153d63︡{"html":"<p>The transformation matrix, <tt class=\"code\">T</tt>, is invertible and will “almost diagonalize” <tt class=\"code\">C</tt>.</p>"}︡
︠aad89955-35a8-48fc-baa8-7dfe71305f83︠
T.inverse()*C*T == J

︡b450d5f4-e0ac-4d22-b746-1f90cfa0c701︡{"stdout":"True\n"}︡
︠c28c2683-c7de-468b-8c6f-c9a92dd455b0i︠
%html
<p>Rational Canonical Form is another interesting version of this idea, try <tt class="code">.rational_form()</tt> on <tt class="code">C</tt>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  (Learn more about “companion matrices” if this makes you curious.</p>
︡ab35fc28-5252-4562-a133-6ac71eef1843︡{"html":"<p>Rational Canonical Form is another interesting version of this idea, try <tt class=\"code\">.rational_form()</tt> on <tt class=\"code\">C</tt>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  (Learn more about “companion matrices” if this makes you curious.</p>"}︡
︠b20371cc-2da7-49d5-8a2d-e1e51fc36265︠
C.rational_form()

︡5a231d72-25eb-4743-b87b-9742cb230f8e︡{"stdout":"[  0  -4|  0   0   0   0   0   0]\n[  1  -4|  0   0   0   0   0   0]\n[-------+-----------------------]\n[  0   0|  0   0   0   0   0   8]\n[  0   0|  1   0   0   0   0 -12]\n[  0   0|  0   1   0   0   0  -6]\n[  0   0|  0   0   1   0   0  11]\n[  0   0|  0   0   0   1   0   3]\n[  0   0|  0   0   0   0   1  -3]\n"}︡
︠ef2ba03e-26c9-49bf-af85-67fc96b15254︠
C.fcp()

︡33c4de10-80f5-46d2-86bf-c596c9f26cea︡{"stdout":"(x - 1)^3 * (x + 2)^5\n"}︡
︠855760c3-05d0-45cb-b403-b753e10eeb09︠
((x-1)^3*(x+2)^3).expand()

︡162972a4-cefd-4c23-854f-df32b71aec3e︡{"stdout":"x^6 + 3*x^5 - 3*x^4 - 11*x^3 + 6*x^2 + 12*x - 8\n"}︡
︠de7abf32-d448-4dfd-a27a-fb531a88fcb0︠









