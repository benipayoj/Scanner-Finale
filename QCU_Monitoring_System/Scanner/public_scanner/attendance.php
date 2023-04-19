<?php

	date_default_timezone_set("Asia/Manila");	

	if(isset($_POST['faculty'])){
		$output = array('error'=>false);

		include 'conn.php';
		include 'timezone.php';

		$faculty_qr = $_POST['faculty'];
		$status = $_POST['status'];

		$sql = "SELECT * FROM faculty WHERE faculty_qr = '$faculty_qr'";
		$query = $conn->query($sql);

		if($query->num_rows > 0){

			$row = $query->fetch_assoc();
			$id = $row['id'];
			$facultyID = $row['facultyID'];
			$date_now = date('Y-m-d');

			if($status == 'in'){

				$sql = "SELECT * FROM attendance WHERE facultyID = '$facultyID' AND date = '$date_now' AND time_in IS NOT NULL AND status != '0'";
				// $sql = "SELECT * FROM attendance WHERE facultyID = '$facultyID' AND date = '$date_now' AND time_in IS NOT NULL";
				$query = $conn->query($sql);

				if($query->num_rows > 0){

					$output['error'] = true;
					$output['message'] = 'You have timed in for today';
				}else{
					//updates
					$facultyID = $row['facultyID'];
					// $sched = $row['schedule_id'];
					$time = date("h:i:sa"); // Input time in 12-hour format
					$time_24hrs_format = date('H:i:s', strtotime($time));

					// $sql = "SELECT * FROM schedule_faculty WHERE id = '$sched'";
					// $squery = $conn->query($sql);

					// $srow = $squery->fetch_assoc();
					// $logstatus = ($lognow > $srow['time_in']) ? 1 : 0;
					// $logstatus = ($srow['time_in'] > $time_24hrs_format ) ? 0 : 1;
					//
					$nsql = "INSERT INTO attendance (facultyID, date, time_in, status) VALUES ('$facultyID', '$date_now', '$time', '1')";

					if($conn->query($nsql)){
						$output['message'] = 'Time in: '.$row['faculty_firstname'].' '.$row['faculty_lastname'].' '.'"Please take a screenshot"';
					}
					else{
						$output['error'] = true;
						$output['message'] = $conn->error;
					}
				}

			}else{

				// $sql = "SELECT *, attendance.id AS uid FROM attendance LEFT JOIN faculty ON faculty.facultyID = attendance.facultyID WHERE attendance.facultyID = '$facultyID' AND date = '$date_now'";
				$sql = "SELECT * FROM attendance WHERE facultyID = '$facultyID' AND date = '$date_now' AND status = '1'";
				$query = $conn->query($sql);
				
				if($query-> num_rows <= 0){
					$output['error'] = true;
					$output['message'] = 'Cannot Timeout. No time in.';
				}else{
					$time = date("h:i:sa");
					$nrow = $query->fetch_assoc();
					// $logstatus = ($lognow > $row['time_out']) ? 1 : 0;
					if($nrow['time_out'] != '00:00:00'){
						$output['error'] = true;
						$output['message'] = 'You have timed out for today';
					}else{								
						$sql = "UPDATE attendance SET time_out = '$time', status ='0' WHERE facultyID = '$facultyID' AND status ='1'";

						if($conn->query($sql)){
							$output['message'] = 'Time out: '.$row['faculty_firstname'].' '.$row['faculty_lastname'].'';
						}
						else{
							$output['error'] = true;
							$output['message'] = $conn->error;
						}
					}
					
				}
			}
		}
		else{
			$output['error'] = true;
			$output['message'] = 'QR Code not found please Try Again!';
		}
		
	}
	
	echo json_encode($output);

?>