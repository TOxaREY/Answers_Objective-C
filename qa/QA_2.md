#### Вопрос-Ответ 2

***load*** - Вызывается, когда класс или категория добавляется в Objective-C runtime, реализуйте этот метод для выполнения классом специфического поведения при загрузке

Среда выполнения отправляет ***initialize*** для каждого класса в программе только один раз перед тем, как класс, или любой другой класс, который наследует от него, отправляет или получает свое первое сообщение из программы. (Таким образом, метод не может быть использован, если класс не используется)

В связи с тем, что все объекты распределяются в динамической памяти, создание объекта приходится проводить в два этапа: 1) выделении памяти (сообщение ***alloc***) и 2) инициализация инвариантов (конструкторы класса). 

    MyClass \*myObject = [[MyClass alloc] init];  

Метод класса MyClass ***alloc*** выделяет участок памяти нужного размера и возвращает указатель на него, метод объекта init инициализирует инварианты объекта myObject

***applicationDidFinishLaunching:*** Сообщает делегату, когда приложение завершило запуск. Ваша реализация этого метода должна создать пользовательский интерфейс вашего приложения и инициализировать структуры данных приложения.


● При загрузке объекта класса в runtime

○ При первом использовании класса

○ Перед первым вызовом конструктора класса

○ Сразу после applicationDidFinishLaunching