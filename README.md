# ctf env

CTF用のDockerテンプレート

## Usage

```zsh
docker-compose up
docker-compose run --user ubuntu --rm pwn
```

## GUI-tools

### Unix / Mac

```bash
# JD-GUI(Java Decompiler Tool)
wget https://github.com/java-decompiler/jd-gui/releases/download/v1.6.6/jd-gui-1.6.6.jar
java -jar jd-gui-1.6.6jar
# stegsolve
wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
java -jar stegsolve.jar
```

### Windows

- [ILSpy: .NET Decompiler](https://github.com/icsharpcode/ILSpy)
- [TweakPNG: a low-level utility for examining and modifying PNG image files](http://entropymine.com/jason/tweakpng/)

## Ref

- https://stackoverflow.com/questions/35860527/warning-error-disabling-address-space-randomization-operation-not-permitted
- https://qiita.com/chimpan/items/574ad8ad0ac142c71c37
- https://qiita.com/ponsuke0531/items/9336172e812e7271a966
- https://qiita.com/niwasawa/items/d89e7cef0c749c6afea6
