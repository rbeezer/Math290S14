︠dcd33e75-a8d5-4e7a-a9b2-8fb139fb623ai︠
load('mathbook-modern-3.css')

︡7d6e1723-15dd-42df-9ece-89d7ca20e914︡︡
︠3d272248-80ba-4528-a15f-31eccc6202fci︠
%html
<div>\(\)</div>
︡f609a51b-7870-4abb-88c1-8aa11092f83e︡{"html":"<div>\\(\\)</div>"}︡
︠f98caf82-c86b-4e77-a7d5-48f19d0f9780i︠
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
︡6ae70b30-3c84-4d21-8cbd-c24f443d5b48︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\"></div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Spring 2014</div>\n</div>"}︡
︠9b4630d9-0987-469e-822d-fc501610e412i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Four Subsets</div>
</div></div>
︡39d51faa-a28d-4fcb-b7d1-9cc34f718d1a︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Four Subsets</div>\n</div></div>"}︡
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

︡7d4ea791-55b4-46df-9598-7ed1d9e80ed0︡{"stdout":"[  194   -41  -899  -396    49   112   874  -355  1139 -1221]\n[  269   -57 -1247  -549    68   155  1212  -492  1579 -1693]\n[   16    -3   -73   -33     4    10    72   -30    95  -101]\n[  115   -24  -532  -235    29    67   518  -211   676  -724]\n[   10     1   -37   -23     2    12    44   -24    67   -65]\n[  -59    13   275   120   -15   -33  -266   107  -345   371]\n[   36    -7  -165   -74     9    22   162   -67   213  -227]\n[  -20     4    92    41    -5   -12   -90    37  -118   126]\n"}︡
︠ee794866-0616-4223-ad7b-8a1d7560bb60︠

︠b4b13694-954c-447d-9b08-345e6a1f2e99︠
N = A.extended_echelon_form(subdivide=True)
N

︡585dbe68-87b1-4d50-bdbe-8ae03d5b64a4︡{"stdout":"[   1    0   -4    0   -2    1    0    0    2   -2|   0    0    0    0    0    9  -53 -122]\n[   0    1    3    0   -1    2   -2   -1    1    1|   0    0    0    0    0    4  -19  -46]\n[   0    0    0    1   -1    0   -2    1   -2    2|   0    0    0    0    0    4  -24  -55]\n[-------------------------------------------------+---------------------------------------]\n[   0    0    0    0    0    0    0    0    0    0|   1    0    0    0    0    2   -1    2]\n[   0    0    0    0    0    0    0    0    0    0|   0    1    0    0    0    3   -2    1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    1    0    0    0   -1   -1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    0    1    0    1   -1    1]\n[   0    0    0    0    0    0    0    0    0    0|   0    0    0    0    1   -2   -3    1]\n"}︡
︠bc745a42-f186-423c-9665-e75439d28d18i︠
%html
<p>Grab the four pieces of \(N\).</p>
︡75373bfa-5e1a-4e9c-ad2f-556533c5c0d4︡{"html":"<p>Grab the four pieces of \\(N\\).</p>"}︡
︠ca9d6a6e-704b-4626-b857-1b11a3a0f464︠
C = N.subdivision(0,0)
Z = N.subdivision(1,0)
K = N.subdivision(0,1)
L = N.subdivision(1,1)

︡b0f74b31-b2d1-4784-b20e-17360a822254︡
︠c67d2919-270c-484d-bade-3cd785234630i︠
%html
<p>And build two bigger pieces.</p>
︡ef4600b9-fb31-4de4-b6cf-9e68d34a4094︡{"html":"<p>And build two bigger pieces.</p>"}︡
︠d9e3487f-d01f-49a3-bcec-942e7d546cd3︠
B = C.stack(Z)
J = K.stack(L)

︡87a06a5f-49d2-45c1-9a96-bc887f078f17︡
︠c356546d-9e30-4498-98b3-16c462f98ce6︠
B

︡743398cb-2fb8-4853-8b64-cfaad2c9c37e︡{"stdout":"[ 1  0 -4  0 -2  1  0  0  2 -2]\n[ 0  1  3  0 -1  2 -2 -1  1  1]\n[ 0  0  0  1 -1  0 -2  1 -2  2]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n[ 0  0  0  0  0  0  0  0  0  0]\n"}︡
︠ff06bf7e-9ba8-4119-97e7-62b697d79286︠
J

