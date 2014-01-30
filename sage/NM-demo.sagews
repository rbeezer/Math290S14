︠e86b8c6d-9d1f-43c3-ae42-7b4c89f9a0a7i︠
load('mathbook.css')

︡37f69e8a-8f93-4803-9b84-da1bd4c1358a︡︡
︠7ec9b24b-03b9-4fb1-a6e9-dcb69f395aecx︠
%html
<div>\(\)</div>
︡9e52e511-d6ae-4ffb-8e73-a4a118b99a7a︡︡
︠9e2e0b5c-a024-480b-a461-50785dea07afx︠
%html
<style></style><div class="headerblock">
<div class="title"></div>
<div class="authorgroup"><div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div></div>
<div class="date">Math 290, Fall 2013</div>
</div>
︡70fb530f-72b4-49f2-b043-a237f19ab085︡︡
︠4343f184-1970-4511-84f9-8f52dd67c7c2x︠
%html
<p>First, a nonsingular \(5\times 5\) matrix, created at random.</p>
︡839e5131-f97f-4dbf-a7a8-6f168637d8d8︡︡
︠15f48c3f-5dc9-458d-b203-ef42140e08e7︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A

︡4b500ce8-102f-425f-a6b5-b74bb3e0b49b︡︡
︠bae8b3ae-37a2-4bab-9198-3e2926953097x︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡a736648d-b146-4dd1-acd5-2bac6d730729︡︡
︠420867f9-47fe-4e78-811d-27d9eb9c21a3︠


︡4f9305c1-2fa9-4a60-9c14-d8486394d58c︡︡
︠896b912b-c198-46ae-a7be-6cb0525a6b62x︠
%html
<p>Build some random vectors, augment and row-reduce.  Always a unique solution to the linear system represented by the augmented matrix.</p>
︡9bfb299a-bc5d-4eea-9e2a-106b1936a7f0︡︡
︠a9e3a81d-917d-4c4b-a327-e23f735a108e︠


︡af88fb14-1234-4443-9c93-3b4fc5ab94a9︡︡
︠203d6398-a06a-48df-ac7e-0cd8897269f9x︠
%html
<p>Cheap, easy and powerful:</p>
︡3935bd9a-156a-4c65-9310-22bac289b7f3︡︡
︠60723063-ecfd-4837-b086-9972db3dcc7f︠
A.is_singular()

︡1e05bb5d-6ab4-444d-b82e-9d57538c7670︡︡
︠c5b8c6d9-98df-4e7f-a760-81668c9f8385x︠
%html
<p>Now, a carefully crafted singular matrix.</p>
︡610368c3-8ecc-4409-ae5d-338f08d8d5c5︡︡
︠ea118f42-2fcc-454f-af38-683831813c61︠
B = matrix(QQ, [[7,-1,-12,21,-8], [-3,3,0,-9,6], [3,3,-12,9,0], [2,3,-10,6,1], [-2,2,0,-6,4]])
B

︡bc18b3f1-820e-496e-9ccd-5fbfa48205a8︡︡
︠cba1fd32-3d1c-4c4d-80c2-7ff133dd121bx︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡661d7e5f-77b2-4197-9a54-3c6396ecea5a︡︡
︠b6b9a57f-12c6-483e-a058-c16863ea8fe9︠


︡ba582bca-0ecf-4047-841f-5e9c3bee5850︡︡
︠990fa923-28e1-4528-93c9-2f493c741f4fx︠
%html
<p>Cheap, easy and powerful:</p>
︡e2ba4fe2-0e3c-4352-947a-1f0506e004bc︡︡
︠bc64d75b-bd3f-446a-8e00-1e590c847722︠
B.is_singular()

︡4013d77f-7bb3-4b8e-9cc6-5da6c1556fad︡︡
︠c52deaee-1689-4213-93a1-079f747a269ax︠
%html
<p>Two carefully crafted vectors for linear systems with <tt class="code">B</tt> as coefficient matrix.</p>
︡62bab293-926a-44a8-a939-5f4c3f918d8b︡︡
︠d0b7342f-bdfb-4372-b9fb-45e5fcf44f77︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])

︡dc5e8429-90af-44a5-afe9-23bcefa4f25b︡︡
︠2c83df40-b892-4c4c-8324-b2093c539df8x︠
%html
<p>Which column vectors will create consistent systems? (Stay tuned.)</p>
︡f6293c16-6933-4fd9-9294-a9421d96b16f︡︡
︠81c8854f-e0e6-4bd0-93e4-8ea9bb5e057a︠


︡ed61cf61-70f0-453c-a5cd-f0b907b7b686︡︡
︠99881ae1-6d51-458f-88d0-d1661a488683x︠
%html
<p>A null space is called a “right kernel” in Sage.</p>
︡36216ba4-0c20-4a32-b4d7-29918fa9a34f︡︡
︠13019b1c-9863-4d3b-9cd4-4ed6b35b3925︠
NS = B.right_kernel()
NS.list()

︡da292024-28bf-43be-b609-4485c3d9321c︡︡
︠cb3d339f-0cc7-436d-83f8-d057af64a610x︠
%html
<p>We can test membership in the null space.</p>
︡eeb6fb3d-b2cc-4d61-961f-40ec24f3553b︡︡
︠6168baf3-731b-4768-8f55-bff42942e147︠
u = vector(QQ, [0,0,3,4,6])

︡950cd658-1a62-4353-b73e-0cb09845cc12︡︡
︠f1a66a9a-dcc4-4da7-95a7-9bb72b34e689︠


︡dd849ac4-a083-4884-9582-f5e170e28b1c︡︡
︠6d55127d-26a6-46a5-aa0b-acca5d2f0dd5︠
v = vector(QQ, [1,0,0,5,-2])

︡f7007d37-6114-49cb-87f5-d2cddecac883︡︡
︠500c35f0-fc15-41be-9b9e-f5cb6f8584d7︠


︡2bdd914b-37ef-450b-979a-b028371707c9︡︡

