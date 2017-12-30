//
//  ViewController.swift
//  Pokemon Game
//
//  Created by Seonghun Park on 2017. 11. 27..
//  Copyright © 2017년 Seonghun Park. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController, CLLocationManagerDelegate, GMSMapViewDelegate {
    var mapView:GMSMapView!

    var listPokemon = [Pokemons]()
    //Connecting Google Map API
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadPokemon()	
        let camera=GMSCameraPosition.camera(withLatitude: 43, longitude: -77, zoom: 10)
        mapView=GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        self.view=mapView
        self.mapView.delegate = self
        //get user location
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.startUpdatingLocation()
        }
    }
    
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        print("Tap at -> latitude\(coordinate.latitude), longitude: \(coordinate.longitude) ")
        self.listPokemon.append(Pokemons(latitude: coordinate.latitude, longitude: coordinate.longitude, image: "charmander", name: "charmander", des: "charmander lives in japan", power: 33 ))
    }
    var myLocation = CLLocationCoordinate2D(latitude: 0, longitude: 37)
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        myLocation = manager.location!.coordinate
        print("myLocation\(myLocation)")
        //Create a marker where the GPS points to
        let markMe = GMSMarker()
        
        markMe.position = CLLocationCoordinate2D(latitude: myLocation.latitude, longitude: myLocation.longitude)
        markMe.title = "ME"
        markMe.snippet = "Here is my LOCATION"
        markMe.icon = UIImage(named: "mario")
        markMe.map = self.mapView
        var index = 0
        for pokemon in listPokemon {
            if pokemon.isCatch == false {
            let markPokemon = GMSMarker()
            markPokemon.position = CLLocationCoordinate2D(latitude: pokemon.latitude!, longitude: pokemon.longitude!)
            markPokemon.title = pokemon.name!
            markPokemon.snippet = "\(pokemon.des!), power \(pokemon.power!)"
            markPokemon.icon = UIImage(named:pokemon.image!)
            markPokemon.map = self.mapView
            }
            //Catch Pokemon by comparing latitude and longitude with myLocation
            if(Double(myLocation.latitude)).roundTo(places: 4) == (Double(pokemon.latitude!)).roundTo(places: 4) && (Double(myLocation.longitude)).roundTo(places: 4) == (Double(pokemon.longitude!)).roundTo(places: 4){
                listPokemon[index].isCatch = true
                AlertDialog(PokemonPower: pokemon.power!)
                
            }

        }
        index = index + 1
        let camera = GMSCameraPosition.camera(withLatitude: myLocation.latitude, longitude: myLocation.longitude, zoom: 15)
        self.mapView.camera = camera
        
    }
    var playerPower = 0.0
    
    func LoadPokemon() {
        self.listPokemon.append(Pokemons(latitude: 39, longitude: -122.4064, image: "charmander", name: "charmander", des: "charmander lives in japan", power: 33 ))
    }
    
    func AlertDialog(PokemonPower:Double) {
        playerPower = playerPower + PokemonPower
        let alert = UIAlertController(title: "catch pokemon", message: "Catched", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in print("+ one")}))
        self.present(alert, animated: true, completion: nil)
    }


}

extension Double {
    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
