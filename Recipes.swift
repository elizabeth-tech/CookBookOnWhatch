//
//  Recipes.swift
//  CookBookOnWhatch WatchKit Extension
//
//  Created by Elizaveta on 04.12.2020.
//

import Foundation

// Структура, которая хранит всю инфу о рецептах
struct Recipes
{
    var recipeName: String
    var recipeAuthor: String
    var recipeRating: Double
    var recipeText: String
    var recipeIcon: String
    var recipeImage: String
    
    // Функция, возвращающая данные из структуры в массиве
    static func getRecipe()->[Recipes] {
        return [
            Recipes(recipeName: "Борщ", recipeAuthor: "И.И.Иванов", recipeRating: 3.4, recipeText: "Говядина на косточке - 500г. Капуста- 400г 3-4 картофелины 1 морковь 1 больша луковица 3-4 зуба чеснока 2 вкусных сладких свеклы. Можно предварительно попробовать. Безвкусная свекла будет просто бесполезна 2-3 ст.л. томатной пасты. Можно использовать и нормальные, свежие помидоры или помидоры собственном соку. Я пользуюсь обычно именно ими.2.ч.л соли.", recipeIcon: "ic_borsch", recipeImage: "im_borsch"),
            Recipes(recipeName: "Спагетти", recipeAuthor: "И.И.Петров", recipeRating: 0.3, recipeText: "Спагетти (или другие макаронные изделия) - 250 г Куриные бедра - 2 шт. Помидоры измельченные или томатный сок - 200 мл Чеснок - 1 зубчик Лук репчатый - 1 шт. Сыр твёрдый - 30 г Масло растительное - 2-3 ст. ложки Сахар (по желанию) - 1 ч. ложка Соль - по вкусу Перец свежемолотый - по вкусу Базилик сушеный - по вкусу Специи (на выбор) - по вкусу Зелень свежая (для подачи) - 1 веточка", recipeIcon: "ic_spagetti", recipeImage: "im_spagetti"),
            Recipes(recipeName: "Цезарь", recipeAuthor: "И.И.Сидоров", recipeRating: 2.6, recipeText: "Грудка куриная - 1 шт. (400 г) Капуста пекинская - 1 шт. Помидоры черри - 150-200 г Сыр твердый (желательно пармезан) - 50-70 г Хлеб белый - 3-4 ломтика Соль - по вкусу Масло оливковое - 6 ст.л. (для жарки) Перец черный молотый - 1 ч.л. Чеснок - 4 зубчика Майонез - 3-4 ст.л.", recipeIcon: "ic_cesar", recipeImage: "im_cesar"),
            Recipes(recipeName: "Мол. коктейль", recipeAuthor: "И.И.Лампадов", recipeRating: 4.5, recipeText: "Банан 2, Молоко или кокосовое молоко 350 мл., Какао 2 ст. ложки, Мед 1 ст. ложка, Кокосовая стружка для присыпки", recipeIcon: "ic_milkshake", recipeImage: "im_milkshake"),
            Recipes(recipeName: "Блинчики", recipeAuthor: "И.И.Коболев", recipeRating: 3.3, recipeText: "Яйцо – 1 шт., Мука – 150 г., Молоко –150 мл., Подсолнечное масло – 15 мл., Соль (по вкусу) – 20 г., Сахар (по вкусу) – 20 г.", recipeIcon: "ic_blin", recipeImage: "im_blin")
        ]
    }
}
