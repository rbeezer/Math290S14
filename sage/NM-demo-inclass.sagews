︠e86b8c6d-9d1f-43c3-ae42-7b4c89f9a0a7i︠
load('mathbook.css')

︡6e2c848c-a66a-4193-856f-8aa9c5007cfc︡{"once":false,"file":{"show":false,"uuid":"8402523a-29b5-4ab8-9150-88fd1672bf5c","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=8402523a-29b5-4ab8-9150-88fd1672bf5c\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":false}︡
︠7ec9b24b-03b9-4fb1-a6e9-dcb69f395aeci︠
%html
<div>\(\)</div>
︡d47751bd-3436-446a-af09-ec46b7370583︡{"html":"<div>\\(\\)</div>"}︡
︠9e2e0b5c-a024-480b-a461-50785dea07afi︠
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
︡cf88e04d-ce69-4d70-afaf-b4ef5021264f︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\"></div>\n<div class=\"authorgroup\"><div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div></div>\n<div class=\"date\">Math 290, Fall 2013</div>\n</div>"}︡
︠4343f184-1970-4511-84f9-8f52dd67c7c2i︠
%html
<p>First, a nonsingular \(5\times 5\) matrix, created at random.</p>
︡ed14ea39-c9a2-40e7-b3f7-48416bef4298︡{"html":"<p>First, a nonsingular \\(5\\times 5\\) matrix, created at random.</p>"}︡
︠15f48c3f-5dc9-458d-b203-ef42140e08e7︠
A = random_matrix(QQ, 5, algorithm="unimodular", upper_bound=20)
A

︡0c14167d-8a7c-4e3b-928c-bd2bde574612︡{"stdout":"[  0   1   2  -2   6]\n[ -1  -3  -7   4  -8]\n[ -2  -5 -11   7 -16]\n[  0  -2  -4   5 -16]\n[  1   4  14  -4  -3]\n"}︡
︠bae8b3ae-37a2-4bab-9198-3e2926953097i︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡80cba8dd-4759-4350-b908-a744284aa95e︡{"html":"<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>"}︡
︠365a5a2b-8196-4848-9c54-d95f316e7680︠
A.augment(zero_vector(5)).rref()
︡06537a84-1376-44af-a62b-6e7e0df262fb︡{"stdout":"[1 0 0 0 0 0]\n[0 1 0 0 0 0]\n[0 0 1 0 0 0]\n[0 0 0 1 0 0]\n[0 0 0 0 1 0]\n"}︡
︠420867f9-47fe-4e78-811d-27d9eb9c21a3︠
A.rref()

︡4dcc6c7c-dada-4591-85ae-8e60bc71722c︡{"stdout":"[1 0 0 0 0]\n[0 1 0 0 0]\n[0 0 1 0 0]\n[0 0 0 1 0]\n[0 0 0 0 1]\n"}︡
︠896b912b-c198-46ae-a7be-6cb0525a6b62i︠
%html
<p>Build some random vectors, augment and row-reduce.  Always a unique solution to the linear system represented by the augmented matrix.</p>
︡023a4c8e-73a9-47a9-96ad-0b2b2d671ad9︡{"html":"<p>Build some random vectors, augment and row-reduce.  Always a unique solution to the linear system represented by the augmented matrix.</p>"}︡
︠1c86df4a-efe4-470d-b94f-56889d4de63a︠
A.augment(random_vector(ZZ, 5)).rref()
︡e58b4761-3045-463c-b5f9-a65e490f2acc︡{"stdout":"[   1    0    0    0    0  -18]\n[   0    1    0    0    0   64]\n[   0    0    1    0    0  -64]\n[   0    0    0    1    0 -138]\n[   0    0    0    0    1  -35]\n"}︡
︠a9e3a81d-917d-4c4b-a327-e23f735a108e︠


︡af88fb14-1234-4443-9c93-3b4fc5ab94a9︡︡
︠203d6398-a06a-48df-ac7e-0cd8897269f9i︠
%html
<p>Cheap, easy and powerful:</p>
︡0a5595f8-fc9f-498f-ac61-8d57d37585a7︡{"html":"<p>Cheap, easy and powerful:</p>"}︡
︠60723063-ecfd-4837-b086-9972db3dcc7f︠
A.is_singular()

