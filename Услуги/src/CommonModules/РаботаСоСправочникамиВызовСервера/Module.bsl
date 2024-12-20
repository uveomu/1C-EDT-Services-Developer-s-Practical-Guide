// @strict-types

#Область ПрограммныйИнтерфейс

// Возвращает актуальную розничную цену номенклатуры из см. РегистрСведений.Цены
// 
// Параметры:
//  ЭлементНоменклатуры - СправочникСсылка.Номенклатура - Номенклатура
//  АктуальнаяДата - Дата - Актуальная дата
// 
// Возвращаемое значение:
//	Число - Актуальная цена номенклатуры - если цена не найдена, то 0  
Функция РозничнаяЦена(ЭлементНоменклатуры, АктуальнаяДата) Экспорт
	
	//Создать вспомогательный объект "Отбор".
	Отбор = Новый Структура("Номенклатура", ЭлементНоменклатуры);
	
	ТекущаяЦена = ПараметрыЗаполненияЦеныВСтрокеТЧ(); 
	
	ПолученнаяЦена =  РегистрыСведений.Цены.ПолучитьПоследнее(КонецДня(АктуальнаяДата), Отбор); 
	
	ЗаполнитьЗначенияСвойств(ТекущаяЦена, ПолученнаяЦена);
	
	Возврат ТекущаяЦена.Цена;
КонецФункции

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Функция-конструктор параметров функции РаботаСоСправочникамиВызовСервера.РозничнаяЦена
// 
// Возвращаемое значение:
//  Структура:
// 		* Цена - Число
Функция ПараметрыЗаполненияЦеныВСтрокеТЧ()
	
	ОписаниеРезультата = Новый Структура;
	ОписаниеРезультата.Вставить("Цена", 0);
	
	Возврат ОписаниеРезультата;
КонецФункции

#КонецОбласти
