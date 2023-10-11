import { Component, Renderer2, ElementRef, ViewChild } from '@angular/core';
import { AuthenticateService } from '../services/auth.service';
import { CrudService } from '../services/crud.service';
import { Storage, getDownloadURL, ref, uploadBytesResumable } from '@angular/fire/storage';
import { MessageService } from '../services/message.service';
import { AnimationController } from '@ionic/angular';
import { ActivatedRoute } from '@angular/router';
import * as moment from 'moment';
import { ModalController } from '@ionic/angular';



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
  dia: any;
  Quinzena:any;

  constructor(private modalCtrl: ModalController) {
    console.log(moment.locale())
    this.data_atual = moment().format('MMMM DD YYYY, h:mm:ss a');
    this.setQuinzena()
    this.setDia()
  }

  //////////////////////////////////////////////////////////////////////////////////////////////////////////

  anteriorQuinzena() {
    let diaAtual = Number(this.data.dia);

    if (diaAtual <= 15) {
      this.data.dia = '16';
      this.data.mes = moment(this.data.mes, 'MMMM').subtract(1, 'months').format('MMMM');
    } else {
      this.data.dia = '1';
    }

    this.setQuinzena();
  }

  proximaQuinzena() {
    let diaAtual = Number(this.data.dia);

    if (diaAtual <= 15) {
      this.data.dia = '16';
    } else {
      this.data.dia = '1';
      this.data.mes = moment(this.data.mes, 'MMMM').add(1, 'months').format('MMMM');
    }

    this.setQuinzena();
  }

  setQuinzena() {
    let Quinzena = '1°';

    if (Number(this.data.dia) > 15) {
      Quinzena = '2°';
    }

    this.Quinzena = Quinzena + ' Quinzena ' + this.data.mes;
  }

  proximoDia() {
    const diaAtual = Number(this.data.dia);
    const ultimoDiaDoMes = moment(this.data.mes, 'MMMM').daysInMonth();

    if (diaAtual < ultimoDiaDoMes) {
      this.data.dia = String(diaAtual + 1);
    } else {
      this.data.dia = '1';
      this.data.mes = moment(this.data.mes, 'MMMM').add(1, 'months').format('MMMM');
    }

    this.setQuinzena();
    this.setDia();
  }

  anteriorDia() {
    let diaAtual = Number(this.data.dia);

    if (diaAtual > 1) {
      this.data.dia = String(diaAtual - 1);
    } else {
      const diaAnterior = moment(this.data.mes, 'MMMM').subtract(1, 'months').endOf('month').format('DD');
      this.data.dia = diaAnterior;
      this.data.mes = moment(this.data.mes, 'MMMM').subtract(1, 'months').format('MMMM');
    }

    this.setDia();
    this.setQuinzena();
  }

  setDia() {
    this.dia = 'Dia ' + this.data.dia;
  }

  abrirCalendario() {

  }

}