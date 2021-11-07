﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Возврат Ванесса.МодульПодготовкаИЗагрузкаДанных().ПолучитьСписокТестов(Ванесса);
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////


&НаКлиенте
Процедура ЯЗапускаюОчисткуБазыДанных() Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯЗапускаюОчисткуБазыДанных();
КонецПроцедуры 

&НаКлиенте
Процедура ЯПроверяюИлиСоздаюДляСправочникаОбъекты(ИмяОбъекта, Значения) Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯПроверяюИлиСоздаюДляСправочникаОбъекты(ИмяОбъекта, Значения);
КонецПроцедуры 

&НаКлиенте
Процедура ЯПроверяюИлиСоздаюДляДокументаОбъекты(ИмяОбъекта, Значения) Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯПроверяюИлиСоздаюДляДокументаОбъекты(ИмяОбъекта, Значения);
КонецПроцедуры 

&НаКлиенте
Процедура ЯПроверяюИлиСоздаюДляПланаВидовХарактеристикОбъекты(ИмяОбъекта, Значения) Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯПроверяюИлиСоздаюДляПланаВидовХарактеристикОбъекты(ИмяОбъекта, Значения);
КонецПроцедуры 

&НаКлиенте
Процедура ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписи(ИмяРегистра, Значения) Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯПроверяюИлиСоздаюДляРегистраСведенийЗаписи(ИмяРегистра, Значения);
КонецПроцедуры 

&НаКлиенте
Процедура ЯПроверяюИлиСоздаюДляРегистраНакопленийЗаписи(ИмяРегистра, Значения) Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯПроверяюИлиСоздаюДляРегистраНакопленийЗаписи(ИмяРегистра, Значения);
КонецПроцедуры 

&НаКлиенте
Процедура ЯПерезаполняюДляОбъектаТабличнуюЧасть(ИмяТабличнойЧасти, Значения) Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯПерезаполняюДляОбъектаТабличнуюЧасть(ИмяТабличнойЧасти, Значения);
КонецПроцедуры 

&НаКлиенте
Процедура ЯВыполняюКодИВставляюВПеременную(Код, ИмяПеременной) Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯВыполняюКодИВставляюВПеременную(Код, ИмяПеременной);
КонецПроцедуры 

&НаКлиенте
Процедура ЯПерезаполняюКонстантуЗначением(ИмяКонстанты, ЗначениеКонстанты) Экспорт
	Ванесса.МодульПодготовкаИЗагрузкаДанных().ЯПерезаполняюКонстантуЗначением(ИмяКонстанты, ЗначениеКонстанты);
КонецПроцедуры 

