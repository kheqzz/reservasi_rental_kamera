final List<Map<String, dynamic>> users = [
  {
    "id": 1,
    "name": "Hanif Saifuddin",
    "email": "hanif@example.com",
    "phone": "081234567890",
    "role": "customer",
  },
  {
    "id": 2,
    "name": "Raka Pratama",
    "email": "raka@example.com",
    "phone": "081298765432",
    "role": "customer",
  },
  {
    "id": 3,
    "name": "Admin Studio",
    "email": "admin@camrent.id",
    "phone": "081111111111",
    "role": "admin",
  },
];

final List<Map<String, dynamic>> categories = [
  {"id": 1, "name": "Mirrorless"},
  {"id": 2, "name": "DSLR"},
  {"id": 3, "name": "Lens"},
];

final List<Map<String, dynamic>> cameras = [
  {
    "id": 1,
    "name": "Sony A6400",
    "categoryId": 1,
    "pricePerDay": 150000,
    "stock": 3,
    "rating": 4.8,
    "status": "available",
    "imageUrl": "https://example.com/images/sony-a6400.jpg",
  },
  {
    "id": 2,
    "name": "Canon EOS 80D",
    "categoryId": 2,
    "pricePerDay": 120000,
    "stock": 2,
    "rating": 4.6,
    "status": "available",
    "imageUrl": "https://example.com/images/canon-80d.jpg",
  },
  {
    "id": 3,
    "name": "Sigma 30mm f1.4",
    "categoryId": 3,
    "pricePerDay": 50000,
    "stock": 4,
    "rating": 4.9,
    "status": "maintenance",
    "imageUrl": "https://example.com/images/sigma-30mm.jpg",
  },
];

final List<Map<String, dynamic>> bookings = [
  {
    "id": 1,
    "userId": 1,
    "cameraId": 1,
    "startDate": "2026-05-20",
    "endDate": "2026-05-22",
    "totalDays": 3,
    "totalPrice": 450000,
    "status": "approved",
    "notes": "Ambil di studio jam 09:00",
  },
  {
    "id": 2,
    "userId": 2,
    "cameraId": 2,
    "startDate": "2026-05-25",
    "endDate": "2026-05-26",
    "totalDays": 2,
    "totalPrice": 240000,
    "status": "pending",
    "notes": "Untuk acara wisuda",
  },
];

final List<Map<String, dynamic>> reviews = [
  {
    "id": 1,
    "userId": 1,
    "cameraId": 1,
    "rating": 5,
    "comment": "Kameranya bersih dan autofocus cepat.",
  },
  {
    "id": 2,
    "userId": 2,
    "cameraId": 2,
    "rating": 4,
    "comment": "Bagus, tapi baterai agak cepat habis.",
  },
];

final List<Map<String, dynamic>> notifications = [
  {
    "id": 1,
    "userId": 1,
    "title": "Booking Disetujui",
    "message": "Booking Sony A6400 kamu sudah disetujui admin.",
    "isRead": false,
  },
  {
    "id": 2,
    "userId": 2,
    "title": "Pengingat Pengembalian",
    "message": "Jangan lupa mengembalikan kamera besok.",
    "isRead": true,
  },
];
