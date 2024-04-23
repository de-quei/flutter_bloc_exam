import 'package:bloc/bloc.dart';

import '../event/counter_event.dart';
import '../state/counter_state.dart';

// 각 이벤트와 상태 클래스를 상속하여 카운터 앱의 비즈니스 로직을 정의합니다.
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // 초기 상태를 기본 초기화 상태로 적용해 줍니다.
  CounterBloc() : super(CounterState()) {
    on<IncrementEvent>(
        _handleIncrementEvent); // Increment 이벤트가 발생했을 때 _handleIncrementEvent 메서드를 호출합니다.
    on<DecrementEvent>(_handleDecrementEvent);
  }

  void _handleIncrementEvent(
    IncrementEvent event,
    Emitter<CounterState> emit,
  ) {
    print('Increment 발생');
    emit(state.copyWith(
        count: state.count +
            1)); // 현재 상태를 변경하지 않고, 현 상태 카운터 값을 1 증가시킨 새로운 상태를 반환 후 새로운 상태는 UI로 전달해 카운터 값이 업데이트 됩니다.
  }

  void _handleDecrementEvent(
    DecrementEvent event,
    Emitter<CounterState> emit,
  ) {
    print('Decrement 발생');
    emit(state.copyWith(count: state.count - 1));
  }
}
