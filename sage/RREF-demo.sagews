︠73cacdcd-f301-4d71-8780-b36f550968b6i︠
load('mathbook.css')

︡d82b967e-fdcc-4928-a373-9d1a8cf49717︡︡
︠639f2576-f0c1-42c6-a586-7cd240512819x︠
%html
<div>\(\)</div>
︡42f11740-1969-471b-87ab-ff16e7b651cc︡︡
︠2c01f1d8-9d8b-4bec-862c-b97ed9e0614ex︠
%html
<style></style><div class="headerblock">
<div class="title"></div>
<div class="authorgroup"></div>
<div class="date"></div>
</div>
︡c5a7793c-2bca-4689-8529-35f53b2d3d86︡︡
<div class="author-info">
<div class="author-name">Robert Beezer</div>
<div class="author-department"></div>
<div class="author-institution"></div>
<div class="author-email"></div>
</div>Math 290, Spring 2014︠22332097-d41f-46ff-9332-6bf0b4fb70bdx︠
%html
<p>To specify a matrix, first specify that your entries are rational numbers, <tt class="code">QQ</tt> in Sage.  This is very important, though difficult to explan why.  Then the number of rows and columns.  Follow this with a list of rows for the matrix.  We use square brackets, <tt class="code">[, ]</tt> to organize lists.  To actually see <tt class="code">A</tt> we just write it as the last line.</p>
︡46d46ef5-eca5-42a5-ba81-4a10df6c1c61︡︡
︠eec7f384-7ae2-4085-93b3-666c473a55e7︠
A = matrix(QQ, 3, 4, [[-1, 1, 1, 1], [2, -1, -2, -3], [-2, 2, 1, -1]])
A

︡632c2067-dd48-4168-a351-b8ee62d1f2b0︡︡
︠ed6c8a96-d20f-4eac-87c0-6b334f9223cdx︠
%html
<p>Then use the <tt class="code">.rref()</tt> method to compute the reduced row-echelon form.</p>
︡48a77558-3468-4b1e-82c5-6659c5a17358︡︡
︠02b8c094-3831-4420-810a-5404e7c5b2d0︠


︡7f33170b-2379-4a9b-a9b1-4a6cb1fa3089︡︡
︠9f768fdc-8b7c-40b7-9db4-c09746ad37b2x︠
%html
<p>Here is a larger example.</p>
︡259c014f-1765-4549-bb49-ba348fee4c16︡︡
︠297e8257-7486-47c9-8060-e99479017558︠
B = matrix(QQ, [[0, 0, -1, 3, 3, -1, 2, -1], [1, -5, 0, -4, 5, -2, 4, 4], [-1, 5, -1, 7, -2, 2, -5, -7], [-1, 5, 1, 1, -8, 3, -6, -3]])
B

︡02fbc53c-511f-41b6-bb97-45dc1b939c6f︡︡
︠f7f21566-a7c7-4d8e-a1a7-21366eafff32︠


︡7a745c9e-70df-43a2-9afb-981ed8f3c216︡︡

