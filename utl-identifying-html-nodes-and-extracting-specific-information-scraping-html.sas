Identifying html nodes and extracting specific information scraping html                                                    
                                                                                                                            
                                                                                                                            
github                                                                                                                      
https://tinyurl.com/y7o2f2ht                                                                                                
https://github.com/rogerjdeangelis/utl-identifying-html-nodes-and-extracting-specific-information-scraping-html             
                                                                                                                            
StackOverflow                                                                                                               
https://tinyurl.com/ybttpdun                                                                                                
https://stackoverflow.com/questions/62099008/rvest-not-fetching-the-product-details-using-html-nodes                        
                                                                                                                            
Joe Marin Profile                                                                                                           
https://stackoverflow.com/users/9743957/joe-marin                                                                           
                                                                                                                            
*_                   _                                                                                                      
(_)_ __  _ __  _   _| |_                                                                                                    
| | '_ \| '_ \| | | | __|                                                                                                   
| | | | | |_) | |_| | |_                                                                                                    
|_|_| |_| .__/ \__,_|\__|                                                                                                   
        |_|                                                                                                                 
;                                                                                                                           
                                                                                                                            
https://www.amazon.in/s?k=Smartphone&rh=n%3A1389401031&ref=nb_sb_noss                                                       
                                                                                                                            
If you view html source of https://www.amazon.in/s?k=Smartphone&rh=n%3A1389401031&ref=nb_sb_noss.                           
Just right click on the right panal and select view source in Google Chrome.                                                
                                                                                                                            
Here is the key nodes with Aphone name and Price;                                                                           
                                                                                                                            
<span class="a-size-medium a-color-base a-text-normal">Apple iPhone XR (64GB) - White</span>                                
<span class="a-price-symbol">?</span><span class="a-price-whole">49,900</span></span></span>                                
                                                                                                                            
*            _               _                                                                                              
  ___  _   _| |_ _ __  _   _| |_                                                                                            
 / _ \| | | | __| '_ \| | | | __|                                                                                           
| (_) | |_| | |_| |_) | |_| | |_                                                                                            
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                           
                |_|                                                                                                         
;                                                                                                                           
                                                                                                                            
WORK. WANT total obs=28 (sample)                                                                                            
                                                                                                                            
 NAME                                                                        RUPEE                                          
                                                                                                                            
 Apple iPhone XR (64GB) - White                                              49,900                                         
 Apple iPhone 11 (64GB) - White                                              68,300                                         
 Samsung Galaxy M20 (Ocean Blue , 4GB RAM, 64GB Storage, 5000mAH Battery)    11,999                                         
 Redmi Note 8 (Space Black, 4GB RAM, 64GB Storage)                           14,499                                         
 Redmi Note 8 (Neptune Blue, 6GB RAM, 128GB Storage)                         7,989                                          
 Redmi Note 8 (Neptune Blue, 4GB RAM, 64GB Storage)                          12,999                                         
 Redmi Note 8 (Moonlight White, 6GB RAM, 128GB Storage)                      11,990                                         
 Vivo U20 (Blazing Blue, Snapdragon 675 AIE, 4GB RAM, 64GB Storage)          16,999                                         
 Nokia 105 2019 (Single SIM, Black)                                          14,499                                         
 Redmi Note 8 (Cosmic Purple, 6GB RAM, 128GB Storage)                        1,105                                          
 Nokia 105 2019 (Single SIM, Blue)                                           37,999                                         
 Nokia 2.2 2/16 Black                                                        12,990                                         
 Xiaomi Mi A3 (Not Just Blue, 6GB RAM, 128GB Storage)                        68,300                                         
 Moto G6 (Indigo Black, 4GB RAM, 64GB Storage)                               11,999                                         
 Scotch-Brite Portable 4000mAh Mobile Charger                                14,499                                         
                                                                                                                            
*          _       _   _                                                                                                    
 ___  ___ | |_   _| |_(_) ___  _ __                                                                                         
/ __|/ _ \| | | | | __| |/ _ \| '_ \                                                                                        
\__ \ (_) | | |_| | |_| | (_) | | | |                                                                                       
|___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                                       
                                                                                                                            
;                                                                                                                           
                                                                                                                            
%utl_submit_r64('                                                                                                           
library(rvest);                                                                                                             
library(xml2);                                                                                                              
library(SASxport);                                                                                                          
url <- "https://www.amazon.in/s?k=Smartphone&rh=n%3A1389401031&ref=nb_sb_noss";                                             
page <- read_html(url);                                                                                                     
name <- page %>% html_nodes(".a-size-medium.a-color-base.a-text-normal") %>% html_text();                                   
rupee <- page %>% html_nodes(".a-price-whole") %>% html_text();                                                             
want=as.data.frame(cbind(name,rupee));                                                                                      
want;                                                                                                                       
want[] <- lapply(want, function(x) if(is.factor(x)) as.character(x) else x);                                                
write.xport(want,file="d:/xpt/want.xpt");                                                                                   
');                                                                                                                         
                                                                                                                            
libname xpt xport "d:/xpt/want.xpt";                                                                                        
data want;                                                                                                                  
  set xpt.want;                                                                                                             
run;quit;                                                                                                                   
libname xpt clear;                                                                                                          
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                            
