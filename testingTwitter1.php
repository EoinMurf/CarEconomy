<?php
  require("./autoload.php");
  use Abraham\TwitterOAuth\TwitterOAuth;

/*
    Using POST I would pass in the search query, for example the car required...
    
    filter this into the query below and the php file will classify the required car.
    
    The file should be called every 5 seconds, which means that your customers are going to be viewing 
    real time sentiment analysis of the required car.
    
    You need to fix the unknow category!!! Remove hash tags, prepositions, or just ignore the unknown.
    
    If you ignore ....
    
        step 1 count all the tweets found.
        step 2 classify
        instead of using unknown use positive, negative and count which gives an indication of the amount 
        of positive and negative perception against the complete set.
        
        
*/
  $twitter_customer_key           = 'WPjBiLOTrKrjfC2Bz7mARMdX3';
  $twitter_customer_secret        = 'fX87W6Lc2umsq3z2Z8kD6uKbPtMVR703pmwgaCLBIezUGrUgvW';
  $twitter_access_token           = '3335584408-veD39gDZhClxMSzdnA8uCpmOjwYpQsWt2GaBoCQ';
  $twitter_access_token_secret    = 'YdmxyLMfL9yphLxVBMcZpzK8QMo79xOf1rG9Zz9OcWcJ7';

  $connection = new TwitterOAuth($twitter_customer_key, $twitter_customer_secret, $twitter_access_token, $twitter_access_token_secret);


/*
    You need to build the query here. Below we are looking for the text from the tweet which has
    the query string "bmw", in english, 100 tweets...etc. This returns json data.
*/

  $tweets = $connection->get("search/tweets", array(
    "q" => "#bmw",
    "lang" => "en",
    "count" => "100",
    "include_entities" => "true",
    "result_type" => "recent"
));

//var_dump($tweets);
/*
    Once you get the data from the query, using var_dump will give you an understanding of the structure
    of the data. We need to loop through this data using a foreach loop as seen below. We are essentially saying
    for each status within the result set reffered to within the bounds of the loop as tweet, access the text associated
    with the tweet.

    all we are doing here is printing out the text from the tweets returned.
*/


    $positive=0;
    $negative=0;
    $unknown=0;

foreach($tweets->statuses as $tweet)
{   
  $array = explode(" ", $tweet->text);
      
    foreach($array as $word){   
        $status = checkStatus($word);
        if($status == "positive"){
            $positive++;            
        }
        else if($status == "negative"){
            $negative++;
        }
        else{
             $unknown++;
        }
    }    
}

echo $positive.":".$negative.":".$unknown;


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
