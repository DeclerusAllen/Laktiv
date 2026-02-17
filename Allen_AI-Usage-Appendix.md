# Apendiks pou Diskloz Itilizasyon AI

**Non Etidyan an** Allen DECLERUS  
**Tit Pwojè a:** LAKResèt 
**Dat:** 16/02/2026 

---

## Enstriksyon
**Konplete apendiks sa si w itilize zouti Entèlijans Ayifisyèl nan pwojè ou a. Li te mèt te kòd, rechèch ki gen asistans AI, chatbot, oubyen nenpòt lòt zouti AI, ou dwe soumèt pwojè ou a ak dokiman sa.**

**Si w pat itilize zouti AI, Tcheke sa** 

☐ *Pa gen zouti AI ki te itilize pou travay sa*

---

## Istorik Itilizasyon Zouti AI

**Konplete yon seksyon pou chak zouti AI/Sesyon ou itilize:**

### Zouti AI #1

**Non/Platfòm Zouti a:** 
ChatGPT 

**Dat & Lè Itilizasyon an:** 
14/02/2026 environ 9h

**Objektif Itilizasyon an:** mwen te gen yon erè type (debug)
*(Ekz., Deboge kòd, Asistans rechèch, elatriyee.)*

**_Prompt_ oubyen Rekèt ki te fèt la**
```
j'ai un model avec un service qui fait un requetee get sur un API, comment gerer l'erreur type 'List <dynamic> is not a subttyp of type <List<string>' in type cast donne moi une reponse precis avec de bon exemple

Pourquoi static Future <List<dynamic >> getRecette() async donne erreur avec le model 

```

**Tout repons/output zouti AI a te bay la:**
```
Voici une réponse précise + pratique pour ton cas 👇

❌ Erreur
type 'List<dynamic>' is not a subtype of type 'List<String>' in type cast

📌 Pourquoi cette erreur arrive ?

Quand tu fais une requête GET sur une API, Dart décode le JSON en :

List<dynamic>


Mais ton modèle ou ton code attend :

List<String>


👉 Dart refuse le cast automatique.

🧠 Exemple JSON API
{
  "id": 1,
  "title": "Vacances",
  "images": [
    "img1.jpg",
    "img2.jpg"
  ]
}


Après jsonDecode :

images = List<dynamic>


Pas encore List<String>.

❌ Mauvaise implémentation (cause erreur)
images: json['images'] as List<String>,


➡️ Crash car Dart ne peut pas caster directement.

✅ Bonne solution (conversion typée)

Utilise .cast<String>() ou List<String>.from().

Repons 2

La méthode static Future<List<dynamic>> getRecette() async donne une erreur avec ce model car elle retourne une liste de dynamic, alors que tu as une classe Recettes bien définie.
Il faut retourner Future<List<Recettes>> pour que la liste soit typée correctement et que tu puisses utiliser les méthodes et propriétés de Recettes sans erreur de type.

Exemple correct :

Sinon, tu devras faire des castings partout, ce qui n’est pas recommandé.

```

**Kòman w te itilize repons ou te jwenn nan:**  
*(Dekri etap pa etap sa w te fè ak kontni zouti AI sa te jenere a)*
```
a pati ekzanp sa mwen rive konprann e korije erè tip sa



```

**Kisa w aprann sou repons ou jwenn nan?**  
*(Kisa w aprann sou pwosès la? Kòman zouti AI sa ede w nan aprantisaj ak konpreyansyon w?)*
```
aprann sekirize fason map modelize done kap soti nan API la



```

## Kontribisyon Sou Travay Final La

**Pousantaj kontribisyon pa w antanke imen, sou travay final la:** 90%

------

### Zouti AI #2

**Non/Platfòm Zouti a:** 
Claude AI  
*(ekz., ChatGPT, Grammarly, GitHub Copilot, Rechèch Google, elatriyeee.)*

**Dat & Lè Itilizasyon an:** 
16/02/2026 environ 2h

**Objektif Itilizasyon an:** rechech sou achitekti crud nan sevis
*(Ekz., Deboge kòd, Asistans rechèch, elatriyee.)*

**_Prompt_ oubyen Rekèt ki te fèt la**
```
donne un exemple simple en Dart comment bien structurer crud en creant 	une class service afin d'allerger les fichiers UI




```

**Tout repons/output zouti AI a te bay la:**
```
class AlbumService { // Placeholder stockage local mémoire static final List<Album> _albums = []; /// CREATE static Future<void> addAlbum(Album album) async { _albums.add(album); } /// READ ALL static Future<List<Album>> getAlbums() async { return _albums; } /// READ BY ID static Future<Album?> getAlbumById(int id) async { return _albums.firstWhere( (album) => album.id == id, orElse: () => Album(id: 0, title: 'Not Found', imageUrl: ''), ); } /// UPDATE static Future<bool> updateAlbum(Album updatedAlbum) async { final index = _albums.indexWhere((album) => album.id == updatedAlbum.id); if (index != -1) { _albums[index] = updatedAlbum; return true; } return false; } /// DELETE static Future<bool> deleteAlbum(int id) async { return _albums.removeWhere((album) => album.id == id) > 0; } }

Exemple utilisation dans un Screen 
final albums = await AlbumService.getAlbums();

await AlbumService.addAlbum(
  Album(
    id: 1,
    title: "Vacances 2025",
    imageUrl: "https://picsum.photos/200",
  ),
);



```

**Kòman w te itilize repons ou te jwenn nan:**  
*(Dekri etap pa etap sa w te fè ak kontni zouti AI sa te jenere a)*
```
mwen gade ekzanp lan, epi adapte kod la ak lojik projè m nan



```

**Kisa w aprann sou repons ou jwenn nan?**  
*(Kisa w aprann sou pwosès la? Kòman zouti AI sa ede w nan aprantisaj ak konpreyansyon w?)*
```
mwen aprann mye de achitekti CRUD ak dart



```

## Kontribisyon Sou Travay Final La

**Pousantaj kontribisyon pa w antanke imen, sou travay final la:** 80%



---
<img width="203" height="104" alt="image" src="https://gist.github.com/user-attachments/assets/a979028b-66f8-4661-83fc-b22b41e0eb3b" />

## Rekonesans Entegrite Akadamik ESIH

Soumèt apendiks sa vle di ke mwen afime ke:
- [v] Mwen bay verite epi diskloz tout zouti AI mwen itilize pou pwojè sa
- [v] _Prompt_ ak rekèt mwen bay yo konplè epi ekzat
- [v] Mwen konprann si mwen pa diskloz tout zouti AI yo, sa ka kontribiye ak dezonè plis echèk mwen nan matyè sa

**Siyati Etidyan** Allen Declerus 
**Dat:** 16/02/2026

---