<?php
echo "started executing<br />";

require_once('twitter_proxy.php');

echo "After reading in the twitter_proxy file<br />";

// Twitter OAuth Config options

$oauth_access_token = '3335584408-veD39gDZhClxMSzdnA8uCpmOjwYpQsWt2GaBoCQ';
$oauth_access_token_secret = 'YdmxyLMfL9yphLxVBMcZpzK8QMo79xOf1rG9Zz9OcWcJ7';
$consumer_key = 'WPjBiLOTrKrjfC2Bz7mARMdX3';
$consumer_secret = 'fX87W6Lc2umsq3z2Z8kD6uKbPtMVR703pmwgaCLBIezUGrUgvW';

$user_id = '3335584408';
$screen_name = 'eoinmurphy1994';
$count = 1;


$twitter_url = 'https://twitter.com/search?q=bmw&src=typd.json';
$twitter_url .= '?user_id=' . $user_id;
$twitter_url .= '&screen_name=' . $screen_name;
$twitter_url .= '&count=' . $count;

echo "The url is : ".$twitter_url;

// Create a Twitter Proxy object from our twitter_proxy.php class


$twitter_proxy = new TwitterProxy(
	$oauth_access_token,			// 'Access token' on https://apps.twitter.com
	$oauth_access_token_secret,		// 'Access token secret' on https://apps.twitter.com
	$consumer_key,					// 'API key' on https://apps.twitter.com
	$consumer_secret,				// 'API secret' on https://apps.twitter.com
	$user_id,						// User id (http://gettwitterid.com/)
	$screen_name					// Twitter handle
);

//$count							// The number of tweets to pull out
// Invoke the get method to retrieve results via a cURL request
$tweets = $twitter_proxy->get($twitter_url);

echo $tweets;


?>