︡0f069d5a-1f0d-4358-9cd4-c189dabf3021︡{"stdout":"[   0    0    0    0    0    9  -53 -122]\n[   0    0    0    0    0    4  -19  -46]\n[   0    0    0    0    0    4  -24  -55]\n[   1    0    0    0    0    2   -1    2]\n[   0    1    0    0    0    3   -2    1]\n[   0    0    1    0    0    0   -1   -1]\n[   0    0    0    1    0    1   -1    1]\n[   0    0    0    0    1   -2   -3    1]\n"}︡
︠f6116677-aee4-4491-91c8-a167b05b59cbi︠
%html
<p>Some properties of the pieces, as given in Theorem PEEF.</p>
︡60a5f68d-f8b4-4a77-9f81-82ec1a33bb26︡{"html":"<p>Some properties of the pieces, as given in Theorem PEEF.</p>"}︡
︠a959d12e-1e52-44a7-b86f-485bc2f095e4i︠
%html
<p>\(J\) is nonsingular.</p>
︡43d65d2e-a38e-4d0e-b3fc-4e9626aaadcd︡{"html":"<p>\\(J\\) is nonsingular.</p>"}︡
︠e5821125-6e94-43ec-a4ff-6f0941cc7869︠
J.is_singular()

︡e2f5a450-3e24-43e3-b2f1-20c4cbd744c9︡{"stdout":"False\n"}︡
︠2c7d5c72-143c-4b51-9d81-a272af68fd38i︠
%html
<p>\(A\), \(B\) and \(J\) are related.  Effectively, \(J\) consolidates the net effect of all of the row operations that convert \(A\) into \(B\).</p>
︡d654bc07-2c96-47b7-9b33-29399e3680cb︡{"html":"<p>\\(A\\), \\(B\\) and \\(J\\) are related.  Effectively, \\(J\\) consolidates the net effect of all of the row operations that convert \\(A\\) into \\(B\\).</p>"}︡
︠451e78cb-2205-4903-98c4-a9eb5e928238︠
J*A == B

︡2b1e2bb6-0253-4d28-a2be-0c66e2cb3bd6︡{"stdout":"True\n"}︡
︠f5533e00-35f1-4ac4-8f54-a76aa5ba662fi︠
%html
<p>Imagine in the above equation that we replace \(A\) by an augmented matrix of a linear system.  If the vector of constants, used in a linear combination of the columns of \(L\), produces a zero column, then the system will be consistent since there will be no pivot column in the last column of the row-reduced version of the augmanted matrix.  This is another way of saying the null space of \(L\) is the column space of \(A\).</p>
︡1342e63a-6838-46fe-877c-7c0606f41b67︡{"html":"<p>Imagine in the above equation that we replace \\(A\\) by an augmented matrix of a linear system.  If the vector of constants, used in a linear combination of the columns of \\(L\\), produces a zero column, then the system will be consistent since there will be no pivot column in the last column of the row-reduced version of the augmanted matrix.  This is another way of saying the null space of \\(L\\) is the column space of \\(A\\).</p>"}︡
︠88098e5d-b6f2-468d-8938-698724425143︠
NL = L.right_kernel(basis='pivot')
NL

︡3b31be59-fd75-46e3-992b-3f11fcff9736︡{"stdout":"Vector space of degree 8 and dimension 3 over Rational Field\nUser basis matrix:\n[-2 -3  0 -1  2  1  0  0]\n[ 1  2  1  1  3  0  1  0]\n[-2 -1  1 -1 -1  0  0  1]\n"}︡
︠c4296bdf-cd55-4e29-9125-e3eadb6fda3ci︠
%html
<p>We create an arbitrary element of the null space of \(L\).</p>
︡ea531cd7-9c1d-4912-809a-37c58f7b3998︡{"html":"<p>We create an arbitrary element of the null space of \\(L\\).</p>"}︡
︠c628b87f-359b-4294-b2b7-2b64137e5fb7︠
NLbasis = NL.basis()

︡8090c0be-ed0f-4693-a4ce-f27a1a9f06ad︡
︠33404980-79f8-4119-affd-52d52e9bf27b︠
b = 10*NLbasis[0] + 6*NLbasis[1] + 127*NLbasis[2]
b

