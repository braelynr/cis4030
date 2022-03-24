import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import '../models/attraction.dart';
import 'dart:collection';

import 'attraction.dart';

class ScheduleModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List<Attraction> _items = [];

  /// An unmodifiable view of the items in the schedule.
  UnmodifiableListView<Attraction> get items => UnmodifiableListView(_items);

  /// The current total price of all items (assuming all items cost $42).
  int get listLength => _items.length;

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(Attraction item) {
    _items.add(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    _items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}