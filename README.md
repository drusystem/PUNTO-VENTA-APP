# 🛒 Sistema Punto de Venta - Frontend Web Application

[![Angular](https://img.shields.io/badge/Angular-14-DD0031?logo=angular)](https://angular.io/)
[![TypeScript](https://img.shields.io/badge/TypeScript-4.7-3178C6?logo=typescript)](https://www.typescriptlang.org/)
[![Material UI](https://img.shields.io/badge/Material%20UI-14-0081CB?logo=material-ui)](https://material.angular.io/)
[![Docker](https://img.shields.io/badge/Docker-Enabled-2496ED?logo=docker)](https://www.docker.com/)
[![Nginx](https://img.shields.io/badge/Nginx-Alpine-009639?logo=nginx)](https://www.nginx.com/)

> Aplicación frontend SPA (Single Page Application) para sistema de punto de venta desarrollado en Angular 14 con Material Design. Se integra con API REST en .NET Core 8.

---

## 📋 Tabla de Contenidos

- [Descripción](#-descripción)
- [Características](#-características)
- [Tecnologías](#-tecnologías)
- [Prerequisitos](#-prerequisitos)
- [Instalación y Ejecución](#-instalación-y-ejecución)
- [Estructura del Proyecto](#-estructura-del-proyecto)
- [Arquitectura](#-arquitectura)
- [Módulos y Funcionalidades](#-módulos-y-funcionalidades)
- [Docker](#-docker)
- [Integración con Backend](#-integración-con-backend)
- [Scripts Disponibles](#-scripts-disponibles)
- [Consideraciones Técnicas](#-consideraciones-técnicas)

---

## 🎯 Descripción

Aplicación web empresarial tipo SPA para la gestión completa de un punto de venta. Ofrece una interfaz moderna y responsiva construida con Angular Material que permite administrar productos, realizar ventas, gestionar inventario, usuarios y generar reportes en tiempo real.

**Funcionalidades principales:**
- ✅ Dashboard con métricas y gráficos en tiempo real
- ✅ Gestión completa de productos y categorías
- ✅ Sistema de ventas con carrito de compras
- ✅ Control de inventario y stock
- ✅ Administración de usuarios y roles
- ✅ Generación y exportación de reportes (Excel)
- ✅ Autenticación y autorización basada en roles
- ✅ Menús dinámicos según permisos de usuario

---

## ✨ Características

### Interfaz de Usuario
- 🎨 **Material Design**: UI moderna y consistente con Angular Material
- 📱 **Responsive**: Adaptable a dispositivos móviles, tablets y desktop
- 🌓 **Dashboard Interactivo**: Gráficos con Chart.js y métricas en tiempo real
- 🔔 **Notificaciones**: Alertas y mensajes con SweetAlert2
- 🎯 **UX Optimizada**: Navegación intuitiva y flujo de trabajo eficiente

### Funcionalidades Técnicas
- ✅ Arquitectura modular y escalable
- ✅ Servicios REST consumidos con RxJS
- ✅ Guards para protección de rutas
- ✅ Interceptores HTTP para manejo de tokens
- ✅ Lazy Loading de módulos
- ✅ Formularios reactivos con validaciones
- ✅ Manejo centralizado de errores
- ✅ Exportación de datos a Excel

---

## 🛠️ Tecnologías

### Core
- **Angular 14** - Framework principal
- **TypeScript 4.7** - Lenguaje de programación
- **RxJS 7.5** - Programación reactiva
- **Angular Router** - Navegación SPA

### UI/UX
- **Angular Material 14** - Componentes UI
- **Angular CDK** - Kit de desarrollo de componentes
- **Angular Material Moment Adapter** - Manejo de fechas
- **Chart.js 3.9** - Gráficos y visualizaciones
- **SweetAlert2** - Alertas y notificaciones modales

### Utilidades
- **Moment.js** - Manipulación de fechas
- **XLSX** - Exportación de Excel
- **RxJS Operators** - Manejo de streams

### DevOps & Build
- **Angular CLI 14.2** - Herramienta de desarrollo
- **Nginx Alpine** - Servidor web de producción
- **Docker & Docker Compose** - Containerización
- **Karma + Jasmine** - Testing unitario

---

## 📦 Prerequisitos

### Para Desarrollo Local
- [Node.js 16.x](https://nodejs.org/) (recomendado LTS)
- [npm 8.x](https://www.npmjs.com/) o superior
- [Angular CLI 14.2](https://angular.io/cli)
- Editor de código (VS Code recomendado)

### Para Docker
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Docker Compose](https://docs.docker.com/compose/)

### Backend API
Este frontend requiere el backend funcionando:
- **Repository**: [PUNTO-VENTA-API](https://github.com/drusystem/PUNTO-VENTA-API)
- **Puerto por defecto**: http://localhost:5000

---

## 🚀 Instalación y Ejecución

### Opción 1: Docker (Recomendado) 🐳

**La forma más rápida de ejecutar la aplicación:**

```bash
# Clonar el repositorio
git clone https://github.com/drusystem/PUNTO-VENTA-APP.git
cd PUNTO-VENTA-APP

# Construir y levantar el contenedor
docker-compose up -d

# Verificar que el contenedor esté corriendo
docker-compose ps
```

**¡Listo!** La aplicación estará disponible en:
- 🌐 **Frontend**: http://localhost:4200

### Opción 2: Desarrollo Local

```bash
# Clonar el repositorio
git clone https://github.com/drusystem/PUNTO-VENTA-APP.git
cd PUNTO-VENTA-APP

# Instalar dependencias
npm install

# Iniciar servidor de desarrollo
npm start
# o
ng serve

# La aplicación estará disponible en http://localhost:4200
```

### Opción 3: Build de Producción

```bash
# Construir para producción
npm run build
# o
ng build --configuration production

# Los archivos estarán en: dist/app-sistema-venta/
```

### Detener los Servicios

```bash
# Detener contenedor Docker
docker-compose down

# Detener servidor de desarrollo local
Ctrl + C
```

---

## 📁 Estructura del Proyecto

```
PUNTO-VENTA-APP/
│
├── src/
│   ├── app/
│   │   ├── Components/              # 🎨 Componentes de la aplicación
│   │   │   ├── layout/              # Layout principal (navbar, sidebar)
│   │   │   └── login/               # Componente de autenticación
│   │   │
│   │   ├── Interfaces/              # 📝 Definiciones de tipos TypeScript
│   │   │   ├── categoria.ts         # Interfaz de Categoría
│   │   │   ├── detalle-venta.ts     # Interfaz de Detalle de Venta
│   │   │   ├── login.ts             # Interfaz de Login
│   │   │   ├── menu.ts              # Interfaz de Menú
│   │   │   ├── producto.ts          # Interfaz de Producto
│   │   │   ├── reporte.ts           # Interfaz de Reportes
│   │   │   ├── response-api.ts      # Interfaz de respuestas API
│   │   │   ├── rol.ts               # Interfaz de Rol
│   │   │   ├── sesion.ts            # Interfaz de Sesión
│   │   │   ├── usuario.ts           # Interfaz de Usuario
│   │   │   └── venta.ts             # Interfaz de Venta
│   │   │
│   │   ├── Reutilizable/            # 🔄 Componentes y utilidades reutilizables
│   │   │   └── shared/              # Helpers y utilidades compartidas
│   │   │       └── utilidad.service.ts
│   │   │
│   │   ├── Services/                # 🔌 Servicios para comunicación HTTP
│   │   │   ├── categoria.service.ts # CRUD de Categorías
│   │   │   ├── dashboard.service.ts # Métricas del dashboard
│   │   │   ├── menu.service.ts      # Gestión de menús
│   │   │   ├── producto.service.ts  # CRUD de Productos
│   │   │   ├── rol.service.ts       # Gestión de Roles
│   │   │   ├── usuario.service.ts   # CRUD de Usuarios
│   │   │   └── venta.service.ts     # Gestión de Ventas y reportes
│   │   │
│   │   ├── app-routing.module.ts    # 🗺️ Configuración de rutas
│   │   ├── app.component.ts         # Componente raíz
│   │   ├── app.component.html       # Template raíz
│   │   ├── app.component.css        # Estilos raíz
│   │   └── app.module.ts            # Módulo principal
│   │
│   ├── assets/                      # 📦 Recursos estáticos
│   │   └── .gitkeep
│   │
│   ├── environments/                # 🌍 Configuraciones por ambiente
│   │   ├── environment.prod.ts      # Variables de producción
│   │   └── environment.ts           # Variables de desarrollo
│   │
│   ├── favicon.ico                  # 🎯 Favicon
│   ├── index.html                   # 📄 HTML principal
│   ├── main.ts                      # 🚀 Punto de entrada de la app
│   ├── polyfills.ts                # 🔧 Polyfills para compatibilidad
│   ├── styles.css                   # 🎨 Estilos globales
│   └── test.ts                      # 🧪 Configuración de tests
│
├── .browserslistrc                  # 🌐 Compatibilidad de navegadores
├── .editorconfig                    # ⚙️ Configuración del editor
├── .gitignore                       # 🚫 Archivos ignorados por Git
├── angular.json                     # 📋 Configuración de Angular CLI
├── karma.conf.js                    # 🧪 Configuración de Karma
├── package.json                     # 📦 Dependencias del proyecto
├── package-lock.json                # 🔒 Lock de dependencias
├── tsconfig.json                    # 🔧 Configuración de TypeScript
├── tsconfig.app.json                # 🔧 Config TS para la app
├── tsconfig.spec.json               # 🔧 Config TS para tests
│
├── Dockerfile                       # 🐳 Configuración Docker
├── docker-compose.yml              # 🐳 Orquestación de contenedores
└── README.md                        # 📖 Este archivo
```

---

## 🏗️ Arquitectura

### Patrón de Arquitectura

El proyecto sigue una **arquitectura basada en componentes** con separación clara de responsabilidades:

```
┌─────────────────────────────────────────────┐
│           Components (Presentation)         │
│        UI Components + Smart Components     │
└─────────────────┬───────────────────────────┘
                  │
┌─────────────────▼───────────────────────────┐
│              Services (Logic)               │
│          HTTP Calls + Business Logic        │
└─────────────────┬───────────────────────────┘
                  │
┌─────────────────▼───────────────────────────┐
│          Interfaces (Data Models)           │
│            TypeScript Interfaces            │
└─────────────────┬───────────────────────────┘
                  │
┌─────────────────▼───────────────────────────┐
│              Backend API REST               │
│         (PUNTO-VENTA-API - .NET Core)       │
└─────────────────────────────────────────────┘
```

### Flujo de Datos

```
User Interaction
       ↓
   Component
       ↓
    Service (HTTP)
       ↓
   Backend API
       ↓
    Database
```

### Capas del Proyecto

| Capa | Responsabilidad | Ejemplos |
|------|-----------------|----------|
| **Components** | Presentación y lógica de UI | `login/`, `layout/` |
| **Services** | Comunicación HTTP y lógica de negocio | `producto.service.ts`, `venta.service.ts` |
| **Interfaces** | Modelos de datos y contratos | `producto.ts`, `venta.ts` |
| **Reutilizable** | Utilidades compartidas | `utilidad.service.ts` |
| **Guards** | Protección de rutas | (Implementar auth guards) |

---

## 📦 Módulos y Funcionalidades

### 🏠 Dashboard
- Métricas en tiempo real (total ventas, productos, ingresos)
- Gráficos de ventas con Chart.js
- Resumen de actividad reciente
- Indicadores de rendimiento (KPIs)

### 👥 Gestión de Usuarios
- Listado de usuarios con paginación
- Crear/Editar/Eliminar usuarios
- Asignación de roles
- Control de usuarios activos/inactivos
- Validación de formularios

### 🏷️ Gestión de Categorías
- CRUD completo de categorías
- Listado con búsqueda y filtros
- Activar/Desactivar categorías
- Validación de duplicados

### 📦 Gestión de Productos
- CRUD completo de productos
- Control de stock en tiempo real
- Asignación de categorías
- Gestión de precios
- Búsqueda y filtros avanzados
- Indicadores de stock bajo

### 🛒 Punto de Venta
- Interfaz de venta rápida
- Carrito de compras dinámico
- Búsqueda de productos
- Cálculo automático de totales
- Selección de método de pago
- Generación de número de documento
- Registro de ventas

### 📊 Reportes
- Reporte de ventas por período
- Filtros por fecha (fecha inicio/fin)
- Exportación a Excel con XLSX
- Detalle de productos vendidos
- Resumen de ingresos

### 🔐 Autenticación
- Login con validación
- Manejo de sesión
- Tokens de autenticación
- Redirección automática
- Logout seguro

---

## 🐳 Docker

### Arquitectura de Contenedores

El proyecto utiliza **multi-stage build** para optimización:

```dockerfile
# Stage 1: Build
Node.js 16 → npm install → ng build

# Stage 2: Production
Nginx Alpine → Archivos estáticos optimizados
```

### Características Docker

- ✅ **Multi-stage Build**: Reduce tamaño de imagen final (solo ~20MB)
- ✅ **Nginx Alpine**: Servidor web ligero y eficiente
- ✅ **Puerto Estándar**: Expone puerto 80 internamente, 4200 externamente
- ✅ **Optimización**: Solo incluye archivos de producción
- ✅ **Build Automático**: Construye desde docker-compose

### Comandos Útiles Docker

```bash
# Ver logs del contenedor
docker-compose logs -f web

# Reconstruir imagen
docker-compose build

# Reiniciar contenedor
docker-compose restart web

# Conectarse al contenedor
docker exec -it punto-venta-web sh

# Ver archivos servidos por Nginx
docker exec punto-venta-web ls -la /usr/share/nginx/html

# Inspeccionar configuración de Nginx
docker exec punto-venta-web cat /etc/nginx/nginx.conf
```

### Personalizar Nginx

Para configurar Nginx (proxy, HTTPS, cache, etc.):

```dockerfile
# En Dockerfile, agregar:
COPY nginx.conf /etc/nginx/nginx.conf
```

---

## 🔌 Integración con Backend

### Configuración de Endpoints

El frontend se comunica con el backend a través de servicios HTTP. La URL base del API debe configurarse en:

```typescript
// src/environments/environment.ts
export const environment = {
  production: false,
  apiUrl: 'http://localhost:5000/api'
};

// src/environments/environment.prod.ts
export const environment = {
  production: true,
  apiUrl: 'https://api.tu-dominio.com/api'
};
```

### Servicios HTTP

Todos los servicios extienden el patrón Service y utilizan:
- `HttpClient` de Angular
- `Observable` de RxJS
- Manejo de errores con `catchError`
- Interfaces tipadas para respuestas

**Ejemplo de servicio:**

```typescript
// src/app/Services/producto.service.ts
constructor(private http: HttpClient) { }

lista(): Observable<ResponseApi> {
  return this.http.get<ResponseApi>(`${this.apiUrl}/Producto/Lista`);
}

guardar(request: Producto): Observable<ResponseApi> {
  return this.http.post<ResponseApi>(`${this.apiUrl}/Producto/Guardar`, request);
}
```

### Estructura de Respuesta API

```typescript
interface ResponseApi {
  status: boolean;
  msg: string;
  value: any;
}
```

### Flujo de Autenticación

1. Usuario ingresa credenciales
2. `usuario.service.ts` envía POST a `/Usuario/IniciarSesion`
3. Backend valida y retorna datos de usuario + menús
4. Frontend guarda sesión en localStorage
5. Guard verifica sesión en rutas protegidas
6. Menús se cargan dinámicamente según rol

---

## 📜 Scripts Disponibles

```bash
# Desarrollo
npm start               # Inicia servidor de desarrollo (ng serve)
npm run watch          # Build con watch mode

# Testing
npm test               # Ejecuta tests unitarios con Karma

# Build
npm run build          # Build de producción

# Angular CLI
ng generate component nombre   # Genera nuevo componente
ng generate service nombre      # Genera nuevo servicio
ng generate interface nombre    # Genera nueva interfaz
ng generate module nombre       # Genera nuevo módulo
```

---

## 💡 Consideraciones Técnicas

### Buenas Prácticas Implementadas

- ✅ **Arquitectura Modular**: Separación clara de responsabilidades
- ✅ **Tipado Fuerte**: Interfaces TypeScript para todo el modelo de datos
- ✅ **Reactive Forms**: Validaciones robustas en formularios
- ✅ **Lazy Loading**: Módulos cargados bajo demanda (implementar)
- ✅ **RxJS Best Practices**: Uso de operators como `map`, `catchError`
- ✅ **Material Design**: UI/UX consistente y profesional

### Seguridad

⚠️ **Nota**: Este proyecto es una demostración. Para producción considerar:

- [ ] Implementar Guards de autenticación en todas las rutas
- [ ] HTTP Interceptors para agregar tokens JWT
- [ ] Manejo seguro de tokens (no en localStorage)
- [ ] Validación de permisos en UI (mostrar/ocultar según rol)
- [ ] Sanitización de inputs
- [ ] HTTPS obligatorio
- [ ] Content Security Policy (CSP)
- [ ] CORS configuration correcta

### Performance

**Optimizaciones recomendadas:**
- Implementar `OnPush` change detection strategy
- Usar `trackBy` en `*ngFor`
- Lazy loading de módulos por funcionalidad
- PWA (Progressive Web App) con service workers
- CDN para assets estáticos
- Gzip compression en Nginx
- Caching de respuestas HTTP

### Testing

**Estructura preparada para:**
- Unit Tests con Jasmine/Karma
- E2E Tests con Protractor/Cypress
- Component Tests aislados
- Service Tests con HttpClientTestingModule

### Escalabilidad

**El diseño permite:**
- Migrar a arquitectura micro-frontends
- Implementar NgRx para state management
- Separar en feature modules
- Agregar internacionalización (i18n)
- Multi-tenancy

---

## 🔧 Configuración de Desarrollo

### VS Code Extensions Recomendadas

```json
{
  "recommendations": [
    "angular.ng-template",
    "johnpapa.angular2",
    "esbenp.prettier-vscode",
    "dbaeumer.vscode-eslint",
    "ms-vscode.vscode-typescript-next"
  ]
}
```

### EditorConfig

El proyecto incluye `.editorconfig` para mantener consistencia de código:
- Indentación: 2 espacios
- Charset: UTF-8
- Trim trailing whitespace
- Final newline

---

## 🚀 Despliegue a Producción

### Variables de Entorno

Antes de desplegar, configurar:

```typescript
// src/environments/environment.prod.ts
export const environment = {
  production: true,
  apiUrl: 'https://api.production.com/api'
};
```

### Build Optimizado

```bash
ng build --configuration production --optimization --build-optimizer
```

### Opciones de Hosting

**Recomendadas:**
- Vercel (Deploy automático desde GitHub)
- Netlify (Ideal para SPAs)
- AWS S3 + CloudFront
- Azure Static Web Apps
- Firebase Hosting
- Nginx en VPS/Cloud

### Nginx Configuration (Producción)

```nginx
server {
    listen 80;
    server_name tu-dominio.com;
    root /usr/share/nginx/html;
    index index.html;

    # Angular routing
    location / {
        try_files $uri $uri/ /index.html;
    }

    # Caching de assets
    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
}
```

---

## 🔗 Enlaces Relacionados

### Repositorios del Proyecto
- **Backend API**: [PUNTO-VENTA-API](https://github.com/drusystem/PUNTO-VENTA-API)
- **Frontend**: [PUNTO-VENTA-APP](https://github.com/drusystem/PUNTO-VENTA-APP)

### Documentación Oficial
- [Angular Documentation](https://angular.io/docs)
- [Angular Material](https://material.angular.io/)
- [RxJS Documentation](https://rxjs.dev/)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)

---

## 👨‍💻 Autor

**drusystem**

- GitHub: [@drusystem](https://github.com/drusystem)
- Proyecto Frontend: [PUNTO-VENTA-APP](https://github.com/drusystem/PUNTO-VENTA-APP)
- Proyecto Backend: [PUNTO-VENTA-API](https://github.com/drusystem/PUNTO-VENTA-API)

---

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

---

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

---

## 🐛 Reportar Problemas

Si encuentras algún bug o tienes sugerencias:

1. Verifica que no exista un issue similar
2. Abre un [Issue en GitHub](https://github.com/drusystem/PUNTO-VENTA-APP/issues)
3. Describe el problema detalladamente
4. Incluye pasos para reproducir el error
5. Agrega screenshots si es posible

---

## 📞 Soporte

¿Necesitas ayuda?

1. Revisa la documentación de Angular
2. Consulta los issues cerrados en GitHub
3. Abre un nuevo issue con tu pregunta
4. Contacta al autor del proyecto

---

## 🗺️ Roadmap

### Próximas Mejoras
- [ ] Implementar Guards de autenticación
- [ ] Lazy Loading de módulos
- [ ] State Management con NgRx
- [ ] PWA (Progressive Web App)
- [ ] Tests unitarios completos
- [ ] E2E Tests con Cypress
- [ ] Internacionalización (i18n)
- [ ] Dark mode
- [ ] Notificaciones push
- [ ] Impresión de tickets
- [ ] Modo offline

---

<div align="center">

**⭐ Si este proyecto te fue útil, considera darle una estrella en GitHub ⭐**

**🔗 Sistema completo: [Backend](https://github.com/drusystem/PUNTO-VENTA-API) + [Frontend](https://github.com/drusystem/PUNTO-VENTA-APP)**

Hecho con ❤️ y Angular por drusystem

</div>