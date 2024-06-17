# Study Journal
## 黃科理
1. 接線不完整: 
Catapult的RTL合成會根據資料大小給予不同的位寬大小，我們在Edge detection的圖片比較小，而此份project的圖片稍微大一點，其高與寬各多1bit，而我在FSIC接線的時候忽略到此多出來的位寬，結果讓Config register裡面的weight與height變成高阻抗，導致整個FSIC沒辦法啟動。
3. 以較小的圖像大小進行模擬: 
此Project在模擬的時候設圖像大約360x640，這樣一顆一顆pixel輸入真的要運算超久，根本沒辦法驗證DMA與Testbench有沒有寫對，因此有在圖片大小上先以較小的圖片大小30x40進行模擬，也因此可以確定DMA到底有沒有啟動與中止，看到了完整的資料流動。
5. 差一點能夠上FPGA板:
我們雖然都完成了FSIC FPGA sim，其對應的jupyiter notebook也都寫好了，但上板了就沒有成功啟動，DMA都沒有回應，回去看edge detection 與fir 的fsic fpga lab，edge edgetection的jupyiter notebook沒有完整的運作ip，而fir不需要ap start就可以算出答案，我認為有可能是沒有reset到soc的部分，但沒有時間去確定。
7. 感受到CMD與GUI速度的差別: 
跑CMD看log的速度比GUI看波型快好多。

## 姜維
1. FSIC Debug Trace : 
FSIC DMA Start後各個模組內沒有資料進入，邏輯上懷疑是rst沒有拉起造成的，之後從data_out_rdy接線Trace到reg_rst沒有拉起，持續往後到data_in_rdy，從usr_prj > AS > IO > AS > LA > CC，發現中間啟動mix module rst的線根據wdata reg的控制(valid)(問題在位元沒對上)，還有grd_rst沒有拉起(ap_start控制)
2. ASIC Flow嘗試 : 
在一開始找不到IC Lab的製程檔案放置位置，並嘗試使用130nm的製程跑ASIC Flow，但由於合成結果有問題，且製程的檔案不完整而沒辦法跑APR，便嘗試從LIB生成NDM檔，但在Placement的時候會不斷地出現錯誤，懷疑是生成的NDM檔案是不能用的，然後在做APR時發現合成跑出的結果對比Testbench是錯的便開始尋找錯誤原因，但做了各種嘗試時間不夠完成APR只生成出了合成後的gate level code

## 吳建賢
1. KMEAN實現
kmean如何在硬體上實現是我在最早開始項目最注重的問題，因為理論上它需要讀取整張圖片，這部分是不可能的，因為這樣會消耗太多的Areas以及造成很多latancy，我已我想了一個硬體友好的架構"讀取一width寫一width"，這樣的優點是可以省很多資源，缺點是圖片會有一條一條的線條。但是對於漫畫風來說可以接受。
2. HLS優化
後面我們還是覺得一個widthw太慢，所以我們決定想另一種方式達到跟K-Mean相同的算法，後來我想說RGB都是0~255，所以完全可以在一開始就給他分成多個組(我們決定是5組)，然後用csim去跑發現效果比原來的讀取一width寫一width還要好。
3. HLS時序
在讀取的時候我們遇到死鎖問題，後面在報告的時候老師有說是因為KMEAN前面也要加FIFIO因為資料會輸入輸出是按照順序的，如果不吐東西出來，Mix模塊接不到他就會一直停等，所以需要添加。
4. verilog tb
這部分的就是為了測試RTL跟Gate Level有沒有一樣，我在寫TB的時候遇到了問題，我根據波行有觀察到他有一個輸出"_d"接到輸入"_q"一開始我忽略了這個東西，他應該是要外接SRAM還是甚麼之類的。後面TB就直接把線接起來就正常跑了。
5. 合成以及電路模擬失敗
因為我們一開始忘了LAB3是APR的東西，所以我是用CVSD的.13製程去合成的，但是我們發現合成出來的電路有沒辦法跑，目前猜測是SDC的設定的問題。

## 黃少輔
1. KMEAN架構
我們從C-sim到一開始HLS實現，都是採一次讀取整行，再做分群和迭代。然而這樣會導致資料傳輸有延遲，太慢可能回影響整體效能。因此我們改使用兩層迴圈，以1R1W的方式及時輸出pixel值，此方法可以省去迭代大大節省時間。
2. 資料傳送
因為我們處理的是彩色圖片，因此使用三通道輸入輸出，考慮到block diagram結構，我們在一個模組同時輸出兩筆data flow，其中因為輸出與接收的條件不同，導致死鎖問題，最後是統一了輸入與輸出的條件才得以解決。
3. 時序問題
研究了關於FIFO_DEPTH與模組latency的關係，其中也與pin的型態有關，例如ccs_in_wait、Directpath等等，步驟如下:使用directives.tcl設定在catapult裡的IO型態->run Architecture得到各模組的latency->修改FIFO_DEPTH的值
4. QuestaSim無法模擬
使用catapult合成verilog時，遇到QuestaSim持續跳掉，導致無法debug和觀察波形，判斷應該是deadlock問題造成的

## Ref

+ https://people.ece.cornell.edu/land/courses/ece5760/FinalProjects/f2010/kaf42_jay29_teg25/teg25_jay29_kaf42/index.html