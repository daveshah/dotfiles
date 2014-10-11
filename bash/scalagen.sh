#!/bin/bash

# Generate simple sbt build file ('simple sbt', well - that was redundant...)
echo $'name := "project name"\n\nversion := "1.0.0-SNAPSHOT"\n\nscalaVersion := "2.11.2"\n\nlibraryDependencies += "org.scalatest" % "scalatest_2.11" % "2.2.1" % "test"\n\n' > build.sbt

#Create simple project directory structure
mkdir -p src/main/scala src/test/scala src/main/resources

#Create simple spec
echo $'import org.scalatest.FlatSpec\n\nclass SimpleSpec extends FlatSpec {\n\n     "A SimpleSpec" should "compile just fine" in {\n          assert(true)\n     }\n\n     "The HelloWorlder" should "say hello!" in {\n          var helloWorlder = new HelloWorlder()\n          assert("hello!" == helloWorlder.sayHello())\n     }\n}' > src/test/scala/SimpleSpec.scala

#Create simple class to test in spec
echo $'class HelloWorlder {\n     def sayHello() : String = "hello!"\n}' > src/main/scala/HelloWorlder.scala

#Make sure all is well
echo "Now running 'sbt test' (If things don't pass - we've got troubles!)"
sbt test
