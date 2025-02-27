import 'package:fake_storeapp/Widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart_item.dart';
import '../providers/cart_provider.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('장바구니'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // 장바구니 비우기
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<CartProvider>(
          builder: (context, cart, child) {
            if (cart.itemCount == 0) {
              return const Center(child: Text('장바구니에 상품이 없습니다.'));
            }
            return Column(
              children: [
                // 장바구니 상품 목록
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      // 장바구니 상품 정보
                      CartItem cartItem = cart.items[index];
                      return CartItemWidget(cartItem: cartItem);
                    },
                  ),
                ),
                // 결제하기 버튼
                ElevatedButton(
                  onPressed: () {
                    // 결제하기
                  },
                  child: Text('결제하기 - \$${cart.totalPrice.toStringAsFixed(2)}'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}