<?php

$host="localhost";
$user="root";
$pass="godofwar";
$db="emotion_reccomendation_system";

$db_handle=mysqli_connect($host,$user,$pass,$db);

$query="SELECT video_url FROM videocollection,evil WHERE vid_id=video_id";

$result=mysqli_query($db_handle,$query);

$row=mysqli_fetch_assoc($result);

$url1=$row['video_url'];

$row=mysqli_fetch_assoc($result);

$url2=$row['video_url'];

$row=mysqli_fetch_assoc($result);

$url3=$row['video_url'];

$row=mysqli_fetch_assoc($result);

$url4=$row['video_url'];

$query="SELECT music_url FROM musiccollection,evil WHERE mus_id=music_id";

$result=mysqli_query($db_handle,$query);

$row=mysqli_fetch_assoc($result);

$url5=$row['music_url'];

$row=mysqli_fetch_assoc($result);

$url6=$row['music_url'];

$row=mysqli_fetch_assoc($result);

$url7=$row['music_url'];

$row=mysqli_fetch_assoc($result);

$url8=$row['music_url'];

$query="SELECT meme_url FROM memescollection,evil WHERE mem_id=meme_id";

$result=mysqli_query($db_handle,$query);

$row=mysqli_fetch_assoc($result);

$url9=$row['meme_url'];

$row=mysqli_fetch_assoc($result);

$url10=$row['meme_url'];

$row=mysqli_fetch_assoc($result);

$url11=$row['meme_url'];

$row=mysqli_fetch_assoc($result);

$url12=$row['meme_url'];





//echo "<a href='$url' target=_blank class=linkwrap>";

?>



<!DOCTYPE html>
<html>
<head>
    <link href="fonts.googleapis.com/css.css" media="all" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="evilstyle.css">
</head>
<body>

	<ul id="nav">
		<li id="navli"><a class="active" href="home.php">Home</a></li>
		<li id="navli"><a href="#contact">Contact</a></li>
		<li id="navli"><a href="#about">About</a></li>
	</ul>
	
	<div id="videos">
		<h4>Videos</h4>
		<ul>
			<li>
				<div>
					<a href=<?php echo"$url1"; ?> class='linkwrap'>
                        <div class="blocker"></div>
                        <iframe width="240" height="150" src=<?php echo"$url1"; ?> frameborder='0' ></iframe>
                    </a>
				</div>
			</li>
			<li>
				<div>
                    <a href=<?php echo"$url2"; ?> class='linkwrap'>
                        <div class="blocker"></div>
                        <iframe width="240" height="150" src=<?php echo"$url2"; ?> frameborder='0' ></iframe>
                    </a>
				</div>
			</li>
			<li>
				<div>
					<a href=<?php echo"$url3"; ?> class='linkwrap'>
                        <div class="blocker"></div>
                        <iframe width="240" height="150" src=<?php echo"$url3"; ?> frameborder='0' ></iframe>
                    </a>
				</div>
			</li>
			<li>
				<div>
                    <a href=<?php echo"$url4"; ?> class='linkwrap'>
                        <div class="blocker"></div>
                        <iframe width="240" height="150" src=<?php echo"$url4"; ?> frameborder='0' ></iframe>
                    </a>
				</div>
			</li>
		</ul>
	</div>
    <div></div>
	<br>
    
	<div id="music">
	<h4>Music</h4>
		<ul>
			<li>
				<div>
                    <a href=<?php echo"$url5"; ?> class='linkwrap'>
                        <div class="blocker"></div>
                        <iframe width="240" height="150" src=<?php echo"$url5"; ?> frameborder='0' ></iframe>
                    </a>
				</div>
			</li>
			<li>
				<div>
					<a href=<?php echo"$url6"; ?> class='linkwrap'>
                        <div class="blocker"></div>
                        <iframe width="240" height="150" src=<?php echo"$url6"; ?> frameborder='0' ></iframe>
                    </a>
				</div>
			</li>
			<li>
				<div>
                    <a href=<?php echo"$url7"; ?> class='linkwrap'>
                        <div class="blocker"></div>
                        <iframe width="240" height="150" src=<?php echo"$url7"; ?> frameborder='0' ></iframe>
                    </a>
				</div>
			</li>
			<li>
				<div>
				    <a href=<?php echo"$url8"; ?> class='linkwrap'>
                        <div class="blocker"></div>
                        <iframe width="240" height="150" src=<?php echo"$url8"; ?> frameborder='0' ></iframe>
                    </a>
				</div>
			</li>
		</ul>
	</div>
	<br>
	<div id="memes">
		<h4>Memes</h4>
		<ul>
			<li>
				<div>
                  		<a href=<?php echo"$url9"; ?> class='linkwrap'>
                            <div class="blocker"></div>
                            <img width="240" height="170" src=<?php echo"$url9"; ?> frameborder='0'  >
                        </a>
				</div>

			</li>

			<li>
				<div>
							<a href=<?php echo"$url10"; ?> class='linkwrap'>
                                <div class="blocker"></div>
                                <img width="240" height="170" src=<?php echo"$url10"; ?> frameborder='0' >
                            </a>
				</div>

			</li>
			<li>
				<div>
							<a href=<?php echo"$url11"; ?> class='linkwrap'>
                                <div class="blocker"></div>
                                <img width="240" height="170" src=<?php echo"$url11"; ?> frameborder='0' >
                            </a>
				</div>

			</li>
			<li>
				<div>
							<a href=<?php echo"$url12"; ?> class='linkwrap'>
                                <div class="blocker"></div>
                                <img width="240" height="170" src=<?php echo"$url12"; ?> frameborder='0' >
                            </a>
				</div>

			</li>
		</ul>
	</div>

</body>
</html>