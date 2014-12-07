<?php

class UserController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		// $users = User::all(); // menampilkan semua data dari model User
		$users = User::paginate(5); // buat pagination dengan 5 data yg ditampilkan
		return View::make('users.index', compact('users'));
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		return View::make('users.create');
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Responsero
	 */
	public function store()
	{
		$input = Input::all();
		// var_dump($input);
		$validation = Validator::make($input, User::$rules);
		// var_dump($input);
		if ($validation->passes()) {
			
			User::create($input);
			return Redirect::route('users.index');	
		}

		return Redirect::route('users.create')->withInput()->withErrors($validation)->with('message','There Were validation Errors.');
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		$user = User::find($id);
		if (is_null($user)) {
			return Redirect::route('users.index');
		}
		return View::make('users.show', compact('user'));
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$user = User::find($id);
		if (is_null($user)) {
			return Redirect::route('users.index');
		}
		return View::make('users.edit', compact('user'));
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$input = Input::all();
		$validation = Validator::make($input, User::$rules);
		
		if ($validation->passes()) {
			$user = User::find($id);
			$user->update($input);
			return Redirect::route('users.show', $id);
		}

		return Redirect::route('users.edit', $id)->withInput()->withErrors($validation)->with('message','There Were Validation Errors');
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		User::find($id)->delete();
		return Redirect::route('users.index');
	}


}
