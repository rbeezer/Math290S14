︠2d18dadb-3d36-429a-8751-cc614587627fi︠
load('mathbook-modern-3.css')

︡981e92af-2004-48be-ad61-e92d067934ed︡︡
︠f673c7c4-6cdc-4d7d-9158-2367de3d5508x︠
%html
<div>\(\)</div>
︡170f8efd-ef49-44c8-8910-1ed5eb320d9a︡︡
︠c0a7ea97-ae5e-4c0c-bc2c-bff0af9e945cx︠
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
︡6fd16780-32ca-4619-b3e3-eff91cb700a6︡︡
︠84e6680b-cfe6-4df8-b76a-8e381c8e5071x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Column and Row Spaces</div>
</div></div>
︡b9ef9cc0-7399-4840-b214-64c01f33f593︡︡
︠512110c6-d579-4898-b053-ecf9a09b9343x︠
%html
<p>This is an illustration of Theorem CSCS (and the utility of linearly independent spanning sets). \(A\) is a \(5\times 7\) matrix.</p>
︡7db73ead-d912-4fd0-b293-6dff32188148︡︡
︠cfab3cce-c483-4c73-a463-e53825c97752︠
A = matrix(QQ, [[1, -1, -2, 0, 0, -2, 0], 
    [-4, 5, 6, -3, -1, 5, 0], 
    [-3, -2, -3, 1, -2, -2, 5], 
    [-7, 3, 3, -2, -3, 3, 5], 
    [-1, -5, -5, 4, -1, -3, 5]])
A

︡5496975b-38bb-438a-977b-f5159a903f06︡︡
︠0df134d7-589b-4dc3-bae2-44d98f8404b6x︠
%html
<p>And its column space:</p>
︡e7ed1b62-d499-4711-b141-b9f584b158dd︡︡
︠33b32369-4013-4358-9675-5c22b19b1415︠
A.column_space()

︡62a95353-a6b0-4971-a8fb-1f653adc28c1︡︡
︠7c14b345-70d1-4c81-bc81-256a114e7f51x︠
%html
<p>Grab the elements of a linearly independent spanning set.</p>
︡5e6f685a-0d51-4550-ad08-c3b027c8d228︡︡
︠7ead38ce-57a2-4587-bfe9-a3a365f704e2︠
S = A.column_space().basis()
S

︡2b5154a4-25f7-4255-a592-da5521ebf805︡︡
︠06f2a38e-1479-477c-9d11-468d16fe333cx︠
%html
<p>Any linear combination of the elements of <tt class="code">S</tt> will lead to a vector of constants that will form a consistent system with coefficient matrix <tt class="code">A</tt>.</p>
︡17604df6-3c05-4929-ab86-96daccbe264e︡︡
︠df5ca85e-a81a-490c-8d34-6aaed5a6c34f︠
b = *S[0] + *S[1] + *S[2]
b

︡3a4cf700-4742-4d1b-837e-ae66cc2930df︡︡
︠ad3a9610-deae-4696-8c05-2bdd84c454fb︠
P = A.augment(b, subdivide=True)
P.rref()

︡0626f016-694b-4b01-959b-8d0f71c8aafe︡︡
︠e089eb3d-c8be-4050-8aae-2756238b2b0fx︠
%html
<p>If we perturb a vector slightly, in the right place, we can quickly create an inconsistent system.</p>
︡d8387652-5e20-4d40-bbb6-61270ca0e359︡︡
︠6aede0f9-4e3e-45a3-9f6f-b0e2a4d83222x︠
%html
<p>The vector <tt class="code">c</tt> will create a consistent system.</p>
︡c5b4ed9a-f8b2-429f-9d7e-14bd5d098051︡︡
︠66eaf443-49f8-4dd4-b522-9fafdb890137︠
c = *S[0] + *S[1] + *S[2]
c

︡097aedd2-e618-47ea-900d-f99cd90fda23︡︡
︠0bc99dfb-adf3-48df-8c5b-2761270ffdb2x︠
%html
<p>We change one entry, in a copy of <tt class="code">c</tt>, in a strategic location that is totally determined by the values of the first three entries.</p>
︡423e98e9-6570-4097-b2f4-9d511f322752︡︡
︠2d1cf764-e7f9-4a1d-a8f4-0d14a35c780a︠
d = copy(c)
d[4] = d[4]+1
d

︡f3d5cee9-463d-4a29-ac7b-a1bae35bdc0c︡︡
︠9fc85a36-5e9b-4ace-92f4-30bdf7e7900b︠
P = A.augment(d, subdivide=True)
P.rref()

︡84bd85ef-5fbe-4350-a533-9057058c668b︡︡
︠57016ce2-19cb-4474-a495-4623d7ef43acx︠
%html
<p>Moral: Elements of the column space are vectors-of-constants that lead to consistent systems.  It is easy, especially with a linearly independent spanning set for the column space, to make a vector-of-constants that yields an inconsistent system.</p>
︡5afc5c23-f897-4cc5-81ba-c3bdb398da44︡︡

