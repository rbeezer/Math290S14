︠2842bd86-f2a1-4f41-a52a-e66dee7befafi︠
load('mathbook.css')

︡c12da3fb-54cf-43d8-9cff-aa1ecad2a2a8︡︡
︠e8c6f68b-1b1c-4885-b9b8-866df1b4405ci︠
%html
<div>\(\)</div>
︡8b57bf11-8180-4808-9179-dd41854bd753︡{"html":"<div>\\(\\)</div>"}︡
︠8b06e104-585e-454f-b0d0-d30c1561b8abi︠
%html
<style></style><div class="headerblock">
<div class="title"></div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Spring 2014</div>
</div>
︡b0c56059-4dd4-419a-8ac7-6dc5e1a0e346︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\"></div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Spring 2014</div>\n</div>"}︡
︠eeebd074-c3bd-4f87-8488-d11d66d10707i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Spaces</div>
</div></div>
︡b2e5f47f-bdcd-4152-aebe-9f1e02e978fd︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Vector Spaces</div>\n</div></div>"}︡
︠70604968-1814-4941-917d-146c3c780ce6i︠
%html
<p>It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\).  We just restrict our attention to rational entries rather than complex entries.</p>
︡68ef16bf-c9fd-464d-ac17-556ef96ff19d︡{"html":"<p>It is easy in Sage to make a reasonable facsimile of \\(\\mathbf{C}^n\\).  We just restrict our attention to rational entries rather than complex entries.</p>"}︡
︠7d9c5ca6-9e77-4394-bbd4-ec0d5a2cfb80︠
V = QQ^4
V

︡1aa426fe-1200-4371-aa73-ef497d06eb7b︡{"stdout":"Vector space of dimension 4 over Rational Field\n"}︡
︠3078920e-619d-47a3-af52-bb02f19987b0i︠
%html
<p>We can test membership using the word/command <tt class="code">in</tt>.</p>
︡57530873-0bee-4e90-95ce-68b252a96b15︡{"html":"<p>We can test membership using the word/command <tt class=\"code\">in</tt>.</p>"}︡
︠13118b51-256d-4113-8208-331288adf920︠
vector(QQ, [1,2,3]) in V
︡b18d8428-8651-4be9-9d94-f2d9d1a8370f︡{"stdout":"False\n"}︡
︠25617886-2088-44cc-a64c-dec216e6e992︠


︡af0dcb1f-ce51-44c1-9dc4-1b9dc5720579︡︡
︠6a5d2a0a-db8a-4016-ac3a-53a905bcbcadi︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Vector Form of Solutions to Homogeneous Systems</div>
</div></div>
︡b342721e-78da-4f27-b10c-842b8c0441fb︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">2</div>\n<div class=\"title\">Vector Form of Solutions to Homogeneous Systems</div>\n</div></div>"}︡
︠3aa2783c-a89a-469c-b503-043da21fedfbi︠
%html
<p>These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form matrix.</p>
︡26212a07-7cda-47c1-a391-6a35d90eebd8︡{"html":"<p>These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form matrix.</p>"}︡
︠bf63e798-0e52-48f5-93fb-874b4030ff0ai︠
%html
<p>The <tt class="code">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class="code">basis='pivot'</tt> option.</p>
︡2f94bc3a-19fd-44c1-96ca-1a7c59327301︡{"html":"<p>The <tt class=\"code\">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class=\"code\">basis='pivot'</tt> option.</p>"}︡
︠8754a0a8-574c-44bb-80e3-68f8fceefeac︠
A = matrix(QQ, [[ 1, 2, 12, 1, 13, 5, 2],
                [ -2, -3, -21, 0, -13, 2, -5],
                [ 1, 3, 15, 4, 28, 25, 0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [ 1, 1, 9, 1, 4, 9, 1]])
b = vector(QQ, [8, -15, 7, -10, 3])

︡3220e91f-234c-4e31-bcb3-6d770ffa7f67︡
︠31eda541-30f7-44bf-a5f9-9a2be8309773︠
A.right_kernel(basis='pivot')

︡82fa8d8e-ba17-4180-9327-d19cf2eab591︡{"stdout":"Vector space of degree 7 and dimension 3 over Rational Field\nUser basis matrix:\n[-6 -3  1  0  0  0  0]\n[ 7 -9  0 -2  1  0  0]\n[-5  4  0 -8  0  1  0]\n"}︡
︠bb659624-8d42-423f-a5eb-da82b2166336i︠
%html
<p>Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\), \(x_5\), \(x_6\)).  This is a spanning set for null space of the matrix \(A\).</p>
︡e72ea318-d28a-4c8e-af61-29c5519f3d49︡{"html":"<p>Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \\(x_3\\), \\(x_5\\), \\(x_6\\)).  This is a spanning set for null space of the matrix \\(A\\).</p>"}︡
︠bc430898-f227-4b89-a6fb-4920154e4b20i︠
%html
<p>Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p>
︡13a31bce-3ef8-49f4-8813-3fc462290f4d︡{"html":"<p>Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p>"}︡
︠bf3a3d46-82c6-4fe7-b622-f33e502e7d64︠
A.solve_right(b)

︡fa99d9cc-eaeb-4936-be26-52b191a68078︡{"stdout":"(-3, 2, 0, 1, 0, 0, 3)"}︡{"stdout":"\n"}︡
︠f0c99fa2-cc6d-47b4-814b-17f4e1edda5bi︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Spanning Sets</div>
</div></div>
︡71605250-2474-4220-89a4-6c3e2a74a9b4︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">3</div>\n<div class=\"title\">Spanning Sets</div>\n</div></div>"}︡
︠407e9cad-3b39-477d-bbdb-d9db133a95bei︠
%html
<p>Example ABS from FCLA.</p>
︡b70a03fa-ca90-4017-8b3a-df41b34c24ce︡{"html":"<p>Example ABS from FCLA.</p>"}︡
︠a9034331-6737-4b42-ba6d-ef04749a9294︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1,x2,x3,x4,x5])
W

︡613ade41-2cf3-4f4f-841b-cdd4d0e3b185︡{"stdout":"Vector space of degree 4 and dimension 3 over Rational Field\nBasis matrix:\n[   1    0    0 -9/4]\n[   0    1    0    4]\n[   0    0    1 -1/4]\n"}︡
︠0bd99f3c-982b-4ec5-abaf-92304a3ecf89i︠
%html
<p>Make a “random” linear combination and test for membership (which will be trivially true).  There are more like this.</p>
︡5e3b7b7d-0d25-49fe-bea4-870bc5e07210︡{"html":"<p>Make a “random” linear combination and test for membership (which will be trivially true).  There are more like this.</p>"}︡
︠279e11f7-e92b-4b7b-ba2d-50a23ac1fb29︠
2*x1 + 4 *x3 in W

︡831720e6-d045-42d4-9757-36ba9bf6afbf︡{"stdout":"True"}︡{"stdout":"\n"}︡
︠948d6ae7-5289-4dc5-b3a8-a6bcdbb3153ei︠
%html
<p>But not any old vector is in \(W\).</p>
︡3e1a5c9e-f3e4-4a09-b5a6-e91f5a37095f︡{"html":"<p>But not any old vector is in \\(W\\).</p>"}︡
︠e141d421-39d2-44a7-b2d3-2ab77f0c52e0︠
v = vector(QQ, [1, 1, -3, 2])
v in W

︡da9c32cb-02f1-4db3-be26-865309705b2f︡{"stdout":"False\n"}︡
︠27642aa8-f4f9-4d52-b2c9-cdcf6ded00fe︠









