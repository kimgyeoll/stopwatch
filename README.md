# stopwatch<img width="1580" alt="스크린샷 2023-09-15 21 20 23" src="https://github.com/kimgyeoll/stopwatch/assets/105435276/90d4e794-333d-4848-9752-2d7a3fe68164">

func displayCurrentTime(seconds: Float) {
timeLabel.text = '\(Int(seconds) / 60 ):\(Int(seconds) % 60)" 
}
이걸 추가후 self?.displayCurrentTime(seconds: self?.currentTime ?? 0) 
한다면 사진과 같이 출력된다.  



Autoshrink : minimumfontsize 사용 --> 숫자 올라갈때마다 크기 변함 X  LABEL의 크기가 작더라도
ButtonRaidus를 위해 RoundButton.swift 파일 추가 및 cornerRadius 사용 -> 스토리보드에서 다이렉트로 사용가능; 
@IBInspectable  :: 익스펙터 창에 출력되게끔 하는것 /  @IBDesignable :: 실시간으로 변경가능한걸 확인용 

timelabe 고정버튼 사용 ofsize: 100 

Extension 추가/ 리펙토링 사용 : 
Timelabel.swift 사용
Attributedstrng 사용하여 특정 구간의 설정변경

비슷한 부류의 메소드 끼리구분하였음 주석 기능 사용 
