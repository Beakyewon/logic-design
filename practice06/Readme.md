# Lab 10
## 실습 내용
### **IR controller**
#### **IR 송신부 , 수신부로 구성 

#### **Submodule 2** : 0~59의 값을 갖는 6bit 입력 신호를 받아 십의 자리 수와 일의 자리 수를 각각 4bit으로 출력
#### **Top Module** : 저번 시간에 만든 second counter  및 Submodule 1/2를 이용하여 실습 장비의 LED에 맞는 Display Module 설계
### FPGA 실습 (팀) : 6개의 LED 중 가장 오른쪽 2개의 LED에 1초간격으로 0~59까지 증가하는 Counter 값 Display
: Leader code, Custom code, Data code  wave form을 통해 확인하고자 한다. 

## 퀴즈 
### 아래 코드 일부를 수정하여 다음을 구하시오
```verilog wire  [41:0] six_digit_seg; assign       six_digit_seg = { 4{7'b0000000}, seg_left, seg_right } ``` 
 > Q1 - 고정 LED (왼쪽 4개) AAAA 출력 : `AA_AA_00`, `AA_AA_01`, `AA_AA_02`, … 순으로 LED 변경
 `verilog wire  [41:0] six_digit_seg; assign       six_digit_seg = { 4{7'b1110111}, seg_left, seg_right }`

> Q2 - 고정 LED 없이 2개의 LED 단위로 1초 Counter 값 표시 : `00_00_00`, `01_01_01`, `02_02_02`, … 순으로 LED 변경
`verilog wire  [41:0] six_digit_seg; assign         six_digit_seg = { seg_left, seg_right, seg_left, seg_right, seg_left, seg_right }`
## 결과
### **Top Module 의 DUT/TestBench Code 및 Waveform 검증**
![](https://github.com/Beakyewon/logic-design/blob/master/practice06/practice06%20wave.PNG)
### ** Wave form 동작 사진 **
![](https://github.com/Beakyewon/logic-design/blob/master/practice06/Quiz.PNG)

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzNzIyNjc2NTYsLTExNDIyMjY5MzMsMT
U2MDQwMzQ5OCwtOTY1MDg4MDU3XX0=
-->