︠73cacdcd-f301-4d71-8780-b36f550968b6i︠
load('mathbook.css')

︡af6eff9b-a7ef-4d05-8865-0c953215d54f︡{"once":false,"file":{"show":false,"uuid":"8402523a-29b5-4ab8-9150-88fd1672bf5c","filename":"mathbook.css"}}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"$.get(\"/blobs/mathbook.css?uuid=8402523a-29b5-4ab8-9150-88fd1672bf5c\", function(css) { $('<style type=text/css></style>').html(css).appendTo(\"body\")});"},"once":false}︡
︠639f2576-f0c1-42c6-a586-7cd240512819i︠
%html
<div>\(\)</div>
︡23943696-b6b9-4a60-a65c-ac58f5946e27︡{"html":"<div>\\(\\)</div>"}︡
︠7b1eb3b0-a143-4556-a1a2-5a9952da9a22︠

︡ff30d0c9-0b5b-49e3-b764-35097ad780b4︡
︠2c01f1d8-9d8b-4bec-862c-b97ed9e0614ei︠
%html
<style></style><div class="headerblock">
<div class="title"></div>
<div class="authorgroup"></div>
<div class="date"></div>
</div>
<div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div>Math 290, Spring 2014
︡96a279b8-b61a-4fb7-aa0e-d1c62777cab4︡{"html":"<style></style><div class=\"headerblock\">\n<div class=\"title\"></div>\n<div class=\"authorgroup\"></div>\n<div class=\"date\"></div>\n</div>\n<div class=\"author-info\">\n<div class=\"author-name\">Robert Beezer</div>\n<div class=\"author-department\"></div>\n<div class=\"author-institution\"></div>\n<div class=\"author-email\"></div>\n</div>Math 290, Spring 2014"}︡
︠22332097-d41f-46ff-9332-6bf0b4fb70bdi︠
%html
<p>To specify a matrix, first specify that your entries are rational numbers, <tt class="code">QQ</tt> in Sage.  This is very important, though difficult to explan why.  Then the number of rows and columns.  Follow this with a list of rows for the matrix.  We use square brackets, <tt class="code">[, ]</tt> to organize lists.  To actually see <tt class="code">A</tt> we just write it as the last line.</p>
︡bda16064-8b7a-4638-b249-372006db9f03︡{"html":"<p>To specify a matrix, first specify that your entries are rational numbers, <tt class=\"code\">QQ</tt> in Sage.  This is very important, though difficult to explan why.  Then the number of rows and columns.  Follow this with a list of rows for the matrix.  We use square brackets, <tt class=\"code\">[, ]</tt> to organize lists.  To actually see <tt class=\"code\">A</tt> we just write it as the last line.</p>"}︡
︠eec7f384-7ae2-4085-93b3-666c473a55e7︠
A = matrix(QQ, 3, 4, [[-1, 1, 1, 1], [2, -1, -2, -3], [-2, 2, 1, -1]])
A

︡5dc98863-9e38-4e66-9189-4466701eb1f7︡{"stdout":"[-1  1  1  1]\n[ 2 -1 -2 -3]\n[-2  2  1 -1]\n"}︡
︠ed6c8a96-d20f-4eac-87c0-6b334f9223cdi︠
%html
<p>Then use the <tt class="code">.rref()</tt> method to compute the reduced row-echelon form.</p>
︡9e3827e4-4125-4342-b2d7-eb89e208128f︡{"html":"<p>Then use the <tt class=\"code\">.rref()</tt> method to compute the reduced row-echelon form.</p>"}︡
︠02b8c094-3831-4420-810a-5404e7c5b2d0︠
A.rref()

︡7296aa92-ef93-436b-926f-85ba3d17dfa0︡{"stdout":"[ 1  0  0  1]\n[ 0  1  0 -1]\n[ 0  0  1  3]\n"}︡
︠9f768fdc-8b7c-40b7-9db4-c09746ad37b2i︠
%html
<p>Here is a larger example.</p>
︡658b6d75-f9c9-4bef-adc6-6979cc20a6fa︡{"html":"<p>Here is a larger example.</p>"}︡
︠297e8257-7486-47c9-8060-e99479017558︠
B = matrix(QQ, [[0, 0, -1, 3, 3, -1, 2, -1], [1, -5, 0, -4, 5, -2, 4, 4], [-1, 5, -1, 7, -2, 2, -5, -7], [-1, 5, 1, 1, -8, 3, -6, -3]])
B

︡5b2659ea-60df-4c38-89f4-9a1f5f1ba236︡{"stdout":"[ 0  0 -1  3  3 -1  2 -1]\n[ 1 -5  0 -4  5 -2  4  4]\n[-1  5 -1  7 -2  2 -5 -7]\n[-1  5  1  1 -8  3 -6 -3]\n"}︡
︠98276d38-fda9-402a-8f55-15fc723f68f9︠

︠f7f21566-a7c7-4d8e-a1a7-21366eafff32︠
B.rref()

︡4d2c4de3-2de6-4d8e-b328-ca89e770ebd9︡{"stdout":"[ 1 -5  0 -4  5  0 -2  0]\n[ 0  0  1 -3 -3  0  1  3]\n[ 0  0  0  0  0  1 -3 -2]\n[ 0  0  0  0  0  0  0  0]\n"}︡
︠1cfef505-c1d8-4122-b9e8-1dadaef31070︠
B.nrows()
︡62791aec-84f0-46fd-a5f0-f0bddaf37abc︡{"stdout":"4\n"}︡
︠ef012077-a348-4ed6-b95d-e9166cf9c271︠
B.ncols()
︡45f1c7f0-66d2-4066-ab80-eaba441785fb︡{"stdout":"8\n"}︡
︠fbe3590b-b987-478d-acee-39202e96bff3︠









