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
