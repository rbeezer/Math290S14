︠2842bd86-f2a1-4f41-a52a-e66dee7befafi︠
load('mathbook.css')

︡c12da3fb-54cf-43d8-9cff-aa1ecad2a2a8︡︡
︠e8c6f68b-1b1c-4885-b9b8-866df1b4405cx︠
%html
<div>\(\)</div>
︡4f654093-a470-4b5c-a671-5b92a2187160︡︡
︠8b06e104-585e-454f-b0d0-d30c1561b8abx︠
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
︡6ee2ed46-7fdb-4d0e-829f-d6dad56660fd︡︡
︠eeebd074-c3bd-4f87-8488-d11d66d10707x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Spaces</div>
</div></div>
︡7b9d721b-86e2-4f7b-88eb-b531ab0f089f︡︡
︠70604968-1814-4941-917d-146c3c780ce6x︠
%html
<p>It is easy in Sage to make a reasonable facsimile of \(\mathbf{C}^n\).  We just restrict our attention to rational entries rather than complex entries.</p>
︡3895e03c-108e-4b43-aa1b-bc38336706e8︡︡
︠7d9c5ca6-9e77-4394-bbd4-ec0d5a2cfb80︠
V = QQ^4
V

︡8385851b-8bd7-485a-ab2b-60f2174f7110︡︡
︠3078920e-619d-47a3-af52-bb02f19987b0x︠
%html
<p>We can test membership using the word/command <tt class="code">in</tt>.</p>
︡9f6237fe-309f-474a-9bd3-c284c4961f59︡︡
︠25617886-2088-44cc-a64c-dec216e6e992︠


︡af0dcb1f-ce51-44c1-9dc4-1b9dc5720579︡︡
︠6a5d2a0a-db8a-4016-ac3a-53a905bcbcadx︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Vector Form of Solutions to Homogeneous Systems</div>
</div></div>
︡4e81f383-c7f1-4def-a20a-cb2a96d11a9b︡︡
︠3aa2783c-a89a-469c-b503-043da21fedfbx︠
%html
<p>These are the coefficient matrix and vector of constants from yesterday's big system that led to a colored matrix in reduced row-echelon form matrix.</p>
︡b0196078-3321-4f5a-80f2-0cc394654b34︡︡
︠bf63e798-0e52-48f5-93fb-874b4030ff0ax︠
%html
<p>The <tt class="code">.right_kernel()</tt> method will give the vectors of the vector form of the solutions to a homogeneous system when used with the <tt class="code">basis='pivot'</tt> option.</p>
︡80c54f97-034d-46ad-bc6b-3ecf00953de7︡︡
︠8754a0a8-574c-44bb-80e3-68f8fceefeac︠
A = matrix(QQ, [[ 1, 2, 12, 1, 13, 5, 2],
                [ -2, -3, -21, 0, -13, 2, -5],
                [ 1, 3, 15, 4, 28, 25, 0],
                [ -2, -3, -21, -1, -15, -6, -3],
                [ 1, 1, 9, 1, 4, 9, 1]])
b = vector(QQ, [8, -15, 7, -10, 3])

︡5951d236-4cd2-4d51-a3bb-3fa5245c626a︡︡
︠31eda541-30f7-44bf-a5f9-9a2be8309773︠
A.right_kernel(basis='pivot')

︡96a59709-1bd3-4449-bc39-ce6f3256ddf2︡︡
︠bb659624-8d42-423f-a5eb-da82b2166336x︠
%html
<p>Rows of the “basis matrix” are vectors in yesterday's linear combination (with scalars \(x_3\), \(x_5\), \(x_6\)).  This is a spanning set for null space of the matrix \(A\).</p>
︡8ff852c0-36ac-4ed4-a9aa-b09e7454cc37︡︡
︠bc430898-f227-4b89-a6fb-4920154e4b20x︠
%html
<p>Theorem PSPHS can explain how to use a single solution to the non-homogeneous system and the spanning set of the null space of the coefficient matrix to arrive at all solutions to the system.  Here is a single solution to the system.</p>
︡efab6051-f707-4017-907b-d22999ba8725︡︡
︠bf3a3d46-82c6-4fe7-b622-f33e502e7d64︠
A.solve_right(b)

︡2f4b54ad-81d3-4153-b59e-5cf27f68ba89︡︡
︠f0c99fa2-cc6d-47b4-814b-17f4e1edda5bx︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Spanning Sets</div>
</div></div>
︡2e2779cd-ce93-4e36-838a-86174bd8b818︡︡
︠407e9cad-3b39-477d-bbdb-d9db133a95bex︠
%html
<p>Example ABS from FCLA.</p>
︡b483d9dc-123c-4c76-bd11-5f04e71ec06c︡︡
︠a9034331-6737-4b42-ba6d-ef04749a9294︠
x1 = vector(QQ,[1,1,3,1])
x2 = vector(QQ,[2,1,2,-1])
x3 = vector(QQ,[7,3,5,-5])
x4 = vector(QQ,[1,1,-1,2])
x5 = vector(QQ,[-1,0,9,0])
W = span([x1,x2,x3,x4,x5])
W

︡8d7070d3-4eca-4be8-8753-7813702fd656︡︡
︠0bd99f3c-982b-4ec5-abaf-92304a3ecf89x︠
%html
<p>Make a “random” linear combination and test for membership (which will be trivially true).  There are more like this.</p>
︡36068f38-869e-40cc-95ee-8d7fa20f0c8b︡︡
︠279e11f7-e92b-4b7b-ba2d-50a23ac1fb29︠


︡e924285c-81af-4fea-9712-ba55c8d550d7︡︡
︠948d6ae7-5289-4dc5-b3a8-a6bcdbb3153ex︠
%html
<p>But not any old vector is in \(W\).</p>
︡6e00e7c9-f206-4ae8-b7a9-349823d6bac9︡︡
︠e141d421-39d2-44a7-b2d3-2ab77f0c52e0︠
v = vector(QQ, [1, 1, -3, 2])
v in W

︡84df8c3d-b1b4-4da0-94b7-dd69b34866c4︡︡

