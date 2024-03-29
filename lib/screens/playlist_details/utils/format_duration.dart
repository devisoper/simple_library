String formatDuration(Duration duration) {
  final twoDigitMinutes = _twoDigits(duration.inMinutes.remainder(60));
  final twoDigitSeconds = _twoDigits(duration.inSeconds.remainder(60));

  return "${_twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
}

String _twoDigits(int n) => n.toString().padLeft(2, "0");
