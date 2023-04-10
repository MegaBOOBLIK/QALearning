// на вход подается 5 чисел, программа должна вернуть минимальное и максимальное число
// + усложнение числа должны быть только целочисленными
// + усложнение: количество подаваемых цифр может быть любым"
//
// function MaxMin(...nan){
// let int = nan.filter(c => Number.isInteger(c))
//
//     // return Math.max(int), Math.min(int);
//     return Max ${Math.max(...int)} \nMin ${Math.min(...int)}
// }
//
// console.log(MaxMin(5,6,7,8,9,10.1));
//
// function maxMin (...nan) {
//     let int = nan.filter(c => Number.isInteger(c))
//     return Max ${Math.max(...int)} \nMin ${Math.min(...int)}
// }
//
// console.log(maxMin(1,2,'6',20,5,6,18))


// На вход подается массив из положительных и отрицательных чисел.
// Вернуть нужно массив, где все числа поменяли свой знак ( с + на - и наоборот)
//
// let mass = [1,-2,6,20,5,6,18, -1000];
// function Znak (mass) {
//     for (let i = 0; i < mass.length; i++) {
//         //console.log(mass[i]);
//         mass[i] = mass[i] * -1;
//         //console.log(mass[i]);
//     }
//     console.log(mass);
// }
// Znak(mass);




// "Ваша задача состоит в том, чтобы вернуть выходную строку, созданную из входной строки s ,
// заменив каждый символ в s числом, представляющим количество раз,
//     которое этот символ встречается в s, и разделив каждое число символом (символами) sep."
// freqSeq('hello world', '-')
// //result '1-1-3-3-2-1-1-2-1-3-1'
//


// Нужно написать валидацию для канала для взрослых.
// На вход подаётся возраст:
// Если тебе строго меньше 18 - программа должна вернуть строку ""Доступ закрыт для несовершеннолетних""
// Если тебе от 18 до 65 включительно - ""Добро пожаловать!""
// Если тебе выше 65 - ""Ну какое вам уже порно?)""
// Если пришло число меньше 5 или больше 100 - Неверный возраст
// На вход может падать что угодно, проверить надо что это число, и если нет - кинуть валидационную ошибку про тип данных

// let age_1 = "A70"; // тестируемый возраст

function TestAge(age_1) {
    let age_2 = 18;
    let age_3 = 65;
    // if (age_1 < age_2) {
    //     console.log("You don’t have access cause your age is " + age_1 + ". It’s less then " + age_2 + ".");
    // } else if (age_1 >= age_2 && age_1 <= age_3) {
    //     console.log("Welcome!");
    // } else if (age_1 > age_3) {
    //     console.log("Keep calm and look Culture channel");
    // } else {
    //     console.log("Technical problem...");
    // }

    let rez = (age_1 < age_2) ? "U so young..." : (age_1 >= age_2 && age_1 <= age_3) ? 'Welcome!' : (age_1 > age_3) ? 'Be careful' : 'Problem...';
    console.log(rez);
}

function TestAgeMass (ageMass){
    for (let i = 0; i < ageMass.length; i++) {
        TestAge(ageMass[i]);
        console.log("===")
    }
}
//const ageMass = [];
TestAgeMass([1,40,60,100,'100a']);

Jmass = [{'name':"John", 'age':2}, {'name':"Bill", 'age':20},{'name':"Will", 'age':200}]