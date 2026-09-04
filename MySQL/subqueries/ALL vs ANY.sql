#ALL and ANY Statements



SELECT * 
FROM ordered_items
;


# biggest order from shipper_id = 1
SELECT MAX(quantity * unit_price) as total_order_price
FROM ordered_items
WHERE shipper_id = 1
;


# if there are orders from other shippers that are bigger than the biggest order from shipper_id = 1
SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) as total_order_price
FROM ordered_items
WHERE (quantity * unit_price) > (SELECT MAX(quantity * unit_price) as total_order_price
							FROM ordered_items
                            WHERE shipper_id = 1)
;


# all orders that are bigger than all the orders from shipper_id = 1, so bigger than 227.04 which is their MAX.
SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) as total_order_price
FROM ordered_items
WHERE (quantity * unit_price) > ALL (SELECT (quantity * unit_price) as total_order_price
							FROM ordered_items
                            WHERE shipper_id = 1)
;


# all orders that are bigger than ANY OF the orders from shipper_id = 1, so bigger than 5.0 which is their MIN.
SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) as total_order_price
FROM ordered_items
WHERE (quantity * unit_price) > ANY (SELECT (quantity * unit_price) as total_order_price
							FROM ordered_items
                            WHERE shipper_id = 1)
;





