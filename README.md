

## 📱 Features

### 🧭 1. Home / Offers Screen
- Displays multiple product categories (Clothes, Electronics, Accessories, etc.).
- Shows products in a grid view with name, image, and price.
- Supports filtering by category.

### 🏷️ 2. Filter Screen
- Select category (e.g., Real Estate → Villas for Sale).
- Choose location (e.g., Egypt).
- Filter by number of rooms, price range, payment method (Cash / Installments).
- Filter by property status (Ready / Under Construction).
- “Show Results” button displays filtered listings.

### 💼 3. Packages Screen
- Displays available advertising packages:
  - Basic  
  - Extra  
  - Plus  
  - Super  
- Each package includes:
  - Price  
  - Duration  
  - Features (e.g., “Pinned on the top every 2 days”, “Highlighted across Egypt”)  
- Users can select one or multiple packages before continuing.

---

## 🧩 Technologies Used

| Technology | Purpose |
|-------------|----------|
| Flutter 3.x | UI development |
| Dart | Programming language |
| SQLite | Local database for storing packages, categories, and products |
| Cubit (Bloc) | State management |
| Flutter ScreenUtil | Responsive UI design |
| DevicePreview | Device layout testing |

---

## 🏗️ Project Structure

```

lib/
│
├── core/
│   ├── localstorgae
│   ├── helpers/
│   
│     
│
├── features/
│   ├── filter/
│   │   ├── presentation/ controller/screens/widgets
│   │   ├── data/repo/model/datasource
│   │    
│   ├── packages/
│   │   ├── presentation/ controller/screens/widgets
│   │   ├── data/repo/model/datasource
│   │  
│   └── offers/
│       ├── presentation/ controller/screens/widgets
│       ├── data/repo/model/datasource
│       
│
└── main.dart



## ⚙️ How to Run the Project

1. **Install dependencies:**

   flutter pub get


2. **Run the app:**

   flutter run
   

## 🪄 Highlights

* 100% pixel-perfect UI matching design.
* Organized codebase following **Clean Architecture**.
* Local data storage (no external API).
* Easily extendable for real backend integration later.


