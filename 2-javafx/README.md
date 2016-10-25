# JavaFX in ETA

This is an example application that demonstrates Java integration in ETA. For now, it just opens a blank screen and draws a black circle.

# Prerequisites
- JDK 8
  - JavaFX must be installed in the home directory of the JDK.
    - If you're running Ubuntu OpenJDK, you'll have to do an [extra step](http://stackoverflow.com/questions/34243982/why-is-javafx-is-not-included-in-openjdk-8-on-ubuntu-wily-15-10):
      ```sudo apt-get install openjfx```
- [ETA](https://github.com/typelead/eta) (On `master` branch)

# Running
```
$ cd eta-javafx
$ cabalvm run
```

# Contact Us
If you face any trouble with this project, or you'd like to take this project further, please join us on [Gitter](https://gitter.im/rahulmutt/eta).
