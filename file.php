<?php
//    $myfile = fopen("negative.txt", "r") or die("Unable to open file!");

    $test = "down";

    $classification = checkStatus($test);
    
    echo "The classification of ".$test." is ".$classification;
/*    $myfile = fopen("positive.txt", "r") or die("Unable to open file!");
 //   while(!feof($myfile)) {
        //echo fgets($myfile) . "<br>";
      
        $tmp = fgets($myfile);
        echo "<br />The length of the string is : ".strlen($tmp)."<br />";

    	var_dump($tmp);

        echo "<br />after the crap<br />";
        
        $tmp = substr($tmp,0,(strlen($tmp)-2));
    	
        var_dump($tmp);
        echo "<br />The length of the string is : ".strlen($tmp);
        var_dump($tmp);
        if($test == $tmp){
            echo "We have a match";
        }


        $pos = strpos($test, $tmp);

        if ($pos !== false) {
        echo "We found it";
        }
    //}

    fclose($myfile);
*/

function checkStatus($word) {
    $status="";
    $myfile = fopen("positive.txt", "r") or die("Unable to open file!");
    while(!feof($myfile)) {
        $tmp = fgets($myfile);
        $tmp = substr($tmp,0,(strlen($tmp)-2));        
        if($word == $tmp){
            $status = "positive";
            return $status;                       
        }
    }
    $myfile2 = fopen("negative.txt", "r") or die("Unable to open file!");
    while(!feof($myfile2)) {
        $tmp = fgets($myfile2);
        $tmp = substr($tmp,0,(strlen($tmp)-3));        
        if($word == $tmp){
            $status = "negative";
            return $status;        
        }
    }
    $status = "unknown";
    fclose($myfile);
    fclose($myfile2);
    return $status;
}

?>