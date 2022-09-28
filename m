Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EE6AC04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 12:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ChvLxL5IujDlKXIBSC7obO1W9IlrHwjIdXhG2oxaml8=; b=J/Z/CCsJGhj2sDw02NDP4m8TiK
	Qt78KwDKlDnOahRZROVqfj/AhYTNJmHx8YNr4ul5wJmO7JRJAI/ldm7fKhgva8R8kwTHgM8nVBCEf
	qMwFvpud7C40aH37mE+30EhEG6RtDIdaTo02l5b/PhDLd2/DR9KjO/853A23CpsChOkPG5cLkfcPM
	wS1gpTPAp5bAeTLXJ4cQGGgY/uK3mazvm5F6bb6xhJXuIQsmh8CA/wpF7NfMcujSLar5NRwsW8z4l
	WT5C9VBKfY83cAiUiJGi5tN+poF43xA7p1+aVeEnvevmZK/Y55AAa0FJLlLPZQ5HLvWFvh/Awq+Wp
	RHOdVaiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odVj3-00G56I-Vy; Wed, 28 Sep 2022 11:59:42 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odVis-00G51Y-A1; Wed, 28 Sep 2022 11:59:32 +0000
Received: by mail-ej1-x635.google.com with SMTP id bj12so26568630ejb.13;
        Wed, 28 Sep 2022 04:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=WX1fGcDrRa8LUBuvI4gWJ/xa1ZpUTYVL+K0YkgByt8g=;
        b=XYAN7/uZmVVhvxch5PURlfz9TnlYdYDQ6iNKya3QJZ1U5nWTMBi/azONQ/u8lrUUBb
         NN2pxycnoOuiblKkFRbdvVriQmsW8VaCZa4hVQRE5RwLXfluBNq4BGRjKQcmEQufLTcy
         vi146TBxLZmM6RWiRSfsab+7w+vBlawcRzq9+y0snvycnW3kydVMKtDEhMdyrVHI/uBX
         7FF5P6CjaI2aNx2fDtVj9Hi80LEuuZiSSoiMx8TkJBUiPPihFel63FMhX0gfWJl2dFH5
         Ee2z80GlO/DJYWMDvH4vOIHnQH10EOejXeocv3Ln4HyI76+XC9HcOHT5X5xolrc4T8f/
         9ihg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=WX1fGcDrRa8LUBuvI4gWJ/xa1ZpUTYVL+K0YkgByt8g=;
        b=dWmCiBSoBZL4gQMlPE71I+bciCRu91kzVshvAnDTw3OuRlKVe8J0/0phJqT9YL5hfF
         mffh6cKPrGYkMG3FwFo0Wja2z1LQBBVTXw/AsPNk2ZVdIv3vOSQM7HtaNceMQ5jMKgYA
         pNmSIy3SibbHsBuI94sufighkEwAmRuniJMki2aJIKQAC5Oot/p8G68mcjL9Rm9JP93K
         c31nHfy8jLMQ8L/HsC3UjIli83IPhPveEinIKUQOP1KiuU1/TSgRcWyv8mpMoNrSmWpW
         6+7d750LcxB1y1ZAKJRWKCz1cISQnfTwjXNQGvCOTw1t2kFPFc91/zeMp+n0OeNlRhV5
         tm/w==
X-Gm-Message-State: ACrzQf3qh+vFfn/CXk3KpfWN/CWhxHKo+lmszB7owi6LOHsEySnl6wNR
	0lacYL6z6zvWGHYuWOUA2TU=
X-Google-Smtp-Source: AMsMyM4804Wv3dL9z7KIntSLwdAYgKLAjLvRcnZRK/+D28zGiFuNedfZJE6svXgWXDzao+/bFh0mwQ==
X-Received: by 2002:a17:907:8a0b:b0:783:be41:40b4 with SMTP id sc11-20020a1709078a0b00b00783be4140b4mr10902923ejc.111.1664366367932;
        Wed, 28 Sep 2022 04:59:27 -0700 (PDT)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id y4-20020aa7d504000000b00456d2721d93sm3145234edq.64.2022.09.28.04.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 04:59:26 -0700 (PDT)
Date: Wed, 28 Sep 2022 13:59:25 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Rob Herring <robh@kernel.org>, u.kleine-koenig@pengutronix.de,
	linux-rockchip@lists.infradead.org, philipp.tomsich@vrull.eu,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
	linux-pwm@vger.kernel.org, kever.yang@rock-chips.com,
	zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
	heiko@sntech.de
Subject: Re: [PATCH v1 03/11] dt-bindings: pwm: rockchip: add
 rockchip,rk3128-pwm
Message-ID: <YzQ3He2wyD2bgxz1@orome>
References: <20220909212543.17428-1-jbx6244@gmail.com>
 <f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gmail.com>
 <1662821635.180247.34700.nullmailer@robh.at.kernel.org>
 <1c13181b-8421-69d8-21ee-9742dd5f55dd@gmail.com>
 <20220912162159.GA1397560-robh@kernel.org>
 <37fd8d4b-3a66-bc51-c2dc-76c9e756fed8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <37fd8d4b-3a66-bc51-c2dc-76c9e756fed8@gmail.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_045930_402883_D5EC10F3 
X-CRM114-Status: GOOD (  21.83  )
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
Content-Type: multipart/mixed; boundary="===============3994522634481360420=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3994522634481360420==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="znR/AMl6swXutvbU"
Content-Disposition: inline


