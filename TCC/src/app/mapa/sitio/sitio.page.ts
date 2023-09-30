import { Component, OnInit } from '@angular/core';
import { NavController, AlertController } from '@ionic/angular';

@Component({
  selector: 'app-sitio',
  templateUrl: 'sitio.page.html',
  styleUrls: ['sitio.page.scss'],
})
export class SitioPage implements OnInit {
  sitios: string[] = [
    'primavera',
    'matao',
    'vileiro',
    'acacia',
    'enxovia',
    'sta-lucia',
    'bela-vista',
    'nsa',
  ];
  mostrarSegmentQuadra: boolean = false; // Adicione esta variável
  mostrarSegment: boolean = false;
  sitioSelecionado: string = '';
  quadraSelecionada: string = 'Quadra 1'; // Defina o valor padrão aqui
  indiceSitio: number = 0;

  constructor(private navCtrl: NavController, private alertCtrl: AlertController) {
    this.sitioSelecionado = this.sitios[0];
  }

  ngOnInit() {}

  situAnterior() {
    this.indiceSitio--;
    if (this.indiceSitio < 0) {
      this.indiceSitio = this.sitios.length - 1;
    }
    this.sitioSelecionado = this.sitios[this.indiceSitio];
  }

  proximoSitio() {
    this.indiceSitio++;
    if (this.indiceSitio >= this.sitios.length) {
      this.indiceSitio = 0;
    }
    this.sitioSelecionado = this.sitios[this.indiceSitio];
  }

  selecionarSitio() {
    console.log('sitioSelecionado:', this.sitioSelecionado);
    // Implemente a lógica relacionada à seleção do sítio, se necessário.
  }

  async abrirSelect() {
    const alert = await this.alertCtrl.create({
      header: 'Selecione um Sítio',
      inputs: this.sitios.map((sitio) => ({
        type: 'radio',
        label: sitio,
        value: sitio,
        checked: sitio === this.sitioSelecionado,
      })),
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel',
        },
        {
          text: 'OK',
          handler: (data) => {
            if (data) {
              this.sitioSelecionado = data;
              // Implemente a lógica para tratar a seleção do sítio aqui
              // Por exemplo, atualizar os dados da quadra e árvores com base no sítio selecionado
            }
          },
        },
      ],
    });

    await alert.present();
  }

  mostrarOpcoesQuadras: boolean = true;

 selecionarQuadra() {
    console.log('quadraSelecionada:', this.quadraSelecionada);
    // Implemente a lógica relacionada à seleção da quadra aqui, se necessário.
  }
  

  quadrasPrimavera: string[] = [
    'Quadra 1',
    'Quadra 2', 
    'Quadra 3',
    'Quadra 4',
    'Quadra 5',
    'Quadra 6',
    'Quadra 7',
    'Quadra 8',
    'Quadra 9'
  ]; // Substitua com as quadras reais do sítio Primavera



  async abrirSelectQuadraPrimavera() {
    const alert = await this.alertCtrl.create({
      header: 'Selecione uma Quadra',
      inputs: this.quadrasPrimavera.map((quadra) => ({
        type: 'radio',
        label: quadra,
        value: quadra,
        checked: quadra === this.quadraSelecionada,
      })),
      buttons: [
        {
          text: 'Cancelar',
          role: 'cancel',
        },
        {
          text: 'OK',
          handler: (data) => {
            if (data) {
              this.quadraSelecionada = data;
              // Implemente a lógica para tratar a seleção da quadra aqui, se necessário.
            }
          },
        },
      ],
    });
  
    await alert.present();
  }
  valorN: string = '';
  valorV: string = '';
  valorF: string = '';
  valorSECA: string = '';




}

