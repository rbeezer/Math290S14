︠01fcf803-fd54-4f4f-b4ed-ecc780159c3ai︠
load('mathbook-modern-3.css')

︡d7e5abf0-343f-46e6-b2db-bc729a002b06︡︡
︠782dd4ab-f325-40f0-915f-a205f74610c6x︠
%html
<div>\(\)</div>
︡e1b57953-e86c-4304-95af-c3ce2396ffcb︡︡
︠30eda4b4-ae9b-46f0-abdb-4bbb41d48f74x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section VR</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Fall 2013<br>April 15, 2014</div>
</div>
︡003f2aea-d715-4c98-9717-f3ed548d65d0︡︡
︠7d73639f-d145-4622-b01e-dc7f0833d296x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Vector Representations</div>
</div></div>
︡91100c30-c9e0-4a45-babf-83ee1c5e1b79︡︡
︠df301ec2-de80-4583-a9c0-cb4afe00e7a9x︠
%html
<p>It is easy to form vector representations of vectors in \(\mathbb{C}^n\).</p>
︡d5078c29-47f7-40d5-a88b-4fe4779d0de7︡︡
︠5bafd8f9-8240-4dc3-bcf4-21434ccef9b6x︠
%html
<p>We get a nonstandard basis quickly from the columns of a nonsingular matrix (square, full rank).</p>
︡6658eaaf-0ae1-4868-b5e8-24e879fb2185︡︡
︠2bfe20cb-babf-4340-894e-755a941f8c67︠
n = 6
A = random_matrix(QQ, n, n, algorithm='echelonizable', rank=n, upper_bound=9)
A

︡3e12d98c-e319-472c-8f3c-794ac39229aa︡︡
︠468d7899-589b-45f0-ba45-a70cce3ad143x︠
%html
<p>The columns of <tt class="code">A</tt> become the “user basis” of a vector space.</p>
︡03974696-5557-4435-891e-1a9f850989c2︡︡
︠468c31b0-9f02-4cc3-b7a9-42de1a9e576f︠
B = A.columns()
V = (QQ^n).subspace_with_basis(B)
V

︡7cd361a9-28dc-4b6c-ad4b-af286e09beb8︡︡
︠6f5744a0-89e4-4098-8ed6-cbe8c9aa242e︠
u = random_vector(QQ, n)
u

︡8e502a9b-db0f-4a4f-8848-5f06133ed4b1︡︡
︠15938c28-78ee-41de-a6ef-386d7836de92x︠
%html
<p>Now, we get values of the invertible linear transformation \(\rho_B\) with the Sage method <tt class="code">.coordinate_vector()</tt> method of the vector space.</p>
︡a28b54de-70b4-415a-92e7-48ac62fecebd︡︡
︠1bdf2d79-d49b-42b4-8f99-fb623680ee5f︠
c = V.coordinate_vector(u)
c

︡de71e37e-6492-4e2c-a55a-241c5970d755︡︡
︠6ce32b29-b37b-42ff-b09a-167b0f7bed51x︠
%html
<p>The inverse linear transformation is also available as the <tt class="code">.linear_combination_of_basis()</tt> method of the vector space.</p>
︡e31ed14e-4997-4ff3-8094-dfd2c3ae9b39︡︡
︠35db17f0-ed3b-4a53-8146-4971b664a841︠
round_trip = V.linear_combination_of_basis(c)
round_trip

︡d6f413d5-4f5f-4388-9cac-d9b503783fab︡︡
︠faa1525f-057b-49b7-98f4-31d3d263b76cx︠
%html
<p>And the automated check:</p>
︡4a9c1f81-4e86-4586-bb1c-db9b2a2d84b1︡︡
︠bec79ab9-a96f-465f-aff7-6e27774c4515︠
u == round_trip

︡79b373d4-5fb9-4f6e-9c49-dadbaf9f7a4b︡︡
︠d4e48ad4-8237-48dd-852a-583912610d34x︠
%html
<p>Notice that this is something we could do “by hand” with just reduced row-echelon form. The coordinitization of <tt class="code">u</tt> relative to the basis <tt class="code">B</tt> is just a (unique) solution to a linear system.</p>
︡867fd28a-8067-40c1-93a8-15f9f779fe88︡︡
︠a5a4d939-8858-483f-873c-511b5a5addb3︠
aug = column_matrix(B + [u])
aug.rref()

