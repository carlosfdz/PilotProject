<?php

use App\Language;
use App\Staff;

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
 */

//

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
 */

Route::group(['middleware' => ['web']], function () {

    //Rutas para el proyecto de Sakila

    Route::get('/', 'FrontController@index');
    Route::get('contact', 'FrontController@contacto');
    Route::get('catalog', 'FrontController@catalog');
    Route::get('admin', 'FrontController@admin');
    Route::resource('mail', 'MailController');

    //Ruta para la Creacion de Categorias
    Route::resource('category', 'CategoryController');
    //una nueva ruta para eliminar registros con el metodo get
    Route::get('category/destroy/{id}', ['as' => 'category.destroy', 'uses' => 'CategoryController@destroy']);
    //Ruta para la Creacion de Idiomas
    Route::resource('language', 'LanguageController');
    //una nueva ruta para eliminar registros con el metodo get
    Route::get('language/destroy/{id}', ['as' => 'language.destroy', 'uses' => 'LanguageController@destroy']);
    //Ruta para la Creacion de Clientes
    Route::resource('customer', 'CustomerController');
    //una nueva ruta para eliminar registros con el metodo get
    Route::get('customer/destroy/{id}', ['as' => 'customer.destroy', 'uses' => 'CustomerController@destroy']);
    //Ruta para la Creacion de Peliculas
    Route::resource('movie', 'MovieController');
    //una nueva ruta para eliminar registros con el metodo get
    Route::get('movie/destroy/{id}', ['as' => 'movie.destroy', 'uses' => 'MovieController@destroy']);
    //Ruta para el Login
    Route::resource('log', 'LoginController');
    //Ruta para el Logout
    Route::get('logout', 'LoginController@logout');
    //Ruta para la Creacion de Usuarios
    Route::resource('user', 'StaffController');
    //una nueva ruta para eliminar registros con el metodo get
    Route::get('user/destroy/{id}', ['as' => 'user.destroy', 'uses' => 'StaffController@destroy']);
    //Ruta para la Creacion de Actores
    Route::resource('actor', 'ActorController');
    //una nueva ruta para eliminar registros con el metodo get
    Route::get('actor/destroy/{id}', ['as' => 'actor.destroy', 'uses' => 'ActorController@destroy']);
    //Ruta para la Creacion de Paises
    Route::resource('country', 'CountryController');
    //Ruta para la Creacion de Ciudades
    Route::resource('city', 'CityController');
    //Ruta para la Creacion de Direccion
    Route::resource('address', 'AddressController');

    //Fin de las Rutas de Sakila

    //Rutas de pruebas para el Select2
    Route::get('index', function () {
        $users = Staff::pluck('first_name', 'id')->toArray();

        return view('index', compact('users'));
    });

    Route::post('create', function () {
        $language = Language::pluck('name', 'id')->toArray();

        return view('create', compact('language'));
    });

    Route::get('/vista3', ['as' => 'form', 'uses' => 'CategoryController@index']);
    Route::get('/vista', ['as' => 'form', 'uses' => 'CategoryController@index']);
    Route::get('/vista2', ['as' => 'form', 'uses' => 'LanguageController@index']);

    //Fin de las Rutas de Select

    //ruta para realizar busqueda de registros.
    Route::post('movie/search', ['as' => 'movie/search', 'uses' => 'MovieController@search']);

    Route::auth();

    // Authentication Routes...
    Route::get('login', 'Auth\AuthController@showLoginForm');
    Route::post('login', 'Auth\AuthController@login');
    Route::get('logout', 'Auth\AuthController@logout');

    // Registration Routes...
    Route::get('register', 'Auth\AuthController@showRegistrationForm');
    Route::post('register', 'Auth\AuthController@register');

    // Password Reset Routes...
    Route::get('password/reset/{token?}', 'Auth\PasswordController@showResetForm');
    Route::post('password/email', 'Auth\PasswordController@sendResetLinkEmail');
    Route::post('password/reset', 'Auth\PasswordController@reset');

    Route::get('/home', 'HomeController@index');
});
