import 'dart:io';

void main() {
  // task1_1(null);
  // task1_2(null);
  // task1_3(null);
  // task2_1(null, 20);
  // task2_2(null, 3);
  // task3();
  task4(null);
  // task5(null);
  // phone('Samsung', 'Galaxy S10', 'black', 144, 48, 84);
}

/* Task #1.
Написать функцию которая принимает String, если не передано вывести “Ошибка”.
*/

void task1_1(String? name) {
  print(name ?? 'error');
}

void task1_2(String? name) {
  if (name != null) {
    print(name);
  } else {
    print('error');
  }
}

void task1_3(String? name) {
  name == null ? print('error') : print(name);
}

/* Task #2.
Написать функцию которая принимает (int a, int b) и выводит их сумму, 
если значения не заданы, то присвоить им значения int a = 1, int b = 2;
*/

void task2_1(int? a, int? b) {
  print((a ?? 1) + (b ?? 2));
}

void task2_2(int? a, int? b) {
  if (a == null) {
    a = 1;
  }

  if (b == null) {
    b = 2;
  }

  print(a + b);
}

/* Task #3.
Создайте программу, которая просит пользователя ввести свое имя и возраст.
Распечатайте сообщение, в котором говорится, сколько лет и как зовут.
Если значения не переданы поставить заглушки.
*/

void task3() {
  String? name;
  int? age;

  stdout.write('Введите ваше имя: ');
  name = stdin.readLineSync();
  stdout.write('Введите ваш возраст: ');
  age = int.parse(stdin.readLineSync()!);

  print('Ваше имя: ${name ?? '-'}');
  print('Ваш возраст: ${age ?? '-'}');
}

/* Task #4.
Дано число. Если оно больше 3 и не null, то увеличить число на 10, 
иначе уменьшить на 10.
*/

void task4(int? number) {
  if (number != null) {
    if (number > 3) {
      number += 10;
    } else {
      number -= 10;
    }
    print(number);
  } else {
    print('вы ввели null');
  }
}

/* Task #5.
Создайте программу, которая в зависимости от текущей погоды подсказывает 
вам брать зонт или нет. 
(Подсказка: Нужно создать переменную bool и присвоить ей значение,
сделать с помощью тернарного оператора (? : )).
Если значение не передано, то по умолчанию присвоить false.
*/

task5(bool? isRains) {
  isRains == true ? print('Берите зонт!') : print('Оставьте зонт!' ?? 'false');
}

task5_2(bool? isRains) {
  if (isRains == true) {
    print('Берите зонт!');
  } else {
    print('Оставьте зонт!' ?? 'false');
  }
}

/* Task #6.
Создать функцию phone, которая принимает обязательные поля name, model, 
color и необязательные поля длина, ширина, вес
Распечатать пользователю характеристики телефона.
*/

void phone(String? name, String? model, String? color, int? length, int? width,
    int? weight) {
  print('name: $name');
  print('model: $model');
  print('color: $color');
  print('length: ${length ?? '-'}');
  print('width: ${width ?? '-'}');
  print('weight: ${weight ?? ' - '}');
}
