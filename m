Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBB58C47DDB
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jan 2024 17:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iLnaJKSBvVMA36WwaymP4cg7hutfKkgmsCTXMI9uPQI=; b=f2h1MwfGLmGVLYFXrzRCooR5lt
	PEEiPmlN13IZxHS9us+uKuRnDCg763C6d01uf/u6YegSlzaNWx7LnmRzHZps5BvSMAfevtgdye9QQ
	ISuP3KFeE97BWQwC+eFpplM8k/+pCox2m5y5t+G7RiZZjxJzisb5vMxAVol6BnOu7m0GjQtwbYkq3
	NeM1Ouo+jO15s5EM1ARdUQrizpGFDORcdotOoXCeP1umr/cGjGbsBXGQxWyggcCU2eKPBGWXx6yMK
	CxbmhUALo4y8BwqbhxoCGTf0LNVTTrKxchGPXn/WIdxeGtx+MhyqWWiQIZVUBKugd47kofkrMQ1/o
	ypEvm9EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU97z-0000000A8NZ-1eWv;
	Sun, 28 Jan 2024 17:39:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU97w-0000000A8My-2mlv;
	Sun, 28 Jan 2024 17:39:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ECE4261B96;
	Sun, 28 Jan 2024 17:38:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0482C433F1;
	Sun, 28 Jan 2024 17:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706463537;
	bh=IjQ/1TqkmYZebuFP5yVrH0wPzR/hJ4PTWRo5b1Q6T2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PC3NU5LACNJBxfpFA7Iuka8V4DlexS01lk6nHfhY4crAXEFKzph7Ea3BMTKdDD8OU
	 mN0nDgRh9teIeu//jlOYOwekqTTDbwKc3xEPVqrDR9n0vT1AYEcmtwEOIUqMBC7Z4d
	 vQwisJJsADIkEZVg94tY4Dec1c+vNcjVl7nZNr+Q5hogO/oqt/bTOOY395ZZSjdXNj
	 5passx4f1Up7lxWhDBEbH013lW88itoR4B+GYlKvw6yxZoLsuR4VJ+vL2B4wFoAu14
	 be8baMLhrfXYunbzdQ9OVGbzNRubG7bUhP7r91SSXDkuPG9Z2uk6lFmMSA9WlQ9DpM
	 2hRy93oGsUtUw==
Date: Sun, 28 Jan 2024 17:38:52 +0000
From: Conor Dooley <conor@kernel.org>
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH v4 3/6] dt-bindings: serial: add binding for rs485
 rx-enable state when rs485 is disabled
Message-ID: <20240128-vagabond-mutilator-cf8dc6ac8a41@spud>
References: <20240126-dev-rx-enable-v4-0-45aaf4d96328@theobroma-systems.com>
 <20240126-dev-rx-enable-v4-3-45aaf4d96328@theobroma-systems.com>
MIME-Version: 1.0
In-Reply-To: <20240126-dev-rx-enable-v4-3-45aaf4d96328@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_093928_818501_1287BF7B 
X-CRM114-Status: GOOD (  20.63  )
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
Content-Type: multipart/mixed; boundary="===============7308062432774428985=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7308062432774428985==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DzRBhgrdidHhTC1B"
Content-Disposition: inline


--DzRBhgrdidHhTC1B
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 26, 2024 at 03:55:12PM +0100, Farouk Bouabid wrote:
> RS485 can have a receiver-enable gpio (rx-enable-gpios). When rs485 is
> enabled, this gpio, if provided, must be driven active while receiving.
> However when RS485 is disabled this gpio should not have an undefined
> state. In that case, as DE and RE pins can be connected both to this gpio,
> if its state is not properly defined, can cause unexpected transceiver
> behavior.
> This binding depend on rx-enable-gpios to be implemented.

Why do you need a dedicated property for this when there exists a device
specific compatible for the uart on both of the affected rockchip
systems?

Thanks,
Conor.

>=20
> Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
> ---
>  Documentation/devicetree/bindings/serial/rs485.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/serial/rs485.yaml b/Docume=
ntation/devicetree/bindings/serial/rs485.yaml
> index b64577036b5c..4c79dfaaf460 100644
> --- a/Documentation/devicetree/bindings/serial/rs485.yaml
> +++ b/Documentation/devicetree/bindings/serial/rs485.yaml
> @@ -55,6 +55,11 @@ properties:
>      description: GPIO to handle a separate RS485 receive enable signal
>      maxItems: 1
> =20
> +  rs485-rx-enable-inactive-when-rs485-disabled:
> +    description: rx-enable GPIO is not active when RS485 is disabled. If=
 missing, active-state
> +      is assumed.
> +    $ref: /schemas/types.yaml#/definitions/flag
> +
>    rs485-term-gpios:
>      description: GPIO pin to enable RS485 bus termination.
>      maxItems: 1
>=20
> --=20
> 2.34.1
>=20

--DzRBhgrdidHhTC1B
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZbaRLAAKCRB4tDGHoIJi
0lVcAP9p7fg8n4e6rLO8EL2Eb1sSnS3GQtn1fONEOpidqgF31AEAvoJXIDhzhnRF
r/P/IvBUvRkQTjXM4O4aoPKsdLrOQwM=
=9qkJ
-----END PGP SIGNATURE-----

--DzRBhgrdidHhTC1B--


--===============7308062432774428985==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7308062432774428985==--

