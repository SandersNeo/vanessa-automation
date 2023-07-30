﻿# language: ru

@lessons

Функционал: Интерактивная справка. Как получить подробную информацию о шаге?

Сценарий: Как получить подробную информацию о шаге?

	* Привет! В этом уроке я расскажу тебе про то как получить подробную информацию о шаге. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	#[autodoc.ignorestep]
	* Служебная группа
		И я переключаю тему редактора в режиме обучения на "Основная"
		

	* Загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерКакПолучитьПодробнуюИнформациюОШаге.feature"

	* Чтобы посмотреть описание шага достаточно навести курсор мышки на шаг. После этого появится всплывающее окошко.
		И я перемещаю курсор мышки к тексту в строке редактора 8 VA в режиме обучения подсценарий

	* Получить дополнительную информацию о шаге можно нажав на эту иконку. Также её можно получить с помощью горячих клавиш контрол плюс шифт плюс ай.
		И я получаю координаты картинки "ТриИконкиОписанияШага"
		И Я запоминаю значение выражения 'Контекст.left + 10' в переменную "x"
		И Я запоминаю значение выражения 'Контекст.top + 10' в переменную "y"
		И курсор к координатам "$x$" "$y$"
		И Пауза 1
		@screenshot	
		И Пауза 2

	* При нажатии на эту иконку откроется окно с подробной информацией о шаге.
		Если есть картинка "ТриИконкиОписанияШага" Тогда
			И клик по координатам "$x$" "$y$"
		Иначе	
			И я перемещаю курсор мышки к тексту в строке редактора 8 VA в режиме обучения подсценарий
			И Пауза 1
			И я получаю координаты картинки "ТриИконкиОписанияШага"
			И Я запоминаю значение выражения 'Контекст.left + 10' в переменную "x"
			И Я запоминаю значение выражения 'Контекст.top + 10' в переменную "y"
			И клик по координатам "$x$" "$y$"

	* В этом окне можно узнать пример использования шага.
		И Пауза 1
		И я делаю подсветку элемента с заголовоком и типом 'Пример использования:' 'Edit' 'Пример использования'
	* Описание шага.
		И Пауза 1
		И я делаю подсветку элемента с заголовоком и типом 'Описание шага:' 'Edit' 'Описание шага'
	* Тип шага.
		И Пауза 1
		И я делаю подсветку элемента с заголовоком и типом 'Тип шага:' 'Edit' 'Тип шага'
	* Файл, где находится реализация шага.
		И Пауза 1
		И я делаю подсветку элемента с заголовоком и типом 'Файл, где находится шаг:' 'Edit' 'Файл, где находится реализация шага'
	* Имя процедуры, которая вызывается при работе шага.
		И Пауза 1
		И я делаю подсветку элемента с заголовоком и типом 'Имя процедуры:' 'Edit' 'Имя процедуры'
	* С помощью этой кнопки можно найти шаг в дереве шагов.
		И я делаю подсветку элемента с заголовоком и типом 'Найти в дереве шагов' '' 'Найти в дереве шагов'

	* На этом всё, переходи к следующему уроку интерактивной справки.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ФормаЗакрытьФорму' UI Automation
		И Пауза 1
		


