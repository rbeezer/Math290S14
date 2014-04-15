︠82bf4202-9dfe-46fe-9080-c78116ed091bi︠
load('mathbook-modern-3.css')

︡0bc67f52-d072-42a0-b4ff-01963ae693e4︡︡
︠89cbe156-18ca-49ea-80ee-9eabc2af8567x︠
%html
<div>\(\)</div>
︡e201d3a7-96de-44d3-b6c2-ef81997bce6e︡︡
︠b0ca3365-b51a-4d98-828b-a891bf1307a2x︠
%html
<style></style><div class="headerblock">
<div class="title">Demo: Section ILT</div>
<div class="authorgroup">Robert Beezer</div>
<div class="date">Math 290, Fall 2013<br>April 15, 2014</div>
</div>
︡83c17bfd-f99a-4d51-b5a3-4aa7a10ee75d︡︡
︠84cbc0bf-ec37-4862-b1f2-19dbb6d128c5x︠
%html
<div class="section"><div class="heading">
<div class="number">1</div>
<div class="title">Injective Linear Transformations</div>
</div></div>
︡396b53dc-bed2-4a6d-8922-739f3bdd3437︡︡
︠fdf6aae0-1d82-4a53-b136-8f682b8aecc7x︠
%html
<p>Two carefully-crafted linear transformations: <tt class="code">T</tt> is injective, <tt class="code">S</tt> is not.</p>
︡f1526bed-d1ba-4f00-8b46-cecf3e1a0452︡︡
︠d8b1e4dd-597b-4a14-afec-83dc47de2ca8︠
A = matrix(QQ, [[1, 2, 2], [3, 7, 6], [1, 2, 1], [2, 5, 7]])
T = linear_transformation(QQ^3, QQ^4, A, side='right')

︡b3883f5d-56a5-41f6-a1c0-3709c4dae9aa︡︡
︠9b233b25-1e48-4d36-831c-fcc3c2ae1e4b︠
T.is_injective()

︡1c6991bd-41a9-4233-b624-4ea84fe04c48︡︡
︠d85d4a5e-7761-4e36-b331-9217e85a78b8︠
T.kernel()

︡96c4ab7d-fddb-42b5-861c-4e69385ed6b2︡︡
︠0a4545aa-c3b3-4c4c-bf90-1f2fc8dd5cdb︠
B = matrix(QQ, [[0, 1, -2], [-1, 1, 3], [-2, 5, 0], [0, 2, -4]])
S = linear_transformation(QQ^3, QQ^4, B, side='right')

︡7824517f-acd0-4d0b-b561-f8973b78f3c2︡︡
︠b8512c15-8c53-471a-b7f1-f66cc89409c5︠
S.is_injective()

︡d187a622-b8ae-424f-87c4-331e6c60bb84︡︡
︠b0c4a295-2ef7-4ea1-8e36-74f1d4596e4e︠
K = S.kernel()
K

︡42a91e2b-6d03-4984-930e-29d82f82e32b︡︡
︠e1bc6293-0471-4597-889b-9d39006cf018x︠
%html
<p>We create two different inputs, which differ by a random vector from the kernel (which we hope is not simply the zero vector, a distinct possibility).  We always get the same output from <tt class="code">S</tt>, predictably.  If we try this with <tt class="code">T</tt> then the kernel vector is <em>always</em> the zero vector and the demonstration is very uninteresting.</p>
︡1653683d-8917-4c5b-a7a9-66acda52af04︡︡
︠e745a986-604b-48d7-937e-7daa899b4fb5︠
z = K.random_element()
u = random_vector(QQ, 3)
w = u + z
u, w, S(u), S(w), S(u) == S(w)

︡c2f0f680-5fa8-491f-8bf0-614aeb84a1ca︡︡

