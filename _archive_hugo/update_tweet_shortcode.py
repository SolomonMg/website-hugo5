import os
import requests

DIR = "/Users/solomonmessing/workspace/website-hugo5/content"
BearerToken = "AAAAAAAAAAAAAAAAAAAAAFcPmAEAAAAA3wg5ZdzWeNMyD5hHKSdYoKuZJi4%3DuumitlStmfz1qNVwXMQYvVmvd40dumpK4ng1ftN8CEJQo3aYgK"

# Function to use Twitter API to convert a Tweet ID to a Twitter Handle
def Get_TwitterHandleFromTweetID(TweetID, BearerToken):
    URL = f"https://api.twitter.com/2/tweets/{TweetID}?expansions=author_id"
    headers = {"Authorization": f"Bearer {BearerToken}"}
    response = requests.get(URL, headers=headers)
    return response.json()["includes"]["users"][0]["username"]

# Define what our current shortcode starts with
shortcode = "{{"+"< tweet "

# Get all the Markdown files in the Hugo folder
files = []
for dirpath, dirnames, filenames in os.walk(DIR):
    for filename in filenames:
        if filename.endswith('.md'):
            files.append(os.path.join(dirpath, filename))

# Loop through the files
for file in files:
    # Reset our Changed flag to false, until we make any changes to this file.
    changed = False
    # Get Lines in file containing Tweet shortcodes that we haven't yet updated
    with open(file, 'r') as f:
        content = f.read()
    for tweetcode in [line for line in content.splitlines() if shortcode in line and 'user=' not in line]:
        print("file: " + file)
        # Extract the Tweet ID from the shortcode
        tweetID = tweetcode.split(shortcode)[-1].split(" >}}")[0]
        # Get TwitterHandle from Tweet ID
        twitterHandle = Get_TwitterHandleFromTweetID(tweetID, BearerToken)
        # Update the shortcode in the file content
        content = content.replace(shortcode+tweetID, f'{shortcode}id="{tweetID}" user="{twitterHandle}"')
        # Set our Changed flag to true as we've changed the file content
        changed = True
    # Update file if changes were made.
    if changed:
        # Write the updated file
        with open(file, 'w') as f:
            f.write(content)
        # Make a note on the console that we've done this
        print(f"Updated {file}")
