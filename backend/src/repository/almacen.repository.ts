import { Service} from 'typedi';
import * as Q from 'q';
import * as sql from 'mssql';
import { default as confDB } from '../data/config';
import * as http from 'http';
import { default as config } from '../config';
import { Query } from '../data/query';

/**
 * @summary En este archivo van todos los metodos referentes a los almacenes
 * 
 */

@Service()
export class AlmacenRepository {
    
    // ************ Variables de clase ************
    private conf: any; // variabel para guardar la configuración
    query : any;

    constructor() {
        const env: string = process.env.NODE_ENV || 'development';
        this.conf = (config as any)[env]; // ejemplo de llamada al confg.js
        this.query = new Query();
    }

   // ************ Servicios GET ************

   /**
     * Plantilla de ejemplo para un servicio GET
     * @summary Objetivo del metodo 
     * @param query { nombreVarible tipoVariable descripción }   
     * @returns { nombreVarible tipoVariable descripción }
     *  
     */
    getServicio(query: any): PromiseLike<{}> {
        return this.query.spExecute(query, "[Excepcion].[SEL_EXCEPCIONPORID_SP]")
    }

   // ************ Servicios POST ************

    /**
     *  Plantilla de ejemplo para un servicio Post
     * @summary Objetivo del metodo 
     * @param body { nombreVarible tipoVariable descripción }   
     * @returns { nombreVarible tipoVariable descripción }
     *  
     */
    postServicio(body: any): PromiseLike<{}> {
        return this.query.spExecute(body, "[Excepcion].[SEL_EXCEPCIONPORID_SP]")
    }

    // ************ Servicios PUT ************

    // ************ Servicios DELETE ************

    // ************ Metodos Privados ************
    
    /**
     * @summary Función generica para conectarse a base de datos
     * @param callback Función de retorno
     * @returns Retorna la promesa, la ejecución del servicio, manda a llamar la calback
    */
    private dbConnect(callback: Function): Q.IPromise<{}> {
        const env: string = process.env.NODE_ENV || 'development';
        var deferred = Q.defer();
        var dbConn = new sql.ConnectionPool((confDB as any)[env]);
        dbConn.connect()
            .then(() => callback(dbConn, deferred))
            .catch(deferred.reject);

        return deferred.promise;
    }
}
