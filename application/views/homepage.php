<html>
<head>
	<title>Tulisan</title>
</head>
	
<body>

<center>
<h2><b>Biota </b></h2>
<br>
<br>
<table  border="1">
	<tr>
		<th> <center>id</center></th>
		<th> <center>category_id<center></th>
		<th> <center>id_sub_category<center></th>
		<th> <center>appendiks_id<center></th>
		<th> <center>latin_name<center></th>
		<th> <center>local_name<center></th>
		<th> <center>english_name<center></th>
		<th> <center>character<center></th>
		<th> <center>image<center></th>
		<th> <center>created_by<center></th>
		<th> <center>date_created<center></th>
		<th> <center>updated_by<center></th>
		<th> <center>date_updated<center></th>
		
	</tr>
<head>
<?php foreach($master_biota as $rows) {
?>
<tr>
<td><?php echo $rows['id']; ?></td>
<td><?php echo $rows['category_id']; ?></td>
<td><?php echo $rows['id_sub_category']; ?></td>
<td><?php echo $rows['appendiks_id']; ?></td>
<td><?php echo $rows['latin_name']; ?></td>
<td><?php echo $rows['local_name']; ?></td>
<td><?php echo $rows['english_name']; ?></td>
<td><?php echo $rows['character']; ?></td>
<td><?php echo $rows['image']; ?></td>
<td><?php echo $rows['created_by']; ?></td>
<td><?php echo $rows['date_created']; ?></td>
<td><?php echo $rows['updated_by']; ?></td>
<td><?php echo $rows['date_updated']; ?></td>



</tr>
<?php }
?>
</head>



 </table>



</center>	
<form>
<input type="submit" class="btn btn-default" name="tambah" value="Tulis Baru"/>
<input type="submit" class="btn btn-default" name="ubah" value="update"/>
<input type="submit" class="btn btn-default" name="hapus" value="delete"/>


</form>
</body>

</html>
