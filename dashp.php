<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'ncw');
$db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);

$usr= $_SESSION['login_user'] ;
$sql = "SELECT id FROM users WHERE username = '$usr' ";
$result = mysqli_query($db,$sql);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
$r = $row['id'] ;

$sql = "SELECT name,branch,year,sec,email,facultyid FROM faculty WHERE id = '$r'";
$result = mysqli_query($db,$sql);
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);

$name = $row['name'] ;
$sec = $row['sec'] ;
$year = $row['year'] ;
$branch = $row['branch'] ;
$email=$row['email'];
$eid=$row['facultyid'];
$link = "./images/". $usr . ".jpg" ;
?>
 <script>
 	document.title="CW : HOME" ;
 </script>
 
 <div class="grid-container">
	<div class=" dash">
		<div class="ht"><h1>DASHBOARD</h1>
			
		</div>
		
		<div class= "inf">
		
			<img src="<?php echo $link ?>" alt="profile">
			
			<h3>NAME:<?php echo $name?></h3>
			<h3>YEAR:<?php echo $year?></h3>
			<h3>Faculty:<?php echo $branch?></h3>
			<h3><span id="c">Id:<?php echo $eid?></span></h3>

		</div>
		</div>
		
	<div class=" dash" >
		
		<div class= "ht"> <h1>UPCOMING EVENTS</h1></div>
		<marquee direction="up">
		<div class="inf">
		           
              <?php $sql = "SELECT info FROM notice" ; $result = mysqli_query($db,$sql); while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){ $title[] = $row['info']; };
                    echo '<ul class="notice-list">' ;
                     foreach($title as $t){
                      echo '<li class="notice-li">'.$t.'</li><br /><br />' ;
                     }
                     echo '</ul>' ;
              ?>
			</div>
		</marquee>
		</div>	
	</div>