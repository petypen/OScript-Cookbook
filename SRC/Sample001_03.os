Функция МойТекст()
	Перем сТекст;

	сТекст = "
	|Вася, Петя  Коля ,  Маша     Люба,Саша
	|Вика Рая		Миша, 	Вова,;Дима";

	Возврат сТекст;
КонецФункции

// Пример использования метода Разделить
//
// МойТекст, который содержит имена учеников класса
// разберем по именам и сохраним в массив.
// Между именами используются разные разделители:
// Tab, Пробел, Запятая, Точка с запятой и их комбинация
//
Функция Sample001_03()
	Перем сПаттерн, оРегВыражение, чСтартоваяПозиция, мУченики;
	Перем элементКоллекции, чКоличествоЭлементов;

	// В сивольном классе перечислены все используемые в МойТекст разделители
	сПаттерн = "[\t,; ]+";
	оРегВыражение = Новый РегулярноеВыражение(сПаттерн);
	
	// значение по умолчанию 0, здесь приведено для примера
	чСтартоваяПозиция = 0;
	// значение по умолчанию 0 (все элементы), здесь приведено для примера
	чКоличествоЭлементов = 0;
	мУченики = оРегВыражение.Разделить(МойТекст(), чКоличествоЭлементов, чСтартоваяПозиция);
	Для каждого элементКоллекции Из мУченики Цикл
		Сообщить(элементКоллекции);
	КонецЦикла;

	// Результат вывода:
	// Вася
	// Петя
	// Коля
	// Маша
	// ... и так далее
	
	Возврат мУченики;
КонецФункции

Sample001_03();