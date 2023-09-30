import { Component, OnInit } from '@angular/core';
import { NavController, AlertController } from '@ionic/angular';

@Component({
  selector: 'app-sitio',
  templateUrl: 'sitio.page.html',
  styleUrls: ['sitio.page.scss'],
})
export class SitioPage implements OnInit {
  sitios: string[] = [
    'matao',
    'vileiro',
    'acacia',
    'primavera',
    'enxovia',
    'sta-lucia',
    'bela-vista',
    'nsa',
  ];

  sitioSelecionado: string;
  quadraId: number;
  arvores: { quantidade: number }[] = [];
  indiceSitio: number = 0; // Índice para controlar a navegação pelos sítios

  constructor(private navCtrl: NavController, private alertCtrl: AlertController) {
    this.sitioSelecionado = this.sitios[0];
    this.quadraId = 1;

    this.arvores = [
      { quantidade: 10 },
      { quantidade: 15 },
      { quantidade: 20 },
    ];
  }

  ngOnInit() {
  }

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
    // Implemente a lógica para tratar a seleção do sítio aqui
    // Por exemplo, atualizar os dados da quadra e árvores com base no sítio selecionado
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
}
