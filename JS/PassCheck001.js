// Минимум 8 символов
// Максимум 120 символов
// Буквы - только латиница
// Пароль должен содержать минимум 1 букву в верхнем регистре
// Пароль должен содержать минимум 1 букву в нижнем регистре
// Пароль должен содержать минимум 1 цифру
// Пароль должен содержать минимум 1 специсомвол из !@#$%^&*()_+
// Пароль не может состоять только из пробелов
// Внутри пароля пробелы разрешены
// Валидационные ошибки должны соответстовать тексту нужного требования
// Если пароль не подан в функцию - вернуть ТОЛЬКО ошибку "Введите пароль"


function PassCheck001(pass){
    if (!pas) {
        console.log("Введите пароль");
    } else {
        if (pas.lenght <= 8){
            console.log("Минимум 8  символов")
        } else if (pas.lenght >= 120) {

        }


    }

}