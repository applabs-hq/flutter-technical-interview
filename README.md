# Flutter Technical Assessment

## Overview

This Flutter application demonstrates order management and reporting functionality. The app fetches orders from an API, calculates financial metrics, and displays comprehensive reports.

## IMPORTANT POINTS

- We are here to assess your basic technical ability, decision making, and communication throughout
- Do not write tests
- This is not a test of your UI ability
- This is not a test of speed
- You do not have to finish the assessment within the timeframe

## Data Models

### Order

```dart
Order: {
  id: String,
  createdAtUTC: DateTime,
  lines: [OrderLine],
  currencyCode: "NZD",
}
```

### OrderLine

```dart
OrderLine: {
  id: String,
  quantity: int,
  product: Product,
  discount: double,
}
```

### Product

```dart
Product: {
  id: String,
  tax: double,
  price: double,
}
```

## Requirements

### Out of Scope

- Tests of any kind
- Date picker UI (this can be hard coded to today NZST)

### 1. API Integration

Make an API call to `/orders` using the schema details laid out in [schema.md](docs/schema.md):

- **Endpoint**: `https://interview-demo-api.azurewebsites.net/orders`
- **Method**: GET
- **Query Parameters**:
  - `from`: DateTime in NZST (start of date range)
  - `to`: DateTime in NZST (end of date range)
- **Returns**: A list of orders for the specified date range

**Implementation Notes**:

- Use the `timezone` package (already added) to handle NZST timezone conversions [timezone package here](https://pub.dev/packages/timezone)
- Query for orders from TODAY only, using NZST dates for your query parameters
- This should return 6 orders when querying for today's date

### 2. Order Model Enhancements

The order model returned from the API is missing some calculated details. Add the following computed properties:

1. **Subtotal**: Sum of the price of all order lines excluding tax and discounts

2. **Total Tax**: Sum of all tax of all order lines for the order

3. **Total Discount**: Sum of all discounts of all order lines for the order

4. **Order Total**: Complete order total
   - Formula: `subtotal - totalDiscount + totalTax`
   - Or: `subtotal + discount + tax` (note: depends if discount arrives as a negative number)

### 3. Reports Page

The `reports.page.dart` should display two comprehensive reports:

#### Report #1: Revenue Report (Totals Report)

[example report](docs/revenue_report.png)

This report provides aggregate totals for all orders within the date range:

1. **Sum of all tax**: Total tax across all orders
2. **Sum of all subtotals**: Total subtotal across all orders
3. **Sum of all discounts**: Total discounts across all orders
4. **Total of all orders**: Grand total for all orders returned for the date range

#### Report #2: Sales Report

[example report](docs/sales_report.png)

This report provides product-level analytics:

1. **Total count of all purchased products**: Sum of all quantities across all order lines
2. **Sum of each report line**: Aggregate totals per product (or per order line, depending on requirements)

## Setup

Checkout [setup.md](docs/setup.md) for project setup instructions
