Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1661C00A94
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 16:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ADCiENI1QlhqVLHhyHAw3o1+3GjBxEnvcp33bwl+eOo=; b=TK1dWxNNowe+4atLUz8CtzSdj+
	aRDabEugPOPv8X4sDFC7Ij+F2IK1OTCzWNeJSoYGg6D/x1acZYVc6YS22KIvyNVF8N7eW2vIedrfE
	Vwg4EowCmcVb0YiUmO0kFii2HEt1bMx7mk2kK+vGzIGhFefc4RC3oJbxXC+lCHoRimZtBeI2TDpOK
	BOqbbGivxoIyAGw3VfzLFH02cstjE8Wd5tGuUAq9QvlnG4oHlUIJ7XvmgcHJXnzWIzacAnIk8QtTF
	6/k93b67pMBemN+G7rlXyoFsTn8ZmX6a8hSQ1FPHek1En9S7a2pdD/Bh83rZV/VUy4lU6zYcki8Fh
	Qq/KTO0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvJSq-00000000NU6-3Y1r;
	Fri, 12 Apr 2024 16:09:20 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvJSn-00000000NSY-2MuQ;
	Fri, 12 Apr 2024 16:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712938154;
	bh=dU3V6Gu0KGvlhDaJGowbUsDhF9fkTIDZLblXxq3gcdg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BpkiKL99SQrKKdw2SST9wNaqT2Pbi7yixEyuEVf27vkr3N85bQwkOzS7sR7tNpcCE
	 /ilX2jzIxNb9Daj4/gumPlZt9oFibx5mr6G8LkSYKxRjNNiAg8tva+LyEL/faTI/Xr
	 wI14qTGLfmUf0j6WAaiWED+q9j3yqNWvqCXG0vV0m8Z8GR2VgbP1tJ82apXQa0sQDL
	 GaslDAL3t2iR0n+5sHNessYjd8xSggdIp07YZU1+BGS7rN+zQGeHZEmAgT08YqUR4Q
	 QB/xJ51lnKNOJFsaF57QNHotN/u66NXGDIvWaN9ndi0+0kysZTkIOkNspWKnhXFMqx
	 qaMDX14ar9f0g==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0CDE8378212C;
	Fri, 12 Apr 2024 16:09:14 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 9CA6A10608F9; Fri, 12 Apr 2024 18:09:13 +0200 (CEST)
Date: Fri, 12 Apr 2024 18:09:13 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, sfr@canb.auug.org.au, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove startup-delay-us from
 vcc3v3_pcie2x1l0 on rock-5b
Message-ID: <273slx5qkz6ja5qlfjgcaukuzifzsxkdabsld3qodvxaekbzet@ipir56a6afj3>
References: <20240401081302.942742-1-liujianfeng1994@gmail.com>
 <432000a6-1de9-4452-beb7-6954677e34c8@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <432000a6-1de9-4452-beb7-6954677e34c8@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_090917_771430_1A870203 
X-CRM114-Status: GOOD (  34.80  )
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
Content-Type: multipart/mixed; boundary="===============8443490329883684673=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8443490329883684673==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w3aqmahkcw5xmohz"
Content-Disposition: inline


--w3aqmahkcw5xmohz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Apr 10, 2024 at 02:30:16PM +0800, Shawn Lin wrote:
> Hi Jianfeng,
>=20
> On 2024/4/1 16:13, Jianfeng Liu wrote:
> > Property startup-delay-us is copied from vendor dts and it will
> > make kernel not detect pcie wifi device. If I run command:
> > "echo 1 > /sys/bus/pci/rescan", pcie wifi device is detected, but
> > my wifi device RTL8822CE failed to load driver. Another device
> > RTL8723BE can load driver but no wifi signal is detected.
> >=20
> > Removing this property will fix issues above.
> >=20
> > Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
>=20
> startup-delay-us just make sure the power rail is stable before
> any action is taken to start the link, preventing the device from
> unable to work stably. So it shouldn't be the root cause I think.
>=20
> Could you help try this patch to checkout if it works for you?
>=20
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index d684214..df30127 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -167,7 +167,7 @@ static int rockchip_pcie_start_link(struct dw_pcie *p=
ci)
>         struct rockchip_pcie *rockchip =3D to_rockchip_pcie(pci);
>=20
>         /* Reset device */
> -       gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
> +       //gpiod_set_value_cansleep(rockchip->rst_gpio, 0);

