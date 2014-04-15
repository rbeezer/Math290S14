︠10ccb45f-59cd-4f4d-89b3-8696f3c914cbi︠
load('mathbook-modern-3.css')

︡3fa207a5-1583-4c51-8ca7-fd92ca12d6d8︡︡
︠0439fa04-c894-419c-b85c-2743794f71c1x︠
%html
<div>\(\)</div>
︡18908177-df91-4c85-80df-15e25bb5bb47︡︡
︠cdb6cb5e-c472-46e6-871a-5a224136d5d0x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section LT</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Fall 2013<br>April 15, 2014</div>
</div>
︡b42a2d28-c863-4cbc-b7fe-21a4d661536e︡︡
︠24e6a9a5-68e0-42d2-8c14-f2c92b0a88c6x︠
%html
<p>Sage has very capable linear transformations from \(\mathbb{Q}^n\) to \(\mathbb{Q}^m\).</p>
︡b2c0ac4c-8d57-43ca-906e-607431539055︡︡
︠6867c935-4601-41b2-bece-9407ba266f7fx︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Creation via Symbolic Functions</div>
</div></div>
︡a5e38057-ea28-472e-80c5-872289182aee︡︡
︠e9abeabc-3e1d-437c-812b-90056fda55a9x︠
%html
<p>Start with a symbolic function.</p>
︡e4e6b248-4c8c-49af-adab-6d57f1bffe3b︡︡
︠272263de-32c9-4891-beb1-6227b5ed1711︠
var('x1 x2 x3 x4')
f(x1, x2, x3, x4) = (x1 + 2*x2 + x3 + 5*x4, x1 + 5*x2 + 4*x3 + 8*x4, -x2 - x3 - x4)

︡c9c710ef-1637-4369-b2ec-2b8974ad890e︡︡
︠43085a2b-d192-4fe5-8c25-aaccd4cc8783x︠
%html
<p>Then specify the domain and codomain.  We need to be careful about how <tt class="code">T</tt> prints, Sage likes rows.</p>
︡d1777af4-06b5-4d6b-b79b-bf3476d3e435︡︡
︠11e42fd7-6b5b-4e73-bcc4-71d83bc0a1c3︠
T = linear_transformation(QQ^4, QQ^3, f)
T

︡a96edc63-beaa-4db6-9796-acc48b298df9︡︡
︠235d4a76-169b-4b9b-a834-3ad812437735x︠
%html
<p>At a most basic level, <tt class="code">T</tt> behaves as a function.</p>
︡e840d2a0-9ac4-4232-b288-2f6d6641a2fe︡︡
︠a139deb9-0bf3-47a4-907f-bab7af0e4548︠
u = random_vector(ZZ, 4, x=-9, y=9).change_ring(QQ)
u, T(u)

︡aee57869-bceb-4dd8-97ef-e14993e6e521︡︡
︠ac3a9f7b-a1d5-48e5-ba58-17d873a5f7f6x︠
%html
<p>We can check Theorem LTTZZ, zero goes to zero.</p>
︡fa402300-be06-42b1-b297-c1cee81f509b︡︡
︠7b42c65b-abb7-49cd-821b-2abca7378e74︠
z4 = zero_vector(QQ, 4)
z3 = zero_vector(QQ, 3)
z4, T(z4), T(z4) == z3

︡e40b80c5-d365-4970-a001-68f4adf824a8︡︡
︠87bf476c-42c1-4970-a41b-c964681a0a81x︠
%html
<div class="section"><div class="heading">
<div class="number">2</div>
<div class="title">Creation via Matrices</div>
</div></div>
︡7e4ce780-2902-41c3-821a-0061282b289a︡︡
︠fc75ca0f-77c2-4ac2-842a-90003283a4cbx︠
%html
<p>We can also create a linear transformation from a matrix, as in Theorem MBLT, with one caveat.  For a matrix \(A\), the default is to create the function \(T(\mathbf{v})=\mathbf{v}A\).  The keywords option <tt class="code">side='right'</tt> will indicate that we want to put the vector on the right of the matrix.</p>
︡6dc1680e-f068-4df5-9c57-d5d280f526c3︡︡
︠6f6b0828-ef22-477a-9b39-bf2ceb376d29︠
A = matrix(QQ, [[1, 2, 1, 5], [1, 5, 4, 8], [0, -1, -1, -1]])
S = linear_transformation(A, side='right')

