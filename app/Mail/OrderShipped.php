<?php

namespace App\Mail;

use App\Models\Order;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class OrderShipped extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     */
    public function __construct(protected Order $order)
    {
        //
    }

    /**
     * Get the message envelope.
     */
    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Order Shipped',
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        return new Content(
            view: 'admin.emails.order_bill',
            with: [
                "customer_name"=> $this->order->receiver,
                "customer_address"=>$this->order->address,
                "customer_phone"=>$this->order->phone,
                "instruction"=>$this->order->instruction,
                "shipment_fee"=>$this->order->shipping_fee,
                "date"=>$this->order->updated_at,
                'coupon'=>$this->order->Coupon,
                "status"=>$this->order->status,
                "method"=>$this->order->method,
                "cart"=>$this->order->Cart,
            ]
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    public function attachments(): array
    {
        return [];
    }
}
