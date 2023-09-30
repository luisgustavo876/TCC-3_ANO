import { Component, Renderer2, ElementRef, ViewChild } from '@angular/core';
import { AuthenticateService } from '../services/auth.service';
import { CrudService } from '../services/crud.service';
import { Storage, getDownloadURL, ref, uploadBytesResumable } from '@angular/fire/storage';
import { MessageService } from '../services/message.service';
import { AnimationController } from '@ionic/angular';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})

export class HomePage {

  sitioSelecionado: string; // Variável para armazenar o sítio selecionado

  constructor() {
    // Inicialize o valor padrão (se necessário)
    this.sitioSelecionado = 'matao'; // Defina o valor padrão para 'Matao', por exemplo
  }

  // Esta função é chamada quando o valor do ion-segment muda
  onSitioSelecionadoChange() {
    // Você pode adicionar qualquer lógica aqui para lidar com a seleção do sítio
    // Por exemplo, você pode emitir um evento para informar o componente pai sobre a seleção.
    // Neste exemplo, estamos apenas imprimindo o sítio selecionado no console.
    console.log('Sitio Selecionado:', this.sitioSelecionado);
  }
  // quadraId: number;
  // arvores: any[]; // Substitua por seu modelo de dados real
  // metodosExtracao: any[]; // Substitua por seu modelo de dados real

  // constructor(private route: ActivatedRoute) {
  //   this.quadraId = +this.route.snapshot.paramMap.get('quadraId'); // Obtém o ID da quadra da URL
  //   // Aqui, você deve buscar os dados reais das árvores e métodos de extração com base no quadraId
  //   // Substitua os arrays vazios por dados reais do seu backend
  // }

    // ion-segmente evento de troca ///////////////////////////////////////////////////////////////////  

    guia:any = 'all';
    trocar(event:any){
      console.log(event.detail.value)
      this.guia=event.detail.value
    }

}





