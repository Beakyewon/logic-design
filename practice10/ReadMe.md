# Lab 10
## 실습 내용
### **IR controller **
#### **IR 송신부 , 수신부로 구성 **
Leader code : 프레임의 모드 선택
Custom code : 특정 회사를 나타내줌
Data code : 송신 데이터

-> testbench를 통해 신호 입력후 leader code와 32bit custom code, data code를 확인


### **Top Module 의 DUT/TestBench Code 및 Waveform 검증**
### ** leader code **
![](https://github.com/Beakyewon/logic-design/blob/master/practice10/graph.PNG)leader code (ir_rx)가 high인 구간에서의 시간이 8999 (9ms), low인 구간이 559임을 볼수있었음.

![](https://github.com/Beakyewon/logic-design/blob/master/practice10/GRAPH%20B.PNG)
32bit까지 카운트 되었을때 다시 0으로 돌아가는 모습을 통해 costom code, data code가 32bit로 설정되었음을 볼 수 있었음. 

최종적으로 FPGA를 통해, IR 리모컨을 눌렀을때 6개의 7세그먼트에 24bit 데이터가 전달되는 모습을 볼 수 있었다.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMzM4MzUyMDQzXX0=
-->