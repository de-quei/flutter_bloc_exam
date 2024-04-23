// 카운터의 증가와 감소에 관한 이벤트를 정의합니다.
abstract class CounterEvent {} // 추상 클래스를 만들어 일관성을 유지하고, 이벤트 확장을 편리하게 만들어줍니다.

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}
