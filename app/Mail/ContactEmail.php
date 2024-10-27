<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ContactEmail extends Mailable
{
    use Queueable, SerializesModels;

    public $name;
    public $email;
    public $phone;
    public $messageText;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($name, $email, $phone, $messageText)
    {
        $this->name = $name;
        $this->email = $email;
        $this->phone = $phone;
        $this->messageText = $messageText;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.contact-admin')  
                    ->subject('رسالة جديدة من ' . $this->name)
                    ->with([
                        'name' => $this->name,
                        'email' => $this->email,
                        'phone' => $this->phone,
                        'messageText' => $this->messageText,
                    ]);
    }
}
