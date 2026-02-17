# LAKResèt
Se yon app kap ede prepare manje ak bay bon jan resèt.

## ABSTRACT

**Non aplikasyon an:** LAKResèt  
**Kategori:** Manje  
**Objektif aplikasyon an:**  
LAKResèt se yon aplikasyon mobil ki pèmèt itilizatè yo chèche diferan resèt.

**Ki pwoblèm li rezoud:**  
Aplikasyon LAKResèt pèmèt itilizatè yo jwenn bon jan resèt ak bon jan enstriksyon pou yon meyè kizin.

**Fonksyonalite prensipal yo:**
- Jwenn lis resèt.
- Pèmèt itilizatè a gen posiblite pou li repwodwi resèt.
- Pèmèt itilizatè a ajoute yon resèt nan favori e kap tou disponib an lokal.

**Otè ak Wòl:**
 Non                         Wòl                       

 Allen DECLERUS             Data layer                 
 Jean Rood Kerry LUCIEN     UI/UX + Navigasyon         
 Leila JOAZILE              UI/UX + Navigasyon         

**Rezime teknik:**
- Aplikasyon an gen 5 ekran ladan: ekran dinamik (Splash, Akèy, Detay, Favori) epi Apwopo ki se yon ekran statik.
- Premye ekran ki parèt la se splash la, aprè l dirije w nan akèy la. Si w klike sou yon resèt, lap pèmèt ou wè detay sou resèt sa. Si w ajoute yon resèt nan favori, lap tou disponib san koneksyon.

- Nou itilize yon API eksten (yon fake API pou moman, dummyjson) pou done resèt yo, done sa yo ki modelize nan models.dart.

- Tout resèt yo afiche nan ekran akèy la, men ou ka ajoute yo nan Favori kote nou itilize shared_preferences (lojik yo defini nan favorites_services) pou ajoute done ki nan favori yo an lokal.
- UI/UX: itilize statefulwidget, statelesswidget, scaffold, Image.network (pou afiche imaj resèt yo).
  
## Kek package nou itilize
### http, shared_preferences, flutter_launcher_icons.

## Videyo a ak fichye APK
### [Google Drive](https://drive.google.com/drive/folders/1cnbakFRDzMpASMp-Wn6kcdUfGV8VCGLU?usp=sharing)
