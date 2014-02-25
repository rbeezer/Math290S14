︠f6dc19e6-c662-49fb-bcd0-0a54b767db60i︠
%auto
%load mathbook-modern-3.css

︡c50e9221-a34f-4aa8-ade5-3974bfdba5fa︡︡
︠dfe1401c-710a-45e6-9314-b3da26e3b80bx︠
%html
<div>\(\)</div>
︡0e226f4e-116a-478b-b180-a8cdc87da0d0︡︡
︠27b4e4a0-5cd1-4f8b-95c8-d6cf791911fcx︠
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
︡1785d3ac-02f7-44b3-99a3-e6fb58f3d5bd︡︡
︠90a91d52-b829-44b5-9fbb-d05cfb936435x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">An invertible matrix</div>
</div></div>
︡b4af1535-3e7d-4523-b6df-299106b08631︡︡
︠38c1e7dc-7afa-4df3-99c1-fc0de09eb5f8x︠
%html
<p>An invertible \(6\times 6\) matrix.</p>
︡7557110b-e1a0-4bf1-afdf-7c222fd475b0︡︡
︠12f761b3-015a-40d1-90b7-8157132518d5︠
A = matrix(QQ, [[1, 2, -1, -2, -1, -6], 
                [-2, -3, 1, 3, 1, 6], 
                [2, 4, -1, -4, 0, -7], 
                [0, -1, 1, 2, -1, 1], 
                [2, 4, -2, -4, -1, -8], 
                [1, 0, 0, 0, -1, 2]])
A

︡3dca2f33-3a38-44d6-8059-84ef8dbbf22a︡︡
︠1e5548fd-e09e-456c-aee9-f7caf5a8f27b︠
Ainv = A.inverse()
Ainv

︡3c71d26e-59aa-4eaa-aaa5-15ad2b4e99fb︡︡
︠affcabee-1989-4d57-9b47-c544c8911d7d︠
Ainv*A

︡1dffcc2f-6b90-48fd-8d16-4e46229c8770︡︡
︠62da2bea-a03c-49b3-8b9f-bc4e945ba247︠
A*Ainv

︡d18150a9-d101-410e-a37c-391ceeca0e26︡︡
︠2912db6e-3ce1-44c0-b404-10a750b0ae88x︠
%html
<p>Building the inverse, column by column. Use several different columns of the identity matrix.</p>
︡863f9787-f810-40ae-87e7-4975b8346a92︡︡
︠205e1d34-1ee1-4705-acad-f9235077aa32︠
y = vector(QQ, [1,0,0,0,0,0])
P = A.augment(y, subdivide=True)
P.rref()

︡26e7d46e-eade-4fa5-a367-721d079c72e8︡︡
︠b2e8681f-41d7-4cba-8d37-60236dc09284x︠
%html
<p>The following is the approach of Theorem CINM.</p>
︡652a893a-c449-49f9-8992-6ec78d563f00︡︡
︠1bacbbf9-9779-4c13-a4b2-9e02195aa5a3︠
B = A.augment(identity_matrix(6), subdivide=True)
B

︡c7c3f98b-ccc6-4bcd-8a7b-c075b583e178︡︡
︠d975ceba-ca80-4724-8148-9e3a85a016e8︠
B.rref()

︡1969f6de-deb3-478a-bce6-e470148687b8︡︡
︠b8e1ed74-1448-4f70-b48e-c8fb6ceb0be2x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">A matrix without an inverse</div>
</div></div>
︡e916c942-2cec-4831-a18a-bf8bf86deefb︡︡
︠b6422549-c1b4-4eff-a4a7-663a17115156x︠
%html
<p>Now, a non-invertible \(6\times 6\) matrix.</p>
︡18adb5b3-81d4-479b-ba19-3b2d43c0c2f9︡︡
︠7a4590a6-1762-4778-9676-f8f4d3c0705a︠
C = matrix(QQ, [[-1, 0, 2, 8, 8, 0], 
                [-1, -1, 0, 1, 0, 3], 
                [-1, -2, -1, -4, -4, 5], 
                [1, 2, 1, 4, 5, -5], 
                [-1, -1, -1, -1, -8, 4], 
                [0, 1, 0, 3, 5, -1]])
C

︡ad6d42ba-2bc7-478a-8ced-86359439db15︡︡
︠5d4e38c7-7695-47ae-bd9a-e322c0483c8f︠
C.inverse()

︡c0ac4aad-2776-4087-9f0b-aff9b4072be8︡︡
︠ce63c922-df4c-4650-b109-a97ef7e2a32dx︠
%html
<p>Trying to build the inverse, column by column.  Try different columns.</p>
︡77cae6ff-cfa5-4824-94b7-01f53239a739︡︡
︠31808c54-bbaf-4671-b84a-503ebbe41eb4︠
y = vector(QQ, [1,0,0,0,0,0])
P = C.augment(y, subdivide=True)
P.rref()

︡97e9b434-f11f-40bf-8480-5aa9bf2dfcdb︡︡
︠7a6b507b-f4a1-4bf3-b991-7a7fedb3f79dx︠
%html
<p>Any one of these results is enough to conclude that \(C\) does not have an inverse, following the logic of Example MWIAA.</p>
︡19787620-fda6-4359-8ca5-665281c415f5︡︡
︠d1d5300b-042f-414d-a1df-508c226495d1x︠
%html
<p>It also happens that <em>no</em> column of the identity matrix leads to a
       consistent system (for this matrix).</p>
︡a920ed9c-f622-4e05-bca5-f10bead953f6︡︡
︠6d7749ce-c520-4da1-93ca-c00d4e78d882︠
D = C.augment(identity_matrix(6), subdivide=True)
D

︡3142a1f9-5f1f-4165-858e-1fd2be5000b0︡︡
︠91c47f14-afcb-49ba-8ca1-61443602d9bf︠
D.rref()

︡e81b7091-b1b9-49ee-a5a2-a0db1f0ebe75︡︡
︠8b0a36ec-f410-4601-aa78-a7fe67c98a33︠


︡a600eceb-9aca-45de-b1ae-c968695fc684︡︡

