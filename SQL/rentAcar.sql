drop database if exists rent;
create database rent;
use rent;

create table vozilo(
    sifra int not null primary key auto_increment,
    marka varchar(50),
    model varchar(50),
    prijedenikm int,
    cijena decimal(18,2),
    brojsasije varchar(50),
    dostupno boolean
);

create table najam(
    sifra int not null primary key auto_increment,
    datumnajma datetime,
    datumpovrata datetime,
    pocetnostanjekm int,
    zavrsnostanjekm int,
    korisnik int,
    vozilo int
);

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar (50),
    prezime varchar (50),
    email varchar(50)
);

alter table najam add foreign key (vozilo) references vozilo(sifra);
alter table najam add foreign key (korisnik) references korisnik(sifra);