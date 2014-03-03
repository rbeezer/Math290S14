︠2d18dadb-3d36-429a-8751-cc614587627fi︠
load('mathbook-modern-3.css')

︡981e92af-2004-48be-ad61-e92d067934ed︡︡
︠f673c7c4-6cdc-4d7d-9158-2367de3d5508i︠
%html
<div>\(\)</div>
︡7d739e61-c042-44eb-80cb-d358b4a74f59︡{"html":"<div>\\(\\)</div>"}︡
︠c0a7ea97-ae5e-4c0c-bc2c-bff0af9e945ci︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section CRS</div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Spring 2014</div>
</div>
︡2de35a9b-7a15-463e-8a0d-d33f9975d0b0︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\">Demo: Section CRS</div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Spring 2014</div>\n</div>"}︡
︠84e6680b-cfe6-4df8-b76a-8e381c8e5071i︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Column and Row Spaces</div>
</div></div>
︡c961bdd7-d96e-428d-b188-81960f6e9edc︡{"html":"<div class=\"section\"><div class=\"heading\">\n<div class=\"number\">1</div>\n<div class=\"title\">Column and Row Spaces</div>\n</div></div>"}︡
︠512110c6-d579-4898-b053-ecf9a09b9343i︠
%html
<p>This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). \(A\) is a \(5\times 7\) matrix.</p>
︡cd96a7b6-d351-46ef-9be1-46eff88eaeee︡{"html":"<p>This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). \\(A\\) is a \\(5\\times 7\\) matrix.</p>"}︡
︠cfab3cce-c483-4c73-a463-e53825c97752︠
A = matrix(QQ, [[1, -1, -2, 0, 0, -2, 0], 
    [-4, 5, 6, -3, -1, 5, 0], 
    [-3, -2, -3, 1, -2, -2, 5], 
    [-7, 3, 3, -2, -3, 3, 5], 
    [-1, -5, -5, 4, -1, -3, 5]])
A

︡753b531f-3d2f-449c-83ef-9e98adc8579d︡{"stdout":"[ 1 -1 -2  0  0 -2  0]\n[-4  5  6 -3 -1  5  0]\n[-3 -2 -3  1 -2 -2  5]\n[-7  3  3 -2 -3  3  5]\n[-1 -5 -5  4 -1 -3  5]\n"}︡
︠0df134d7-589b-4dc3-bae2-44d98f8404b6i︠
%html
<p>And its column space:</p>
︡99135fd7-bb2d-4868-983c-00165aaeea9f︡{"html":"<p>And its column space:</p>"}︡
︠33b32369-4013-4358-9675-5c22b19b1415︠
A.column_space()

︡88e08cc9-1664-46ca-85f6-940c74f51fba︡{"stdout":"Vector space of degree 5 and dimension 3 over Rational Field\nBasis matrix:\n[ 1  0  0  0 -2]\n[ 0  1  0  1 -1]\n[ 0  0  1  1  1]"}︡{"stdout":"\n"}︡
︠7c14b345-70d1-4c81-bc81-256a114e7f51i︠
%html
<p>Grab the elements of a linearly independent spanning set.</p>
︡92107178-3802-4d6f-8ada-a358c3046cc5︡{"html":"<p>Grab the elements of a linearly independent spanning set.</p>"}︡
︠7ead38ce-57a2-4587-bfe9-a3a365f704e2︠
S = A.column_space().basis()
S

︡bf8aa07c-e1a2-4a65-9c79-ca8ecda6d194︡{"stdout":"[\n(1, 0, 0, 0, -2),\n(0, 1, 0, 1, -1),\n(0, 0, 1, 1, 1)\n]\n"}︡
︠06f2a38e-1479-477c-9d11-468d16fe333ci︠
%html
<p>Any linear combination of the elements of <tt class="code">S</tt> will lead to a vector of constants that will form a consistent system with coefficient matrix <tt class="code">A</tt>.</p>
︡48cd7039-09dc-4f62-a5a1-d57ce52f0f6e︡{"html":"<p>Any linear combination of the elements of <tt class=\"code\">S</tt> will lead to a vector of constants that will form a consistent system with coefficient matrix <tt class=\"code\">A</tt>.</p>"}︡
︠df5ca85e-a81a-490c-8d34-6aaed5a6c34f︠
b = 6*S[0] + (-8)*S[1] + 12*S[2]
b

