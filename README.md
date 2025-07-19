# cowsay_custom
A customized version of [cowsay](https://en.wikipedia.org/wiki/Cowsay) with additional ASCII art.
The [fortune](https://en.wikipedia.org/wiki/Fortune_(Unix)) command is also pre-installed.
This container image can be used to check if containers can run in your environment.

## Simple Usage
```
docker run aurelia01/cowsay:1.0.0
```

## Installation

Pull [the image](https://hub.docker.com/r/aurelia01/cowsay) from Docker Hub
```
docker pull aurelia01/cowsay:1.0.0 # For Docker
singularity pull docker://aurelia01/cowsay:1.0.0 # For Apptainer/Singularity
```

## Usage in the Container
Launch the container and use `cowsay` with a custom design:
```
cowsay -f custom "Hello World!"
```

You can also combine it with the `fortune` command.
```
fortune | cowsay -f custom
```

---
```
     ∧__∧
  （｡>ω<｡)つ━☆ﾟ.*･｡ﾟ.*･｡ﾟ.*･｡ﾟ.*･｡ﾟ.*･｡ﾟ.*･｡ﾟ.*･｡ﾟ.*･｡ﾟ.*･｡ﾟ.*･｡ﾟ
⊂　   ノ 　　　・゜+.*・゜+.*・゜+.*・゜+.*・゜+.*・゜+.*・゜+
 しーＪ　　　°。+ *´¨) .· ´¸.·*´¨) ¸.·*¨) .·*¨) .·*¨) .·*¨)
                       (¸.·´ (¸.·'* ☆ Have a happy coding life! ☆彡
```