--znR/AMl6swXutvbU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 13, 2022 at 04:38:32PM +0200, Johan Jonker wrote:
>=20
>=20
> On 9/12/22 18:21, Rob Herring wrote:
> > On Sat, Sep 10, 2022 at 09:48:04PM +0200, Johan Jonker wrote:
> >> Reduced CC.
> >>
> >> Hi Rob,
> >>
> >=20
> > Seemed like a simple enough warning to fix...
>=20
> Some examples for comment.
> Let us know what would be the better solution?
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> option1:
>=20
> 	combpwm0: combpwm0 {
> 		compatible =3D "rockchip,rv1108-combpwm";
> 		interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> 		#address-cells =3D <2>;
> 		#size-cells =3D <2>;
>=20
> 		pwm0: pwm@20040000 {
> 			compatible =3D "rockchip,rv1108-pwm";
> 			reg =3D <0x20040000 0x10>;
> 		};
>=20
> 		pwm1: pwm@20040010 {
> 			compatible =3D "rockchip,rv1108-pwm";
> 			reg =3D <0x20040010 0x10>;
> 		};
>=20
> 		pwm2: pwm@20040020 {
> 			compatible =3D "rockchip,rv1108-pwm";
> 			reg =3D <0x20040020 0x10>;
> 		};
>=20
> 		pwm3: pwm@20040030 {
> 			compatible =3D "rockchip,rv1108-pwm";
> 			reg =3D <0x20040030 0x10>;
> 		};
> 	};
>=20
> PRO:
> - Existing driver might still work.
> CON:
> - New compatible needed to service the combined interrupts.
> - Driver change needed.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> option 2:
>=20
> 	combpwm0: pwm@10280000 {
> 		compatible =3D "rockchip,rv1108-pwm";
> 		reg =3D <0x10280000 0x40>;
> 		interrupts =3D <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
> 		#address-cells =3D <1>;
> 		#size-cells =3D <0>;
>=20
> 		pwm4: pwm-4@0 {
> 			reg =3D <0x0>;
> 		};
>=20
> 		pwm5: pwm-5@10 {
> 			reg =3D <0x10>;
> 		};
>=20
> 		pwm6: pwm-6@20 {
> 			reg =3D <0x20>;
> 		};
>=20
> 		pwm7: pwm-7@30 {
> 			reg =3D <0x30>;
> 		};
> 	};
>=20
> CON:
> - Driver change needed.
> - Not compatible with current drivers.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> Current situation:
>=20
> 	pwm0: pwm@20040000 {
> 		compatible =3D "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
> 		reg =3D <0x20040000 0x10>;
> 		interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> 	};
>=20
> 	pwm1: pwm@20040010 {
> 		compatible =3D "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
> 		reg =3D <0x20040010 0x10>;
> 		interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> 	};
>=20
> 	pwm2: pwm@20040020 {
> 		compatible =3D "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
> 		reg =3D <0x20040020 0x10>;
> 		interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> 	};
>=20
> 	pwm3: pwm@20040030 {
> 		compatible =3D "rockchip,rv1108-pwm", "rockchip,rk3288-pwm";
> 		reg =3D <0x20040030 0x10>;
> 		interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> 	};
>=20
> CON:
> - The property "interrupts 39" can only be claimed ones by one probe func=
tion at the time.
> - Has a fall-back string for rk3288, but unknown identical behavior for i=
nterrupts ???

To be honest, all three descriptions look wrong to me. From the above it
looks like this is simply one PWM controller with four channels, so it
should really be described as such, i.e.:

	pwm@20040030 {
		compatible =3D "rockchip,rv1108-pwm";
		reg =3D <0x20040030 0x40>;
		interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
	};

Looking through existing Rockchip SoC DTSI files, though, it looks like
this has been done the wrong way since the beginning, so not sure if you
still want to fix it up.

This whole problem of dealing with a shared interrupt wouldn't be a
problem if this was described properly.

Thierry

--znR/AMl6swXutvbU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmM0NxoACgkQ3SOs138+
s6F2DQ//SNItqjUD13hctOIu27Mgc1QlCOleIYcIh+Tvc1QSG838jZzQPNzG2+Ft
ZuWfVO3UfsF3Ny3OA+GvfTEJTCj5bZAFKb/HkoDlmAXDeYqteLREoO/jo8eVDPYx
Yyqs1l1UxpnJJIurdJtYWwyMVlzxXkVHH6+ZCidaf3oUvWCsrfFMbo/6V7YZmasU
22bjdfqqWexG86xbVsML6y2WNzMLiBlWxGwRPBEkOXwyJ7AcEk0KV7RiENxOERs7
zwI6rePM0V9CDUStIcO1mlhljgk/6h64v+yNFlTiDwgG3GjBSQGw5M0JyuvzYzWF
dj+62s4HnAwYWWldLJpR0RooYiW3GMXUHizY+KnevRcaLhMRwe/D4PFmZyuxumzN
ywnSDS6yIGN3DGKmz8/+YjvLLitmCvCzffNNlAMXnz29pz7RlirRhfCJylsPMs4R
VxCZFX6P7saeLzJn0jNBbZck2KcMWFK+uZJQ7hezYt81Z1vdRahymS6SelDlbQEA
fAkU1tudRbu062RNVnI9okSaLafrXVUdnhWdxuD+hCJWLv/2DYCKuEHmTXMTkCo5
GLtjPULz1Cz/GyHYBAAcKPXp/VcTVMm3sUXwHYlaJ67YyxFpZgQGfLej5y1+oJfU
cSFQu91Ek+ZogUFWckR/+oA0tq6VrZqG52O0tj8iMsS7JoB/Cz8=
=s0oH
-----END PGP SIGNATURE-----

--znR/AMl6swXutvbU--


--===============3994522634481360420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3994522634481360420==--

