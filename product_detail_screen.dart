import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/product.dart';
import '../providers/cart_provider.dart';
import '../widgets/cart_icon.dart';
import 'cart_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late String _selectedSize;
  late String _selectedColor;
  int _quantity = 1;

  @override
  void initState() {
    super.initState();
    _selectedSize = widget.product.sizes.first;
    _selectedColor = widget.product.colors.first;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 900;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LUXE',
          style: GoogleFonts.playfairDisplay(fontWeight: FontWeight.bold),
        ),
        actions: const [CartIcon(), SizedBox(width: 8)],
      ),
      body: isWideScreen ? _buildWideLayout() : _buildNarrowLayout(),
      bottomNavigationBar: isWideScreen ? null : _buildBottomBar(),
    );
  }

  // 🖥 Wide layout
  Widget _buildWideLayout() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Hero(
              tag: 'product_${widget.product.id}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: widget.product.imageUrl,
                  fit: BoxFit.cover,
                  height: 600,
                ),
              ),
            ),
          ),
          const SizedBox(width: 48),
          Expanded(child: _buildProductDetails(showAddToCart: true)),
        ],
      ),
    );
  }

  // 📱 Mobile layout
  Widget _buildNarrowLayout() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'product_${widget.product.id}',
            child: CachedNetworkImage(
              imageUrl: widget.product.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: _buildProductDetails(showAddToCart: false),
          ),
        ],
      ),
    );
  }

  // 📄 Product Details
  Widget _buildProductDetails({required bool showAddToCart}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.product.brand, style: TextStyle(color: Colors.grey[600])),
        const SizedBox(height: 8),

        Text(
          widget.product.name,
          style: GoogleFonts.playfairDisplay(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 16),

        Text(
          '₹${widget.product.price}',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 16),

        Text(widget.product.description),

        const SizedBox(height: 20),

        // Size
        const Text("Size"),
        Wrap(
          children: widget.product.sizes.map((size) {
            return ChoiceChip(
              label: Text(size),
              selected: _selectedSize == size,
              onSelected: (_) {
                setState(() {
                  _selectedSize = size;
                });
              },
            );
          }).toList(),
        ),

        const SizedBox(height: 20),

        // Color
        const Text("Color"),
        Wrap(
          children: widget.product.colors.map((color) {
            return ChoiceChip(
              label: Text(color),
              selected: _selectedColor == color,
              onSelected: (_) {
                setState(() {
                  _selectedColor = color;
                });
              },
            );
          }).toList(),
        ),

        const SizedBox(height: 20),

        // Quantity
        Row(
          children: [
            IconButton(
              onPressed: _quantity > 1
                  ? () => setState(() => _quantity--)
                  : null,
              icon: const Icon(Icons.remove),
            ),
            Text(_quantity.toString()),
            IconButton(
              onPressed: () => setState(() => _quantity++),
              icon: const Icon(Icons.add),
            ),
          ],
        ),

        if (showAddToCart) ...[
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _addToCart,
            child: const Text("Add to Cart"),
          ),
        ],
      ],
    );
  }

  // 📦 Bottom bar (mobile)
  Widget _buildBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: _addToCart,
        child: Text('Add to Cart - ₹${(widget.product.price * _quantity)}'),
      ),
    );
  }

  // 🛒 Add to cart
  void _addToCart() {
    final cart = context.read<CartProvider>();

    for (int i = 0; i < _quantity; i++) {
      cart.addItem(widget.product, _selectedSize, _selectedColor);
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${widget.product.name} added to cart'),
        action: SnackBarAction(
          label: "View Cart",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CartScreen()),
            );
          },
        ),
      ),
    );
  }
}
