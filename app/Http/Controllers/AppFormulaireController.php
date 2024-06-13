<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreMotoRequest;
use App\Models\Achat;
use App\Models\Modele;
use App\Models\Moto;
use App\Models\MotoType;
use App\Models\Proprietaire;
use Illuminate\Http\Request;

class AppFormulaireController extends Controller
{
    public function store(StoreMotoRequest $request)
    {
        $validatedData = $request->validated();
        //create proprietaire
        $proprietaireData = $validatedData['proprietaire'];
        $proprietaire = Proprietaire::create($proprietaireData);

        if ($proprietaire) {
            // Save photos
            $photoAvant = $this->savePhoto($request, 'photo_avant');
            $photoArriere = $this->savePhoto($request, 'photo_arriere');
            // Create moto
            $motoData = array_merge($validatedData, [
                'photo_avant' => $photoAvant,
                'photo_arriere' => $photoArriere,
            ]);
            $motoData['proprietaire_id'] = $proprietaire->id;
            $motoData['code'] = Moto::generateUniqueCode();
            $moto = Moto::create($motoData);
            // Create achat info
            if($moto){
                $achatData = $validatedData['achat'];
                $achatData['nip_acheteur'] = $proprietaire->nip_proprietaire;
                $achatData['moto_id'] = $moto->id;
                Achat::create($achatData);
                return back()->with([
                    'success' => 'Données enregistrées avec succès!',
                    'code'=>$moto->code
                ]);
            }
            return back()->with('error', 'l\'enregistrement n\'est pas terminé correctement');

        } else {
            return back()->with('error', 'Echec de l\'enregistrement des données!');
        }
    }



    public function gotoView()
    {
        $models = Modele::where('status', 'actif')->get();
        $motoTypes = MotoType::where('status','actif')->get();
        return view('formulaire-moto', [
            'motoTypes'=> $motoTypes,
            'modeles'=> $models,
        ]);
    }

    private function savePhoto(Request $request, string $param) :string
    {
        if ($request->hasFile($param)) {
                $domain = $request->getHttpHost();
                $image = $request->file($param);
                $imageName = uniqid() . '.' . $image->getClientOriginalExtension();
                $image->move(public_path('uploads/motos'), $imageName);
                $path = 'http://' . $domain . '/uploads/motos/' . $imageName;
            return $path;
        }
        return "";
    }

}