/// Вариант картинки маскота
enum MascotPose { Teach, Applause }

/// Туториалы в начале и конце уровня
class Tutorial {
  final String text;
  final MascotPose pose;
  Tutorial({required this.text, this.pose = MascotPose.Teach});
}
