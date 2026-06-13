$DIR="/Users/solomonmessing/workspace/website-hugo5/content"
$BearerToken="AAAAAAAAAAAAAAAAAAAAAFcPmAEAAAAA3wg5ZdzWeNMyD5hHKSdYoKuZJi4%3DuumitlStmfz1qNVwXMQYvVmvd40dumpK4ng1ftN8CEJQo3aYgK"

#Function to use Twitter API to convert a Tweet ID to a Twitter Handle
Function Get-TwitterHandleFromTweetID ([string]$TweetID, [string]$BearerToken){
	$URL="https://api.twitter.com/2/tweets/"+$TweetID+"?expansions=author_id"
	(curl -X GET -H "Authorization: Bearer $BearerToken" "$URL"  2>(New-TemporaryFile)  | ConvertFrom-Json).includes.users.username
}
#Define what our current shortcode starts with 
$shortcode="{{"+"< tweet "
#Get all the Markdown files in the Hugo folder
$files=Get-ChildItem $DIR -Filter "*.md" -Recurse
#Loop through the files
Foreach ($file in $Files.fullname) {
  #Reset our Changed flag to false, until we make any changes to this file.
  $changed=$false
  #Get Lines in file containing Tweet shortcodes that we haven't yet updated
  $Content=Get-Content $file
  Foreach ($Tweetcode in (get-content $file.Split("`n")| Where {$_.Startswith($shortcode) -and $_ -notlike "*user=*"})) { 
    #Extract the Tweet ID from the shortcode
	  $TweetID=($Tweetcode -split $shortcode -split " >}}")[1]
	  #Get TwitterHandle from Tweet ID
	  $TwitterHandle=Get-TwitterHandleFromTweetID -TweetID $TweetID -BearerToken $BearerToken
	  #Update the shortcode in the file content
		$Content=$Content.Replace($shortcode+$TweetID, $shortcode+'id="'+$TweetID+'" user="'+$TwitterHandle+'"')
    #Set our Changed flag to true as we've changed the file content
	  $changed=$true
  }
  #Update file if changes were made.
  If ($changed){
    #Write the updated file
    $Content > $file 
    #Make a note on the console that we've done this
    "Updated $file" 
  }
}