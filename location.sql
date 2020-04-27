/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  27/04/2020 19:13:41                      */
/*==============================================================*/


drop table if exists Client;

drop table if exists Reservation;

drop table if exists Voiture;

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   idClient             int not null,
   age                  numeric(8,0),
   nom                  varchar(254),
   primary key (idClient)
);

/*==============================================================*/
/* Table : Reservation                                          */
/*==============================================================*/
create table Reservation
(
   hh                   int,
   idClient             int,
   idVoiture            int,
   date                 datetime
);

/*==============================================================*/
/* Table : Voiture                                              */
/*==============================================================*/
create table Voiture
(
   hh                   int not null,
   marque               varchar(254),
   modele               varchar(254),
   primary key (hh),
   key AK_Identifiant_1 (hh),
   key AK_Identifiant_2 (hh)
);

alter table Reservation add constraint FK_association1 foreign key (hh)
      references Voiture (hh) on delete restrict on update restrict;

alter table Reservation add constraint FK_association2 foreign key (idClient)
      references Client (idClient) on delete restrict on update restrict;

