# AC3.2 Unit 3 Midunit Assessment

# Setup

1. Fork repo which has only a README.md and .gitignore.
2. Clone **your fork** locally to your laptop.
3. Create a project into that cloned directory. Name it SpotifySearch.
4. Work on the assignment.
5. Upon completion, commit locally.

	```
	git commit -a -m "I'm done"
	```
7. Push to your repo.

	```
	git push origin master
	```
8. Go to github and make a pull request.

# The Assessment

### Overview

Using the Spotify API endpoint below, perform a search on albums, displaying the 
titles returned in a ```UITableView``` along with a thumbnail image. Tapping on a row should segue to a new 
view controller showing the largest available image. Set the title of the table view controller 
to the search term and the title of the detail page to the title of the album.

#### Requirements
* All API calls to the internet must be performed asynchronously.
* All updates to the UI must be performed on the main thread.

#### It's OK...
* to use a default ```UITableViewCell``` type. 
* if the images aren't all perfectly square though most are.
* to look at and use parts of recent projects. It's expected that you will.
* to google for information. You should cite the URL of any code you copy.

#### It's NOT OK...
* to cheat, defined as:
	* using another student's code
	* asking questions of one another

...so go ahead and close Slack during the assessment.


### Endpoint

```
https://api.spotify.com/v1/search?q=blue&type=album&limit=50

```

> Notes about the endpoint and the data
> 
> * The query var ```q``` is the search term itself. Try an artist name or an album name or part of either.
> 
> * Careful about spaces and other characters in your search term that might not be valid in a URL. There are ways
>   to escape strings to fit them in URLs. You can do this with code (we will smile upon this when grading), or just type >   out the escape. If you can't 
>   discover how to to it, just make your search term one word. Last, the search term "blue" above is tested so
>   you should be able to get that one working.
> 
> * If you search by artist don't worry if the albums are not by the artist. It's a pure search on album name.
