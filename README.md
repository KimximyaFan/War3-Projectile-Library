# War3 Projectile Library

<br>
<br>
<br>

워크래프트3 로 투사체를 구현하려면, <br>
유닛을 생성 후 더미로 만들어 추가적인 라이브러리를 이용해 충돌 판별을 하는데 <br>
작동이 무겁고 구현도 까다로운 단점이 존재함 <br>
<br>
이 라이브러리는 그러한 단점을 극복하기 위해 다음 과 같은 개선점을 가짐 <br>
<br>  
1. 함수 한줄로 끝내는 효율성<br>
<br>
2. 이펙트 기반이라 가벼움<br>
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

### 포물선 투사체

![3](https://github.com/user-attachments/assets/83ef1807-8349-463e-9679-d62a7cb6056d)

해당 투사체는

<br>

<img width="247" height="197" alt="5" src="https://github.com/user-attachments/assets/c9c0a59a-aac3-49a2-a2be-321a93d656d2" />

이 수식을 통해 구현됨

<br>
<br>
<br>

<img width="966" height="374" alt="7" src="https://github.com/user-attachments/assets/b2fbdfce-bd7f-4f12-8f53-f1763a4228f0" />

구현은 위와 같음

<br>
<br>
<br>

### 3축 가속도 투사체

![8](https://github.com/user-attachments/assets/9a4c6d1f-ae87-40a0-a050-a19d9b5e4844)

<img width="146" height="188" alt="image" src="https://github.com/user-attachments/assets/3249a0f9-e39b-4479-8c50-adbfdcefc0f1" />

가속도 수식

한 축에 대해서, 속도 v에 대해서 동일 거리를 움직이려면 2v/t 만큼 가속도를 줘야함

<img width="213" height="85" alt="image" src="https://github.com/user-attachments/assets/af966822-9376-423b-94f5-c6a76fcdf2d1" />

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

### 4엽 장미 투사체

![12](https://github.com/user-attachments/assets/6cd634e1-ec81-4e2f-b95b-9136e6b28ddc)

<img width="294" height="286" alt="image" src="https://github.com/user-attachments/assets/29c05ffe-2879-4054-b4b2-03a6b989270a" />

극좌표 함수를 응용해서 구현


### 삼각# War3 Projectile Library

<br>
<br>
<br>

워크래프트3 로 투사체를 구현하려면, <br>
유닛을 생성 후 더미로 만들어 추가적인 라이브러리를 이용해 충돌 판별을 하는데 <br>
작동이 무겁고 구현도 까다로운 단점이 존재함 <br>
<br>
이 라이브러리는 그러한 단점을 극복하기 위해 다음 과 같은 개선점을 가짐 <br>
<br>  
1. 함수 한줄로 끝내는 효율성<br>
<br>
2. 이펙트 기반이라 가벼움<br>
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

### 포물선 투사체

![3](https://github.com/user-attachments/assets/83ef1807-8349-463e-9679-d62a7cb6056d)

해당 투사체는

<br>

<img width="247" height="197" alt="5" src="https://github.com/user-attachments/assets/c9c0a59a-aac3-49a2-a2be-321a93d656d2" />

이 수식을 통해 구현됨

<br>
<br>
<br>

<img width="966" height="374" alt="7" src="https://github.com/user-attachments/assets/b2fbdfce-bd7f-4f12-8f53-f1763a4228f0" />

구현은 위와 같음

<br>
<br>
<br>

### 3축 가속도 투사체

![8](https://github.com/user-attachments/assets/9a4c6d1f-ae87-40a0-a050-a19d9b5e4844)

<img width="146" height="188" alt="image" src="https://github.com/user-attachments/assets/3249a0f9-e39b-4479-8c50-adbfdcefc0f1" />

가속도 수식

한 축에 대해서, 속도 v에 대해서 동일 거리를 움직이려면 2v/t 만큼 가속도를 줘야함

<img width="213" height="85" alt="image" src="https://github.com/user-attachments/assets/af966822-9376-423b-94f5-c6a76fcdf2d1" />

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

### 4엽 장미 투사체

![12](https://github.com/user-attachments/assets/6cd634e1-ec81-4e2f-b95b-9136e6b28ddc)

<img width="294" height="286" alt="image" src="https://github.com/user-attachments/assets/29c05ffe-2879-4054-b4b2-03a6b989270a" />

4엽장미 극좌표 함수를 응용해서 구현

<br>
<br>
<br>

### 나선 투사체

<img width="411" height="414" alt="image" src="https://github.com/user-attachments/assets/a6af13db-3670-41b8-a649-4bce479aa646" />

<img width="303" height="51" alt="image" src="https://github.com/user-attachments/assets/face1f7a-d153-4b18-a88d-adaa1d7bc67f" />

아르키메데스 나선이라 불리는 극좌표 함수를 응용해서 구현

