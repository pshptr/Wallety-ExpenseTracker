# Диаграмма вариантов использования

![Диаграмма вариантов использования](https://github.com/pshptr/Wallety-ExpenseTracker/blob/main/documentation/digrams/assets/usecase.png)

---

## Варианты использования

---

## 2.1 Вход в приложение (Login)

* Описание: Пользователь открывает приложение.
* Актеры: Пользователь.
* Предусловия: Приложение установлено и пользователь имеет учетную запись (если требуется).
* Шаги выполнения:
    1. Пользователь запускает приложение.
    2. При необходимости, пользователь вводит учетные данные.
    3. Система аутентифицирует пользователя.
* Постусловия: Пользователь вошел в приложение.

## 2.2 Пропуск экрана приветствия (Skip Welcome Screen)

* Описание: Пользователь пропускает экран приветствия.
* Актеры: Пользователь.
* Предусловия: Приложение открыто.
* Шаги выполнения:
    1. Пользователь открывает приложение.
    2. Пользователь выбирает пропустить экран приветствия.
* Постусловия: Пользователь перемещается на главный экран.

## 2.3 Просмотр главного экрана (View Home Screen)

* Описание: Пользователь просматривает главный экран приложения.
* Актеры: Пользователь.
* Предусловия: Пользователь вошел в приложение.
* Шаги выполнения:
    1. Пользователь просматривает информацию на главном экране.
    2. Пользователь может видеть свои карты, категории, статистику и настройки.
* Постусловия: Пользователь остается на главном экране.

## 2.4 Просмотр категорий (View Categories)

* Описание: Пользователь просматривает список категорий расходов.
* Актеры: Пользователь.
* Предусловия: Пользователь находится на главном экране.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Категории" на главном экране.
    2. Пользователь просматривает список категорий.
* Постусловия: Пользователь видит список категорий.

## 2.5 Просмотр статистики (View Statistics)

* Описание: Пользователь просматривает статистику своих финансов за выбранный период.
* Актеры: Пользователь.
* Предусловия: Пользователь находится на главном экране.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Статистика" на главном экране.
    2. Пользователь выбирает период для отображения статистики.
* Постусловия: Пользователь видит статистику расходов и доходов за выбранный период.

## 2.6 Добавление карты (Add Card)

* Описание: Пользователь добавляет новую банковскую карту в приложение.
* Актеры: Пользователь.
* Предусловия: Пользователь находится на главном экране.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Добавить карту" на главном экране.
    2. Пользователь вводит данные новой карты.
    3. Пользователь подтверждает добавление карты.
* Постусловия: Новая карта добавлена в приложение.

## 2.7 Запись расхода (Record Expense)

* Описание: Пользователь записывает новый расход в приложении.
* Актеры: Пользователь.
* Предусловия: Пользователь находится на главном экране.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Добавить расход" на главном экране.
    2. Пользователь вводит данные о расходе (сумма, категория, дата).
    3. Пользователь подтверждает добавление расхода.
* Постусловия: Новый расход добавлен в приложение.

## 2.8 Запись дохода (Record Income)

* Описание: Пользователь записывает новый доход в приложении.
* Актеры: Пользователь.
* Предусловия: Пользователь находится на главном экране.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Добавить доход" на главном экране.
    2. Пользователь вводит данные о доходе (сумма, категория, дата).
    3. Пользователь подтверждает добавление дохода.
* Постусловия: Новый доход добавлен в приложение.

## 2.9 Просмотр настроек (View Settings)

* Описание: Пользователь просматривает и изменяет настройки приложения.
* Актеры: Пользователь.
* Предусловия: Пользователь находится на главном экране.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Настройки" на главном экране.
    2. Пользователь просматривает и изменяет различные настройки (тема, прочее).
    3. Постусловия: Пользователь видит и, при необходимости, изменяет настройки приложения.

## 2.10 Переключение темы (Switch Theme)

* Описание: Пользователь изменяет тему приложения.
* Актеры: Пользователь.
* Предусловия: Пользователь находится в разделе настроек.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Сменить тему".
    2. Пользователь выбирает новую тему (светлая/темная).
    3. Пользователь подтверждает изменение темы.
* Постусловия: Тема приложения изменена.

## 2.11 Просмотр политики приложения (View Policy)

* Описание: Пользователь просматривает политику приложения.
* Актеры: Пользователь.
* Предусловия: Пользователь находится в разделе настроек.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Политика приложения".
    2. Пользователь просматривает текст политики приложения.
* Постусловия: Пользователь ознакомился с политикой приложения.

## 2.12 Получение помощи (Get Help)

* Описание: Пользователь получает помощь или поддержку.
* Актеры: Пользователь.
* Предусловия: Пользователь находится в разделе настроек.
* Шаги выполнения:
    1. Пользователь выбирает опцию "Помощь".
    2. Пользователь видит контактные данные для получения помощи.
* Постусловия: Пользователь получает информацию о поддержке.
