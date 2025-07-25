#import "@local/common:0.0.0": *
#import "template.lib.typ": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#show: problemlist([ Задачи ])

#centering[_(можно приходить за подсказками, они будут даваться щедро)_]

+ Пусть $x$ --- нильпотент в кольце $A$. Покажите, что $1 + x$ обратим. Выведите отсюда, что сумма нильпотента и обратимого элемента обратима. #info(1)

+ Допустим, что в кольце $A$ всякий идеал $aa subset.not cal(N)$ содержит _идемпотент,_ т.е. такой элемент $e in A$, что $e^2 = e != 0$. Докажите, что в кольце $A$ нильрадикал $cal(N)$ совпадает с радикалом Джекобсона $cal(R)$. #info(2)

+ Пусть в кольце $A$ всякий элемент $x$ удовлетворяет уравнению $x^n = x$ для некоторого $n > 1$ (число $n$ зависит от $x$). Покажите, что любой простой идеал в $A$ максимален.\ #info(3)

+ Пусть $A$ --- ненулевое кольцо. Покажите, что множество всех простых идеалов в $A$ содержит хотя бы один минимальный (по включению) элемент. Покажите, что всякий простой идеал содержит минимальный простой идеал. #info(4)

+ Пусть $A$ --- кольцо, $cal(N)$ --- его нильрадикал. Докажите, что следующие условия равносильны:
  - $A$ имеет ровно один простой идеал;
  - Любой элемент $A$ либо обратим, либо нильпотентен;
  - $A\/cal(N)$ есть поле. #info(5)

+ Придумайте пример такого кольца $A$ и множества $E subset A$, что $x, y in E ==> x y in E$, но при этом $A without E$ --- не простой идеал. #info(6)

+ Покажите, что в локальном кольце нет идемпотентов, кроме $0$ и $1$. #info(7)

+ Кольцо $A$ называется _булевым,_ если $x^2 = x$ для всех $x in A$. Покажите, что справедливы следующие утверждения:
  - $2 x = 0$ для всех $x in A$;
  - Любой простой идеал $pp <= A$ максимален, и $A\/pp$ --- поле из двух элементов.\ #info(8)

+ Пусть $A$ --- некоторое кольцо, $X$ --- множество всех его простых идеалов. Для каждого подмножества $E subset A$ обозначим через $V(E)$ множество всех простых идеалов, содержащих $E$. Докажите следующее:
  - Если $aa$ --- идеал, порождённый $E$, то $V(E) = V(aa) = V(r(aa))$;
  - $V(0) = X$, $V(1) = empty$;
  - Для всякого семейства ${E_i}_(i in cal(I))$, имеем $V(union_(i in cal(I)) E_i) = inter_(i in cal(I)) V(E_i)$;
  - $V(aa inter bb) = V(aa bb) = V(aa) union V(bb)$, для всех идеалов $aa, bb <= A$.
  Таким образом, семейство ${V(E) mid(|) E subset A}$ удовлетворяет аксиомам замкнутых множеств, и определяет в $X$ так называемую _топологию Зарисского._ Топологическое пространство $X$ называется _простым спектром_ кольца $A$ и обозначается $"Spec"(A)$.\ #info(9) 

+ Обозначим через $Sigma$ множество всех идеалов в $A$, полностью состоящих из делителей нуля. Покажите, что в $Sigma$ есть хотя бы один максимальный элемент. Покажите, что всякий максимальный элемент в $Sigma$ прост. #info(10)

+ Пусть $0 -> M ->^f N ->^g L -> 0$ --- точная последовательность. Докажите, что если $M$ и $L$ конечно порождены, то $N$ также конечно порождено. #info(11)

+ Пусть $A$ --- локальное кольцо. Докажите, что $A^2$ *не* изоморфно $A^1$, как $A$-модуль.
  #hint[
    #underline[Подсказка:] рассмотрите изоморфизм $phi : A^2 -> A^1$ и $x_1 = phi(1,0), x_2 = phi(0,1)$. Покажите, что $x_1$, $x_2$ лежат в максимальном идеале $A$.
  ]\
  #info(12)

+ Пусть $A$ --- кольцо, $aa$ --- такой конечно порождённый (как $A$-модуль) идеал в $A$, что $aa^2 = aa$. Докажите, что идеал $aa$ порождён единственным идемпотентом.\ #info(13)

+ Пусть дана следующая коммутативная диаграмма, в которой обе строки точны:
  #align(center)[#diagram(cell-size: 5mm, spacing: 10mm, $
    0 edge(->) & M_1 edge(->) edge("d", alpha_1, ->, label-side: #left) & M_2 edge(->) edge("d", alpha_2, ->, label-side: #left) & M_3 edge(->) edge("d", alpha_3, ->, label-side: #left) & 0 \
    0 edge(->) & N_1 edge(->) & N_2 edge(->) & N_3 edge(->) & 0
  $)]
  Докажите, что если $alpha_1$, $alpha_3$ --- изоморфизмы, то $alpha_2$ --- тоже изоморфизм.\ #info(14)

+ Докажите, что $(ZZ\/m ZZ) ot_ZZ (ZZ \/ n ZZ) = 0$, если $m$, $n$ взаимно просты.\ #info(15)

+ Покажите, что если $M, N$ --- плоские $A$-модули, то $M ot N$ --- тоже плоский.\ #info(16)

+ Пусть $M$ --- конечно порождённый $A$-модуль, $phi : M -> A^n$ --- сюръективный гомоморфизм. Докажите, что $ker phi$ конечно порождён. #info(17)

+ Пусть $A$ --- нётерово кольцо. Докажите, что для всякого идеала $aa <= A$, семейство $P(aa)$, состоящее из всех простых идеалов, содержащих $aa$, имеет не более чем конечное число минимальных (по включению) элементов.
  #hint[
    #underline[Подсказка:]
    Допустите противное и рассмотрите семейство всех идеалов $aa <= A$, для которых данное утверждение не выполняется.
  ]\
  #info(18)

+ При помощи леммы Цорна докажите следующую версию _аксиомы выбора:_ для каждого сюръективного отображения $f : X -> Y$ существует его _правое обратное,_ то есть такое\ $g : Y -> X$, что $f(g(y)) = y$ для всех $y in Y$. #info(19)

+ Приведите пример кольца $A$ и его подкольца $B$, таких, что $A$ нётерово, а $B$ --- нет.
  #hint[
    #underline[Подсказка:]
    Рассмотрите поле $RR$ и кольцо многочленов $RR[x,y]$. В этом кольце найдите не-нётерово подкольцо.
  ]\
  #info(20)
