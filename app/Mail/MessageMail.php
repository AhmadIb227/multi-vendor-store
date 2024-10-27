<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class MessageMail extends Mailable
{
    use Queueable, SerializesModels;

    public $messageContent;
    public $senderName;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($messageContent, $senderName)
    {
        $this->messageContent = $messageContent;
        $this->senderName = $senderName;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('رسالة جديدة')
                    ->view('emails.message') // مسار ملف العرض الذي يحتوي على الـ HTML الخاص بالإيميل
                    ->with([
                        'messageContent' => $this->messageContent,
                        'senderName' => $this->senderName,
                    ]);
    }
}
