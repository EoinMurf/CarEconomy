<?php

/**
 * Similar to Facebook Apps, you'll need to create a Twitter app first: https://apps.twitter.com/
 * 
 * Code below from http://stackoverflow.com/questions/12916539/simplest-php-example-retrieving-user-timeline-with-twitter-api-version-1-1 by Rivers 
 * with a few modfications by Mike Rogers to support variables in the URL nicely
 */

class TwitterProxy {

	/**
	 * The tokens, keys and secrets from the app you created at https://dev.twitter.com/apps
	 */
	private $config = [
		'use_whitelist' => true, // If you want to only allow some requests to use this script.
		'base_url' => ''
	];//https://api.twitter.com/1.1/
	
	/**
	 * Only allow certain requests to twitter. Stop randoms using your server as a proxy.
	 */
/*	private $whitelist = [];
	$oauth_access_token	= "3335584408-veD39gDZhClxMSzdnA8uCpmOjwYpQsWt2GaBoCQ";
	$oauth_access_token_secret = "YdmxyLMfL9yphLxVBMcZpzK8QMo79xOf1rG9Zz9OcWcJ7";
	$consumer_key =	"WPjBiLOTrKrjfC2Bz7mARMdX3";
	$consumer_secret = "fX87W6Lc2umsq3z2Z8kD6uKbPtMVR703pmwgaCLBIezUGrUgvW";
	$user_id = "3335584408";
	$screen_name = "eoinmurphy1994";
	$count = 1;
	*/ 
	public function __construct($oauth_access_token, $oauth_access_token_secret, $consumer_key, $consumer_secret, $user_id, $screen_name, $count = 1) {

		$this->config = array_merge($this->config, compact('oauth_access_token', 'oauth_access_token_secret', 'consumer_key', 'consumer_secret', 'user_id', 'screen_name', 'count'));

	//	$this->whitelist['statuses/user_timeline.json?user_id=' . $this->config['user_id'] . '&screen_name=' . $this->config['screen_name'] . '&count=' . $this->config['count']] = true;
	}

	private function buildBaseString($baseURI, $method, $params) {
		$r = [];
		ksort($params);
		foreach($params as $key=>$value){
			$r[] = "$key=" . rawurlencode($value);
		}

		return $method . "&" . rawurlencode($baseURI) . '&' . rawurlencode(implode('&', $r));
	}

	private function buildAuthorizationHeader($oauth) {
		$r = 'Authorization: OAuth ';
		$values = [];
		foreach($oauth as $key => $value) {
			$values[] = "$key=\"" . rawurlencode($value) . "\"";
		}
		$r .= implode(', ', $values);

		return $r;
	}
	
	public function get($url) {
		if (! isset($url)){
			die('No URL set');
		}		
		 
	/*	if ($this->config['use_whitelist'] && ! isset($this->whitelist[$url])){
			die('URL is not authorised');
		}
	*/ 
		// Figure out the URL parameters
		$url_parts = parse_url($url);
		parse_str($url_parts['query'], $url_arguments);
		 
		 
		$full_url = $this->config['base_url'] . $url.".json"; // URL with the query on it
		
		echo "<br /><br />Full url : ".$full_url."<br /><br />";
		$base_url = $this->config['base_url'] . $url_parts['path']; // URL without the query
		 
		// Set up the OAuth Authorization array
		$oauth = [
			'oauth_consumer_key' => $this->config['$consumer_key'],
			'oauth_nonce' => time(),
			'oauth_signature_method' => 'HMAC-SHA1',
			'oauth_token' => $this->config['$oauth_access_token'],
			'oauth_timestamp' => time(),
			'oauth_version' => '1.0'
		];

		$base_info = $this->buildBaseString($base_url, 'GET', array_merge($oauth, $url_arguments));
		
		$composite_key = rawurlencode($this->config['$consumer_secret']) . '&' . rawurlencode($this->config['$oauth_access_token']);

		$oauth['oauth_signature'] = base64_encode(hash_hmac('sha1', $base_info, $composite_key, true));
		 
		// Make Requests
		$header = [
			$this->buildAuthorizationHeader($oauth), 
			'Expect:'
		];
		$options = [
			CURLOPT_HTTPHEADER => $header,
			//CURLOPT_POSTFIELDS => $postfields,
			CURLOPT_HEADER => false,
			CURLOPT_URL => $full_url,
			CURLOPT_RETURNTRANSFER => true,
			CURLOPT_SSL_VERIFYPEER => false
		];
		 
		$feed = curl_init();
		curl_setopt_array($feed, $options);
		$result = curl_exec($feed);
		$info = curl_getinfo($feed);
		curl_close($feed);
		 
		// Send suitable headers to the end user.
		if (isset($info['content_type']) && isset($info['size_download'])){
			header('Content-Type: ' . $info['content_type']);
			header('Content-Length: ' . $info['size_download']);
		}

		return $result;
	}
}