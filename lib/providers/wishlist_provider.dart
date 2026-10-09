import 'package:flutter_riverpod/flutter_riverpod.dart';

final wishlistProvider = 
  NotifierProvider<WishlistNotifier, List<int>>(WishlistNotifier.new);

class WishlistNotifier extends Notifier<List<int>>{
  @override
  List<int> build(){
    return[];
  }

  void toggleWishlist(int productId){
    if (state.contains(productId)){
      state = state.where((id) => id != productId).toList();
    } else {
      state = [...state, productId];
    }
  }

  bool isInWishlist(int productId){
    return state.contains(productId);
  }
}