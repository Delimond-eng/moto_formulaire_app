<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Moto extends Model
{
    use HasFactory;



     /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'motos';

    /**
     * The primary key for the model.
     *
     * @var string
     */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = [
        'code',
        'serie',
        'plaque',
        'chassis',
        'marque',
        'modele',
        'couleur',
        'photo_avant',
        'photo_arriere',
        'profil_droit',
        'profil_gauche',
        'nbre_chevaux',
        'date_debut_service',
        'validite_assurance',
        'police_assurance',
        'type_usage',
        'moto_type_id',
        'marque_id',
        'proprietaire_id',
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [

    ];


    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'created_at'=>'datetime:d/m/Y H:i',
        'updated_at'=>'datetime:d/m/Y H:i',
    ];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at',
    ];

     /**
     * Generate a unique code.
     *
     * @return string
     */
    public static function generateUniqueCode()
    {
       do {
            $letters = strtoupper(Str::random(2));
            $digits = rand(1000, 9999);
            $code = "KN-"."MT-". $digits."-".$letters;
        } while (self::where('code', $code)->exists());

        return $code;
    }

}