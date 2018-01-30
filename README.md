# WCFServiceDemo

DataReader对象与数据获取
http://www.cnblogs.com/zi-xing/p/4056527.html

string insertSql = @"INSERT INTO CustomerOrder(orderDate,totalAmount,CompanyID, productId, productQty, status,orderNo)
                     Values(@orderDate, @totalAmount, @CompanyID, @productId, @productQty, @status, @orderNo)";
                using (var conn = new SqlConnection(connStr))
                using (var com = new SqlCommand(insertSql, conn))
                {
                    com.Parameters.AddWithValue("@orderDate", DateTime.Now);
                    com.Parameters.AddWithValue("@totalAmount", book.qty * book.price);
                    com.Parameters.AddWithValue("@CompanyID", 1);
                    com.Parameters.AddWithValue("@productId", book.id);
                    com.Parameters.AddWithValue("@productQty", book.qty);
                    com.Parameters.AddWithValue("@status", 3);
                    com.Parameters.AddWithValue("@orderNo", order.orderNo);
                    conn.Open();
                    com.ExecuteNonQuery();
                }


        // Create Dictionary.
        Dictionary<string, int> hash = new Dictionary<string, int>();

        // Add some data.
        hash.Add("diamond", 500);
        hash.Add("ruby", 200);
        hash.Add("pearl", 100);

        // Get value that exists.
        int value1 = hash["diamond"];
        Console.WriteLine("get DIAMOND: " + value1);

        // Get value that does not exist.
        hash.TryGetValue("coal", out int value2);
        Console.WriteLine("get COAL: " + value2);

        // Loop over items in collection.
        foreach (KeyValuePair<string, int> pair in hash)
        {
            Console.WriteLine("KEY: " + pair.Key);
            Console.WriteLine("VALUE: " + pair.Value);
        }
