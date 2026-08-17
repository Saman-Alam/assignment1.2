#!/bin/bash

case $1 in

addTeam)
   groupadd $2
;;

addUser)
    useradd -m -g $3 $2
    mkdir /home/$2/team
    mkdir /home/$2/ninja
    chown -R $2:$3 /home/$2
    chmod 751 /home/$2
    chmod 770 /home/$2/team
    chmod 770 /home/$2/ninja
;;

changeShell)
        usermod -s $3 $2
;;

changePasswd)
        passwd $2
;;

delUser)
        userdel $2
;;

delTeam)
        groupdel $2
;;

ls)
        if [ "$2" = "User" ]
        then
              cat /etc/passwd
        else
            cat /etc/group
        fi
;;
esac
samanalam@ubuntu:~$
samanalam@ubuntu:~$ cat otTextEditor
#!/bin/bash




case "$1" in

addLineTop)
sed -i "1i $3" "$2"
;;

addLineBottom)
echo "$3" >> "$2"
;;

addLineAt)
sed -i "$3i $4" "$2"
;;

updateFirstWord)
sed -i "0,/$3/s//$4/" "$2"
;;

updateAllWords)
sed -i "s/$3/$4/g" "$2"
;;

insertWord)
sed -i "s/\b$3 $4\b/$3 $5 $4/g" "$2"
;;

deleteLine)
if [ "$#" -eq 3 ]
then
sed -i "${3}d" "$2"
       elif [ "$#" -eq 4 ]
       then
       sed -i "${3}s/\b$4\b//g" "$2"
              else
              echo "error plZ try again"
fi
;;

esac
