# Lab 10
## 실습 내용
### **IR controller 기본지식**
#### **IR 송신부 , 수신부로 구성 **
Leader code : 프레임의 모드 선택
Custom code : 특정 회사를 나타내줌
Data code : 송신 데이터

 Leader code, Custom code, Data code를  wave form을 통해 확인하고자 한다. 

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
eyJoaXN0b3J5IjpbOTQzMzk2ODYyLC0xMTQyMjI2OTMzLDE1Nj
A0MDM0OTgsLTk2NTA4ODA1N119
-->