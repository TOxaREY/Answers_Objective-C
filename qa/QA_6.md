#### Вопрос-Ответ 6
Категории являются частями класса, которые были выделены для того, чтобы сохранить класс специфичным и компактным, обеспечивая при этом дополнительную функциональность. Категория создается путем взятия связанных методов и свойств и помещения их в отдельный файл категории. Основной класс остается кратким, и содержание категории все еще можно легко использовать с классом.

Вы ***не должны*** использовать категорию для переопределения существующих методов (***наследования к существующим классам***) в базовом классе.

Основная причина добавления категорий в ***runtime*** в том, чтобы позволить вам добавлять методы в класс, для которого у вас нет исходного кода или для которого вы не хотите изменять исходный код. 

Например, более новая версия iOS предоставляет некоторые приятные функциональные возможности, которые я хочу использовать. Однако я нацеливаюсь на развертывание в более ранних версиях iOS. Я могу реализовать (частичную) замену новой функциональности для более старых версий, но я хочу использовать системный код в более новых версиях. Итак, я реализую категорию, которая обеспечивает мою реализацию новых методов, но я загружаю ее только на более старые системы. Я должен избегать загрузки его на более новые версии ОС, потому что, если бы я это сделал, категория заменила бы предоставляемые системой методы.