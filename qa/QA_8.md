#### Вопрос-Ответ 8

***Dangling pointer Висячие указатели*** возникают, когда объект удаляется или освобождается, без изменения значения указателя, так что указатель по-прежнему указывает на место в памяти освобожденной памяти.

Сохранение объекта создает сильную ссылку на этот объект. Объект не может быть освобожден, пока все его сильные ссылки не будут освобождены. Проблема, известная как сохранность цикла, это может возникнуть, если два объекта имеют ***циклические ссылки***, то есть, у них есть сильные ссылки друг на друга (либо непосредственно, либо через цепочку других объектов, каждый из которых имеет сильную ссылку на следующую ведущую к первой).

***Утечка*** памяти - память, которая была выделена в определенный момент, но никогда не освобождалась и больше не используется вашим приложением. Поскольку нет ссылок на него, теперь нет возможности освободить его, и память не может быть использована снова.


○ Ситуация, в которой происходит какой-то crash при обращении к объекту, которого уже уничтожен

○ Ситуация, в которой два объекта ссылаются друг на друга и никто не может быть освобожден

● Cитуация, в которой остается объект в памяти и нет ссылок на него и память не может быть освобождена