<html>
<body>
<style>
h3 {
	text-align: center;
}
.formwrap {
    width: 600px;
    margin: auto;
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 0 20px 0;
    background: #fff9db;
}
.input {
	display: block;
    width: 100%;
    margin-top: 15px;
    font-size: 16px;
    padding: 5px;
}
.btn {
    padding: 10px;
    width: 200px;
    background: #2196f3;
    color: #fff;
    font-weight: bold;
    border: 0;
    margin: 15px auto 20px auto;
    display: block;
    text-align: center;
    text-decoration: none;
    cursor: pointer;
}
table {
    width: 100%;
    margin: auto;
}
</style>
<div class="formwrap">
<h3>Add Product</h3>
<form action="saveProd"  method="post">
<table>

<tr>
<td>Product Name</td><td><input type="text" name="product_name"></td>
</tr>

<tr>
<td>Product Price</td><td><input type="number" name="product_price"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" class="btn" value="Save Product"></th>
</tr>
</table>
</form>
</div>
</body>


</html>