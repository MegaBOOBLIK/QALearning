// //Дана строка. Показать третий, шестой, девятый и так далее символы.
// str = "Soroktysachobazyanvjopusunulibanan"
//
// function Go(str) {
//     for (let i = 3; i < str.length; i += 3) {
//         console.log(str[i]);
//     }
// }
//
// Go(str);



//Надо заменить каждый символ на "(" если эта буква встречается единожды, иначе заменить на ")" если более 1 раза
// str = "soroktysachobazyanvjopusunulibanan";
// result = "";
// let count=0;
//
// function Fun(str) {
//     for (let i = 0; i < str.length; i++) {
//         console.log(str[i]);
//         for (let j=0; j < str.length; j++){
//             if(str[i] == str[j]){
//                 if(i == j){
//                     result[j]=0;
//                 }
//                 result[j]=count;
//                 count++;
//             }
//         }
//      }
//     console.log(result)
// }
//
// Fun(str);

// """Нужно написать функцию, которая переделывает строку в camelCase,
// где все слова начиная со 2го идут без пробелов и других разделителей с большой буквы.
// Первое же слово будет с большой только если в изначальной строке оно было с большой.
// Строка на входе будет разделена дефисами и нижними подчеркиваниями. Примеры в задаче там сверху"""
// """the-stealth-warrior"" gets converted to ""theStealthWarrior""
// ""The_Stealth_Warrior"" gets converted to ""TheStealthWarrior"""

// str="the_stealth-warrior"
// function camel (str) {
//     str = str.replace(/_/g,' ');
//     str = str.replace(/-/g,' ');
//     str = str.split(' ');
//
//     for (let i=1; i < str.length; i++) str[i] = str[i].charAt(0).toUpperCase() + str[i].slice(1);
//     console.log(str=str.join(''));
// }
//
// camel(str);

// """Кароч написать надо небольшой парсер:
// В парсер будет 4 команды всего:
// - i - Инкремент (увеличение на +1), стартовое - 0
// - d - Декремент (уменьшение на -1)
// - s - Возведение в квадрат
// - o - Выводит текущее значение в массив
// Значения, которые не подходят для задачи - игнорируем, работаем лишь с цифрами."
// parse ('iiisdoso') => [8, 64]"


// let keys = 'iiisdoso';
// function pars(keys) {
//     let rez = [];
//     let n = 0;
//
//     let j = 0;
//     //let i = 0;
//
//     for (let i = 0; i < keys.length; i++) {
//         if (keys[i] == 'o') {
//             rez[j] = n; j++;
//         } else if (keys[i] == 'i') {
//             n += 1;
//         } else if (keys[i] == 'd') {
//             n -= 1;
//         } else if (keys[i] == 's') {
//             //n = Math.pow(n, 2);
//             n *=n;
//         }
//         //console.log(n);
//         //console.log(j);
//         //console.log(rez[j]);
//         //console.log(keys[i]);
//     }
//     console.log(rez);
// }
// pars(keys);
