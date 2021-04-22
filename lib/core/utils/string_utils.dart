class StringUtils {
  static bool isEmpty(String? string){
    return string == null || string.isEmpty;
  }

  static bool isNotEmpty(String? string){
    return !isEmpty(string);
  }
}