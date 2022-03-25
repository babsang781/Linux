ping 172.30.1.39
raspberry
stduser
stduser

gui 실습 라즈베리 ip 119.200.31.205
pi /
------------------------
date
cal
logname
su - pi
whoami
hostname
exit
who
ifconfig
uname

env
env > env.txt
env | grep PATH
cat env.txt
more his.txt

echo 안녕하세요. 반갑습니다.
echo –e 1.학과 : 빅데이터분석학과 “\n”2.학번 : 201703125

history
history -d 61
history -c

ln -s his.txt h

-- 파일의 목록 조회
ls -alFR
cd /etc

-- 경로이동(상대경로, 절대경로)
pwd -> 현재위치확인
  /home/stduser  -> /etc 이동
cd ../../etc
  /etc -> /home/stduser 이동
cd ../home/stduser
cd
cd ~/shin/in/ho
(=)cd /home/stduser/shin/in/ho
-rw-r--r-- 1 stduser stduser  531 Nov  8 01:40 env234324.txt
lrwxrwxrwx 1 stduser stduser    7 Nov  8 02:21 h -> his.txt
drwxr-xr-x  3 root root    4096 May  7  2021 sane.d

pwd : 현재 작업중인 디렉토리
/home/stduser/
mkdir /home/stduser/inho
mkdir -p /home/stduser/inho/shin/insu

mkdir aa bb cc dd

drwxr-xr-x 2 stduser stduser 4096 Nov  9 05:10 bb
drwxr-xr-x 2 stduser stduser 4096 Nov  9 05:11 cc

ls /etc/ > ls_etc   -- 현재파일을 생성
ls /etc/ >> ls_etc  -- 파일내용을 추가
touch emp.txt       -- 빈파일 생성 

grep passwd ls_etc
cd ~/shin/in/ho

which mkdir

which pwd 
/usr/bin

cd ~/shin/in/ho

cp from to
mv from to

cp /etc/passwd ./mypass  -> 오류 없음
mv /etc/passwd ./mypass2 -> 오류 권한없음

which mkdir
/usr/bin

------------
find . -name "ls*"
find . -name "*etc*" | wc -l
find . -empty
find ./ -type d 
find ./ -type f -name "*etc*"
find ./ -type f -name "*etc*" |wc -l
find ./ -empty -exec ls -l {} \;


------------
-rw-r--r-- 1 stduser stduser  531 Nov  8 01:40 env234324.txt

421 421 421
rwx rwx rwx
u   g   o   
421
rwx
000  = 0 ---
001  = 1 --x 
010  = 2 -w- 
011  = 3 -wx
100  = 4 r--
101  = 5 r-x
110  = 6 rw-
111  = 7 rwx

----
chmod 744 proc.sh
rwx r-- r--
chmod 755 proc.sh
rwx r-x r-x
chmod 777 proc.sh
rwx rwx rwx

----
-rw-r--r-- 1 stduser stduser  531 Nov  8 01:40 env234324.txt

chmod u+x proc.sh
-rwxr--r--

chmod u-x proc.sh
-rw-r--r--

------------
숫자를 입력하세요 10
*
**
***
****
*****
******
*******
********
*********
**********

echo

fasoo

C:\VirtualBox VMs
D:\VirtualBox VMs

=================
2022.03.22
// 쌤 서버로 접속
stduser / stduser

//
확인한 명령어 list 
date, cal, users, who, whoami, who am i, clear
pwd, uname -a, hostory, hostname, 
env, echo, cat, more, ls, ifconfig 
> , >> , 



// 본인 확인 
whonami
logname

pwd : 현재위치확인

history : 내가 그동안 친 명령어 확인

uname -a : 시스템 정보 확인 출력
 -a, n, r, s,v 등 여러가지가 있지만 -a 하면 모든 것을 다 볼 수 있음.

hostname : hostname 확인

env : 접속한 단말기에 환경변수 정보 확인

원격 접속 도구가 Putty , 접속 방식은 telnet, SSH 등 여러 가지가 있음

