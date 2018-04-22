<?php

namespace App\Http\Controllers;

use Mail;
use Illuminate\Http\Request;
use App\Contact;
use App\Setting;
class ContactsController extends Controller {

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $setting = Setting::all();
        return view("front.main_content.contacts.index", compact('setting'));
    }

    public function send(Request $request) {
        $contact = new Contact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->subject = $request->subject;
        $contact->message = $request->message;
        $add = $contact->save();
//        if ($add) {
//            $GLOBALS['email'] = "mhmudhsham8@gmail.com";
//            $name = $request->name;
//            $email = $request->email;
//            $subject = $request->subject;
//            $content = $request->message;
//            Mail::send('front.contact.send', ['name' => $name, 'email' => $email, 'subject' => $subject, 'content' => $content], function ($message) {
//                $message->from('sigmacompany121@gmail.com', 'Sigma');
//                $message->subject("Tdamon Umrah | Contact us");
//                $message->to($GLOBALS['email']);
//            });
//        }
    }

}
