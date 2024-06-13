<?php

namespace App\Http\Requests;
use Illuminate\Foundation\Http\FormRequest;

class StoreMotoRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'serie' => 'required|string|unique:motos,serie',
            'plaque' => 'required|string|unique:motos,plaque',
            'chassis' => 'required|string',
            'marque' => 'required|string',
            'photo_avant' => 'required|file',
            'photo_arriere' => 'required|file',
            'nbre_chevaux' => 'required|string',
            'date_debut_service' => 'required|date',
            'validite_assurance' => 'nullable|date',
            'police_assurance' => 'nullable|string',
            'type_usage' => 'required|string',
            'couleur' => 'required|string',
            'type_document' => 'required|string',
            'moto_type_id' => 'required|int|exists:moto_types,id',
            'modele_id' => 'required|int|exists:modeles,id',
            'proprietaire.nip_proprietaire' => 'required|string',
            'proprietaire.nip_chauffeur' => 'required|string',
            'achat.achat_prix' => 'required|string',
            'achat.achat_date' => 'required|date',
            'achat.nip_vendeur' => 'required|string',
        ];
    }
}