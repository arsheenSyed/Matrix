<?php

// include("menu.php");

//including the database connection file
include_once("config.php");

//fetching data in descending order (lastest entry first)
$result = mysqli_query($mysqli, "SELECT * FROM cust_feedback ORDER BY session_date DESC"); 
?>
<style type="text/css">
        .zummitInfo {
            width: 90%;
            border-collapse: collapse;
			font-family: Verdana;
			font-size: 12px;
        }

		.zummitInfo th {
				border: 1px solid grey;	
				background-color: #FFFF00;
				padding: 5px;
				cursor: pointer;
			}
 
            .zummitInfo td {
                border: 1px solid grey;
				padding: 2px;
            }
 
                .zummitInfo td:nth-child(even) {
                    background-color: #E4FFB7;
					text-align: center;
                }
 
                .zummitInfo td:nth-child(odd) {
                    background-color: #EFFFD2;					
                }
 
            .zummitInfo tr:first-child td {
                text-align: center;
                font-weight: bolder;
                background-color: #80B327;
                color: white;
            }
    </style>

<body style="font-family:Arial Narrow">

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search here..">
<table class="zummitInfo" id="myTable">
	<tr>
		<th>Program Name</th>
		<th>Customer Name</th>
		<th>Challenges</th>
		<th>Session Date</th>
	</tr>
	<?php 
	while($res = mysqli_fetch_array($result)) { 		
		echo "<tr>";
		echo "<td>".$res['program_name']."</td>";
		echo "<td>".$res['cust_name']."</td>";
		echo "<td>".$res['challenges_rating']."</td>";
        echo "<td>".$res['session_date']."</td>";
	}
	?>
	</table>
</body>
</html>
