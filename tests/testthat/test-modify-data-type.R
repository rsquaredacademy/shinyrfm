test_that("modify_data_type() converts columns to the requested types", {
  df <- data.frame(
    amount = c("10", "20"),
    segment = c("A", "B"),
    order_date = c("01/02/2020", "31/12/2020"),
    code = c(1L, 2L),
    quantity = c("3", "4"),
    check.names = FALSE
  )

  out <- modify_data_type(
    data = function() df,
    input = list(date_type_3 = "%d/%m/%Y"),
    data_types = function() {
      c("numeric", "factor", "Date", "character", "integer")
    },
    new_names = function() {
      c("amount", "segment", "order_date", "code", "quantity")
    }
  )

  expect_s3_class(out, "data.frame")
  expect_equal(out$amount, c(10, 20))
  expect_s3_class(out$segment, "factor")
  expect_equal(as.character(out$segment), c("A", "B"))
  expect_s3_class(out$order_date, "Date")
  expect_equal(out$order_date, as.Date(c("2020-02-01", "2020-12-31")))
  expect_equal(out$code, c("1", "2"))
  expect_equal(out$quantity, c(3L, 4L))
})

test_that("modify_data_type() handles column names with spaces", {
  df <- data.frame(`Customer ID` = c("1", "2"), check.names = FALSE)

  out <- modify_data_type(
    data = function() df,
    input = list(),
    data_types = function() c("integer"),
    new_names = function() c("customer_id")
  )

  expect_equal(out$customer_id, c(1L, 2L))
})

test_that("modify_data_type() errors on an unknown data type", {
  df <- data.frame(amount = c(1, 2))

  expect_error(
    modify_data_type(
      data = function() df,
      input = list(),
      data_types = function() c("complex"),
      new_names = function() c("amount")
    ),
    "Unsupported data type: complex"
  )
})
