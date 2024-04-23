class CounterState {
  final int count;

  CounterState({this.count = 0});

  CounterState copyWith({
    // copyWith을 정의함으로써 불변성을 유지하면서 객체의 일부 필드를 업데이트할 수 있도록 해줍니다.
    // 만약 카운트 값을 전달하지 않으면 현재의 카운트 값은 그대로 유지됩니다.
    int? count,
  }) {
    return CounterState(
      count: count ?? this.count,
    );
  }
}
