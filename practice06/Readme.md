# Lab 10
## 실습 내용
### **IR controller 기본지식**
#### **IR 송신부 , 수신부로 구성 **
Leader code : 프레임의 모드 선택
Custom code : 특정 회사를 나타내줌
Data code : 송신 데이터

-> Leader code, Custom code, Data code를  wave form을 통해 확인하고자 한다. 

### **Top Module 의 DUT/TestBench Code 및 Waveform 검증**
### ** Wave form 동작 사진 **
![](https://github.com/Beakyewon/logic-design/blob/master/practice10/graph.PNG)

![](https://github.com/Beakyewon/logic-design/blob/master/practice10/GRAPH%20B.PNG)
32bit까지 count 되었을때 

최종적으로 FPGA를 통해, IR 리모컨을 눌렀을때 24bit 데이터가 전달되는 모습을 볼 수 있었다.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5Mzc3Nzk3NTcsLTExNDIyMjY5MzMsMT
U2MDQwMzQ5OCwtOTY1MDg4MDU3XX0=
-->