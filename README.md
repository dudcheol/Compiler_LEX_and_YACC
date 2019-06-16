# Compiler_LEX_and_YACC
컴파일러 _ LEX와 YACC를 이용하여 Smart Calculator 만들기

==> 자세한 내용은 HWP파일 확인 (2019 컴파일러 학기과제 2차 제출물)

<!> 리눅스 환경에서 사용했음
<!> 리눅스 환경에서 확인하기 위한 방법
lex smartCal.l
yacc smartCal.y
cc y.tab.c -ll -o smartCal
./smartCal < input

<!>예시
[input 텍스트 양식]
B=20.0*5;
C=B+20;
C=C-40.7;
if(C>=100) then print C;
else print "Small";
     print "END";
endif;

[컴파일 후 C언어로 변경된 것]
#include <stdio.h>

int main()
{
        double B;
        B=20.0*5;
        double C;
        C=B+20;
        C=C-40.7;
        if(C>=100) {
                printf("%lf\n",C);
        }
        else {
                printf("Small\n");
                printf("END\n");
        }

        return 0;
}
