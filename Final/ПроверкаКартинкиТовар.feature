﻿#language: ru

@tree

Функционал: Проверка прикрепления картинки Товара

Как тестировщик я хочу
проверить прикрепления файла картинки к элементу справочника Товары
чтобы убедиться в возможности прикрепления картинки товару   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Прикрепление файла картинки Товару
	* Инициализация
		И я закрываю все окна клиентского приложения
		Дано Я открываю навигационную ссылку "e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8d043d710077"
		Тогда открылось окно "Хлеб (Товар)"
	* Выбор картинки
		И я нажимаю кнопку очистить у поля с именем 'ФайлКартинки'
		И я нажимаю кнопку выбора у поля с именем 'ФайлКартинки'
		Тогда открылось окно "Файлы"
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно "Файл (создание)"
		И в поле с именем 'Наименование' я ввожу текст "Test"
		И я выбираю файл '$КаталогПроекта$\PW\Final\itempicture1.png'
		И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна "Test (Файл)" в течение 20 секунд
		Тогда открылось окно "Файлы"
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		Тогда открылось окно "Хлеб (Товар) *"
	* Проверка картинки
		И я нажимаю на кнопку с именем 'ОбновитьКартинку'
		Тогда элемент формы с именем 'ФайлКартинки' стал равен "Test"
	* Запись элемента
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Хлеб (Товар) *' в течение 20 секунд
