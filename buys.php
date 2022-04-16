<html lang="en" style="height: auto;">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Online Book Shop</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/navbar.css">
        <link rel="stylesheet" href="css/buys.css">
        
    </head>
     <body style="height: auto;">
     <?php 
        session_start();
        include_once("navbar.php");
        include_once("connection.php");

       
        if(isset($_GET["order_id"])){
            $order_id = $_GET["order_id"];
            $sql = "SELECT * FROM buys WHERE order_id = '$order_id'";
            $result = mysqli_query($con, $sql);
            $buys = array();
            $index = 0;
            $total = 0;
            while($row = mysqli_fetch_assoc($result)){
                //find book
                $sql = "SELECT * FROM books WHERE book_number = '$row[book_number]'";
                $result2 = mysqli_query($con, $sql);
                $book = mysqli_fetch_assoc($result2);

                $buys[$index] = (object) ['buys_id' => $row['buys_id'], 'book_title' => $book['title'], 'book_image' => $book['cover_image'],
                             'amount' => $row['amount'], 'price' => $book['price']];
                $total += $book['price'] * $row['amount'];
                $index++;
            }   
        }


     
     
     
     ?>
        <section class="py-5 mt-5">
            <div class="container">
                <div class="card rounded-0">
                    <div class="card-body">
                        <div class="w-100 justify-content-between d-flex">
            
                            <a href="buys.php?order_id=<?php echo  $order['order_id']?>" class="btn btn-outline-primary">Order:  <?php echo $order_id ?></a>
                        </div>
                            <hr class="border-warning">
                            <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="DataTables_Table_0_length">
                                 </div></div>
                                    <div class="col-sm-12 col-md-6">
                                    <div id="DataTables_Table_0_filter" class="dataTables_filter">

                                    </div></div></div><div class="row"><div class="col-sm-12">
                            <table class="table table-stripped text-dark dataTable no-footer" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">
                                
                                <thead>
                                    <tr role="row">
                                        <th class="sorting" style="width: 116.2px;">#</th>
                                        <th class="sorting"  style="width: 176.15px;">Book Title</th>
                                        <th class="sorting"  style="width: 150.9px;">Book Image</th>
                                        <th class="sorting"  style="width: 152.325px;">Quantity</th>
                                        <th class="sorting"  style="width: 152.325px;">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                                                    
                                                                    
                                        <tr >
                                    <?php foreach($buys as $buy){ ?>
                                        
                                            <td><?php echo  $buy->buys_id?></td>
                                            <td><?php echo  $buy->book_title?></td>
                                            <td><img class="table_image" src="<?php echo  $buy->book_image?>" alt=""></td>
                                            <td><?php echo  $buy->amount?></td>
                                            <td><?php echo  $buy->price * $_SESSION['rate'] .' ' . $_SESSION['currency']?> </td>
                                        </tr>
                                    <?php } ?>
                                    <tr>
                                        <td colspan="5" class="text-right"><b>Total</b>
                                        <span>(include tax 10%)</span>
                                                    <?php echo floor($total * $_SESSION['rate'] * 100) / 100 .' ' . $_SESSION['currency']?>
                                        </td>
                                        
                                    </tr>
                                   
                                </tbody>
                            </table>
                                        <div class="row d-flex justify-content-center">
                                         
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-4 bg-dark">
            <div class="container">
              <p class="m-0 text-center text-white">Copyright © Books 2022</p>
              <p class="m-0 text-center text-white">Developed By: <a href="#">krenarajdini</a></p>
          </div>
        </footer>
    </body>
</html>