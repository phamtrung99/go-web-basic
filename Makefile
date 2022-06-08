pm:
	git stash save
	git checkout main
	git stash pop
	git add .
	git commit -m"Update main"
	git push origin main

pt:
	git stash save
	git checkout test
	git stash pop
	git add .
	git commit -m"Update test"
	git push origin test