<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         $brands = [
            "Boxer",
            "Harley-Davidson",
            "Honda",
            "Yamaha",
            "Kawasaki",
            "Suzuki",
            "Ducati",
            "BMW Motorrad",
            "Triumph",
            "KTM",
            "Aprilia",
            "Indian Motorcycle",
            "Moto Guzzi",
            "Royal Enfield",
            "Husqvarna",
            "MV Agusta",
            "Bimota",
            "Benelli",
            "Zero Motorcycles",
            "Victory Motorcycles",
            "Can-Am",
            "Hyosung",
            "Cagiva",
            "Buell",
            "Erik Buell Racing (EBR)",
            "MZ Motorrad- und Zweiradwerk",
            "Norton Motorcycle",
            "Derbi",
            "GasGas",
            "SYM",
            "Keeway",
            "Zongshen",
            "CFMoto",
            "Ural Motorcycles",
            "Sherco",
            "AJP",
            "Bultaco",
            "Herald Motor Co.",
            "Mondial Moto",
            "Moto Morini",
            "Ossa",
            "Patron",
            "Puch",
            "Rieju",
            "Skyteam",
            "SWM Motorcycles",
            "TGB",
            "Vespa",
            "Peugeot Motocycles",
            "Mash",
            "Fantic Motor",
            "Beta Motor",
            "Haojue",
            "Keeway",
            "Lambretta",
            "Midual",
            "Mutt Motorcycles",
            "Sanglas",
            "AJS Motorcycles",
            "CCM Motorcycles",
            "FB Mondial",
            "Hesketh Motorcycles",
            "Jawa Moto",
            "Matchless",
            "Norton",
            "Rajdoot",
            "Velocette",
            "Vyrus"
        ];
        $assureTypes = [
            "Assurance automobile",
            "Assurance moto",
            "Assurance camion",
            "Assurance véhicule de loisirs",
            "Assurance flotte automobile",
            "Assurance taxi ou VTC",
            "Assurance transport de marchandises",
            "Assurance engins agricoles ou de chantier",
            "Assurance véhicules de collection",
            "Assurance véhicules électriques ou hybrides"
        ];
        $types_de_motos = [
            "Sportives",
            "Roadsters",
            "Cruisers",
            "Touring",
            "Tout-terrain / Adventure",
            "Enduro",
            "Standards / Street",
            "Scooters",
            "Café Racers",
            "Bobbers",
            "Choppers",
            "Trikes",
            "Supermoto",
            "Motocross",
            "Trail",
            "Motos électriques",
            "Vintage / Classiques",
            "Custom",
            "Mini Motos / Pocket Bikes",
            "Piste / Racing",
            "Police / Forces de l'ordre",
            "Militaires / Tactiques",
            "Mopeds / Mobylettes",
            "Scramblers",
            "Underbone",
            "Utilitaires",
            "Motos Hybrides",
            "Concepts",
            "Rétro / Modern Classic",
            "Drag Bikes",
            "Stunt Bikes",
            "Speedway Bikes",
            "Dirt Track Bikes",
            "Flat Track Bikes"
        ];
        foreach ($brands as $brand) {
            \App\Models\Marque::updateOrCreate([
                "marque_libelle"=> $brand
            ], [
                "marque_libelle"=> $brand
            ]);
        }

        foreach($assureTypes as $assure){
            \App\Models\TypeAssurance::updateOrCreate(
                ["type_assurance_libelle"=>$assure],
                ["type_assurance_libelle"=>$assure],
             );
        }

        foreach ($types_de_motos as $type) {
            \App\Models\MotoType::updateOrCreate(
                [
                    'moto_type_libelle'=> $type
                ],
                [
                    'moto_type_libelle'=> $type
                ]
            );
        }
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}