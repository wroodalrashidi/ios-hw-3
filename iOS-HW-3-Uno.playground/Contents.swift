import UIKit
/*:
 # الواجب الثالث: لعبة UNO
 
 تحتوي لعبة الأونو على ٤ ألوان و١٠ أرقام.
 - تتكرر الأرقام لكل لون مرتين. ماعدا الرقم صفر، يتواجد مرة واحدة للون الواحد.
 - توجد هناك ورقتين Action Cards لكل لون.
 1. Draw
 2. Reverse
 3. Pass
 
 */


//: ![Uno Deck](deck.jpg)


/*:
 ### المطلوب:
 #### الجزء الأول:
 -- قم بإنشاء struct باسم Card به  الصفات التالية
 * color: String
 * number: Int
 
 -- قم بإنشاء مصفوفة من نوع `Card` فارغة، ثم قم بملئها بالأرقام فقط مرة واحدة من دون ال action cards ومن دون تكرار كل رقم مرتين (تكرار الأرقام بونص 🎁)
 
 - Green: 0 -> 9
 - Red: 0 -> 9
 - Blue: 0 -> 9
 - Yellow: 0 -> 9
 
 #### الجزء الثاني:
 -- قم بإنشاء دالة بداخل الستركت Card باسم  `imageName`والتي تقوم بإرجاع اسم الصورة للكرت. قم بفتح المجلد Resources الموجود بداخل الplayground من النافذة اليسرى لرؤية طريقة تسمية الكرت
 ###### مثال على تسمية الكروت موضحة كالتالي، قم بتشغيل الكود لرؤية الصور أسفل هذه الأكواد:
 */


var blue_5 = UIImage(named: "Blue_6.png")
var red_9 = UIImage(named: "Red_9.png")

var green_Skip = UIImage(named: "Green_Skip.png")
var wild_Draw = UIImage(named: "Wild_Draw.png")


/*:
 
 
 ### الجزء الثالث (تجريب الكود😍):
 قم بإزالة الملاحظة عن الأسطر الأخيرة لتجربة الكود إن كان يعمل بشكل مناسب،
 الجزء الأول سيظهر كرت عشوائي
 الجزء الثاني سيظهر مجموعة الكروت كاملة 🃏🎴
 ```
 let randomCard = cards.randomElement()!
 let randomCardImage = UIImage(named: randomCard.imageName())
 ```
 
 ```
 let cardImages = cards.map{UIImage(named: $0.imageName())}
 randomCardImage
 ```
 إن تم ذلك بالشكل الصحيح من دون أي خطأ، فقد نجحت في المهمة! 🎉
 
 #### الجزء الرابع (بونص 🎁):
 -- قم بتعبئة مجموعة الكروت كل رقم يعرض مرتين، إلا الصفر، يعرض مرة واحدة، كما هو موضح في صورة مجموعة الأونو في بداية الملف
 -- قم باستعمال For Loop لتعبئة جميع الكروت
 
 
 #### الجزء الخامس (إكسترا إكسترا بونص 🌶🔥)
 -- قم بتعبئة المصفوفة أيضاً ب Action Cards من خلال تحويلك للصفات إلى optional بإضافة علامة الاستفهام إليها
 اسم ال Action Cards موضح في الصور بداخل ال Resources
 
 ```
 var color: String?
 var action: String?
 var number: Int?
 ```
 لا تنسى إزالة كلمة  Optional بسبب تحويلك للمتغيرات إلى متغيرات بعلامة الاستفهام. ربما ستضطر إلى كتابة بعض أوامر if
 
 */


//: ---

//: # الحل ...



/// قم بإنشاء الستركت هنا

struct Card {
    var colour: String?
    var number: Int?
    var action: String?
    
    
    func imageName() -> String {
        if number != nil{
            print("\(colour!)_\(number!)")
            return "\(colour!)_\(number!)"
        }else if action == "Wild_Draw" || action == "Wild" {
            return "\(action!)"
        }else {
            return "\(colour!)_\(action!)"
        }
    }}

var Cards: [Card] = []
let colours = ["Red", "Yellow", "Green", "Blue"]
let actions = ["Draw", "Skip", "Reverse"]


for loop in 1...2  {
    
    for colour in colours {
        if loop == 1 {
            Cards.append(Card(colour: colour, number: 0))
        }
        
        
        for i in 1...9 {
            Cards.append(Card(colour: colour, number: i))
        }
        
        for action in actions{
            Cards.append(Card(colour: colour, action: action))}
        //  loop one includes wild
        if loop == 1 {
            Cards.append(Card(colour: colour, action: "Wild"))
        }
        else{
            Cards.append(Card(colour: colour, action:"Wild_Draw"))
        }
        
    }}









// لا تقم بإزالة الملاحظات إلا عند وصولك للمطلوب الثالث


let randomCard = Cards.randomElement()!
let randomCardImage = UIImage(named: randomCard.imageName())


let cardImages = Cards.map{UIImage(named: $0.imageName())}
randomCardImage
cardImages







