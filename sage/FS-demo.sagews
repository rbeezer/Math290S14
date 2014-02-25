︠dcd33e75-a8d5-4e7a-a9b2-8fb139fb623ai︠
load('mathbook-modern-3.css')

︡7d6e1723-15dd-42df-9ece-89d7ca20e914︡︡
︠3d272248-80ba-4528-a15f-31eccc6202fcx︠
%html
<div>\(\)</div>
︡39c4b008-dfe9-490c-b762-aa4e43d06661︡︡
︠f98caf82-c86b-4e77-a7d5-48f19d0f9780x︠
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
︡94bc5606-38fa-49e6-8ae2-a5d10e12f4f9︡︡
︠9b4630d9-0987-469e-822d-fc501610e412x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Four Subsets</div>
</div></div>
︡a6bdfc7b-7516-4dc9-969f-bad4b33bfe60︡︡
︠25c93b8f-08c4-456b-a804-7e07cd8a6a40︠
A = matrix(QQ, [[194, -41, -899, -396, 49, 112, 874, -355, 1139, -1221], 
    [269, -57, -1247, -549, 68, 155, 1212, -492, 1579, -1693], 
    [16, -3, -73, -33, 4, 10, 72, -30, 95, -101], 
    [115, -24, -532, -235, 29, 67, 518, -211, 676, -724], 
    [10, 1, -37, -23, 2, 12, 44, -24, 67, -65], 
    [-59, 13, 275, 120, -15, -33, -266, 107, -345, 371], 
    [36, -7, -165, -74, 9, 22, 162, -67, 213, -227], 
    [-20, 4, 92, 41, -5, -12, -90, 37, -118, 126]])
A

︡f3067f59-cd14-4c06-be7b-e7359a2c290d︡︡
︠b4b13694-954c-447d-9b08-345e6a1f2e99︠
N = A.extended_echelon_form(subdivide=True)
N

︡2d8f2b14-f679-4cec-a2e2-b69bc77a9f45︡︡
︠bc745a42-f186-423c-9665-e75439d28d18x︠
%html
<p>Grab the four pieces of \(N\).</p>
︡59b78350-e389-4c3f-b575-35a3cd10eff1︡︡
︠ca9d6a6e-704b-4626-b857-1b11a3a0f464︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)

︡1912bdbd-a0c9-4252-9a04-b521d7c3083c︡︡
︠c67d2919-270c-484d-bade-3cd785234630x︠
%html
<p>And build two bigger pieces.</p>
︡862edf57-2af0-426b-813d-7572ebb1e03b︡︡
︠d9e3487f-d01f-49a3-bcec-942e7d546cd3︠
B = C.stack(Z)
J = K.stack(L)

︡14824c4b-fdc3-4cc5-8528-700beda42a54︡︡
︠c356546d-9e30-4498-98b3-16c462f98ce6︠
B

︡94dbbc84-5dba-43c8-a42f-79fe8ad25e11︡︡
︠ff06bf7e-9ba8-4119-97e7-62b697d79286︠
J

︡7a49c120-2230-43df-8a05-dd2a38e49587︡︡
︠f6116677-aee4-4491-91c8-a167b05b59cbx︠
%html
<p>Some properties of the pieces, as given in Theorem PEEF.</p>
︡ca084602-6680-4d73-b773-a0298160171b︡︡
︠a959d12e-1e52-44a7-b86f-485bc2f095e4x︠
%html
<p>\(J\) is nonsingular.</p>
︡853325a0-f271-45ef-94ac-1f8e031f4c03︡︡
︠e5821125-6e94-43ec-a4ff-6f0941cc7869︠
J.is_singular()

︡305cb455-5cd7-4c9a-b328-7d84a5522569︡︡
︠2c7d5c72-143c-4b51-9d81-a272af68fd38x︠
%html
<p>\(A\), \(B\) and \(J\) are related.  Effectively, \(J\) consolidates the net effect of all of the row operations that convert \(A\) into \(B\).</p>
︡d4568550-b8b8-41f9-ae9f-1406e9c26b35︡︡
︠451e78cb-2205-4903-98c4-a9eb5e928238︠
J*A == B

︡49f70721-b774-4996-a4da-dab3dea45cab︡︡
︠f5533e00-35f1-4ac4-8f54-a76aa5ba662fx︠
%html
<p>Imagine in the above equation that we replace \(A\) by an augmented matrix of a linear system.  If the vector of constants, used in a linear combination of the columns of \(L\), produces a zero column, then the system will be consistent since there will be no pivot column in the last column of the row-reduced version of the augmanted matrix.  This is another way of saying the null space of \(L\) is the column space of \(A\).</p>
︡5af495c0-010f-41a4-99a3-fa12cd125fe2︡︡
︠88098e5d-b6f2-468d-8938-698724425143︠
NL = L.right_kernel(basis='pivot')
NL

︡8b9e9f2f-d7a4-4bb4-8d87-365bb6354898︡︡
︠c4296bdf-cd55-4e29-9125-e3eadb6fda3cx︠
%html
<p>We create an arbitrary element of the null space of \(L\).</p>
︡423319db-5792-43ef-bd0b-8f56061e51da︡︡
︠c628b87f-359b-4294-b2b7-2b64137e5fb7︠
NLbasis = NL.basis()

︡e277bc76-057f-43f1-907d-97cb5bec6a9f︡︡
︠33404980-79f8-4119-affd-52d52e9bf27b︠
b = *NLbasis[0] + *NLbasis[1] + *NLbasis[2]
b

︡c49d78aa-90ff-4d3c-a225-cdb3996bcf5e︡︡
︠b02a396e-2ca2-41f2-9156-00a9ac575a58x︠
%html
<p>\(b\) will create a consistent system with \(A\) as coefficient matrix.</p>
︡52614ca0-65bf-4e19-a1b3-c9803c2ca4f6︡︡
︠4d53dfe1-fbff-48dc-9f02-7f184df1a009︠
P = A.augment(b, subdivide=True)
P.rref()

︡a5cc044f-401b-401c-a205-eb12751a7b25︡︡
︠2eea2c23-3f88-4266-af4c-0af0bff48126x︠
%html
<p>The column space of \(A\) is equal to the null space of \(L\).  This is part of Theorem FS.</p>
︡4e3811cc-5d8e-4d1e-9102-fa4548e75a30︡︡
︠563ae24e-0250-4172-a05e-7d308618f64d︠
CA = A.column_space()
CA

︡df4fe49d-7b64-4868-a416-77340cb8c1f6︡︡
︠307153ef-3c08-4c4e-9204-156ca5ea06eex︠
%html
<p>Since the vector \(b\) leads to a consistent system, we know it is in the column space of \(A\).  But we can check with Sage.</p>
︡c4dd13ea-f108-4ab3-892e-b615a1c95133︡︡
︠2ab73d6a-367e-4279-9f2b-ca35dce81fbb︠
b in CA

︡e6c586e9-833c-45d2-a1ee-66bd4cc772b6︡︡
︠14d8d70d-2676-4d99-8ab1-8121d324206bx︠
%html
<p>Sage relies on “echelonized” bases to represent infinite sets of vectors and to be able to test equality (which seems pretty amazing at first!).</p>
︡09ecf080-2091-4c5c-903a-d9b392eb0ec9︡︡
︠23028fb9-a306-42c2-8c20-60147b160000︠
NL.echelonized_basis()

︡a0dee14e-1c37-48b8-8471-fbda831f3b6a︡︡
︠4978af43-63ba-4ffc-8486-baa731fdf2bb︠
CA == NL

︡2fc58934-cefd-48b4-a45d-272bf7302b67︡︡

