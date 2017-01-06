<DOCTYPE! html>
<html>
<head>
	<title>Homepage</title>
     <link href="fonts.googleapis.com/css.css" media="all" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="styles/style.css">
      <script type="text/javascript">
     
     function openPage(action){
              document.emotions.action=action;
              document.emotions.submit();
     }
     </script>
</head>
<body>
    <div id="header">
        <div class="container">
            <a href="home.php"><img src="styles/images/LogoMakr.png" alt="Emotyful" title="Emotyful" height="20px" /></a>
        </div>
    </div>
    <div id="content">
        <div class="container">
             <div class="info">
                 <h1>How are you feeling now?</h1>
            </div>
            
      <div class="picks">

        <div class="div"></div>
            <fieldset>
                <form name="emotions" action="default.php" method="POST">
                    <table>
                        <tr>
                            <td>
                               <input type="image" src="emojis/1f600.png" class="emoji" width="200" height="200" onClick=openPage("happy.php")>
                            </td>
                            <td>
                                <input type="image" src="emojis/1f618.png" class="emoji" width="200" height="200" onClick=openPage("romantic.php")>
                            </td>
                        </tr>
                        <tr>
                           <td>
                               <input type="image" src="emojis/2639.png" class="emoji"width="200" height="200" onClick=openPage("sad.php")>
                            </td>
                            <td>
                                <input type="image" src="emojis/1f608.png" class="emoji"width="200" height="200" onClick=openPage("evil.php")>
                            </td>
                        </tr>
                    </table>
                </form>
            </fieldset>
            </div>  
        </div>
    </div>
    <div>
        <ul id="nav">
            <!-- <li id="navli"><a class="active" href="home.php">Home</a></li>
            <li id="navli"><a class="button" href="#contact">Contact</a></li> -->
            <li id="navli"><a class="button" href="#about">About</a></li>
	    </ul>
    </div>
    
    
    
    <div id="about" class="overlay">
	<div class="popup">
		<h2>About Us</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			<h4>We are sufficient coders.
                Coding everyday for those that can't.Keeping the inter-verse safe from all hideous site designs.
                We are artists.
            </h4>
		</div>
	</div>
        
    
</div>
</body>
</html>