import Foundation

/*
 Создать Класс Client с парамаетрами firstname, lastname.Создать класс Card  с параметрами bankName, cardNumber и bill.Добавить в класс Client еще один параметр cards: [Card]. Создать класс Bank,в котором имеется функция перевода или оплаты денег. Фунция должна запрашивать "Выберите карту", создается поле для для ввода номера карты, после чего она должна распознать имя банка и запринтить в консоль. Затем запрашивается номер счета другого Client, вы вводите номер карты, в консоль должна отобразиться ФИО клиента.
 После чего запрашивается сумма и проиходит перевод денег. Где сумма денег пробовать вводить не верные данные. В main создать объекты, заполнить данными и произвести перевод. Создать extension для класса Bank и добавить еще 2 функции и перевода денег, но с разными вариантами работы с опциональностью. Чтобы произвести перевод вы в readline вводите String, счет хранится в числах, соответсвенно нужно нужно вводимую сумму переводить в число. Использовать в одной функции ??, в другой  проверку на nil через if конструктор. Выводить нужные сообщения пользователю
*/



var bank = Bank()
var client = Client(firstname: "Ahmed", lastname: "Muvaza", cards: [Card(bankName: "Bank1", cardNumber: "001", bill: 10000)])
bank.clients.append(client)

var client1 = Client(firstname: "Arafat", lastname: "Sharipov", cards: [Card(bankName: "Bank2", cardNumber: "002", bill: 10000)])
bank.clients.append(client1)

bank.transferMoney(from: client, to: client, amount: 100.0)
bank.transferMoneyWithOptionalBinding(from: client1, to: client, amount: 1000.0)
