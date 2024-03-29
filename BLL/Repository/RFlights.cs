﻿using BLL.Model;
using DALL.ENTITIES;
using System;
using System.Collections.Generic;
using System.Linq;

namespace BLL.Repository
{
    public class RFlights : AppModel
    {


        public int add(ModelFlights obj)
        {
            int id = 0;

            try
            {
                using (db)
                {

                    db.flights.Add(Map(obj));
                    db.SaveChanges();
                    var model = getByPlaneNumber(obj.planeNumber);
                    id = model.idFlight;

                }

            }
            catch (Exception e)
            {
                System.Console.WriteLine("Error " + e);
            }

            return id;

        }

        public List<ModelFlights> FindAll()
        {

            using (db)
            {

                return db.flights.Select(Map).ToList();

            }


        }


        public ModelFlights Get(int number)
        {
            try
            {
                using (db)
                {
                    var obj = db.flights.Find(number);
                    var test = Map(obj);
                    return test;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }
            return null;
        }


        public ModelFlights getByPlaneNumber(string number)
        {

            try
            {

                using (db)
                {

                    return Map(
                        db.flights.Where(
                            f => f.planeNumber.Equals(number)
                        ).First()
                    );

                }

            }
            catch (Exception) { return new ModelFlights(); }


        }



        //es una forma de castear un objeto con otro para usar ModelFlights
        private flights Map(ModelFlights obj)
        {

            return new flights()
            {
                idFlight = obj.idFlight,
                citySource = obj.citySource,
                cityDestination = obj.cityDestination,
                pilotName = obj.pilotName,
                planeNumber = obj.planeNumber,
                departureDateTime = obj.departureDateTime
            };

        }


        //es una forma de castear un objeto con otro para usar ModelFlights
        private ModelFlights Map(flights obj)
        {

            return new ModelFlights()
            {
                idFlight = obj.idFlight,
                citySource = obj.citySource,
                cityDestination = obj.cityDestination,
                pilotName = obj.pilotName,
                planeNumber = obj.planeNumber,
                departureDateTime = obj.departureDateTime
            };

        }


    }
}
