# ctf env

CTF用のDockerテンプレート

## Usage

```zsh
docker-compose up
docker-compose run --user ubuntu --rm pwn
```

## GUI-tools

### Cross-platform

- [Audacity](https://www.audacityteam.org/): Audio file(.wav, mp3 etc) analyzer

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

- WinDbg(Windows Debugger)
- [ILSpy: .NET Decompiler](https://github.com/icsharpcode/ILSpy)
- [TweakPNG: a low-level utility for examining and modifying PNG image files](http://entropymine.com/jason/tweakpng/)
- [青い空を見上げればいつもそこに白い猫](https://digitaltravesia.jp/usamimihurricane/webhelp/_RESOURCE/MenuItem/another/anotherAoZoraSiroNeko.html): 汎用ファイルアナライザ

## Web-tools

### misc

- [CyberChef](https://gchq.github.io/CyberChef/)

### crypto

- [factordb](http://factordb.com/index.php): prime factorization
- [CrackStation](https://crackstation.net/): hash cracker

### osint

- [virustotal](https://www.virustotal.com/gui/home/upload)

### obfuscation

- [JSFuck](https://enkhee-osiris.github.io/Decoder-JSFuck/)

## Windows env

- [FLARE VM](https://github.com/mandiant/flare-vm)
