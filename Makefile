build:
	docker build -t voronenko/cdci-scanners:latest .
push:
	docker  push voronenko/cdci-scanners:latest
