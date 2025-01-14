﻿# 飾品交易平台推薦系統

##### 使用mysql資料庫與Flask製作，並以前端HTML、Line Bot呈現
##### 創建資料庫shop,通過flask連接資料庫
##### Line Bot 使用line developer，以及web hook ngrok實作


### 網頁呈現
##### 1.用戶註冊,登入,登出,修改密碼
註冊模組概述:實現使用者成為網站的會員功能。在註冊頁面中，填寫會員資料，然後點擊“同意協議並註冊”，將自動驗證是否存在，如果不存在則保存在資料庫中，否則提示修改。
註冊頁面模組:
創建註冊頁面表單－>顯示註冊頁面－>驗證並保存註冊資料

登錄模塊概述:在該頁面中，填寫會員帳號,密碼和驗證碼，點擊登入按鈕即可實現會員的登錄，輸入出錯則給予提示。
登錄頁面模組:
生成驗證碼－>顯示驗證碼－>檢驗證碼->保存會員登錄狀態
會員退出功能：清空Session中的user_id和username

##### 2.首頁商品圖片輪播牆展示,顯示熱銷和推薦購買,搜索商品
顯示商品熱銷(根據商品銷售量),顯示商品推薦(根據用戶搜索或者瀏覽次數),每個商品圖片
需要有一個鏈接,用於跳轉到商品詳細資料的頁面,右上角有登入和註冊,登錄成功後用戶點擊可
以查看用戶信息,並可以登出.正上方有搜索框,可以搜索商品,可以根據商品名稱
關鍵字搜索商品,跳轉到一個類似首頁但沒有輪播展示,可以下拉的包含所有符合條件
商品的頁面,沒有相關商品則返回'未找到相關商品'。右邊有推薦商品，可以根據用戶輸入的特徵資料推薦出適合的商品。
知識中心，針對鑽石提供使用者專業的知識解說。會員中心，對會員客戶已擁有的商品作排列呈現。
以及我的訂單、收藏清單分別是加入購物車與加入收藏的商品內容頁。

##### 3.查看商品詳細資訊,加入購物車,清空購物車,加減商品數量
選擇商品時，可以將鼠標懸浮到商品圖片處，此時會在圖片右下角顯示一個購物車按鈕
另外一種方法，單擊商品圖片進入到商品詳情頁可以在商品詳情正下方顯示購物車按鈕

添加購物車會形成表格，包含商品照片，型號，單價和一個加減數量的數字屬性對話框，商品屬性依據商品資料庫獲得，商品id會加入進去客戶資料庫
客戶資料列表之購物車子列表。數字對話框會顯示數字1，當數字為0時刪除客戶資料列表購物車的子列表中的商品

##### 4.提交訂單,設置默認收貨地址,顯示QR碼,查看訂單詳情
支付頁面:若沒有設置收貨地址,則必須填寫地址,有則顯示默認地址,可以修改地址,點擊
提交彈出二維碼(無實際功能),再點擊二維碼下方提交跳轉到成功界面,點擊取消則返
回支付頁面,再點擊取消返回購物車頁面
訂單詳情頁面:查看訂單詳情

##### 5.用戶管理
查看,刪除,更改所有用戶信息;查看所有訂單信息,商品管理; 查看,刪除,更改所有商品信息;查看商品銷量排行
登入管理員帳號跳轉管理者頁面,可以搜索查看某個用戶的資料、修改用戶的狀態、刪除用戶、添加用戶和查看所有訂單。
商品至少包含圖片與價格。


### Line Bot呈現
##### 1.聖誕禮物
應景聖誕節氣氛，將資料庫中的部分商品投放在Line的輪播牆上，與網頁上的活動內容連動。

##### 2.年末感恩祭人氣商品9折
推出周年慶，資料庫中的部分商品打折回饋，與網頁的活動內容連動。

##### 3.新品介紹
將新加入資料庫中的商品以輪播的方式投在Line上。

##### 4.預約鑑賞
提供實體店面，並確認用戶是否要用Line做預約的服務。

##### 5.官方網站
點擊後會進入網頁網站觀看更多商品內容，並享用網站的功能。

##### 6.製作者
以圖片與文字內容列出製作者名單。