원격지에서 파일 주고 받을 때는 ftp 를 주로 씀, 

telnet은 원격 컴퓨터 사용시 씀.

echo : 출력  echo 안녕안녕, escape 구문 사용 가능

echo -e 안녕안녕 "\n" 오늘 날씨 좋음 ㅎㅎ

| 파이프 기호 shift 원 키보드 그거 

000명령어000 | more 한 페이지씩, 스페이스
000명령어000 | more 한 페이지씩 

cat -b test  파일 내용 보기
cat -n test

cat /etc/passwd
more /etc/passwd
cat /etc/passwd > pass.txt
cat ./pass.txt

ls : 디렉토리에 있는 내용 확인 

ifconfig : ip 확인 방법 if, ifconfig

> , >> 
cat /etc/passwd > pass.txt : 새로 만들기/ 덮어쓰기 
cat /etc/passwd >> pass.txt : 내용 추가하기 

/etc/passwd
해당 위치를 redirect해서 파일을 만듦

! no : 명령어 실행
history -d no : 해당 명령어 히스토리 삭제
history -c : 히스토리 전체 삭제

===
-리눅스는 모든 것을 파일로 인식,
-- 디렉토리, 파일 -> 파일
--- 이름, I-node, 데이터 블록으로 구성됨

file 그냥 파일
file/ 디렉토리
file* 실행가능한 파일 : 윈도우는 .exe .com 등
file@ 링크 파일 : 바로가기 파일 

ls -F /etc : 제목만 
ls -l /etc : 정보도 
	-a
	-l
	-F 
	-R : 하위 디렉토리 : 하위를 다 보여주는 명령어
	여러 기능 동시 가능
	-alR 등등 

// 삭제
rm *.txt  txt 파일 삭제
rm * : 현재 디렉토리 전체 삭제 

파일명 맨 앞에 .를 넣어서 만들면 숨긴 파일

-rw-r--r-- 1 stduser stduser 3523 Mar 22 04:43 .bashrc

- rw- r-- r-- 
  :1, 3, 3, 3자리 수로 끊어서 봄
  1자리
  - : 일반 파일
  d : 디렉토리
  l : 링크 파일 
  
  두 번째부터 다음 3자리 수는 각 권한을 나타냄.
  순서대로: 자기자신 권한 / 그룹 권한 /다른 사용자 권한 
  --- 순서도 고정
  rwx : 읽기, 쓰기, 실행 권한  
  rw- : 읽기, 쓰기
  r-- : 읽기
    
mkdir 디렉토리 생성
cd 디렉토리 이동, 아무것도 안 치면 home dir 로 감
pwd 현재 dir 확인

mkdir ./sangmin/123.txt
mkdir -p ./sangmin/1d/2d/3d

cd /home/stduser/sangmin/1depth/2depth
cd 1depth/
  : 현재 디렉토리에 있는 디렉토리로 이동하는 간단한 방법


rmdir ./3depth

rm -r 2depth : 하위 디렉토리 까지 같이 삭제
	-rf : 물어보는 것 없이 바로 지우기

touch 123.txt 현재 디렉토리에서 빈 파일 생성

,
mv move를 줄인 것으로 파일 이름 변경
mv 1234.txt 12345.txt

cp 카피
cp 123.txt 1234.txt

from-to 방향으로 생각하면 됨.
,

find / 
  : root 경로부터 검색을함. 
  find ./ : 현재 하위 경로부터 검색! 
  
find ./ -name "*.txt"

  -name
  -type
    b, d: 디렉토리 , f: 파일 , l 
  -exec 명령 {}\: 검색된 파일에 명령을 실행
    find ./ -name "*.txt" -exec rm {} \;
  -

grep : 내용을 중심으로 파일 검색
	grep stduser /etc/passwd
env | grep PATH

---
명령모드 
  [n]dd 라인 삭제
  [n]yy 복사 -> p  붙여넣기
  
---
 5장 시작 
 
gedit
  :  
권한 변경
chmod 544 [파일명]

