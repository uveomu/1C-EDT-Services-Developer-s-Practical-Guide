#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура ОбработкаПроведения(Отказ,Режим)
	
	Движения.ОстаткиМатериалов.Записывать = Истина;
	Движения.СтоимостьМатериалов.Записывать = Истина;
	
	Для Каждого ТекСтрокаМатериалы из Материалы Цикл
		
		Движение = Движения.ОстаткиМатериалов.ДобавитьПриход();
		Движение.Период = Дата;
		Движение.Материал = ТекСтрокаМатериалы.Материал;
		Движение.Склад = Склад;
		Движение.Количество = ТекСтрокаМатериалы.Количество;
		
		Движение = Движения.СтоимостьМатериалов.ДобавитьПриход();
		Движение.Период = Дата;
		Движение.Материал = ТекСтрокаМатериалы.Материал;
		Движение.Стоимость = ТекСтрокаМатериалы.Сумма;
		
	КонецЦикла;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры

#КонецОбласти

#КонецЕсли