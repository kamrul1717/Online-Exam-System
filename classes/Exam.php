<?php 
    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/Database.php');
	include_once ($filepath.'/../helpers/Format.php');

	class Exam{
		private $db;
		private $fm;
		public function __construct(){
			$this->db = new Database();
			$this->fm = new Format();
		}
		public function getQusByOrder(){
			$query = "SELECT * FROM tbl_ques ORDER BY quesNO ASC";
			$result = $this->db->select($query);
			return $result;
		}
		
		public function delQuestion($quesNo){
			$tables = array("tbl_ques","tbl_ans");
			foreach($tables as $table){
					$delquery = "DELETE FROM $table WHERE quesNo='$quesNo'";
					$deldata = $this->db->delete($delquery);
				}
				if($deldata){
				$msg = "<span class='success'>Data deleted successfully...</span>";
				return $msg;
				}else{
					$msg = "<span class='error'>Data not deleted...</span>";
					return $msg;
				}
		}
		
		public function getTotalRows(){
			$query = "SELECT * FROM tbl_ques";
			$getresult = $this->db->select($query);
			$total = $getresult->num_rows;
			return $total;
		}
		
		public function getQuestion(){
			$query = "SELECT * FROM tbl_ques";
			$getdata = $this->db->select($query);
			$result = $getdata->fetch_assoc();
			return $result;
		}
		
		public function getQuesByNum($number){
			$query = "SELECT * FROM tbl_ques WHERE quesNO = '$number'";
			$getdata = $this->db->select($query);
			$result = $getdata->fetch_assoc();
			return $result;
		}
		
		public function getAnswer($number){
			$query = "SELECT * FROM tbl_ans WHERE quesNO = '$number'";
			$getdata = $this->db->select($query);
			return $getdata;
		}
		
		public function addQuestion($data){
			$quesNo = mysqli_real_escape_string($this->db->link, $data['quesNo']);
			$ques = mysqli_real_escape_string($this->db->link, $data['ques']);
			$ans = array();
			$ans[1] = $data['ans1'];
			$ans[2] = $data['ans2'];
			$ans[3] = $data['ans3'];
			$ans[4] = $data['ans4'];
			$rightAns = mysqli_real_escape_string($this->db->link, $data['rightAns']);
			$query = "INSERT INTO tbl_ques(quesNo, ques) VALUES('$quesNo', '$ques')";
			$inset_row = $this->db->insert($query);
			if($inset_row){
				foreach($ans as $key => $ansName){
					if($ansName != ''){
						if($rightAns == $key){
							$rquery = "INSERT INTO tbl_ans(quesNo, rightAns, ans) VALUES('$quesNo', '1', '$ansName')";
						}else{
							$rquery = "INSERT INTO tbl_ans(quesNo, rightAns, ans) VALUES('$quesNo', '0', '$ansName')";
						}
						$insetrow = $this->db->insert($rquery);
						if($insetrow){
							continue;
						}else{
							die('Error..');
						}
					}
				}
				$msg = "<span class='success'>Question added Successfully..</span>";
				return $msg;
			}
		}
	}

?>