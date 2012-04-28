ovum
====

A generic starting point for projects in various languages.

So, you have a great idea for a project, and you have your shiny new repo on github, and you've cloned it all ready to start.  Here you are staring at a directory holding nothing but a `.git/` and empty dreams... Time to kickstart your project!

Ovum populates your empty directory with a basic project structure, testing libs, build scripts, and other goodies -- all ready for your first commit.

Example Usage
-------------

To seed a `java` project in the `foo/` directory you can do this:

```
wget https://raw.github.com/scarytom/ovum/master/ovum.sh; chmod +x ovum.sh; ./ovum.sh java foo; rm ovum.sh
```