︡ac13977f-939f-4564-919e-2178dacfb3b0︡︡
︠9ed86fcc-62ab-4632-bd41-9e943c92aa1ex︠
%html
<p>Notice that we do not have to specify the domain or codomain, these are inferred from the size and type of the matrix.  <tt class="code">S</tt> is not new, it is exactly the linear transformation <tt class="code">T</tt> above.</p>
︡f4a20cd7-5c25-4085-8f96-b60deaee3a50︡︡
︠77e4542c-55c1-4503-81b8-38058393e9ba︠
S == T

︡db06c8c6-0ad9-4d74-80a1-72fa7dc942ed︡︡
︠8fd8359e-b063-402a-95e1-bfeab453e36cx︠
%html
<p>Again, notice how <tt class="code">S</tt> prints — the matrix representation is the transpose of what we like to use.  This does not <em>change</em> the linear transformation as a function, it just changes how we think about it (we like linear combinations of columns, Sage likes linear combinations of rows).</p>
︡47dfdb70-7a76-464e-b71b-e3cdaca633a2︡︡
︠20292088-017d-4e14-bd02-e638c751a185︠
A, S

︡73cc6da8-04e0-4a1f-89ae-e56583d38f4a︡︡
︠a418516e-86ca-4a64-9048-2d009108236bx︠
%html
<div class="section"><div class="heading">
<div class="number">3</div>
<div class="title">Creation via Values on a Basis</div>
</div></div>
︡24a3c8a4-6b24-4264-9f8e-79b0b5fba94a︡︡
︠8749b641-aab8-4251-b010-e0569829c55cx︠
%html
<p>Starting with a domain and a codomain, we can provide a list of the images of basis vectors for the domain.</p>
︡388a0b9e-ac0a-42f2-8d54-3e7a2deef822︡︡
︠6540e5c2-0a8e-43b7-a2ce-60f5b900d80d︠
v1 = vector(QQ, [1, 1, 0])
v2 = vector(QQ, [2, 5, -1])
v3 = vector(QQ, [1, 4, -1])
v4 = vector(QQ, [5, 8, -1])
R = linear_transformation(QQ^4, QQ^3, [v1, v2, v3, v4])

︡8871c0f1-3b43-4f4b-a000-d547830d8988︡︡
︠a5819af3-d7d5-4677-b4b1-be17f748333dx︠
%html
<p>That's right — same function again.</p>
︡84caac55-1926-44ce-829a-5f6f013711bb︡︡
︠a450ca55-8d05-48a1-92a6-a3551ddd40be︠
R == T

︡89123822-0d81-4be9-be39-e0c0c50ae866︡︡
︠219ae278-a4fa-44ed-becc-ae40565af769x︠
%html
<p>We can check how this construction works.</p>
︡5114d3bc-2ad5-4aa1-895a-e0cf274829eb︡︡
︠1f4af16a-ad22-4ed9-a565-d876fce90ce6︠
d3 = R.domain().basis()[2]
R(d3); R(d3) == v3

︡53069380-d27c-408e-8c59-76abe0dbf631︡︡
︠8e9f29ba-7d19-4147-bcee-140f4d02755dx︠
%html
<p>We can give the domain an alternate basis and create a different linear transformation, despite seemingly having the same construction.  First we build the domain with a different user basis.</p>
︡4d90db4a-fc6f-4761-9386-0f4172918225︡︡
︠8234fffa-0260-45ea-a3bf-7d764495eabb︠
u1 = vector(QQ, [1, 0, 0, 0])
u2 = vector(QQ, [1, 1, 0, 0])
u3 = vector(QQ, [1, 1, 1, 0])
u4 = vector(QQ, [1, 1, 1, 1])
dom4 = (QQ^4).subspace_with_basis([u1, u2, u3, u4])
dom4

︡fae7912e-7def-4717-8dc7-54b99d8dfaef︡︡
︠5a5de598-5511-4612-8ab0-7354fea922fd︠
L = linear_transformation(dom4, QQ^3, [v1, v2, v3, v4])
L

︡7e78e7f7-f90d-4562-a05e-a026c34fbd3c︡︡
︠3b107c00-c8ae-4468-b6ac-867ed1ba5fbax︠
%html
<p>Even though the matrix representation prints the same, this is not the same function, we will need ideas from Chapter R before we can understand the difference.</p>
︡d303b96f-3fea-424c-8bc4-e106713ca2e7︡︡
︠15828e83-01e0-404a-8689-86941e7d3667︠
R(u3), L(u3)

