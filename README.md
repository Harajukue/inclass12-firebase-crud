# Inventory Manager — Activity 12

A Flutter inventory app backed by Firebase Firestore with real-time sync.

## Features

### Core (Required)
- **Add items** — name, category, quantity, price via validated bottom sheet form
- **Read items** — real-time `StreamBuilder` on Firestore `inventory` collection
- **Update items** — edit any field; changes persist instantly to Firestore
- **Delete items** — confirmation dialog before removal
- **Form validation** — empty fields, non-numeric quantity/price, negative values all blocked

### Enhanced Features
1. **Live search** — search bar filters items by name as you type, with a clear button
2. **Category filter chips** — horizontal scrollable chips (All, Electronics, Clothing, Food, Tools, Other) to filter items by category; combines with search
3. **Low stock / out-of-stock badges** — items with qty ≤ 5 show an orange "Low stock" badge; qty = 0 shows a red "Out of stock" badge

## Architecture

```
lib/
  main.dart                  # App entry, Firebase init, InventoryScreen UI
  models/item.dart           # Item data class with toMap() / fromMap()
  services/inventory_service.dart  # Firestore CRUD + stream
  firebase_options.dart      # Auto-generated Firebase config
```

## How to Run

```bash
flutter pub get
flutter run
```
