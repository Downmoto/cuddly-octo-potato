import 'package:m/monster_base.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    final m = MonsterBase("Kevin");
    expect(m.name, "Kevin");
  });
}
