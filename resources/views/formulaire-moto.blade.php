@extends('layouts.app')

@section('content')
    <div id="form_container">
        <div class="row no-gutters">
            <div class="col-lg-12">
                <div id="wizard_container">
                    <!-- /top-wizard -->
                    <form id="wrapped" method="post" action="{{ route('moto.store') }}" enctype="multipart/form-data">
                        @csrf
                        <div id="alerts"></div>
                        <div id="middle-wizard">
                            <div class="container-fluid">
                                <h3 class="main_question ml-2"><i class="arrow_right"></i>Veuillez renseigner les champs requis !</h3>
                                <div class="row">
                                    <div class="col-md-3" >
                                        <div  class="photo-picker" id="photo-picker1" style="position: relative;">
                                            <small>Photo avant</small>
                                            <video id="video-preview1" style="border-radius: 5px; position: relative; cursor: pointer;" height="150" class="d-none img-fluid" autoplay></video>
                                            <img id="photo-preview1" style="border-radius: 5px; position: relative; width: 100%; cursor: pointer;" height="150" class="img-fluid" src="{{ asset('assets/img/camera-placeholder.jpg') }}">

                                            <button type="button" id="capture-btn1" class="btn btn-outline-primary btn-sm w-100 mt-2">
                                                <i class="icon-camera-1 mr-1"></i>Lancer caméra
                                            </button>
                                            <label for="photo1" class="btn btn-outline-dark btn-sm w-100 mt-1">
                                                <i class="icon-attach-4 mr-1"></i>Charger photo
                                            </label>
                                            <input type="file" id="photo1" name="photo_avant" style="visibility: hidden">
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="photo-picker" id="photo-picker2" style="position: relative;">
                                            <small>Photo arrière</small>
                                            <video id="video-preview2" style="border-radius: 5px; position: relative; cursor: pointer;" height="150" class="d-none img-fluid" autoplay></video>
                                            <img id="photo-preview2" style="border-radius: 5px; position: relative; width: 100%; cursor: pointer;" height="150" class="img-fluid" src="{{ asset('assets/img/camera-placeholder.jpg') }}">

                                            <button type="button" id="capture-btn2" class="btn btn-outline-primary btn-sm w-100 mt-2">
                                                <i class="icon-camera-1 mr-1"></i>Lancer caméra
                                            </button>
                                            <label for="photo2" class="btn btn-outline-dark btn-sm w-100 mt-1">
                                                <i class="icon-attach-4 mr-1"></i>Charger photo
                                            </label>
                                            <input type="file" id="photo2" name="photo_arriere" style="visibility: hidden">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="typevehicule">Type de moto *</label>
                                                    <select class="form-control" id="typevehicule_id" name="moto_type_id" required>
                                                        <option value="" hidden>Sélectionner le type de moto...</option>
                                                        @foreach ($motoTypes as $type)
                                                            <option value="{{ $type->id }}">{{ $type->moto_type_libelle }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="marque_id">Marque *</label>
                                                    <select class="form-control" name="marque_id">
                                                        <option value="" selected hidden>Sélectionnez une marque...</option>
                                                        @foreach ($marques as $marque)
                                                            <option value="{{ $marque->id }}">{{ $marque->marque_libelle }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                        <label for="Modele">Modele *</label>
                                                        <input type="text" class="form-control" id="modele" name="modele" placeholder="Entrez le modèle..." required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="numplaque">Numéro Plaque *</label>
                                            <input type="text" class="form-control" id="plaque" name="plaque" placeholder="Entrez n° plaque...ex: KN-6951-BG" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="numserie">Série *</label>
                                            <input type="text" class="form-control"  name="serie" placeholder="entrez la serie de la moto..." required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="nip">NPI proprietaire *</label>
                                            <input type="text" id="nipProprietaire" class="form-control" name="proprietaire[nip_proprietaire]" placeholder="entrez le nip du proprietaire" name="nip" >
                                         </div>
                                    </div>
                                    <div class="col-md-4 d-none" id="nipInfoProprietaire">
                                        <div class="form-group">
                                            <label for="personne">Identité du proprietaire associé au NPI</label>
                                            <input type="text" id="npiProprietaireInfoInput" readonly class="form-control border-success" placeholder="Nom de la personne associée au NPI">
                                         </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="numchassis">Numéro chassis *</label>
                                            <input type="text" class="form-control" id="chassis" name="chassis" placeholder="entrez le numero de chassis..." required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="dateMisEnService">Date de mise en service*</label>
                                            <input type="date" class="form-control" id="date_naissance" name="date_debut_service" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="typeUsageVehicule">Usage *</label>
                                            <select class="form-control" name="type_usage" required>
                                                <option value="" selected hidden>Sélectionnez un type d'usage</option>
                                                <option value="Personnel">Personnel</option>
                                                <option value="Transport en commun">Transport en commun</option>
                                                <!-- Options dynamiques -->
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <label for="couleur">Couleur *</label>
                                            <input type="color" class="form-control" placeholder="entrez la couleur" name="couleur" >
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="nipchauffeur">NPI du chauffeur*</label>
                                            <input type="text" class="form-control" id="npiChauffeur" name="proprietaire[nip_chauffeur]" placeholder="Entrez le nip du chauffeur" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4 d-none" id="npiChauffeurInfo">
                                        <div class="form-group">
                                            <label>Identité du chauffeur associé au NPI</label>
                                            <input type="text" readonly class="form-control border-success" id="npiChauffeurInfoInput" required>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-4">
                                        <div class="form-group">
                                             <label for="nbreChevaux">Nbre chevaux *</label>
                                            <input type="number" placeholder="ex: 2" class="form-control"  name="nbre_chevaux" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-8">
                                        <div class="form-group radio_input mt-4">
                                            <label for="assurance">Assurance :</label>
                                            <label class="container_radio mr-3">Non
                                                <input type="radio" id="assurance" name="assurance" value="non" required>
                                                <span class="checkmark"></span>
                                            </label>
                                            <label class="container_radio">Oui
                                                <input type="radio" id="assurance" name="assurance" value="oui" required>
                                                <span class="checkmark"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div id="assure-section" class="d-none form-section">
                                    <h5>Assurance *</h5>
                                    <div id="section-content" class="w-100"></div>
                                </div>

                                <div class="form-section">
                                    <h5>Informations achat moto *</h5>
                                    <div class="border p-3 mb-3">
                                        <div class="form-row">
                                            <div class="form-group col-md-4">
                                                <label for="Prix d'achat">Prix achat *</label>
                                                <div class="d-flex">
                                                    <input type="number" placeholder="entrez le prix d'achat de la moto" class="form-control w-100 mr-1" id="prixAchat" name="achat[achat_prix]">
                                                    <select name="achat[devise]" style="width: 100px" class="form-control">
                                                        <option value="CDF" selected>CDF</option>
                                                        <option value="USD">USD</option>
                                                        <option value="EURO">EURO</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="Date d'achat">Date d'achat *</label>
                                                <input type="date" class="form-control" id="dateAchat" name="achat[achat_date]">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="vendeur">Société ou personne vendeuse </label>
                                                <input type="text" class="form-control" placeholder="Entrez le nom du vendeur" name="achat[nom_vendeur]">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="vendeur">Téléphone du vendeur *</label>
                                                <input type="text" class="form-control" placeholder="Entrez le téléphone du vendeur" name="achat[telephone_vendeur]">
                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="vendeur">Email du vendeur (optionnel)</label>
                                                <input type="text" class="form-control" placeholder="Entrez l'adresse email du vendeur" name="achat[email_vendeur]">
                                            </div>
                                            <div class="form-group col-md-12">
                                                <label for="vendeur">Adresse du vendeur *</label>
                                                <textarea class="form-control" placeholder="Entrez l'adresse du vendeur...ex. n°..avenue..quartier..." name="achat[adresse_vendeur]"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /row-->
                            </div>
                            <!-- /step-->
                        </div>
                        <!-- /middle-wizard -->
                        <div style="display: flex; justify-content: end;" class="mr-2">
                            <button type="reset" class="btn btn-secondary btn-lg mr-3">Annuler</button>
                            <button type="submit" id="submitBtn" class="btn btn-success btn-lg d-flex align-items-center justify-center">
                                <span id="btnText">Soumettre</span>
                                <span id="loader" class="spinner-border spinner-border-sm d-none ml-2" role="status" aria-hidden="true"></span>
                            </button>
                        </div>
                        <!-- /bottom-wizard -->
                    </form>
                </div>
                <!-- /Wizard container -->

            </div>
        </div>
        <!-- /Row -->
    </div>
    <!-- /Form_container -->
@endsection

@section("scripts")
<script>
    var typeAssurances = @json($typeAssurances);
</script>
<script src="{{asset('assets/js/app.js') }}"></script>
<script src="{{asset('assets/js/form_manager.js') }}"></script>
@endsection
