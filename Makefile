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

lint:
	@hash golangci-lint 2>/dev/null || curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.27.0
	@golangci-lint run