<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AppDataSeeder extends Seeder
{
    public function run()
    {
        $motoTypes = [
            ['moto_type_libelle' => 'Sportive'],
            ['moto_type_libelle' => 'Roadster'],
            ['moto_type_libelle' => 'Cruiser'],
            // Ajoutez d'autres types de motos selon vos besoins
        ];

        DB::table('moto_types')->insert($motoTypes);

        $modeles = [
            ['modele_libelle' => 'YZF-R1', 'moto_type_id' => 1],
            ['modele_libelle' => 'MT-07', 'moto_type_id' => 2],
            ['modele_libelle' => 'Sportster', 'moto_type_id' => 3],
            // Ajoutez d'autres modèles et liens vers les types de moto selon vos besoins
        ];
        DB::table('modeles')->insert($modeles);
    }
}