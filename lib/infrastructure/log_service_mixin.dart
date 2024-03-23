import 'dart:async';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

mixin FirebaseLog {
  void recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<Object> information = const [],
  }) {
    unawaited(
      FirebaseCrashlytics.instance.recordError(
        exception,
        stack,
        reason: reason,
        information: information,
      ),
    );
  }
}
