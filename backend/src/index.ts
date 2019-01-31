import 'reflect-metadata';
import { createExpressServer, useContainer, Action, UnauthorizedError } from 'routing-controllers';
import { Container, ContainerInstance } from 'typedi';

/**
 * @summary En este archivo van todos los metodos referentes a los almacenes en el sistema de inventarios
 * localhost:{{port}}/almacen/...
 */
import { AlmacenRepository } from './repository/almacen.repository';
import { AlmacenController } from './controllers/almacen.controller';
Container.get(AlmacenRepository)


/**
 * @summary En este archivo van todos los metodos referentes a la seguridad (logins) el sistema de inventarios
 * localhost:{{port}}/seguridad/...
 */
import { SeguridadRepository } from './repository/seguridad.repository';
import { SeguridadController, SeguridadMiddleware } from './controllers/seguridad.controller';
Container.get(SeguridadRepository);



useContainer(Container);
// generamos el Express
const app = createExpressServer({
    cors: true,
    controllers: [ // Cada uno de los controlests de arriba
        AlmacenController,
        SeguridadController
    ],
    middlewares: [SeguridadMiddleware]
});

// si no se asigna puerto desde el servidor de aplicación
const PORT = process.env.PORT || 4050;

app.listen(PORT);
console.log(`Running local server on http://localhost:${PORT}`);