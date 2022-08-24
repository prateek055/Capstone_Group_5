import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { isNgTemplate } from '@angular/compiler';


@Component({
  selector: 'app-view-cart',
  templateUrl: './view-cart.component.html',
  styleUrls: ['./view-cart.component.css'],
})
export class ViewCartComponent implements OnInit {
  Carts: any = [];
  crt: any;
  deleted: boolean = false;
  TotalPrice: number = 0;
  sold: any = [];
  message: string | undefined;
  products: any = [];
  clearcart: boolean = false;
  totDiscount: number = 0
  constructor(private httpClient: HttpClient) {}

  ngOnInit(): void {
    fetch(`http://localhost:8080/cart`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })
      .then((res) => res.json())
      .then((data) => {
        data = data.filter((item: any) => {
          return item.username == localStorage.getItem('user');
        });
        this.Carts = data;
        data.forEach((element: any) => {
          element.totDiscount = element.discount_amt
          console.log(element.stocks)
          this.TotalPrice =
            this.TotalPrice + (element.product_price - element.discount_amt);
        });
      });
  }
  

  increaseItem = async( id:number,cart: Object, quantity: number, product_price: number, discount_amt: number) => 
    {
      let pd: any = []
     quantity = +quantity  + 1
     this.TotalPrice =0;
     this.Carts.forEach((element: any)=>{
        if(element.id == id){
          element.totDiscount += element.discount_amt 
          element.quantity = quantity
        }
        console.log(element.stocks)
        this.TotalPrice = this.TotalPrice + ((element.product_price*element.quantity) - (element.discount_amt*element.quantity));
        pd.push(element)
        
     })
     this.Carts = pd ;
    const data = {...cart, quantity};
    console.log(data)
   const res = await fetch(`http://localhost:8080/cart/${id}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(data),
    });
   }
   decreaseItem = async(id:number,cart: Object, quantity: number) => 
    { 
     let pd: any = []
     if(quantity > 1){
     quantity = +quantity  -1
     console.log( typeof(quantity))
     this.TotalPrice =0;
     this.Carts.forEach((element: any)=>{
        if(element.id == id){
          element.totDiscount -= element.discount_amt 
          element.quantity = quantity
        }
        
        this.TotalPrice = this.TotalPrice + ((element.product_price*element.quantity) - (element.discount_amt*element.quantity));
        pd.push(element)
        
      })
      this.Carts=pd;
     
    const data = {...cart, quantity};
    console.log(data)
    await fetch(`http://localhost:8080/cart/${id}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(data),
    });
   }}
  DeleteItem = async (id: number) => {
    let res = await fetch(`http://localhost:8080/cart/${id}`, {
      method: 'DELETE',
      headers: {
        'Content-Type': 'application/json',
      },
    });
    if (res.status) {
      this.deleted = true;
      this.message = 'Your Item has been deleted from cart';
    } else {
      this.deleted = false;
    }
    setTimeout(() => {
      this.deleted = false;
    }, 3000);

    this.Carts = this.Carts.filter((item: any) => {
      return item.id != id;
    });
    this.TotalPrice = 0;
    this.Carts.forEach((element: any) => {
      this.TotalPrice =
        this.TotalPrice + (element.product_price - element.discount_amt);
    });
  };

  CheckOut = async () => {
    console.log("pk out");
    await fetch(`http://localhost:8080/cart`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })
      .then((res) => res.json())
      .then((data) => {
        data = data.filter((item: any) => {
          return item.username == localStorage.getItem('user');
        });
        this.sold = data;
      });

    await fetch(`http://localhost:8080/products`, {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
      },
    })
      .then((res) => res.json())
      .then((data) => {
        this.products = data;
      });

    for (let i = 0; i < this.sold.length; i++) {
      this.products.forEach(async (pd: any) => {
        if (pd.id == this.sold[i].product_id) {
          const data = {
            id: pd.id,

            product_name: pd.product_name,
            product_type: pd.product_type,
            product_price: pd.product_price,
            product_desc: pd.product_desc,
            stocks: pd.stocks - this.sold[i].quantity,
            img_url: pd.img_url,
          };

          

          let res = await fetch(`http://localhost:8080/products/${pd.id}`, {
            method: 'PUT',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify(data),
          });
          await fetch(`http://localhost:8080/cart/${this.sold[i].id}`, {
            method: 'DELETE',
            headers: {
              'Content-Type': 'application/json',
            },
          });
          this.Carts = [];
          this.TotalPrice = 0;
          this.deleted = true;
          this.message = 'your Order has been placed';
          const d = new Date();
          const user = localStorage.getItem('user');
          const salelog = {
            username: user,
            product_name: pd.product_name,
            product_price: pd.product_price,
            quantity: this.sold[i].quantity,
            date: `${d.getDate()}/${d.getMonth()}/${d.getFullYear()}-${d.getHours()}:${d.getMinutes()}:${d.getSeconds()}`,
          };
          await fetch(`http://localhost:8080/sales-log`, {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify(salelog),
          });
        }
      });
    }
    setTimeout(() => {
      this.deleted = false;
    }, 3000);
  };
}
