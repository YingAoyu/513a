--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'FinePix Pro2 3D Camera', '3DcAM01', 'product-images/b1.jpg', 1500.00),
(2, 'EXP Portable Hard Drive', 'USB02', 'product-images/b2.jpg', 800.00),
(3, 'Luxury Ultra thin Wrist Watch', 'wristWear03', 'product-images/b3.jpg', 300.00),
(4, 'XP 1155 Intel Core Laptop', 'LPN45', 'product-images/b4.jpg', 800.00);
(5, 'jlkjl', 'LP445', 'product-images/b5.jpg', 800.00);
--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;




INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(13, 'LILI BOB', 'LSP10', 'product-images/b13.jpg', 1200.00);
(14, 'LIKE FOREST', 'LP011', 'product-images/b14.jpg', 300.00);
(15, 'RAINBOW', 'LP0001', 'product-images/b15.jpg', 700.00);







<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style.css" rel="stylesheet" type="text/css">

<link rel="stylesheet"
    href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>

<body>

    <div id="gridview">
        <div class="heading">Product Gallery for Shopping Cart</div>
<?php
$query = $db_handle->runQuery("SELECT * FROM tbl_products ORDER BY id ASC");
if (! empty($query)) {
    foreach ($query as $key => $value) {
        ?>  
            <div class="image">
            <img src="<?php echo $query[$key]["product_image"] ; ?>" />
            <button class="quick_look"
                data-id="<?php echo $query[$key]["id"] ; ?>">Quick Look</button>
        </div>
<?php
    }
}
?>
    </div>
    <div id="demo-modal"></div>
</body>
</html>