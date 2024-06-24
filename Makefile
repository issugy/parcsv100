all: run

clean:
	rm -f out/ParcsJob.jar out/ShellSort.jar

out/ParcsJob.jar: out/parcs.jar src/ParcsJob.java
	@javac -cp out/parcs.jar src/ParcsJob.java
	@jar cf out/ParcsJob.jar -C src ParcsJob.class
	@rm -f src/ParcsJob.class

out/ShellSort.jar: out/parcs.jar src/ShellSort.java
	@javac -cp out/parcs.jar src/ShellSort.java
	@jar cf out/ShellSort.jar -C src ShellSort.class
	@rm -f src/ShellSort.class

build: out/ParcsJob.jar out/ShellSort.jar

run: out/ParcsJob.jar out/ShellSort.jar
	@cd out && java -cp 'parcs.jar:ParcsJob.jar' ParcsJob
