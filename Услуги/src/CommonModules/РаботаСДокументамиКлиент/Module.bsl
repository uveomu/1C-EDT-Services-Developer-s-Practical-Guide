// @strict-types


#Область ПрограммныйИнтерфейс

// Заполняет ячейку суммы строки табличной части.
// 
// Параметры:
//  СтрокаТабличнойЧасти - ДанныеФормыЭлементКоллекции:
//		* Количество - Число - длина 15 точность 3
//		* Цена - Число - длина 15 точность 2
//		* Сумма - Число - длина 15 точность 2	
Процедура РассчитатьСумму(СтрокаТабличнойЧасти) Экспорт
	Если СтрокаТабличнойЧасти.Количество > 0 И СтрокаТабличнойЧасти.Цена > 0 Тогда
		СтрокаТабличнойЧасти.Сумма = СтрокаТабличнойЧасти.Цена * СтрокаТабличнойЧасти.Количество;
	КонецЕсли;	
КонецПроцедуры

#КонецОбласти