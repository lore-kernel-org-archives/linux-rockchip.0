Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9190CD3ABCF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 23:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NGj/FfhpLAAV7xh5ztNQQnx+u5fev64K2qX+rX2/zUU=; b=3d996u+vlpMsrpsSboZuYzvTrJ
	GRzAuMT6fpEVBGhcg/QouKNqe4u7GATD4lxZ6FHI2eThqakzB+NZ7BN0bJqiJe+tGHmTqJg+tsPQ/
	MCugzJ8dYwNj3tspveDRe9u5fkWJRZPKtno9eTkVMg3C1wdaIFV5DbJr0XvvNDddtCIfxvjPCJsAD
	EuRpgpVqIMxHJRsuRWjZh4iPY3gLy98sfJVEeW2J8iF8PcOwbDybueZgaJ8rQ4rQwOZbDBOncYBA0
	u8miaATTZLamX0raPTice+1J/mYWoI5OxYWe9TUsG7mIGvLI8Sv49pZ7LvLpUnruupvdPyYLpWmUC
	pYUJhFCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAdSx-00000001aNu-1ERB;
	Mon, 11 Nov 2024 23:05:03 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAdQC-00000001a8i-2gMO;
	Mon, 11 Nov 2024 23:02:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1731366126; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=g/Yz57YJhY2Ik8qETjfI+9U/OftgnBNe8hwqlteJebKRwk3SBSiNGfLaYhT5LRv6HZ+O5yzzH9S478IY4fkVPPsB02gS8g3GmurF8K8Ls66YO70wLY2GkEMAu38pZb5+wqbzdpMUhEWuLrWyOsQ6MH8HUfXJ/f+fyVY9LEY3XUI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1731366126; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hPRVom/8RjWezWblZ3K3t1teLpTNa9AC8C0X/PUx5JY=; 
	b=mO9AklKbipJKU/jmI1JT9+eJUMyLsdN6sNJqegi+0MqLeFTWbw4KFx5AZKj3+xYjF9DRwl0qPKGpRdTl195XHqhl1c02bgmtqzp32iAKme/N+79NJFgE5X0UEVMiB+Oejc45wUcXJQM8YgUT7d+1AZknqy0key0SVSvqYVZFaVs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1731366126;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=hPRVom/8RjWezWblZ3K3t1teLpTNa9AC8C0X/PUx5JY=;
	b=XBmuFp3x1T2HyEZ9JwdSrp8Fl2KmEs23PL7Fu8ANTMpFTxtcB9OCqM7ElmmQdmsP
	WhlPcowqe9Nf4f8L4hfmpWxxGDAZQ0cMsdW5ZGcz7wwe3dNYHN+s2SPf1gOcl3hcKgI
	ag4F052wStl89jMlk9D5yo2vW6PI0Nnly9v+PeZI=
Received: by mx.zohomail.com with SMTPS id 1731366125552486.2187532054958;
	Mon, 11 Nov 2024 15:02:05 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id BA8611060457; Tue, 12 Nov 2024 00:02:00 +0100 (CET)
Date: Tue, 12 Nov 2024 00:02:00 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, brgl@bgdev.pl, heiko@sntech.de, 
	linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com, 
	andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com, finley.xiao@rock-chips.com, 
	tim.chen@rock-chips.com, elaine.zhang@rock-chips.com
Subject: Re: [PATCH v4 4/4] gpio: rockchip: Set input direction when request
 irq
Message-ID: <tqve7heg2dwbxzbmcinyt6qhsjzlnddmbf6toxizxixghfth5y@d6g22ith7eqf>
References: <20241111023412.3466161-1-ye.zhang@rock-chips.com>
 <20241111023412.3466161-5-ye.zhang@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20241111023412.3466161-5-ye.zhang@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/231.287.20
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_150212_753343_837628F6 
X-CRM114-Status: GOOD (  18.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5015721402501222243=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5015721402501222243==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eqdhcrysbp4nlnmm"
Content-Disposition: inline


--eqdhcrysbp4nlnmm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 4/4] gpio: rockchip: Set input direction when request
 irq
MIME-Version: 1.0

Hi,

On Mon, Nov 11, 2024 at 10:34:12AM +0800, Ye Zhang wrote:
> Since the GPIO can only generate interrupts when its direction is set to
> input, it is set to input before requesting the interrupt resources.
>=20
> Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/gpio/gpio-rockchip.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index b7a43e492965..40c2476699aa 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -476,8 +476,11 @@ static int rockchip_irq_reqres(struct irq_data *d)
>  {
>  	struct irq_chip_generic *gc =3D irq_data_get_irq_chip_data(d);
>  	struct rockchip_pin_bank *bank =3D gc->private;
> +	irq_hw_number_t hwirq =3D irqd_to_hwirq(d);
> =20
> -	return gpiochip_reqres_irq(&bank->gpio_chip, d->hwirq);
> +	rockchip_gpio_direction_input(&bank->gpio_chip, hwirq);
> +
> +	return gpiochip_reqres_irq(&bank->gpio_chip, hwirq);
>  }
> =20
>  static void rockchip_irq_relres(struct irq_data *d)
> --=20
> 2.34.1
>=20
>=20

--eqdhcrysbp4nlnmm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmcyjOgACgkQ2O7X88g7
+pp6lw/8CQDrUfA+mk0LAGtKVejWOvdaGfNTnCa7DY5P3llWNqKwCJfQyKbHlKH/
5SE//XbN6eODOyLRxw46HxFN4CCGpkIKIga1cpUWFA5HXCLLLVellpdXOsJ4U917
Fp4SDGlzyX9Mv6hTyMHvDbPmnsD+xKaf+H2/szyqUCB/sqLSx7TFzkee1JbgYKmW
xZEQ7AWnzqtZ6SEEUBXv8zVxYwc/mUybhf7X+67H7DGGgfF8dZ7TDdPQ55TR8LxK
72BF8VcTDIZCA0yJPAmOkBRlUABtyMff9IIrTN7vAdra8IXIjY0t3nnJKgD/7Zx/
1XncXqdTz7Zvyjzx/gy7m4OfNIgrAIJjQeXgiSr69plQvYkasPF9pi+BTa/rZo7E
kzkM9tlJ0wj7uIR2x8pss40s/bLOR7GCh78gAiCBsE4IToiW5OTtTJxvc0kE4j8X
VBOViWxYYXXDiXptInpronVaRp2H3Np5vodXHTRgC4mpyyG9Lx/QVrZp/e708/mN
agbxOBRl6ZNPqLiFKSNaaVxqfeF8PJeusuJHgU+5CswN3ensorw5NHRGfl2QyV5M
7YBrUr9BWEd1MqdxXHtlYuL5vnRECJMjN/4BhtZaPTFRUDFrtNYhivkKDYmPK3o3
8itQUu/BhsJXA9Rw5doEEiJ53rxOByLygcGJbbsdwyObmk9xxEw=
=pqGX
-----END PGP SIGNATURE-----

--eqdhcrysbp4nlnmm--


--===============5015721402501222243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5015721402501222243==--

