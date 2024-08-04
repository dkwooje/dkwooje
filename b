git add . , git add ho1.tex
 저장 후 git commit -m ' ' (저장하지 않으면 동작 x)

 git branch hit

git log --oneline --all --graph
* d2efd0a (HEAD -> main) 드디어1 //HEAD:현재 위치
* 1c5194a (hitt, hit) initial commit

브런치 생성 : git branch hit
브런치 바꾸그 :git switch hit
브런치 상태보기: git status


브런치 병합하기 : git merge hit

fatal: not a valid object name: 'main'
//해결법
git commit -m "initial commit"

fatal: invalid reference: hit
//해결법
git pull 으로 신규 branch를 받아준 뒤
git switch branch명 을 사용해주면 된다!

"nothing to commit, working tree clean"은 Git을 사용하여 버전 관리를 할 때 나타나는 메시지입니다.
이는 현재 작업 디렉토리와 스테이징 영역에 변경 사항이 없다는 것을 의미합니다.
 즉, 모든 변경 사항이 커밋되었고, 더 이상 커밋할 변경 사항이 없다는 뜻입니다.



 롤백 :ctrl + z , git restore c , git restore --staged c
 (c:파일)

git revert F6D0921 : F6D0921 롤백
git revert HEAD :방금 COMMIT한 것 취소

git reset --hard F6D0921 : F6D0921전부 롤백

저장소(git): 폴더에 저장 가능
온라인 저장소에 저장 : 온라인 저장소에 저장하여 공유 가능
 
 git branch -M main : 깃 메인 branch를 master가 아는 main으로 바꿔줌
 git push (git push -u) 로컬저장소를 원격저장소로 넘길(업로드) 수 있다.
 ex : $ git push -u https://github.com/dkwooje/dkwooje.git main
 https://github.com/dkwooje/dkwooje.git를 변수로 만들어 간단히 만들 수 있다
 ex : git remote add ohwooje https://github.com/dkwooje/dkwooje.git
    : git push -u ohwooje main

새 폴더에 새 터미널에 : git clone https://github.com/dkwooje/dkwooje.git
: 소스코드 다운


팀 만들기: 1.깃헙 홈페이지 -> setting -> collaborators등록 : 

2. create new file에서 새 파일을 만들어 공유 가능


git pull 업로드된 파일 다운로드하기
git push 내가 수정한 파일 업로드하기
만약 업로드하려 하지만 업로드된 파일이 다른사람으로부터 수정된다면 업로드가 안된다.
그러땐 먼저 pull로 다운 받고나서 push로 업로드 해야한다.

브랜치 만들기 : 1. 홈페이지에서 브렌치 아이콘 누르고 바로 만들기

2.
1: git init
2: git branch 1234
3: git switch 1234   
4: git add .
5: git commit -m '가지 추가'
6: git push https://github.com/dkwooje/dkwooje.git 1234

Pull requests -> Pull requests : 브런치 연결 하기(merge)

git stash : 어떤 문장을 잘라서 다른곳에 저장
1.git init
2. git add .
3. git commit -m '어쩌구'
4. code 추가 후 save
5. git stash : 추가한 코드 잘라서 보관
6. git stash list : 보관한 코드 리스트
7. git stash save 'ccc라고 적음' : ''안의 문자로 제목을 붙여 저장