︡58bfc0ec-62b1-422c-96b1-c31eed9ebb16︡{"stdout":"False\n"}︡
︠c5b8c6d9-98df-4e7f-a760-81668c9f8385i︠
%html
<p>Now, a carefully crafted singular matrix.</p>
︡697cb914-0220-47dc-b494-655aa90c565d︡{"html":"<p>Now, a carefully crafted singular matrix.</p>"}︡
︠ea118f42-2fcc-454f-af38-683831813c61︠
B = matrix(QQ, [[7,-1,-12,21,-8], [-3,3,0,-9,6], [3,3,-12,9,0], [2,3,-10,6,1], [-2,2,0,-6,4]])
B

︡90dc1211-2ce2-4b5b-b412-94c5fe70de35︡{"stdout":"[  7  -1 -12  21  -8]\n[ -3   3   0  -9   6]\n[  3   3 -12   9   0]\n[  2   3 -10   6   1]\n[ -2   2   0  -6   4]\n"}︡
︠cba1fd32-3d1c-4c4d-80c2-7ff133dd121bi︠
%html
<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>
︡0066f0d0-16fe-47a7-8d18-bc7372d49fa7︡{"html":"<p>Augment with the zero vector and row-reduce (Definition NM), or don't augment (Theorem NMRRI).</p>"}︡
︠c6677911-511b-41b9-b843-fa8c217aa346︠
B.rref()
︡7c074693-ff2b-415b-98fd-d12d8ab6ecf5︡{"stdout":"[ 1  0 -2  3 -1]\n[ 0  1 -2  0  1]\n[ 0  0  0  0  0]\n[ 0  0  0  0  0]\n[ 0  0  0  0  0]\n"}︡
︠b6b9a57f-12c6-483e-a058-c16863ea8fe9︠


︡ba582bca-0ecf-4047-841f-5e9c3bee5850︡︡
︠990fa923-28e1-4528-93c9-2f493c741f4fi︠
%html
<p>Cheap, easy and powerful:</p>
︡a9b23a5c-419e-48f5-90cb-60829eaf4915︡{"html":"<p>Cheap, easy and powerful:</p>"}︡
︠bc64d75b-bd3f-446a-8e00-1e590c847722︠
B.is_singular()

︡59333dc1-37b9-4143-9113-6f0990cd97bf︡{"stdout":"True\n"}︡
︠c52deaee-1689-4213-93a1-079f747a269ai︠
%html
<p>Two carefully crafted vectors for linear systems with <tt class="code">B</tt> as coefficient matrix.</p>
︡075811e5-eec1-4ebc-8d53-b0e9e858936a︡{"html":"<p>Two carefully crafted vectors for linear systems with <tt class=\"code\">B</tt> as coefficient matrix.</p>"}︡
︠d0b7342f-bdfb-4372-b9fb-45e5fcf44f77︠
c = vector(QQ, [17,-15,-3,-5,-10])
d = vector(QQ, [-3,1,-2,1,2])

︡190c4536-cba7-43de-81ed-7225b1b635db︡
︠2c83df40-b892-4c4c-8324-b2093c539df8i︠
%html
<p>Which column vectors will create consistent systems? (Stay tuned.)</p>
︡bb8b2648-d238-4e3b-b149-bda74b4ca0f2︡{"html":"<p>Which column vectors will create consistent systems? (Stay tuned.)</p>"}︡
︠c9de7093-066c-464b-8da6-a769bd0a1584︠
B.augment(d).rref()
︡d0db38b1-9d05-4665-b7f1-4993083d43ad︡{"stdout":"[ 1  0 -2  3 -1  0]\n[ 0  1 -2  0  1  0]\n[ 0  0  0  0  0  1]\n[ 0  0  0  0  0  0]\n[ 0  0  0  0  0  0]\n"}︡
︠81c8854f-e0e6-4bd0-93e4-8ea9bb5e057a︠


︡ed61cf61-70f0-453c-a5cd-f0b907b7b686︡︡
︠99881ae1-6d51-458f-88d0-d1661a488683i︠
%html
<p>A null space is called a “right kernel” in Sage.</p>
︡8a36e64f-5fdd-45ed-8510-5913cc2210b9︡{"html":"<p>A null space is called a “right kernel” in Sage.</p>"}︡
︠13019b1c-9863-4d3b-9cd4-4ed6b35b3925︠
NS = B.right_kernel()
NS.list()

︡da292024-28bf-43be-b609-4485c3d9321c︡︡
︠cb3d339f-0cc7-436d-83f8-d057af64a610i︠
%html
<p>We can test membership in the null space.</p>
︡adb3c62c-10c2-4bb4-9a62-f4401fa7932a︡{"html":"<p>We can test membership in the null space.</p>"}︡
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