︡218facf1-96eb-45aa-8fbd-e1ad736c2e7a︡{"stdout":"(6, -8, 12, 4, 8)\n"}︡
︠ad3a9610-deae-4696-8c05-2bdd84c454fb︠
P = A.augment(b, subdivide=True)
P.rref()

︡5b0dac57-caff-4b03-97e6-6e48932ea787︡{"stdout":"[      1       0       0   -1/19    9/19   -3/19  -20/19| -22/19]\n[      0       1       0  -29/19   -5/19  -11/19  -10/19|  84/19]\n[      0       0       1   14/19    7/19   23/19   -5/19|-110/19]\n[      0       0       0       0       0       0       0|      0]\n[      0       0       0       0       0       0       0|      0]\n"}︡
︠e089eb3d-c8be-4050-8aae-2756238b2b0fi︠
%html
<p>If we perturb a vector slightly, in the right place, we can quickly create an inconsistent system.</p>
︡91925062-8a44-4668-9a4a-cb130f202fee︡{"html":"<p>If we perturb a vector slightly, in the right place, we can quickly create an inconsistent system.</p>"}︡
︠6aede0f9-4e3e-45a3-9f6f-b0e2a4d83222i︠
%html
<p>The vector <tt class="code">c</tt> will create a consistent system.</p>
︡e1a60640-ba43-41fd-b654-55b4f9f4a0fa︡{"html":"<p>The vector <tt class=\"code\">c</tt> will create a consistent system.</p>"}︡
︠66eaf443-49f8-4dd4-b522-9fafdb890137︠
c = 13*S[0] + 2*S[1] + 7*S[2]
c

︡86502c21-6e61-4302-ad25-894086ab79b8︡{"stdout":"(13, 2, 7, 9, -21)\n"}︡
︠0bc99dfb-adf3-48df-8c5b-2761270ffdb2i︠
%html
<p>We change one entry, in a copy of <tt class="code">c</tt>, in a strategic location that is totally determined by the values of the first three entries.</p>
︡e353ec88-857d-4430-a60b-af8b201e7cec︡{"html":"<p>We change one entry, in a copy of <tt class=\"code\">c</tt>, in a strategic location that is totally determined by the values of the first three entries.</p>"}︡
︠2d1cf764-e7f9-4a1d-a8f4-0d14a35c780a︠
d = copy(c)
d[4] = d[4]+1
d

︡6a4440b6-f325-4a54-955b-547da4839ca3︡{"stdout":"(13, 2, 7, 9, -20)\n"}︡
︠9fc85a36-5e9b-4ace-92f4-30bdf7e7900b︠
P = A.augment(d, subdivide=True)
P.rref()

︡9a76ddb1-f7b8-484f-8e86-fa2c7205a943︡{"stdout":"[     1      0      0  -1/19   9/19  -3/19 -20/19|     0]\n[     0      1      0 -29/19  -5/19 -11/19 -10/19|     0]\n[     0      0      1  14/19   7/19  23/19  -5/19|     0]\n[     0      0      0      0      0      0      0|     1]\n[     0      0      0      0      0      0      0|     0]\n"}︡
︠57016ce2-19cb-4474-a495-4623d7ef43aci︠
%html
<p>Moral: Elements of the column space are vectors-of-constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector-of-constants that yields an inconsistent system.</p>
︡2bd2000b-8b01-40fd-8590-d468ec4335df︡{"html":"<p>Moral: Elements of the column space are vectors-of-constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector-of-constants that yields an inconsistent system.</p>"}︡
︠0207416c-e8d7-4920-8a80-f57697d46bcc︠









