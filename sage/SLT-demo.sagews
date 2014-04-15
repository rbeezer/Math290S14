︠63258d70-4795-497c-8b6f-08534a071b0di︠
load('mathbook-modern-3.css')

︡ec9e3b42-79f3-4b2e-b6ea-da23fd9b40be︡︡
︠59c73ee4-802a-470a-b49c-856b9f474c4dx︠
%html
<div>\(\)</div>
︡d668a203-003c-445f-aee0-2251f600788a︡︡
︠d96b0af6-1f22-4ed9-a809-00754e3b65c1x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section SLT</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Fall 2013<br>April 15, 2014</div>
</div>
︡20b95162-09cd-4ec3-a987-874647eb024a︡︡
︠2987d463-5330-45d2-80f7-b132b77016fex︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Surjective Linear Transformations</div>
</div></div>
︡3d00f98e-6891-44bb-b23c-050fc04260eb︡︡
︠a721a680-a02b-449e-8f9a-ff392ff11113x︠
%html
<p>Two carefully-crafted linear transformations: <tt class="code">T</tt> is surjective, <tt class="code">S</tt> is not.</p>
︡2b6feb9a-436f-4203-8751-f8fa3a8fff43︡︡
︠ee1f087d-c18a-41f4-bd03-454f0e0df838︠
A = matrix(QQ, [[2, 2, 5, -2], [2, 3, 1, -4], [-3, -4, -4, 5]])
T = linear_transformation(QQ^4, QQ^3, A, side='right')

︡b3acde07-49dc-4a8e-bb1d-dc8065c6bd64︡︡
︠fb8e81f1-fc92-4b14-b87a-63642cbfa094︠
T.is_surjective()

︡c7b6823b-d82a-402c-90dd-be090a242103︡︡
︠2110e14e-549d-4b44-9144-5c040c26ced9x︠
%html
<p>The range is known in Sage as the “image.”  For a surjective linear transformation, it will be the entire codomain.  Note that the image is a vector space.</p>
︡eca726a5-b30d-4c59-b3dd-7891d8ed69b3︡︡
︠b2ddbadb-8b7b-44e8-9355-f9d87232adf7︠
T.image()

︡ddb877cf-35b6-4f23-9057-5f955475761d︡︡
︠696280f0-5ebc-47e0-a980-6968468a3d04︠
T.image() == T.codomain()

︡80aecb28-c2d4-435b-8e57-5e703462c20c︡︡
︠81cf4013-dd0f-47f8-992e-23a9eb77e9a4︠
B = matrix(QQ, [[1, -2, 0, 3], [3, -5, 1, 7], [-1, 4, 2, -7]])
S = linear_transformation(QQ^4, QQ^3, B, side='right')

︡cafadf41-1f3e-40a7-b473-1d73acc0c9f2︡︡
︠8ce96408-85bc-4844-ba6c-8304a31373e5︠
S.is_surjective()

︡f322c5ab-394b-466e-9195-f5de76f8a533︡︡
︠40dbe7a6-bbf3-4758-ac54-6311b4f23407︠
IM = S.image()
IM

︡a773d040-1d7d-44d7-92d2-8f22b9a9b01d︡︡
︠98543c42-3829-4033-8da5-180c6ffc188d︠
IM == S.codomain()

︡14b9a73c-d148-4f5c-b04f-88499d820998︡︡
︠633079da-44e0-4f34-84d5-b917b78ebbccx︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Pre-Images</div>
</div></div>
︡4aab5de6-4035-4d73-ae10-30624fc67e5c︡︡
︠0e458e57-8cc5-4c64-a94c-0063a9eee888x︠
%html
<p>We can create inputs associated with any output.  First, we make an arbitrary output, but make sure it really is an output, as a linear combination of a basis of the image (see basis above).  We print the two vectors in the opposite of what we would consider the “normal” order.</p>
︡bbd8568a-a78e-4415-a77a-778a0e47f285︡︡
︠e4b39cf2-dca0-4b51-8ba0-55ede01d45ca︠
bas = IM.basis()
out = ()*bas[0] + ()*bas[1]
inp = S.preimage_representative(out)
out, inp

︡87bb3885-4650-4051-bc5f-4e4229933be4︡︡
︠a770da68-7378-431c-80c3-97e89d6e572fx︠
%html
<p>A check on our work.</p>
︡fc23caf1-6244-40a3-a173-95f68b8bccee︡︡
︠ffa45490-6c67-4993-87e8-daa24d7a0bdf︠
S(inp)

︡b49ec4c7-0857-478b-807a-d1e9f7d297c6︡︡
︠81abac62-5def-4c26-9eb0-a2880e6bcc7ex︠
%html
<p>We can make other inputs, using the kernel.</p>
︡0352eb52-3616-43a7-b40f-b282a7bc9e8a︡︡
︠f9f3333f-cc2d-4069-a51a-7c8fbaaeea90︠
K = S.kernel()
K

︡9fe9d9eb-8c51-45a0-bab3-fa48bc1700d2︡︡
︠11140ef5-76ff-4189-b498-8b59488bd52dx︠
%html
<p>Any value of <tt class="code">new_inp</tt> is in the preimage of <tt class="code">out</tt>, and every element of the preimage can be built this way.  Notice the role the kernel plays, much like in the worksheet about injective linear transformations.</p>
︡0de408ef-3ec6-4cd9-bd86-cef3cb4e842c︡︡
︠01c5aba0-4447-402e-b227-219adab593cd︠
z = K.random_element()
new_inp = inp + z
new_inp, S(new_inp)

︡dcd6fa31-0488-499f-9905-28b58c37c6fe︡︡
︠dd2c1890-ee1a-4aeb-a5d0-465bff4d472bx︠
%html
<p>Elements outside the range (image) will have empty preimages.  We mildly “wreck” an element of the range.</p>
︡4513188b-38e4-4f53-920d-a3714e8fcbad︡︡
︠3a48bd52-862e-4cdf-b888-ed74ff018d77︠
in_range = ()*bas[0] + ()*bas[1]
in_range

︡85fb5289-139b-4a36-9d12-0fe0a8e8006c︡︡
︠b847002c-e9ed-4d9c-97ed-234ab51b1da2x︠
%html
<p>With two initial entries determined by the zeros and ones in the basis vectors, the third entry must be determined, so we can “twiddle” it just a bit to obtain a vector of the codomain that lies outside the range.  We will ask Sage for a pre-image representative anyway and see what happens.</p>
︡76adeda2-b7ce-4c40-afe0-e606b16f06f6︡︡
︠16921f73-0801-4433-83af-d06efeabc2c2︠
outside_range = vector(QQ, [ , , ])
S.preimage_representative(outside_range)

︡cf683470-25ef-4e57-8dd6-3925c797b102︡︡

