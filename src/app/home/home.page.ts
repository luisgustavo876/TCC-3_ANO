import { Component, Renderer2, ElementRef, ViewChild } from '@angular/core';
import { AuthenticateService } from '../services/auth.service';
import { CrudService } from '../services/crud.service';
import { Storage, getDownloadURL, ref, uploadBytesResumable } from '@angular/fire/storage';
import { MessageService } from '../services/message.service';
import { AnimationController } from '@ionic/angular';
import { ActivatedRoute } from '@angular/router';
import * as moment from 'moment';


@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})

export class HomePage {

  data_atual:any;
  data = {
    dia:moment().format('DD'),
    mes:moment().format('MMMM'),
    ano:moment().format('YYYY')
  }

  Quinzena:any;

  constructor() {
    console.log(moment.locale())
    this.data_atual = moment().format('MMMM DD YYYY, h:mm:ss a');
    this.setQuinzena()
  }

  anteriorQuinzena() {
    this.data.dia = String(Number(moment().format('DD')) - 15)
    this.setQuinzena();
  }
  
  proximaQuinzena() {
    console.log(this.data)
    this.data.dia = String(Number(moment().format('DD')) + 15)
    this.setQuinzena();
  }
  definirDiaAumentar() {
    this.data.dia = String(15 - Number(this.data.dia))
  }
  definirDiaDiminuir() {
    this.data.dia = String( Number(this.data.dia) + 15)
  }

  aumentarMes(){
    if (Number(this.data.dia) > 15) {
      this.data.mes = moment().add(1, 'month').calendar(); 
    }
  }

  reduzirMes(){
    if (Number(this.data.dia) > 15) {
      this.data.mes = moment().subtract(1, 'month').calendar(); 
    }
  }


  setQuinzena() {
    let dia = '1°'
    
    if (Number(this.data.dia)> 15)
      dia = "2°"
    
    this.Quinzena = dia + 'Quinzena '+this.data.mes
  }

}





