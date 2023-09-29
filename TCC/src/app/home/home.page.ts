import { Component, Renderer2, ElementRef, ViewChild } from '@angular/core';
import { AuthenticateService } from '../services/auth.service';
import { CrudService } from '../services/crud.service';
import { Storage, getDownloadURL, ref, uploadBytesResumable } from '@angular/fire/storage';
import { MessageService } from '../services/message.service';
import { AnimationController } from '@ionic/angular';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})

export class HomePage {

    // ion-segmente evento de troca ///////////////////////////////////////////////////////////////////  

    guia:any = 'all';
    trocar(event:any){
      console.log(event.detail.value)
      this.guia=event.detail.value
    }

}