Is this removal actually needed?

>=20
>         rockchip_pcie_enable_ltssm(rockchip);
>=20
> @@ -180,7 +180,7 @@ static int rockchip_pcie_start_link(struct dw_pcie *p=
ci)
>          * We need more extra time as before, rather than setting just
>          * 100us as we don't know how long should the device need to rese=
t.
>          */
> -       msleep(100);
> +       msleep(300);
>         gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
>=20
>         return 0;
> @@ -311,6 +311,8 @@ static int rockchip_pcie_probe(struct platform_device
> *pdev)
>         if (ret)
>                 return ret;
>=20
> +       gpiod_set_value_cansleep(rockchip->rst_gpio, 0);

I suppose it makes sense to use GPIOD_OUT_LOW in
rockchip_pcie_resource_get(), so that the GPIO is requested low from
the start instead of being high for a very short amount of time.

Greetings,

-- Sebastian

> +
>         /* DON'T MOVE ME: must be enable before PHY init */
>         rockchip->vpcie3v3 =3D devm_regulator_get_optional(dev, "vpcie3v3=
");
>=20
>=20
>=20
> > ---
> >   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 -
> >   1 file changed, 1 deletion(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm=
64/boot/dts/rockchip/rk3588-rock-5b.dts
> > index d6bf2ee07..a9af654a0 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > @@ -76,7 +76,6 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
> >   		regulator-boot-on;
> >   		regulator-min-microvolt =3D <3300000>;
> >   		regulator-max-microvolt =3D <3300000>;
> > -		startup-delay-us =3D <50000>;
> >   		vin-supply =3D <&vcc5v0_sys>;
> >   	};
> >=20
> > --
> > 2.34.1
> >=20
> >=20
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
>=20

--w3aqmahkcw5xmohz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYZXJ8ACgkQ2O7X88g7
+poq6w//dbFA18vJCILXgGK1j5A0KZ53Xji2T9WW5oeSKb8ypl6VgtPlKKdZIRDV
zwHp6X+QXnzHP4wMfEDTxnmaYX0c5YVY3/ZpXVya2stFTuczmh2ugb9H7DgN1BD9
XCQ4D1GGo3tBAuOfx10ovjjrSkvp5E4e3yI55ibR/BwuI7nQeKR/1A79Sqm/zx/s
IG2vwZN1RsncE0kd9Ot1CNoOvAefrtMrmN0lBBMaDyOdN+rTfkV6w0FtyW+vdGff
+A0A0P0RZF8Vnr2Q6Bwp2f1aL6SA2d+tjqEYNlwno5lyZqR+pVsy8KfIsnf39TLk
5btkAnjFYAc40ulCFUF3jRSp9pC5DCmEET7pU5RWP5cqdiy/mZMJuac2qRsPIJvJ
KjVRafxtRNCsVasFLD6I8wxouyStu0S0wRqs/Hft+WfJWSVDk1spbvrKBcPC5FVr
EM82IWmEfKUxztKl4jItlJT55aF0EcIP/jrc4TNqW9bHS5tQXqX3QPvCotapwWon
GrEdPMLNlIChIMwRZs0r5HKirfWgRGweaBst3tWtk/GjF+zO240zi3xSU7g4hJ0V
WeddNgOZryXHH7vbN1oZeSpjiVZZ3F7n/YulUf003/9IkVjyhzWoWK+53luhU6AA
ZKQ4IdSoLQ4nvV9fDDUyuwS6ClPp+oN7h3NZZtNRsSuhq+n9Z8c=
=D3Tl
-----END PGP SIGNATURE-----

--w3aqmahkcw5xmohz--


--===============8443490329883684673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8443490329883684673==--

