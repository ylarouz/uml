/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de cr�ation :  29/04/2020 13:08:53                      */
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
   id_voiture           int,
   idClient             int,
   idVoiture            int,
   date                 datetime
);

/*==============================================================*/
/* Table : Voiture                                              */
/*==============================================================*/
create table Voiture
(
   id_voiture           int not null,
   marque               varchar(254),
   modele               varchar(254),
   primary key (id_voiture)
);

alter table Reservation add constraint FK_association1 foreign key (id_voiture)
      references Voiture (id_voiture) on delete restrict on update restrict;

alter table Reservation add constraint FK_association2 foreign key (idClient)
      references Client (idClient) on delete restrict on update restrict;

