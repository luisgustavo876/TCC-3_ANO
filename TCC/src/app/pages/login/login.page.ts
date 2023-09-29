import { Component, OnInit } from '@angular/core';
import { AuthenticateService } from '../../services/auth.service';
import { CrudService } from '../../services/crud.service';
import { Storage, getDownloadURL, ref, uploadBytesResumable } from '@angular/fire/storage';


@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {

  constructor(
    public _authenticate: AuthenticateService,
    private _crudService: CrudService,
    public storage: Storage,

  ) { }

  ngOnInit() {
  }

  // isLoading: boolean = false;
  // nome_usuario: any;

  // realizarLogin(dados: any) {
  //   this._authenticate.login(dados.email, dados.password);
  // }

}
