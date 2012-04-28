# Ovum #

A generic starting point for projects in various languages.

So, you have a great idea for a project, and you have a shiny new repo on github, and you've cloned it all ready to start.  Here you are staring at a directory holding nothing but a `.git/` and empty dreams... Time to seed your project!

Ovum populates your empty directory with a basic project structure, testing libs, build scripts, and other goodies -- all ready for your first commit.

#### Example Usage ####

__Linux__

To seed a `java` project in the `foo/` directory you can do this:

```
wget https://raw.github.com/scarytom/ovum/master/ovum.sh; chmod +x ovum.sh; ./ovum.sh java foo; rm ovum.sh
```

__Windows__

To seed a `java` project in the `foo\` directory you can do this:
```
powershell (new-object System.Net.WebClient).DownloadFile('https://raw.github.com/scarytom/ovum/master/ovum.ps1','%TEMP%\ovum.ps1'); .{%TEMP%\ovum.ps1 java foo}
```
N.B. The first time you use Ovum you may need allow script execution with this:
```
powershell Start-Process "$pshome\powershell.exe" -Verb Runas -ArgumentList '-command "set-executionpolicy remotesigned"'
```
