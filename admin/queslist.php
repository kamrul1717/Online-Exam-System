<?php 
    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/inc/header.php');
	include_once ($filepath.'/../classes/Exam.php');
	$exm = new Exam();
?>
<?php 
	if(isset($_GET['delque'])){
		$quesNo = (int)$_GET['delque'];
		$delQue = $exm->delQuestion($quesNo);
	}
?>
<div class="main">
<h1>Admin Panel - Question List</h1>
<?php 
	if(isset($delQue)){
		echo $delQue;
	}
?>
	<div class="quelist">
		<table class="tblone">
			<tr>
				<th width="10%">NO</th>
				<th width="60%">Questions</th>
				<th width="30%">Action</th>
			</tr>
	<?php 
		$getdata = $exm->getQusByOrder();
		if($getdata){
			$i=0;
			while($result = $getdata->fetch_assoc()){
				$i++;
	
	?>
			<tr>
				<td><?php echo $i; ?></td>
				<td><?php echo $result['ques'];?></td>
				<td>
					<a onclick ="return confirm('Are you sure to Remove')" 
					href="?delque=<?php echo $result['quesNo'];?>">Remove</a>
				</td>
			</tr>
	<?php } } ?>
		</table>
	</div>
</div>
<?php include 'inc/footer.php'; ?>