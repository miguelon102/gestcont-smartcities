import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SettingsService {
  public mode=1;// 1 for local, 2 for production

  public API_URL;
  public GEOSERVER_URL;
  public WEB_URL;
  constructor() { 
    if (this.mode== 1) {
      this.API_URL='https://pascual.geomaticaupv.es/api';
      this.GEOSERVER_URL='https://geomaticaupv.es/geoserver';
      this.WEB_URL='https://pascual.geomaticaupv.es';

    } else if (this.mode== 2) {
      this.API_URL='https://pascual.geomaticaupv.es/api';
      this.GEOSERVER_URL='https://geomaticaupv.es/geoserver';
      this.WEB_URL='https://pascual.geomaticaupv.es';
    }
  }
}
