﻿#language: ru

@tree

Функционал: Изменение количества услуги в документе Заказ

Как Менеджер по продажам я хочу
скорректировать количество услуги 
чтобы изменить сумму документа   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Изменение документа Заказ
* Открытие формы документа заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И в таблице "Список" я перехожу к строке
		| 'Номер'       |
		| '000000015' 	|
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ 000000015 от 01.06.2023 18:23:50'
* Редактирование таблицы Товары
	И в таблице "Товары" я активизирую поле с именем "ТоварыТовар"
	И в таблице "Товары" я перехожу к строке:
		| 'Количество' | 'Сумма'    | 'Товар' | 'Цена'  |
		| ''       	 | '300,00' | 'Доставка' | '300,00' |
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'
	И в таблице "Товары" я завершаю редактирование строки
* Закрытие документа Заказ
	И Я закрываю окно 'Заказ 000000015 от 01.06.2023 18:23:50 *'
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button1'
	И Я закрываю окно 'Заказы товаров'