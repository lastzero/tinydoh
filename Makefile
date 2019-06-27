build:
	go build -o tinydoh *.go
	zip -r tinydoh.zip tinydoh
clean:
	rm tinydoh tinydoh.zip
dockerhub:
	docker login -u lastzero
	docker push lastzero/tinydoh:latest