︡80cd3a8c-e974-4d4b-a2a5-7ad277753068︡︡
︠a2c6ce8a-afa2-40da-840e-c132283710b9x︠
%html
<p>The following stanza will always return <tt class="code">True</tt> as we “coordinatize” and then use the coordinates to form a linear combination of the basis.</p>
︡3d13866c-0a6f-441b-adae-6b5091aa8437︡︡
︠a79dd503-b2b3-40b4-8428-cc203f9bd8d8︠
w = random_vector(QQ, n)
x = V.coordinate_vector(w)
y = V.linear_combination_of_basis(x)
y == w

︡705e4077-2f57-4ac3-b6cf-eb4a5a47127b︡︡
︠a9ecdd2f-32f1-49e9-8fab-01cf542dbc5ax︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Abstract Vector Spaces</div>
</div></div>
︡befba2fc-90d2-446b-bad5-9ef0a7353ba1︡︡
︠91fc89bd-394b-42d3-bd7f-b5577446cbbbx︠
%html
<p>Sage does not implement abstract vector spaces.  It presumes we have “nice” standard bases available and can apply an intermediate coordinatization ourselves.</p>
︡1880ef5c-c4ba-4f4a-a92a-bab8027b4427︡︡
︠0db69485-6d0b-47e0-b1bb-5def44a90382x︠
%html
<p>Problem: In \(P_3\), the vector space of polynomials with degree at most \(3\), find the vector representation of \(p = \left(x^{3} + x^{2} + \frac{1}{2} \, x - \frac{33}{14}\right)\) relative to the basis for \(P_3\):
        \[B = \left\{
        5 \, x^{3} + 2 \, x^{2} + x + 1,\,
        -8 \, x^{3} - 3 \, x^{2} - x - 2,\,
        7 \, x^{3} + 4 \, x^{2} + x + 2,\,
        -7 \, x^{3} + 3 \, x^{2} + x - 2
        \right\}\]</p>
︡9b3c5fd5-9e08-4a8c-9988-1e52aa230d7a︡︡
︠0c7d756b-7fc0-4328-ba1d-c94be960882bx︠
%html
<p>Solution:  Coordinatize with respect to the basis \(\left\{1, x, x^2, x^3\right\}\).</p>
︡b7571774-cb40-4c9a-a3f0-40419c56cda5︡︡
︠a1b5aecf-3a51-43e3-96e3-cbbab3eb8f63︠
A = matrix(QQ, [[1, -2, 2, -2], [1, -1, 1, 1], [2, -3, 4, 3], [5, -8, 7, -7]])
B = A.columns()
B

︡f5b88682-4c1a-4f6f-9163-6a568e287608︡︡
︠a98b6dcb-8d30-4317-9a89-bb6db40791cdx︠
%html
<p><tt class="code">B</tt> is a basis, since <tt class="code">A</tt> is nonsingular.</p>
︡e78de61c-805d-48ac-a483-d465f153ccfd︡︡
︠d6070012-15b2-4a75-a275-453713a87918︠
A.is_singular()

︡6c51e9e1-a608-4630-8097-85bd66a2575d︡︡
︠74871f2e-1132-4519-9e24-f38b0a8226f4x︠
%html
<p>Now coordinatize <tt class="code">p</tt>.</p>
︡36be8d3b-a3df-4f56-b155-b608232ad751︡︡
︠f978a82d-0789-41bf-959c-ca8e9edebba4︠
p = vector(QQ, [-33/14, 1/2, 1, 1])
p

︡4f3e04ed-1bb0-4be4-83de-1d5149c92ff4︡︡
︠5d0bd388-0afd-469d-b877-83bf354e5f2ax︠
%html
<p>We'll get a coordinatization old-style.</p>
︡6e1d9fab-e833-4f0d-8567-986c0f20c298︡︡
︠2d688989-d17b-44ac-889e-438bdede730b︠
aug = column_matrix(B + [p])
r = aug.rref()
r

︡f5ee8c64-e044-4744-b1cf-722ec1879788︡︡
︠c5e67965-a4e0-4a94-858a-734d4dac3af3x︠
%html
<p>Let's check to see if this is right and we can recover <tt class="code">p</tt>.</p>
︡e3aaf50d-8ef3-4daf-b778-663201fc782d︡︡
︠7e5c96f4-694c-4e8d-bac8-fe56c9795460︠
soln = r.column(4)
round_trip = sum([soln[i]*B[i] for i in range(4)])
round_trip, round_trip == p

︡4f5659bf-0af8-44a1-b8fc-da4584804702︡︡