︡20e0f9c1-145c-4058-8b11-8533e8aee4dd︡︡
︠4c52c78e-79e4-41e5-896d-ebfc2d6eef80x︠
%html
<p>This code should consistently return <tt class="code">False</tt>.</p>
︡7c4428b2-b71e-4b72-a787-3d73b2cf66c3︡︡
︠8497fdb0-80af-4f03-a19f-e03dedeb2756︠
v = random_vector(QQ, 4)
R(v) == L(v)

︡cec35286-800b-4079-a5f1-316b93ea9cde︡︡
︠5daab1ad-0d40-4919-9540-9c29d370bdb6x︠
%html
<div class="section"><div class="heading">
<div class="number">4</div>
<div class="title">Basic Properties</div>
</div></div>
︡b90bc216-772a-480f-bd2a-9373a10c9682︡︡
︠3eea9590-3b3a-40fe-b0ad-5d782fe0c5ddx︠
%html
<p>Illustrations with <tt class="code">T</tt>.</p>
︡b6bb6966-33cc-4e54-90f2-ab44909ee75b︡︡
︠a952e59c-775d-4c84-8ef1-c169d49ed30a︠
T.domain()

︡88386d02-d47b-4d25-afee-53b35f4dc4fa︡︡
︠e790fcbc-d12c-4541-a324-7193dc734ef8︠
T.codomain()

︡9b632850-ac5c-4b8c-8a56-2408ef123f08︡︡
︠90a143ef-6e13-4336-9c21-576fde2afcb6x︠
%html
<p>A defining property, so always <tt class="code">True</tt>.</p>
︡df832587-26c6-408a-b84b-8e78aa7641cc︡︡
︠cd11cd9e-4a48-46b0-a5f7-81b929d41f73︠
u = random_vector(QQ, 4)
v = random_vector(QQ, 4)
u, v, T(u+v) == T(u) + T(v)

︡7fcba99d-f709-444c-9067-2398ea482296︡︡
︠9616fe1f-2b06-48ab-889c-32f27d5db306x︠
%html
<p>A defining property, so also always <tt class="code">True</tt>.</p>
︡abba6804-5fc9-4962-8d15-be25593790ef︡︡
︠d5231ec3-b505-40cd-aacb-d6c303d18a71︠
alpha = (QQ).random_element()
u = random_vector(QQ, 4)
alpha, u, T(alpha*u) == alpha*T(u)

︡614483ac-d65e-4908-80f6-2aa7da7e1d8f︡︡
︠4fd491ff-f2d9-48d8-97a7-2e0d654866c9x︠
%html
<p>We can do “arithmetic” with linear transformations, though the addition seems to allow bad things to happen.</p>
︡ae7500bb-af22-48c4-a7dc-48f8a54e51c0︡︡
︠efb8e27d-2a35-4659-91ec-fb9a884b04a7︠
R+S

︡1fe8e3bf-52ce-4e0c-93e0-b28d0003da21︡︡
︠3c25e7ef-5bc7-4407-a03c-90a4e1c4ff8ax︠
%html
<p>Scalar multiples also, and they are well-behaved.</p>
︡c3196af6-ff3c-4d28-9487-29c3768d0e42︡︡
︠b3ab6355-21bc-4b29-a3a5-d98883015fb7︠
12*T

︡a599fa02-9095-47c1-8924-a5ec3b1eeb74︡︡
︠31e99123-b09b-4ac4-bd63-ff2cb186e8f2x︠
%html
<p>The following is wrong.  (In other words, there is a bug in Sage.)</p>
︡5236c8cb-f4ca-4a13-9282-a26707586436︡︡
︠bc44c113-73ad-4a5c-ae7e-7b41e05db4cf︠
P = R + L
P

︡8582f042-75cc-4e37-b0a5-c4a02f4c22bb︡︡
︠b9069f9d-4f96-4ae4-b693-3f258554a90fx︠
%html
<p>As we can see…</p>
︡c9392eb4-f821-4a41-9b74-9d95ea67fc9e︡︡
︠e9859aea-5426-444d-a53a-fbc4b90f400c︠
Q = L + R
Q.is_equal_function(P)

︡28b30cec-5970-49fc-93e8-02a806b12417︡︡
︠71583cef-d283-44cc-bb61-8e09972b882bx︠
%html
<p>The problem is that Sage is simply adding the matrices representing the linear transformations, without checking that they are defined using domains with the <em>same</em> basis.  We will understand the subtlety better in Chapter R.</p>
︡202b793e-8e5c-48c9-9373-e1d5a9c9510f︡︡

