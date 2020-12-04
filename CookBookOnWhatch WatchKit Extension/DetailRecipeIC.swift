//
//  DetailRecipeIC.swift
//  CookBookOnWhatch WatchKit Extension
//
//  Created by Elizaveta on 04.12.2020.
//

import WatchKit
import Foundation


class DetailRecipeIC: WKInterfaceController
{
    @IBOutlet weak var iconRecipe: WKInterfaceImage!
    @IBOutlet weak var nameRecipe: WKInterfaceLabel!
    @IBOutlet weak var imageRecipe: WKInterfaceImage!
    @IBOutlet weak var authorRecipe: WKInterfaceLabel!
    @IBOutlet weak var textRecipe: WKInterfaceLabel!
    @IBOutlet weak var ratingRecipe: WKInterfaceSlider!
    
    var recipe: Recipes! // Создаем переменную типа Рецепт, из которой будем тянуть описание
    
    override func awake(withContext context: Any?)
    {
        super.awake(withContext: context)
        
        // Если пришел контекст (т.е. если мы нормально передали номер строки)
        if let item = context as? Recipes
        {
            self.recipe = item // чтобы можно было забрать описание рецепта
            
            // Выводим название, автора, картинку, описание, рейтинг и тд
            iconRecipe.setImageNamed(item.recipeIcon)
            nameRecipe.setText(item.recipeName)
            imageRecipe.setImageNamed(item.recipeImage)
            authorRecipe.setText(item.recipeAuthor)
            textRecipe.setText(item.recipeText)
            ratingRecipe.setValue(Float(item.recipeRating))
        }
    }
    
    // Передаем строку описания рецепта (вот ту очень длинную дичь, которая не влезла на экран с картинкой рецепта)
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any?
    {
        return recipe.recipeText
    }

    // Для сохранения рейтинга. Т.е если пользователь изменил рейтинг, то при возврате он сохраняется
    // UPD: Точнее, должно сохранятся, но нам это не показали, а гуглить англоязычные сайты мне лень
    @IBAction func changeRating(_ value: Double)
    {
        recipe.recipeRating = value
    }
    
}
