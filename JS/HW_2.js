// HW JS_functions
//
// 1) Сделать функцию которая при вызове напишет в консоль сумму 2-х переданных в неё чисел
// function Rez(a,b){
//     let c = a + b;
//     console.log(c);
// }
//
// Rez(100,200);

// 2) Сделать функцию которая вернёт в консоль квадрат переданного числа
// function Squ(a){
//     let c = a * a;
//     console.log(c);
// }
//
// Squ(11);

// 3) Сделать функцию. На вход принимет 3 параметра (Ф,И,О). Вернёт JSON
// {"name":И,
//     "surname":Ф,
//     "middlename":О}

function fio(f,i,o){
    return {nane: f, surname:i, middlename:o};
}

console.log(fio("Иванов", "Иван", "Ивановичь"));



// 4) вывести в консоль переменную-массив в которой будут все чётные числа. Переменную возвращяет функция которая на вход принимает массив чисел.
//     Если чётных чисел не нашлось, то функция вернёт текст "No even numbers"
// let MaS = [1, 3, 4, 5, 6, 7, 8, 11, 13, 14, 15, 16, 17, 18, 20];
// let MaZ = [];
//
// function MakeMas(MaS){
//     let j = 0;
//     for (let i = 0; i < MaS.length; i += 1) {
//         // console.log(i);
//         console.log(MaS[i]);
//
//         if (MaS[i] % 2 == 0){
//             MaZ[j] = MaS[i];
//             console.log(MaZ[j]);
//
//             j++;
//         }
//     }
//     console.log(MaZ);
// }
//
// MakeMas(MaS);


// 5) Сделать функцию которая вернёт количество букв 'a' в переданном в неё слове.
//     Алфавит Eng. Если нету букв 'а', то вернтуть текст "No a characters".

// function FindLet(w,l){
//     let count = 0;
//
//     for (let i = 0; i < w.length; i++) {
//         if (w[i] == l) count++;
//     }
//
//     if (count == 0 ){
//         return "No a characters"
//     } else {
//         return count;
//     }
// }
// // слово, какой символ ищем
// console.log(FindLet('messures', 's'));


// 6) Написать функцию которая выдаст список тестов для переданного в неё web-ui элемента
// Элементы: Phone number field, CheckBox, SignIn Button.


// 7) Написать функцию которая на вход получает JSON а возвращяет XML
//<?xml version="1.0" encoding="UTF-8"?>
//<fio>
// <name>f</name>
// <surname>i</surname>
// <middlename>o</middlename>
//</fio>

// import { json2xml } from 'xml-js';

// const jsonObj = {
//     name: 'Garage',
//     cars: [
//         { color: 'red', maxSpeed: 120, age: 2 },
//         { color: 'blue', maxSpeed: 100, age: 3 },
//         { color: 'green', maxSpeed: 130, age: 2 },
//     ],
// };

//
// const jsonObj = fio("Иванов", "Иван", "Ивановичь");
//
// const json = JSON.stringify(jsonObj);
//
// const xml = json2xml(json, { compact: true, spaces: 4 });
//
// console.log(xml);
