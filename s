<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Go Points</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            direction: rtl;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .container {
            padding: 20px;
        }
        .user-info {
            margin-bottom: 20px;
        }
        .user-info input {
            padding: 10px;
            width: 200px;
            margin-bottom: 10px;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .balance {
            font-size: 20px;
            margin-top: 20px;
        }
        .offer {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<header>
    <h1>Go Points</h1>
</header>

<div class="container">
    <div class="user-info">
        <h3>تسجيل الدخول</h3>
        <label for="username">الاسم:</label>
        <input type="text" id="username" placeholder="أدخل اسمك">
        <label for="password">كلمة السر:</label>
        <input type="password" id="password" placeholder="أدخل كلمة السر">
        <button class="btn" onclick="login()">دخول</button>
    </div>

    <div id="user-info" style="display: none;">
        <h3>معلوماتك</h3>
        <div id="balance" class="balance"></div>
        <button class="btn" onclick="addPoints()">إضافة عملات</button>
        <button class="btn" onclick="subtractPoints()">خصم عملات</button>

        <div class="offer">
            <h4>عروض خاصة</h4>
            <p>احصل على 10% إضافية عند إضافة 20 Go Points أو أكثر!</p>
        </div>
    </div>
</div>

<script>
    const users = {
        'حازم': { password: '12345', balance: 0 },
        'حيدر': { password: '12345', balance: 0 },
        'إيمان': { password: '12345', balance: 0 },
        'الهام': { password: '12345', balance: 0 },
        'أميرة': { password: '12345', balance: 0 },
        'علي': { password: '12345', balance: 0 },
        'جميلة': { password: '12345', balance: 0 },
        'إيناس': { password: '12345', balance: 0 },
        'آلاء': { password: '12345', balance: 0 }
    };

    function login() {
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        
        if (users[username] && users[username].password === password) {
            document.getElementById('user-info').style.display = 'block';
            document.getElementById('user-info').style.direction = 'rtl';
            document.querySelector('.user-info').style.display = 'none';
            updateBalance(username);
        } else {
            alert('الاسم أو كلمة السر غير صحيحة');
        }
    }

    function updateBalance(username) {
        document.getElementById('balance').innerText = `رصيدك الحالي: ${users[username].balance} Go Points`;
    }

    function addPoints() {
        const username = document.getElementById('username').value;
        users[username].balance += 5; // Adding 5 Go Points
        updateBalance(username);
    }

    function subtractPoints() {
        const username = document.getElementById('username').value;
        if (users[username].balance >= 0.5) {
            users[username].balance -= 0.5; // Subtracting 0.5 Go Points
            updateBalance(username);
        } else {
            alert('رصيدك غير كافٍ للشراء');
        }
    }
</script>

</body>
</html><!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Go Points</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            direction: rtl;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .container {
            padding: 20px;
        }
        .user-info {
            margin-bottom: 20px;
        }
        .user-info input {
            padding: 10px;
            width: 200px;
            margin-bottom: 10px;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .balance {
            font-size: 20px;
            margin-top: 20px;
        }
        .offer {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<header>
    <h1>Go Points</h1>
</header>

<div class="container">
    <div class="user-info">
        <h3>تسجيل الدخول</h3>
        <label for="username">الاسم:</label>
        <input type="text" id="username" placeholder="أدخل اسمك">
        <label for="password">كلمة السر:</label>
        <input type="password" id="password" placeholder="أدخل كلمة السر">
        <button class="btn" onclick="login()">دخول</button>
    </div>

    <div id="user-info" style="display: none;">
        <h3>معلوماتك</h3>
        <div id="balance" class="balance"></div>
        <button class="btn" onclick="addPoints()">إضافة عملات</button>
        <button class="btn" onclick="subtractPoints()">خصم عملات</button>

        <div class="offer">
            <h4>عروض خاصة</h4>
            <p>احصل على 10% إضافية عند إضافة 20 Go Points أو أكثر!</p>
        </div>
    </div>
</div>

<script>
    const users = {
        'حازم': { password: '12345', balance: 0 },
        'حيدر': { password: '12345', balance: 0 },
        'إيمان': { password: '12345', balance: 0 },
        'الهام': { password: '12345', balance: 0 },
        'أميرة': { password: '12345', balance: 0 },
        'علي': { password: '12345', balance: 0 },
        'جميلة': { password: '12345', balance: 0 },
        'إيناس': { password: '12345', balance: 0 },
        'آلاء': { password: '12345', balance: 0 }
    };

    function login() {
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        
        if (users[username] && users[username].password === password) {
            document.getElementById('user-info').style.display = 'block';
            document.getElementById('user-info').style.direction = 'rtl';
            document.querySelector('.user-info').style.display = 'none';
            updateBalance(username);
        } else {
            alert('الاسم أو كلمة السر غير صحيحة');
        }
    }

    function updateBalance(username) {
        document.getElementById('balance').innerText = `رصيدك الحالي: ${users[username].balance} Go Points`;
    }

    function addPoints() {
        const username = document.getElementById('username').value;
        users[username].balance += 5; // Adding 5 Go Points
        updateBalance(username);
    }

    function subtractPoints() {
        const username = document.getElementById('username').value;
        if (users[username].balance >= 0.5) {
            users[username].balance -= 0.5; // Subtracting 0.5 Go Points
            updateBalance(username);
        } else {
            alert('رصيدك غير كافٍ للشراء');
        }
    }
</script>

</body>
</html>
