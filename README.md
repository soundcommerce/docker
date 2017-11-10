# Scala-sbt Image #

These images are great for base images to build your scala project if you use
sbt. These are for build purposes only. You likely want to use a minimal jre-
only build for production container usage.

There are currently three tags contained with approximate size of each:

 * _slim_ sbt only (244 MB)
 * _slim-jdk_ sbt with a full JDK installed (264 MB)
 * _full-jdk_ ubuntu with full JDK and scala installed. Likely only useful if you need an interactive build/dev environment. (934 MB)


