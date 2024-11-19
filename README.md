# 이미지 피커 패키지

이미지 피커를 이용해 이미지, 동영상, 카메라를 이용한 동영상, 사진 업로드 방법

## 설명

IOS 에 우선 Info.plist에 키를 추가해줘야 한다.
<key>NSPhotoLibraryUsageDescription</key>
<Stirng>권한이 필요합니다.</String>
<key>NSCameraUsageDescription</key>
<Stirng>권한이 필요합니다.</String>
<key>NSMicrophoneUsageDescription</key>
<Stirng>권한이 필요합니다.</String>

Android는 설정이 필요없지만 메모리가 부족할 때 애플리케이션이 종료되는 상황에
대비하는 것이 강력히 권장된다고 나온다. 이 부분은 나중에 [Image Picker pub.dev](https://pub.dev/packages/image_picker) 여기서 알아보자. 

이 후 File? _image; 변수를 선언해주고 맨처음 이미지를 넣지를 않으니 null값이니까 텍스트나 한글로 표기한다.
이미지 업로드 버튼을 누르면 ImagePicker를 생성자를 만들고 이 후 주석처리 되어있는 코드로 응용하면 되겠다.
