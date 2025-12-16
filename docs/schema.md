# /Orders endpoint

- **Endpoint**: `https://interview-demo-api.azurewebsites.net/orders`
- **Method**: GET
- **Returns**: A list of orders

## Schema

```
Order: {
	id: String,
	createdAtUTC: DateTime,
	lines: [OrderLine],
	currencyCode: String,
}
```

```
OrderLine: {
	id: String,
	quantity: int,
	product: Product,
	discount: double,
}
```

```
Product: {
	id: String,
	tax: double,
	price: double,
}
```

## JSON snippet

```json
[
  {
    "id": "ORD-0014",
    "createdAtUTC": "2024-01-15T08:10:00Z",
    "lines": [
      {
        "id": "LINE-013-00",
        "quantity": 5,
        "product": {
          "id": "PROD-003",
          "name": "Bacon Burger",
          "tax": 0.15,
          "price": 16.99
        },
        "discount": 0.25
      },
      {
        "id": "LINE-013-01",
        "quantity": 3,
        "product": {
          "id": "PROD-003",
          "name": "Bacon Burger",
          "tax": 0.15,
          "price": 16.99
        },
        "discount": 0.19
      },
      {
        "id": "LINE-013-02",
        "quantity": 1,
        "product": {
          "id": "PROD-007",
          "name": "Fries",
          "tax": 0.15,
          "price": 5.99
        },
        "discount": 0.09
      },
      {
        "id": "LINE-013-03",
        "quantity": 1,
        "product": {
          "id": "PROD-002",
          "name": "Cheese Burger",
          "tax": 0.15,
          "price": 14.99
        },
        "discount": 0.07
      },
      {
        "id": "LINE-013-04",
        "quantity": 5,
        "product": {
          "id": "PROD-010",
          "name": "Sprite",
          "tax": 0.15,
          "price": 4.5
        },
        "discount": 0.23
      }
    ],
    "currencyCode": "NZD"
  },
  {
    "id": "ORD-0017",
    "createdAtUTC": "2024-01-15T02:54:00Z",
    "lines": [
      {
        "id": "LINE-016-00",
        "quantity": 5,
        "product": {
          "id": "PROD-002",
          "name": "Cheese Burger",
          "tax": 0.15,
          "price": 14.99
        },
        "discount": 0.22
      }
    ],
    "currencyCode": "NZD"
  }
]
```
