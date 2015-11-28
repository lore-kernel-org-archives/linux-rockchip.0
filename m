From: Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH] crypto: rockchip/crypto - fix possible deadlock
Date: Sat, 28 Nov 2015 16:57:08 +0800
Message-ID: <20151128085708.GA5372@gondor.apana.org.au>
References: <2330117.Be8JzFqibx@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-crypto-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2330117.Be8JzFqibx@diego>
Sender: linux-crypto-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: "David S. Miller" <davem@davemloft.net>, Zain Wang <zain.wang@rock-chips.com>, linux-crypto@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, Nov 28, 2015 at 01:48:53AM +0100, Heiko St=FCbner wrote:
>
> @@ -169,9 +169,10 @@ static irqreturn_t rk_crypto_irq_handle(int irq,=
 void *dev_id)
>  {
>  	struct rk_crypto_info *dev  =3D platform_get_drvdata(dev_id);
>  	u32 interrupt_status;
> +	unsigned long flags;
>  	int err =3D 0;
> =20
> -	spin_lock(&dev->lock);
> +	spin_lock_irqsave(&dev->lock, flags);

You don't need to disable IRQs in an IRQ handler.

Thanks,
--=20
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt
