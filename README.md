# Njila-Go

**Transporte acessível, seguro e autónomo para pessoas com deficiência visual e motora.**

O Njila-Go é uma aplicação móvel de transporte particular que liga passageiros com necessidades específicas de mobilidade a motoristas e viaturas verificados. O projecto nasce para responder às barreiras enfrentadas por pessoas com deficiência visual e motora no acesso a táxis: recusa de transporte, falta de veículos adaptados, dificuldade de comunicação, ausência de informação prévia e dependência de terceiros.

Inspirado no MOBI+ Angola como referência de arquitectura, segurança e inclusão, o Njila-Go procura oferecer uma experiência de transporte mais autónoma, confiável e respeitadora da diversidade.

## Objectivo

Desenvolver uma aplicação móvel de transporte particular destinada a pessoas com deficiência visual e motora, que facilite o acesso a serviços de táxi adequados às suas necessidades, promovendo autonomia, inclusão, segurança física e bem-estar psicológico através de um serviço acessível, confiável e respeitador da diversidade.

## Problema

Pessoas com deficiência visual e motora enfrentam dificuldades como:

- Recusa de transporte por parte de motoristas.
- Dificuldade em encontrar veículos adequados, incluindo viaturas com espaço para cadeira de rodas.
- Falta de informação prévia sobre acessibilidade, motorista e viatura.
- Dificuldade de comunicação entre passageiro e motorista.
- Aplicações convencionais sem funcionalidades de acessibilidade.
- Dependência de familiares ou acompanhantes para solicitar viagens.
- Ausência de mecanismos de segurança adaptados e de registo completo da corrida.

## Solução

O Njila-Go disponibiliza:

- Cadastro verificado de clientes prioritários e motoristas.
- Perfil de necessidades do passageiro: deficiência visual, deficiência motora, cadeira de rodas, muletas, apoio no embarque, acompanhante, entre outros.
- Pedido de viagem por aplicação e, no MVP, por chamada com operador da central.
- Emparelhamento com filtro de acessibilidade antes da distância.
- Identificação de veículos convencionais adequados ou adaptados.
- Informação prévia sobre motorista, viatura e condições de acessibilidade.
- Comunicação acessível: leitura de ecrã, comandos de voz, avisos sonoros, notificações visuais e vibração.
- PIN de embarque e código de entrega para crianças.
- Acompanhamento da viagem em tempo real e partilha com encarregado/acompanhante.
- Alertas de desvio de rota, paragem inesperada e botão SOS.
- Registo completo de cada viagem e relatórios mensais.

## Público-Alvo

- Pessoas com deficiência visual.
- Pessoas com deficiência motora, incluindo utilizadores de cadeira de rodas ou muletas.
- Idosos.
- Crianças, através de encarregados.
- Acompanhantes e familiares.
- Motoristas e viaturas parceiras.
- Instituições parceiras: associações, hospitais, escolas, empresas e igrejas.

## Funcionalidades do MVP

- Cadastro e verificação de clientes, motoristas e viaturas.
- Perfis de acessibilidade e necessidades individuais.
- App do cliente com interface acessível.
- App do motorista com GPS, gravação de rastos e modo offline.
- Painel web da central com mapa em tempo real, viagens activas e alertas.
- Pedido por app e por chamada com operador.
- Emparelhamento com filtro de acessibilidade.
- PIN de embarque e código de entrega.
- Corredor de rota, detecção de desvio e paragem inesperada.
- SOS e partilha de viagem.
- Registo completo da corrida.
- Relatório mensal em PDF/CSV.
- SMS de confirmação e avisos essenciais.

## Arquitectura e Stack

- **App Cliente:** Flutter, Android primeiro.
- **App Motorista:** Flutter, GPS, SQLite local e sincronização offline.
- **Central Web:** Next.js + MapLibre GL.
- **Backend:** Supabase — PostgreSQL + PostGIS, Auth, Realtime, Storage e Edge Functions.
- **Motor de Rotas:** OSRM ou Valhalla sobre OpenStreetMap.
- **Mapas:** OpenStreetMap, MapLibre e tiles offline PMTiles.
- **Notificações:** Firebase Cloud Messaging + SMS de reserva.
- **Monitorização:** Sentry e logs.
- **Acessibilidade:** TalkBack, VoiceOver, comandos de voz, leitura automática, avisos sonoros e interface simplificada.

## Estrutura do Repositório

```text
njila-go/
├── README.md
├── docs/
├── apps/
│   ├── client_app/        # Flutter: app do cliente
│   ├── driver_app/        # Flutter: app do motorista
│   └── central_web/       # Next.js: painel da central
├── services/
│   ├── api/               # API e funções de viagem
│   ├── dispatch/          # Emparelhamento e fila
│   ├── safety/            # Corredor, alertas e SOS
│   ├── mapping/           # Rastos, segmentos e pontos
│   ├── comms/             # SMS, voz e futuros canais
│   └── reports/           # Relatórios PDF/CSV
├── db/
│   ├── migrations/
│   ├── seed/
│   └── policies/
├── infra/
├── tests/
└── mcp/                   # Fase futura