# War3 Projectile Library

<br>
<br>
<br>

워크래프트3 로 투사체를 구현하려면, <br>
유닛을 생성 후 더미로 만들어 추가적인 라이브러리를 이용해 충돌 판별을 하는데 <br>
작동이 무겁고 구현도 까다로운 단점이 존재함 <br>
<br>
이 라이브러리는 그러한 단점을 극복하기 위해 다음 과 같은 개선점을 가짐

1. 함수 한줄로 끝내는 효율성
2. 이펙트 기반이라 가벼움

<br>
<br>
<br>
<br>
<br>
<br>


### 기본 투사체

![1](https://github.com/user-attachments/assets/f214d936-1e5c-4aaf-bada-a9e1f0fb0952)

<img width="1002" height="55" alt="2" src="https://github.com/user-attachments/assets/d256705b-987a-46c3-8b3a-5506f664fc72" />

간단하게 일직선으로 날라가는 기본 투사체

<br>
<br>
<br>
<br>
<br>
<br>


### 포물선 투사체

![3](https://github.com/user-attachments/assets/83ef1807-8349-463e-9679-d62a7cb6056d)

투사체가 땅으로 떨어지는 포물선 투사체임

<br>

<img width="247" height="197" alt="5" src="https://github.com/user-attachments/assets/c9c0a59a-aac3-49a2-a2be-321a93d656d2" />

해당 투사체는 위 수식을 통해 구현됨

<br>
<br>
<br>

<img width="528" height="171" alt="6" src="https://github.com/user-attachments/assets/800f5af6-8477-4b71-ab37-303d1f14851d" />

구현은 위와 같음

<br>
<br>
<br>
<br>
<br>
<br>


### 3축 가속도 투사체

![8](https://github.com/user-attachments/assets/9a4c6d1f-ae87-40a0-a050-a19d9b5e4844)

<img width="146" height="188" alt="image" src="https://github.com/user-attachments/assets/3249a0f9-e39b-4479-8c50-adbfdcefc0f1" />

가속도 수식

한 축에 대해서, 속도 v에 대해서 동일 거리를 움직이려면 2v/t 만큼 가속도를 줘야함

<img width="213" height="85" alt="image" src="https://github.com/user-attachments/assets/af966822-9376-423b-94f5-c6a76fcdf2d1" /> <br>

<img width="199" height="94" alt="image" src="https://github.com/user-attachments/assets/6c077007-609e-4e64-90f7-d94749476586" />

만약 미리 설정된 상수가 존재한다면, a에 대한 수식은 위와 같음

<br>
<br>
<br>


![9](https://github.com/user-attachments/assets/3c9f1915-d29a-4813-b972-a1a6d99c3b75)

![10](https://github.com/user-attachments/assets/bedc5f41-a4db-4727-a12b-57ea9b0fc1f8)

위 gif 처럼 각 축별로 독립적인 운동을 설정하고 이를 결합하면

<br>
<br>
<br>

![11](https://github.com/user-attachments/assets/01fd1109-98f6-4880-a7b4-ae82ef5d2782)

꽤나 괜찮은 투사체 궤도를 얻을 수 있음

<br>
<br>
<br>
<br>
<br>
<br>


### 4엽 장미 투사체

![12](https://github.com/user-attachments/assets/6cd634e1-ec81-4e2f-b95b-9136e6b28ddc)

<img width="294" height="286" alt="image" src="https://github.com/user-attachments/assets/29c05ffe-2879-4054-b4b2-03a6b989270a" />

4엽장미 극좌표 함수를 응용해서 구현

<br>
<br>
<br>
<br>
<br>
<br>


### 나선 투사체

<img width="411" height="414" alt="image" src="https://github.com/user-attachments/assets/a6af13db-3670-41b8-a649-4bce479aa646" /> <br>

<img width="303" height="51" alt="image" src="https://github.com/user-attachments/assets/face1f7a-d153-4b18-a88d-adaa1d7bc67f" /> <br>

아르키메데스 나선이라 불리는 극좌표 함수를 응용해서 구현

<br>
<br>
<br>

![13](https://github.com/user-attachments/assets/97e1ba2e-6401-4a2a-84e2-9eda798ef486)

기본적으로는 위 그림과 같음,

a*t*cos t , a*t*sin t 형식으로 커스텀하면 크기를 조절할 수 있고, t값을 조절하면 돌 회전수도 조절 가능함

여기에 z축 운동까지 추가하면

<br>
<br>
<br>

![14](https://github.com/user-attachments/assets/7be59082-8b90-4e9c-aaf9-a9675e537c31)

꽤 멋있는 투사체 궤도가 나옴

<br>
<br>
<br>

![15](https://github.com/user-attachments/assets/8fadea27-a474-4f69-8d16-ab52e9caa6d9)

이런식으로 응용해서 사용 가능함

<br>
<br>
<br>
<br>
<br>
<br>


### 축변환 투사체

![16](https://github.com/user-attachments/assets/bba84bad-dfe7-4921-b84b-878b6fef6d62)

애니메이션에 나오는 건담 미사일 같은걸 구현하고 싶었음

<br>
<br>
<br>

<img width="791" height="439" alt="image" src="https://github.com/user-attachments/assets/d1bb3368-121a-4beb-b9db-de477fa9b459" />

일단 공간좌표 2개를 잡아봅시다

​
출발점은 (origin_x, origin_y, origin_z) 이고

도착점은 (end_x, end_y, end_z) 입니다

​
그리고 두 좌표를 기반으로 커스텀 좌표축을 만듭니다

실제로 만드는건 아닌데, 마치 해당 좌표축인 것 마냥 여긴다는 겁니다, 가상 좌표축입니다

축 z1 은 출발점 도착점을 이용해서 벡터 표현하고

축 z2는 절대좌표축z 와 z1의 벡터외적

축 z3는 z1과 z2의 외적입니다

<br>

<img width="759" height="188" alt="image" src="https://github.com/user-attachments/assets/a51f7664-c6f6-46a0-b53f-ab460c8f3816" />

실제 연산이 아닌 개념상 정의

<br>
<br>
<br>

<img width="668" height="713" alt="image" src="https://github.com/user-attachments/assets/6a20012c-0778-4035-b70b-720ef59bdee8" />

z1 z2 z3 축 유의해서 봐주세요

<br>
<br>
<br>

<img width="808" height="469" alt="image" src="https://github.com/user-attachments/assets/04c1e40b-f93f-47ea-a5f7-cc6b908fc446" />

절대 좌표계 에서 보면 이런 모양이겠죠

대충 밑바탕은 이렇게 잡고 갑니다

<br>
<br>
<br>

<img width="306" height="277" alt="image" src="https://github.com/user-attachments/assets/cc77975f-8c5a-4665-ad20-11066e1ba744" />

커스텀 좌표축에서

해당 궤도의 미사일은 위 수식과 같음, 3축 가속도 투사체와 같음

<br>
<br>
<br>

<img width="673" height="236" alt="image" src="https://github.com/user-attachments/assets/ec36a8a3-5436-4f4c-8681-82becfb74e70" />

z2, z3 축의 값은 0에서 출발해서 0으로 되돌아옵니다

z1 축은 0에서 출발해서 지정된 거리에 도착합니다

그러면 가속도 값을 구하기 위해서 다음과 같은 식이 됩니다

<br>
<br>
<br>

<img width="237" height="274" alt="image" src="https://github.com/user-attachments/assets/0ad241c3-7761-42e9-947d-4901e1d76930" />

이걸 정리하면 아래와 같은 식이 됩니다

<br>
<br>
<br>

<img width="239" height="321" alt="image" src="https://github.com/user-attachments/assets/1ff13ed1-43bf-4692-9a15-40ce8eafe410" />

<br>
<br>

<img width="553" height="86" alt="17" src="https://github.com/user-attachments/assets/8b6a0aff-96b4-4fb4-a433-7f6d54f9a6b6" />

코드 상에서는 위와 같이 구현됩니다

가속도를 구하면 이제 이걸로 시간에 따른 위치를 구할 수 있습니다

<br>
<br>
<br>

<img width="264" height="302" alt="image" src="https://github.com/user-attachments/assets/7c157b21-e419-4656-8f4b-f754693ad06a" /> <br>

<img width="712" height="81" alt="image" src="https://github.com/user-attachments/assets/514c9ed0-fd0e-43fa-aa4b-0bc502cb9ef0" />

코드로 구현하면 위와 같습니다

이제 커스텀 좌표축에서의 미사일 연출은 끝났습니다

<br>
<br>
<br>

<img width="723" height="221" alt="image" src="https://github.com/user-attachments/assets/61813ce9-237b-4d38-8b2a-5ee26f936ce6" />

투사체의 커스텀 좌표축 벡터함수는 위와 같습니다

이 함수를 절대 좌표로 변환하려면 아래와 같은 연산을 거쳐야합니다

<br>
<br>

<img width="390" height="228" alt="image" src="https://github.com/user-attachments/assets/e4ac79a4-3914-46db-a39a-c7f1b516c0b5" />

그렇다면 M은?

우리는 출발점과 도착점을 이용한 가상 좌표축이 얼마나 회전되어있는지를 계산 할 수 있습니다

그렇다면 역회전 변환 행렬을 이용해서 M을 계산해낼 수 있습니다

<br>
<br>
<br>

<img width="790" height="503" alt="image" src="https://github.com/user-attachments/assets/9b0e12a2-f2ff-4739-bb98-6f1d64bc0692" />

회전 각도를 구하기 위한 각종 값들은 위 그림을 통해서 시각적으로 파악 할 수 있습니다

angle 은 어차피 사전에 주어진 값이라 의미 없고

pitch 값을 구해야하는데 이는 dist와 출발점과 도착점의 z값의 차이로 구할 수 있습니다

<br>
<br>

<img width="362" height="152" alt="image" src="https://github.com/user-attachments/assets/1f1f9923-5366-4816-bf59-c8d92f369598" />

구현은 위 그림과 같습니다

​<br>
<br>
<br>

우리가 가상으로 가정한 커스텀 좌표계는

​절대 좌표계를 z축 기준으로 angle 만큼 회전하고, y축 기준으로 pitch 만큼 회전하면 구할 수 있습니다

그렇다면, 이걸 역으로 표현하면 커스텀 좌표계로부터 절대 좌표계를 구할 수 있습니다

우리가 원하는 커스텀 좌표계 -> 절대 좌표계

회전변환이 되는 것입니다

​<br>
<br>

회전 변환 행렬은 아래와 같습니다

<img width="275" height="211" alt="image" src="https://github.com/user-attachments/assets/f92004bc-ca7f-4ad5-a056-f2eea481abb4" />

​<br>
<br>
<br>

우리가 구하려는 M은 다음과 같습니다 

<img width="527" height="313" alt="image" src="https://github.com/user-attachments/assets/64a30c94-96df-4cb6-a4d3-186a957f37ce" />

​<br>
<br>
<br>

<img width="421" height="242" alt="image" src="https://github.com/user-attachments/assets/a086cfc1-3a60-466b-84f7-bf95ea401db8" />

코드로 구현하면 위 그림과 같습니다

​<br>
<br>
<br>

<img width="495" height="221" alt="image" src="https://github.com/user-attachments/assets/aab16f04-f309-490a-b076-fe73b3cb9d9f" />

이제 M도 구했으니 최종 절대좌표를 구할 수 있습니다

​<br>
<br>
<br>

<img width="808" height="275" alt="image" src="https://github.com/user-attachments/assets/adfb2312-2333-4f88-90fa-c5d411fba71e" />

구현은 위와 같습니다

<br>
<br>
<br>
<br>
<br>
<br>

### 수치 미분 투사체 각도

![17](https://github.com/user-attachments/assets/e6bc23ea-a041-4958-b9a3-c6da5edab831)

각도 고려 없이 미사일 함수를 제작할 경우, 

리본이나 구형 구체는 괜찮지만, 검 같은 각도가 중요한 모델로 미사일을 만들면

궤도를 따라 이동하기는하나, 모델 각도가 고정되어있어서 위 그림처럼 단점이 도드라져 보임



<img width="161" height="58" alt="image" src="https://github.com/user-attachments/assets/6b5611c4-b005-4bb5-ad62-2ba9fb71bbb8" /> <br>

<img width="202" height="75" alt="image" src="https://github.com/user-attachments/assets/146eb897-9a8e-4524-8716-834614fdd022" /> <br>

<img width="170" height="59" alt="image" src="https://github.com/user-attachments/assets/772307e0-ff7b-4867-ba25-6b534a426347" /> <br>

정석은, 각 투사체 함수의 벡터함수 궤도를 정의하고,

미분 및 정규화를 통해 속도벡터를 얻어야 투사체의 각도를 구할 수 있음

하지만 이 방법은 두 가지 문제가 있음

1. 궤도가 까다롭고 어려울 경우, 구현 자체가 어려움
2. 구현 하더라도 연산량이 비쌈

그래서 이 문제를 해결하려면 수치 미분 방법을 써야함

투사체는 0.02초씩 이동하므로 꽤나 괜찮은 근사를 할 수 있음

이 방법의 장점은 

아무리 어려운 궤도라도 쉬운 구현이 가능하고, 

그리고 모든 투사체 함수가 해당 방법을 쓰므로 재사용성도 높음

<br>
<br>
<br>

<img width="317" height="87" alt="image" src="https://github.com/user-attachments/assets/7450fde6-51b5-4171-8c16-f23689d6059c" />

수치 미분

<br>
<br>
<br>

<img width="588" height="351" alt="image" src="https://github.com/user-attachments/assets/5d0e6a12-3037-4f9e-8f4b-628a545f09d9" />

그래프로 보면, 이 방법에 대해서 좀 더 직관적으로 이해할 수 있음

<br>
<br>
<br>

<img width="399" height="432" alt="image" src="https://github.com/user-attachments/assets/6ea60528-6b5a-4653-9712-2d612ddeb6f2" />

수치 미분 투사체 각도를 구하는 수식은 위와 같음

<br>
<br>
<br>

<img width="643" height="375" alt="image" src="https://github.com/user-attachments/assets/fcec33bb-489d-4b38-bd48-fb0989211d1f" />

구현은 위와 같음

<br>

<img width="357" height="43" alt="image" src="https://github.com/user-attachments/assets/d3d6dfd1-2113-4902-ab01-8fdacff35a22" />

각 궤도함수 구현에 

해당 함수콜 한번씩만 해주면 궤도 맞춰서 투사체 각도 조정됨

<br>
<br>
<br>
<br>
<br>

#### 예시

![18](https://github.com/user-attachments/assets/ee500200-06bc-4f42-88d5-b44d05b6ea41)

미적용

<br>
<br>

![19](https://github.com/user-attachments/assets/dd352456-4073-4838-9558-3feb98b81698)

적용

<br>
<br>
<br>
<br>

![20](https://github.com/user-attachments/assets/8cffa717-a1e5-48c7-a670-e017e022d6e8)

미적용
<br>
<br>

![21](https://github.com/user-attachments/assets/e6107b6c-e55b-465f-95e2-32b0b26742d8)
![22](https://github.com/user-attachments/assets/c1163274-2ad7-4153-bb68-b80e4f2001b3)

적용

<br>
<br>
<br>
<br>

![23](https://github.com/user-attachments/assets/92a423dc-33f8-4c92-9187-aa224e7c7977)

미적용
<br>
<br>

![24](https://github.com/user-attachments/assets/eb5dd793-422d-4df2-9b51-85eef23bd4e2)

적용
