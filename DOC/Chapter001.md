# Глава 001 | Работа с регулярными выражениями
Регулярные выражения позволяют...далее описание  
Главный помощник в конструировании регулярных выражений это сервис [regex101.com](https://regex101.com/) Уверен, вы полюбите его ❤.

## Синтаксис
### Конструктор
Конструктор регулярного выражения на основании паттерна регулярного выражения.

### Свойства объекта
ИгнорироватьРегистр (значение по умолчанию Истина)  
Многострочный (значение по умолчанию Истина)

### Методы
Совпадает()  
НайтиСовпадения()  
Разделить()  
Заменить()

## Примеры кода
1. Использование метода `Совпадает` Проверим, что [тестовый текст](../ADD/text-1.txt) содержит одновременно наименование конфигурации _Бухгалтерия предприятия_ и номер версии _3.0.75.109_ [Код](../SRC/Sample001_01.os)
2. Использование метода `НайтиСовпадения` в [тестовом тексте](../ADD/text-1.txt) найдем все совпадения с шаблоном _1С_ причем регистр не имеет значения, так же не имеет значение язык на котором набран символ С [Код](../SRC/Sample001_02.os)
3. Использование метода `Разделить` в [тестовом тексте](../ADD/text-2.txt) с именами учеников в классе. При составлении списка учеников неаккуратно использовались различные разделители: пробел, табуляция, запятая, точка с запятой и их комбинация. Список будет разделен по ученикам и сохранен в массив. [Код](../SRC/Sample001_03.os)
4. Использование метода `Заменить` В [тестовом тексте](../ADD/text-1.txt) который содержит литерал `1С` как в русской так и в латинской раскладке в различном регистре заменим на литерал `1С` в латинской раскладке ВРег. [Код](../SRC/Sample001_04.os)

## Дополнительная информация
Много полезного по регулярным выражениям можно подсмотреть в [справочнике](https://docs.microsoft.com/ru-ru/dotnet/standard/base-types/regular-expression-language-quick-reference) по языку выражений. Например, в языке OScript представлено два параметра
* IgnoreCase
* Multiline

Если тербуется использовать остальные параметры языка регулярных выражений, 
то можно в начале строки паттерна указать конструкцию `(?<символ>)`. 
Например, для использования параметра Singleline (однострочный режим) в начале паттерна нужно указать `(?s)`. Подробнее о параметрах в [справочнике](https://docs.microsoft.com/ru-ru/dotnet/standard/base-types/regular-expression-options#single-line-mode).