︡d88b6c63-aeb5-42e1-8222-109fe7fa2a0a︡{"stdout":"(-268, -145, 133, -131, -89, 10, 6, 127)\n"}︡
︠b02a396e-2ca2-41f2-9156-00a9ac575a58i︠
%html
<p>\(b\) will create a consistent system with \(A\) as coefficient matrix.</p>
︡af2d3954-4284-477e-8b75-6328fde0902b︡{"html":"<p>\\(b\\) will create a consistent system with \\(A\\) as coefficient matrix.</p>"}︡
︠4d53dfe1-fbff-48dc-9f02-7f184df1a009︠
P = A.augment(b, subdivide=True)
P.rref()

︡03e2bfa4-f12f-4dd7-ae6a-005ed0f65c83︡{"stdout":"[     1      0     -4      0     -2      1      0      0      2     -2 -15722]\n[     0      1      3      0     -1      2     -2     -1      1      1  -5916]\n[     0      0      0      1     -1      0     -2      1     -2      2  -7089]\n[     0      0      0      0      0      0      0      0      0      0      0]\n[     0      0      0      0      0      0      0      0      0      0      0]\n[     0      0      0      0      0      0      0      0      0      0      0]\n[     0      0      0      0      0      0      0      0      0      0      0]\n[     0      0      0      0      0      0      0      0      0      0      0]"}︡{"stdout":"\n"}︡
︠2eea2c23-3f88-4266-af4c-0af0bff48126i︠
%html
<p>The column space of \(A\) is equal to the null space of \(L\).  This is part of Theorem FS.</p>
︡7b0856d4-38c1-47e6-b855-39784c7a3c79︡{"html":"<p>The column space of \\(A\\) is equal to the null space of \\(L\\).  This is part of Theorem FS.</p>"}︡
︠563ae24e-0250-4172-a05e-7d308618f64d︠
CA = A.column_space()
CA

︡1e9920fd-be35-43ca-bc43-e272d707a80a︡{"stdout":"Vector space of degree 8 and dimension 3 over Rational Field\nBasis matrix:\n[    1     0     0     1     6     1     1    -1]\n[    0     1     0  -1/3 -14/3    -1  -2/3   2/3]\n[    0     0     1   2/3  19/3     1   4/3  -1/3]\n"}︡
︠307153ef-3c08-4c4e-9204-156ca5ea06eei︠
%html
<p>Since the vector \(b\) leads to a consistent system, we know it is in the column space of \(A\).  But we can check with Sage.</p>
︡9a15966b-905b-4ef0-a097-d00e07851c6d︡{"html":"<p>Since the vector \\(b\\) leads to a consistent system, we know it is in the column space of \\(A\\).  But we can check with Sage.</p>"}︡
︠4790f663-704f-416d-a751-924c686b7834︠

︠2ab73d6a-367e-4279-9f2b-ca35dce81fbb︠
b in CA

︡7d7a9ce7-a592-4453-a575-7f78147ae455︡{"stdout":"True\n"}︡
︠14d8d70d-2676-4d99-8ab1-8121d324206bi︠
%html
<p>Sage relies on “echelonized” bases to represent infinite sets of vectors and to be able to test equality (which seems pretty amazing at first!).</p>
︡a1b2ee20-bc27-48b9-b001-c2332adfcde7︡{"html":"<p>Sage relies on “echelonized” bases to represent infinite sets of vectors and to be able to test equality (which seems pretty amazing at first!).</p>"}︡
︠23028fb9-a306-42c2-8c20-60147b160000︠
NL.echelonized_basis()

︡f046a1af-fd05-458a-ad41-29045fde207e︡{"stdout":"[\n(1, 0, 0, 1, 6, 1, 1, -1),\n(0, 1, 0, -1/3, -14/3, -1, -2/3, 2/3),\n(0, 0, 1, 2/3, 19/3, 1, 4/3, -1/3)\n]\n"}︡
︠4978af43-63ba-4ffc-8486-baa731fdf2bb︠
CA == NL

︡9d84d07e-50d1-4025-b286-5d85ea4d1981︡{"stdout":"True\n"}︡
︠c61bee23-d8ab-4366-9532-980df03a80e5︠









