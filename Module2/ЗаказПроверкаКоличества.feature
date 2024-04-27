﻿#language: ru

@tree

Функционал: Расчет суммы документа Заказ

Как Менеджер по продажам я хочу
скорректировать количество и цену товара 
чтобы изменить количество документа   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Изменение документа Заказ
* Открытие формы документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к строке
		| 'Номер'       |
		| '000000020' 	|
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ 000000020 от 09.06.2023 0:00:00'
* Заполнение шапки документа
	И заполнение реквизитов шапки документа Заказ
* Редактирование таблицы Товары
	И в таблице "Товары" я активизирую поле с именем "ТоварыТовар"
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар' | 'Цена'  |
		| '100'        | '4 000,00' | 'Масло' | '40,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '50,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар'   | 'Цена'  |
		| '50'         | '2 750,00' | 'Ряженка' | '55,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '40'
	И в таблице "Товары" я завершаю редактирование строки
* Проверка таблицы Товары
	Тогда таблица "Товары" содержит строки:
		| 'Количество' | 'Сумма'    | 'Товар'   | 'Цена'  |
		| '100'        | '5 000,00'	| 'Масло'	| '50,00' |
		| '40'         | '2 200,00'	| 'Ряженка' | '55,00' |
	И элемент формы с именем 'ТоварыИтогКоличество' стал равен '140'
	И элемент формы с именем 'ТоварыИтогСумма' стал равен '7 200'
* Закрытие документа Заказ
	И Я закрываю окно 'Заказ 000000020 от 09.06.2023 0:00:00 *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'
	И Я закрываю окно 'Заказы товаров'