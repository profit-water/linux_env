## To use github in Termux

* Step1.
    ```
    $ ssh-keygen -t rsa -C "dlrtn1006@naver.com"
    ```

* Step2.
    + copy the ssh key
    ```
    $ cat ~/.ssh/id_rsa.pub
    ```

* Step3.
    + go to github.com -> settings -> SSH and GPG keys -> new SSH key
    -> paste the ssh key which copied in step 2

* Step4.
    ```
    $ termux-setup-storage
    ```

* Step5.
    ```
    $ ssh -T git@github.com
    ```

* Step6.
    ```
    $ git remote add origin https://github.com/profit-water/linux_env.git
    $ git remote set-url origin git@github.com:profit-water/linux_env.git
    ```

## To use color scheme

```
cd ~/.vim
git clone https://github.com/tomasr/molokai.git
cd molokai
mv colors ~/.vim/
```

* add follow commands to .bashrc(or cshrc)
```
"Color Scheme
set t_Co=256
colorscheme molokai
let g:molokai_original=1 "set background clolor to dark color, 0 is lighter
```

## Starship installaiont for prompt

```
pkg install getconf
```
```
curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir /data/data/com.termux/files/usr/bin
```

## Nerd font download
* Step1.
    ```
    $ pkg install lsd
    ```
* Step2.
    ```
    $ cd && cd .termux && curl -fLo font.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip && mkdir fonts && mv font.zip fonts &&  cd fonts && unzip font.zip && mv "Hack Regular Nerd Font Complete.ttf" .. && cd .. && mv "Hack Regular Nerd Font Complete.ttf" font.ttf && rm -rf fonts
    ```
* Step3.
    + add below command to .bashrc or .cshrc
    ```
    alias ls=lsd
    ```
* Step4.
    +  for Termux
    ```
    $ termux-reload-settings
    ```
