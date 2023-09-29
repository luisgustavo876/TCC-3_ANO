import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  
  constructor() {}
  
  isDayMode: boolean = true;
  isSunVisible: boolean = true;
  isMoonVisible: boolean = false;
  rotateClockwise: boolean = false;
  rotateCounterclockwise: boolean = false;
  sunSmall: boolean = false; // Controla o tamanho do sol
  moonSmall: boolean = false; // Controla o tamanho da lua
  
  // ion-segmente evento de troca ///////////////////////////////////////////////////////////////////  

  guia:any = 'all';
  trocar(event:any){
    console.log(event.detail.value)
    this.guia=event.detail.value
  }

  TrocaTema() {
    this.isDayMode = !this.isDayMode;

    if (this.isDayMode) {
      document.body.setAttribute('color-theme', 'light');
    } else {
      document.body.setAttribute('color-theme', 'dark');
    }

    if (this.isSunVisible) {
      this.rotateClockwise = true;
      this.sunSmall = true;

      setTimeout(() => {
        this.isSunVisible = false;
        this.isMoonVisible = true;
        this.sunSmall = false;
        this.rotateClockwise = false;
      }, 500);
    } else {
      this.rotateCounterclockwise = true;
      this.moonSmall = true;

      setTimeout(() => {
        this.isSunVisible = true;
        this.isMoonVisible = false;
        this.moonSmall = false;
        this.rotateCounterclockwise = false;
      }, 500);
    }
  }
}

