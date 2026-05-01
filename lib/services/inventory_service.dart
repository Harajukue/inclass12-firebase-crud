import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/item.dart';

class InventoryService {
  final CollectionReference _col =
      FirebaseFirestore.instance.collection('inventory');

  Stream<List<Item>> streamItems() => _col.orderBy('name').snapshots().map(
        (snap) => snap.docs
            .map((d) => Item.fromMap(d.id, d.data() as Map<String, dynamic>))
            .toList(),
      );

  Future<void> addItem(Item item) => _col.add(item.toMap());

  Future<void> updateItem(Item item) =>
      _col.doc(item.id).update(item.toMap());

  Future<void> deleteItem(String id) => _col.doc(id).delete();
}
