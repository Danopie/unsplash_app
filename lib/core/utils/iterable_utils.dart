class IterableUtils {
  static bool isEmpty(Iterable? iterable){
    return iterable == null || iterable.isEmpty;
  }

  static bool isNotEmpty(Iterable? iterable){
    return !isEmpty(iterable);
  }
}