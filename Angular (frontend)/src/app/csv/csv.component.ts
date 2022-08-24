import { HttpClient } from '@angular/common/http';
import { Component, Injectable, OnInit } from '@angular/core';

@Component({
  selector: 'app-csv',
  templateUrl: './csv.component.html',
  styleUrls: ['./csv.component.css']
})
export class CsvComponent implements OnInit {

  file:File|any
     
    constructor(
      private http:HttpClient
    ) { }
  
    ngOnInit(): void {
    }
  
    onFileSelect(event:any){
      this.file=event.target.files[0];
    }
  
    upload(){
      const fd=new FormData();
      fd.append('file',this.file)
      this.http.post("http://localhost:8080/csv/upload",fd)
      .subscribe(res=>{
        console.log(res)
      })
     
    }
  }