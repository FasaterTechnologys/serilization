String root(int rt) {
  if (rt == 1) {
    return "Модератор";
  } else if (rt == 2) {
    return "Админ";
  } else {
    return "Пользователь";
  }
}
