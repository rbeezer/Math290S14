︠641e36a0-eaeb-4a33-b6c1-4d83a5ed9cf6i︠
load('mathbook-modern-3.css')

︡7d71750d-932e-4296-97d2-f6d648ee62ca︡︡
︠5567539e-4db1-4a0f-96fc-8024ed775ed7x︠
%html
<div>\(\)</div>
︡0f51084f-731b-41cf-b221-d73886d44196︡︡
︠c5acf4d3-cc38-4c9e-b321-77c9472bc537x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section SD</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Spring 2014<br>April 1, 2014</div>
</div>
︡b75dfdc8-bfe1-4252-a27c-1da7b46285c2︡︡
︠11868145-dc60-47b3-8aa7-99427d529a57x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Similarity</div>
</div></div>
︡5e238036-3a70-4079-a1d8-2a990f465d4d︡︡
︠f055a105-fd06-40aa-85d2-e07a26a5ba57x︠
%html
<p>We manufacture two matrices that are similar, and use Sage to check.  A “unimodular” matrix is one with determinant 1.  A unimodular matrix with integer entries will have an inverse with integer entries (that is a theorem, and Exercise PDM.M20).</p>
︡6f0bf288-cc8d-448e-9a60-523e176b4a55︡︡
︠26cc22f5-f0db-4d9d-bcd3-62157d4aeea3︠
A = random_matrix(ZZ, 10, x = -9, y = 9).change_ring(QQ)
S = random_matrix(QQ, 10, algorithm='unimodular', upper_bound=9)
B = S.inverse()*A*S
A, B

︡73380eae-b311-4ee5-8f89-fa267368379e︡︡
︠521018cc-59d7-48ce-a28f-57083ef89377x︠
%html
<p>This command seems to be broken.  My fault.  It could be fixed using rational canonical form (from Math 420).</p>
︡c1df33f1-3efe-4680-9cc3-65165b826218︡︡
︠ff200ea9-f5d7-4d2e-ad5c-ec3d7aea0267︠
A.is_similar(B)

︡42c93f24-b3e3-4dbd-83a9-e07bddc554ce︡︡
︠5fdbac8f-bad6-436b-bb8b-45c0f333dbbax︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Diagonalization</div>
</div></div>
︡0e1161dc-a0fa-422c-b323-4f33d84c4e05︡︡
︠8884bf7b-fb4d-4606-9544-d36efbc615d3x︠
%html
<p>These two matrices are from the earlier demo for Section EE.  First is diagonalizable, second is not.  The easiest way to see the difference is with the <tt class="code">eigenmatrix</tt> commands.</p>
︡2c4cd7a6-4d9c-4f7e-bfa5-ddef4dbe617e︡︡
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

︡bc7da9c0-2ec0-465c-bcaa-16f5a98d220d︡︡
︠1788224e-102b-4361-8adf-d9fc31bf9a6ax︠
%html
<p><tt class="code">S</tt>, the matrix whose columns are eigenvectors, will “diagonalize” <tt class="code">A</tt>.</p>
︡ed05f53d-6b44-45c4-8061-f8f5b49df0fa︡︡
︠d65955fe-11c1-4e6a-8cb8-42396d8cb8f8︠
D, S = A.eigenmatrix_right()
D, S

︡f40f8ec8-a253-4685-9ef3-349824757455︡︡
︠593ba758-0957-4996-913c-e4394f85db39︠
S.inverse()*A*S == D

︡b6c41aa2-b3ed-446a-9275-156bec482a85︡︡
︠ac0c345d-d681-46b8-b6d9-27f559e2ad25x︠
%html
<p>Here is an equivalent formulation.</p>
︡a38f3f19-4605-46ce-84b1-aea39e159145︡︡
︠5dcbaf0d-d5f4-4f7a-9fc4-0f77a5468562︠
A*S == S*D

︡2f41b7a2-860b-4961-9a2f-7ca68c26d3b9︡︡
︠5de4777b-03e5-4d25-9e02-5b00b68d0908x︠
%html
<p>Now, in contrast, a matrix that is not diagonalizable.</p>
︡131bf3a8-9d9e-4f49-a779-8dfcb53c2763︡︡
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

︡d3097bff-d07a-4360-9f04-4bf5f5705e84︡︡
︠7965c3dd-e378-4c4b-b60b-79a02f1d957f︠
D, S = C.eigenmatrix_right()
D, S