쉘 스크립트도 인터프리터 방식 비슷

vi test.sh (쉘 파일 확장자 형식)

실행 권한을 줄 경우, 초록색* 로 바뀜
현재 디렉토리에서 이름을 쓰면 실행 가능한데, 실행하려면 주소를 입력해야 함

vi로 echo 를 사용하여 출력문을 작성하고 실행가능한 파일로 만들면,
echo로 실행 가능

./test.sh  :현재 디렉토리에서 상대경로 형태로 작성-실행

env > env.txt
mkdir asdfasd

echo " 참 잘했어요 " 


--------------------------------
--------------------------------
// 실습 vi 실행문 생성
stduser@raspberrypi:~/sangmin $ vi proc.sh
echo " --- 일괄처리를 시작합니다---"
echo "--- 디렉토리 관리.---"

mkdir shdir
cd shdir

echo " --- 파일 생성 및 복사 --- < 출력> "

env > env-file

touch tch-file

cp tch-file tmp-file

mv tch-file mv-file

echo "---빈 파일 찾아보기. --- <출력>"

find ./ -empty -exec ls -l {} \; > emp-file

echo " --- 일괄처리가 잘 처리되었습니다.---"
--------------------------------
--------------------------------

echo "공포의 별찍기!"
echo -n "숫자를 입력하세요>> "
read num

a=1

while [ $a -le $num ]
do

  b=1
  while [ $b -le $a ]
  do
    echo -n "*"
    b=`expr $b + 1`
  done
  echo ""
  a=`expr $a + 1`
done
----------------------------


echo "공포의 별찍기 2탄 : 역별"
echo -n "숫자를 입력하세요 >> "
read num

a=1

while [ $a -le $num ]
do
  b=1
  while [ ${num-b} -le $num ]
  do
    echo -n "*"
    b=`expr $b + 1`
  done
  echo ""
  a=`expr $a + 1`
done

--------------------------
--------------------------

pi / adminuser

sudo adduser -- ingroup stdgrp sangmin

sudo 

2022.03.24

-- 고정 ip 설정 
sudo nano /etc/dhcpcd.conf

 interface eth0
 static ip_address=192.168.56.103
 static routers=192.168.56.254

-- 컴퓨터 이름 변경
sudo nano /etc/hostname
raspberrypi ->namenode 로 변경

-- 껐다 켜기
sudo reboot

--namenode : 192.168.56.101
  worker1 : 192.168.56.102
  worker2 : 192.168.56.103

--계정 생성
sudo addgroup hadoop
sudo adduser --ingroup hadoop hadoop
sudo adduser hadoop sudo

sudo userdel -rf hadoop
sudo groupdel -rf hadoop


-- hosts file 수정
sudo nano /etc/hosts 

192.168.56.101 namenode
192.168.56.102 worker01
192.168.56.103 worker02


--노드들 간의 연결 시험
ping namenode
ping worker01
ping worker02

cd ~
mkdir .ssh


sudo vi ~/.ssh/config 
sudo nano ~/.ssh/config 

host namenode
user hadoop
hostname 192.168.56.101

host worker01
user hadoop
hostname 192.168.56.102

host worker02
user hadoop
hostname 192.168.56.103

--ssh key 생성 (모두)
ssh-keygen -t ed25519

--ssh key 생성 (worker)
-- ssh key 생성(worker)
cat ~/.ssh/id_ed25519.pub | ssh hadoop@namenode 'cat >> .ssh/authorized_keys'




--4. Master 라즈베리에서 실행
cd
cat .ssh/id_ed25519.pub >> .ssh/authorized_keys

--
scp ~/.ssh/authorized_keys worker01:~/.ssh/authorized_keys
scp ~/.ssh/authorized_keys worker02:~/.ssh/authorized_keys
scp ~/.ssh/authorized_keys worker03:~/.ssh/authorized_keys
scp ~/.ssh/config worker01:~/.ssh/config
scp ~/.ssh/config worker02:~/.ssh/config
scp ~/.ssh/config worker03:~/.ssh/config
