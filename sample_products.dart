import '../models/product.dart';

final List<Product> sampleProducts = [
  const Product(
    id: '1',
    name: 'Classic Wool Blazer',
    brand: 'LUXE Essentials',
    description:
        'A timeless wool-blend blazer perfect for any occasion. Features a tailored fit with notched lapels and two-button closure. Fully lined for comfort.',
    price: 189.99,
    originalPrice: 249.99,
    imageUrl:
        'https://images.unsplash.com/photo-1594938298603-c8148c4dae35?w=800',
    category: 'Jackets',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
    colors: ['Navy', 'Charcoal', 'Black'],
    rating: 4.8,
    reviewCount: 124,
    isFeatured: true,
  ),

  const Product(
    id: '2',
    name: 'Silk Midi Dress',
    brand: 'Elegance',
    description:
        'Flowing silk midi dress with a flattering A-line silhouette. Features delicate pleating and a subtle sheen that catches the light beautifully.',
    price: 159.99,
    imageUrl:
        'https://images.unsplash.com/photo-1595777457583-95e059d581b8?w=800',
    category: 'Dresses',
    sizes: ['XS', 'S', 'M', 'L'],
    colors: ['Champagne', 'Blush', 'Emerald'],
    rating: 4.9,
    reviewCount: 89,
    isNew: true,
    isFeatured: true,
  ),

  const Product(
    id: '3',
    name: 'Premium Denim Jeans',
    brand: 'Urban Edge',
    description:
        'High-quality stretch denim with a modern slim fit. Crafted from sustainable materials with premium hardware and reinforced stitching.',
    price: 89.99,
    originalPrice: 120.00,
    imageUrl: 'https://images.unsplash.com/photo-1542272604-787c3835535d?w=800',
    category: 'Pants',
    sizes: ['28', '30', '32', '34', '36'],
    colors: ['Indigo', 'Black', 'Light Wash'],
    rating: 4.6,
    reviewCount: 256,
  ),

  const Product(
    id: '4',
    name: 'Cashmere Sweater',
    brand: 'LUXE Essentials',
    description:
        '100% pure cashmere crew neck sweater. Incredibly soft and lightweight while providing excellent warmth. A wardrobe essential.',
    price: 229.99,
    imageUrl:
        'https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=800',
    category: 'Tops',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
    colors: ['Camel', 'Grey', 'Cream', 'Navy'],
    rating: 4.9,
    reviewCount: 178,
    isFeatured: true,
  ),

  const Product(
    id: '5',
    name: 'Leather Ankle Boots',
    brand: 'Stride',
    description:
        'Handcrafted Italian leather ankle boots with a comfortable block heel. Features cushioned insole and durable rubber outsole.',
    price: 199.99,
    originalPrice: 279.99,
    imageUrl: 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?w=800',
    category: 'Shoes',
    sizes: ['6', '7', '8', '9', '10', '11'],
    colors: ['Black', 'Brown', 'Tan'],
    rating: 4.7,
    reviewCount: 92,
  ),

  const Product(
    id: '6',
    name: 'Linen Summer Shirt',
    brand: 'Coastal',
    description:
        'Breathable pure linen shirt perfect for warm weather. Relaxed fit with mother-of-pearl buttons and a classic collar.',
    price: 79.99,
    imageUrl:
        'https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=800',
    category: 'Tops',
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
    colors: ['White', 'Sky Blue', 'Sage', 'Sand'],
    rating: 4.5,
    reviewCount: 143,
    isNew: true,
  ),

  const Product(
    id: '7',
    name: 'Tailored Wool Trousers',
    brand: 'LUXE Essentials',
    description:
        'Expertly tailored wool trousers with a modern straight leg. Features pressed creases and adjustable waist tabs for a perfect fit.',
    price: 149.99,
    imageUrl:
        'https://images.unsplash.com/photo-1594938298603-c8148c4dae35?w=800',
    category: 'Pants',
    sizes: ['28', '30', '32', '34', '36', '38'],
    colors: ['Charcoal', 'Navy', 'Black', 'Camel'],
    rating: 4.8,
    reviewCount: 67,
  ),

  const Product(
    id: '8',
    name: 'Oversized Trench Coat',
    brand: 'Metropolitan',
    description:
        'Classic trench coat reimagined with an oversized silhouette. Water-resistant cotton gabardine with signature check lining.',
    price: 299.99,
    originalPrice: 399.99,
    imageUrl:
        'https://images.unsplash.com/photo-1591047139829-d91aecb6caea?w=800',
    category: 'Jackets',
    sizes: ['XS', 'S', 'M', 'L'],
    colors: ['Honey', 'Stone', 'Black'],
    rating: 4.9,
    reviewCount: 54,
    isFeatured: true,
  ),

  const Product(
    id: '9',
    name: 'Athletic Performance Tee',
    brand: 'Active Pro',
    description:
        'High-performance moisture-wicking t-shirt with four-way stretch. Perfect for workouts or casual wear.',
    price: 49.99,
    imageUrl:
        'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=800',
    category: 'Activewear',
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
    colors: ['Black', 'White', 'Navy', 'Red'],
    rating: 4.4,
    reviewCount: 312,
  ),

  const Product(
    id: '10',
    name: 'Pleated Maxi Skirt',
    brand: 'Elegance',
    description:
        'Elegant accordion-pleated maxi skirt in flowing chiffon. Features a comfortable elastic waistband and subtle shimmer.',
    price: 119.99,
    imageUrl:
        'https://images.unsplash.com/photo-1583496661160-fb5886a0uj9a?w=800',
    category: 'Skirts',
    sizes: ['XS', 'S', 'M', 'L'],
    colors: ['Dusty Rose', 'Midnight', 'Ivory'],
    rating: 4.7,
    reviewCount: 78,
    isNew: true,
  ),

  const Product(
    id: '11',
    name: 'Canvas Sneakers',
    brand: 'Street Style',
    description:
        'Classic canvas low-top sneakers with vulcanized rubber sole. Timeless design that pairs with everything.',
    price: 59.99,
    imageUrl:
        'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?w=800',
    category: 'Shoes',
    sizes: ['6', '7', '8', '9', '10', '11', '12'],
    colors: ['White', 'Black', 'Red', 'Navy'],
    rating: 4.6,
    reviewCount: 445,
  ),

  const Product(
    id: '12',
    name: 'Quilted Puffer Jacket',
    brand: 'Nordic',
    description:
        'Lightweight yet warm quilted puffer with sustainable recycled fill. Water-resistant shell with ribbed cuffs.',
    price: 179.99,
    originalPrice: 229.99,
    imageUrl: 'https://images.unsplash.com/photo-1544923246-77307dd628b7?w=800',
    category: 'Jackets',
    sizes: ['XS', 'S', 'M', 'L', 'XL'],
    colors: ['Black', 'Olive', 'Burgundy', 'Cream'],
    rating: 4.8,
    reviewCount: 189,
  ),
];

final List<String> categories = [
  'All',
  'Tops',
  'Dresses',
  'Pants',
  'Jackets',
  'Skirts',
  'Shoes',
  'Activewear',
];