︡cfa472c8-71bf-44d5-9df5-7e7857dbf634︡︡
︠4a932c86-76df-44e6-a0f7-8830024b07d0x︠
%html
<p>The zero columns in <tt class="code">S</tt> tell us that at least one eigenvalue has a geometric multiplicity strictly less than the algebraic multiplicity of the eigenvalue.  So by Theorem DMFE the matrix <tt class="code">C</tt> is not diagonalizable.</p>
︡cc068f08-8c3e-407c-94a7-15375a869ca9︡︡
︠b3ba146a-7e8c-4d34-86a3-7db94905565dx︠
%html
<p>A second consequence of the zero columns of <tt class="code">S</tt> is that it will not be an invertible matrix.  But the output from Sage still obeys a fundamental relationship.</p>
︡3f3b72f4-af46-461c-af2e-75273b5deafd︡︡
︠36ce8f33-2089-4824-b339-be0bbbdb32ba︠
C*S == S*D

︡ce491155-d824-44ff-8d70-fa5a4c0e78f9︡︡
︠06aac1fc-6931-4427-8364-57b1703785cbx︠
%html
<p>Perhaps simpler is the built-in function <tt class="code">.is_diagonalizable()</tt>.</p>
︡0c68eebd-ea71-460c-99e7-35978db0a594︡︡
︠1566d51c-2300-43c8-95b2-86e60dcaa29e︠
A.is_diagonalizable()

︡8cd26449-6b4b-4915-baf9-a5196c6c5cb8︡︡
︠03ebf15e-fcce-44bb-8b91-9744ce48553d︠
C.is_diagonalizable()

︡44bd3847-789b-446d-b6ff-203e7e4af0fd︡︡
︠ab0558c4-36c8-4d4b-88b1-ad1eb9b7f2e0x︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Nearly Diagonalizable</div>
</div></div>
︡a1a4b0a2-fdcc-4394-a0af-1d9deb1d018e︡︡
︠441a70c8-6d97-4200-b4b6-0bf5f32e02f6x︠
%html
<p>A matrix that is not diagonalizable will always be similar to a matrix that is \textbf{almost} diagonalizable.  The “nearly diagonal” matrix is called the Jordan Canonical Form of the matrix.  While beyond the scope of this course, here is Sage computing this canonical form for the matrix <tt class="code">C</tt>.  Notice the eigenvalues of <tt class="code">C</tt> on the diagonal and the 1's on the “super-diagonal”.</p>
︡86c595e3-08ce-4fe7-8bf9-ff80791b5c50︡︡
︠d4f08acd-bfb4-44b1-87e0-30f57067d39e︠
J, T = C.jordan_form(transformation=True)
J, T

︡400d30d2-4d37-4d85-b265-76ed8fe31f0a︡︡
︠22ed51b9-aeda-4a59-aa18-8e366b436ddex︠
%html
<p>The transformation matrix, <tt class="code">T</tt>, is invertible and will “almost diagonalize” <tt class="code">C</tt>.</p>
︡85b8a854-119b-4613-9421-ee934e01a627︡︡
︠aad89955-35a8-48fc-baa8-7dfe71305f83︠
T.inverse()*C*T == J

︡a71dbc47-2362-4ad1-a09e-8c5c0f3868b5︡︡
︠c28c2683-c7de-468b-8c6f-c9a92dd455b0x︠
%html
<p>Rational Canonical Form is another interesting version of this idea, try <tt class="code">.rational_form()</tt> on <tt class="code">C</tt>.  And if you do, then execute the following two cells and see if the coefficients look familiar.  (Learn more about “companion matrices” if this makes you curious.</p>
︡7cfb0d61-4218-4f2e-86ed-2a4ed072438b︡︡
︠b20371cc-2da7-49d5-8a2d-e1e51fc36265︠
C.rational_form()

︡69364c5c-1fbb-4dad-adef-44f9750b462c︡︡
︠ef2ba03e-26c9-49bf-af85-67fc96b15254︠
C.fcp()

︡a62736d8-1e72-4173-a028-e95fb831901e︡︡
︠855760c3-05d0-45cb-b403-b753e10eeb09︠
((x-1)^3*(x+2)^3).expand()

︡db8607e1-cb08-442f-8c68-d1e4d4a8096a︡︡

