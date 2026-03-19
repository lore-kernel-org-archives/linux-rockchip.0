Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D011091904
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AQyxUmRjJlihlCbog0XUpySToJBhXR2tompH5azH83Y=; b=DX/m0mhFjc4IhdKD9mSiM0N+4U
	GVnaV6X5RSdZkuSYXfwFHEtWh2UyWPYeU3RmGjI+2olOp01PT9jY3mb37dVJZ4YS12/vUrLCwmbcz
	cwCMPvAEtiKioNbzQhz5EWz5XIHtWA3b/hoahiPcTN6kG+vN7G5q+EDkuiYkGKhth8Wx/+Oa4EcZz
	TFFyFYjNgsx7aEQGjE6GvE9YH49JqH/GKbvVCd2LyWl0HPJnqHlTxmAZJW/ITf7Xdeh168q4o47gZ
	xGTBU3R8YLfF5ZAYjFDJVCxRs/xUbDS0uX3+NiyFnpL8JreX9P1ZM0/TxVnJkxpJ/9ZdGuIM/s+tA
	/cXzup1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3ILw-0000000BORS-2rR1;
	Thu, 19 Mar 2026 18:44:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3ILv-0000000BOQw-1ghJ
	for linux-rockchip@bombadil.infradead.org;
	Thu, 19 Mar 2026 18:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:References:
	In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=TTdIhzTfVOU4J4zn+pv0u4noPX6wbBChtTHWotcoChQ=; b=GIzFwcpy9eMol1lPd36Rwwb/xp
	RpjBE3ZoocxLqgKirVVTx5SQ/uzjRyTTohtU6N8uhhpjl70o/070WlW4Y3YrCAVWDuCHfcKSbvqMZ
	XoMSwNuKDT9gbu8vSmOXfqXczNjAJ3kpSnEfsW8YyX6ei8sdGUnQn9+Bq80Q4xmjmkzBrrXkqvZen
	It/PAE+DQAx2U052WWm6yKqHIzsOtetU5a4+jXq1yS3wFQq/20arR1vXQvKOTMqhMN4xQHBN2KNFs
	Fhhpjwc/2iht5IOb/1S41qFhuzt9nA+VtI2oINAD9lpyqJiGWOXTzydYau1claV02Zg8YQL7HUlCx
	50uaTriQ==;
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3ILr-0000000EHeF-3Yd4
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:44:13 +0000
Received: by mail-qk1-x744.google.com with SMTP id af79cd13be357-8cd767d2d70so95976385a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1773945849; x=1774550649; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TTdIhzTfVOU4J4zn+pv0u4noPX6wbBChtTHWotcoChQ=;
        b=u+fa+Tpv9muZKINXilL6yh9bSrek/Q2ayWGuHvIeoNdeAPirlDXDTYVQkU79XnjLI/
         r8cbQlJjSA0ff+yKM1V6DPANxxZQe5ON8eDDkoyPENUVMnK2xSeNLzlp1ieuFeJkXxKy
         AYVuzYMBOQZBJsn85QcJaREVjhpJek3UULrUvXt71bz13Q98V7MrC1H0gCsNGt8RPzdc
         fDH+fno55Z404gh/he2k9FG1gue0lXrztUkH5qsecLQcU1MSddHMoe/SLJyRX5A4ps3m
         IH/yI7u24WSymp9+WSKBUv2CAAEN1YWSPluaIeFJ/LpomYckDdm0idn7lTTWluZHQeml
         nBqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945849; x=1774550649;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TTdIhzTfVOU4J4zn+pv0u4noPX6wbBChtTHWotcoChQ=;
        b=gWw/NveHcaOj3BSTlZqx0XlGLIkmJfuZvYXThEdrI5Zsrz/tU2wiyad9ZFVIRNRJGV
         ukLZ1sCbNkgkkGun26gfc5Pv5x90O9z0lW8hNv5XnXL7SssLmCvlxGQNiFjD1HuYB+Oy
         A8ITzTJxFigEIKY981qWYvnEdloYAkw/2+5IR/Zuo1vMNyDJTsM8XPiG7KumxaeyfEfd
         nfNapvtBW2JIDJfZu6K9kBG/wzJXBqUlB4MZXFK9Eo10RTb9gL+avScZVQxZoa+oS1Ck
         hgxOsbQ5nn1cxRgUXbEqmZs9HyPIQu8w3xpHBEETsjBOVKGqmN1w782wzdz6gqPHjeiJ
         ErCA==
X-Forwarded-Encrypted: i=1; AJvYcCU/PUwVbLEmeow0ipOBckxns8CFjhLskpPWsetv1Y3gQN8CMmOtBOV32XrnWHULVjlKnZAhZ7GfaA031S5zuQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+4oJi91Z2zhIVmH53skknxYLoU+HuZTqEyul7RnvhugczDlKC
	0vMsTqbsPD6dCz/Gzj+sEPhy5x3oDorS49kaK9wLWf5Uya/z6v8WYXvQVmX9k53iH7M=
X-Gm-Gg: ATEYQzxxvTK+uCmymr9aLGlRevIzwSPH3HJgoG0azGkRlxUMnzphJgjhFkXGi2Wg/u5
	+t/+XyDpozxdZjyMnFI9KQVmDoqi5xFdRMexDIQPt82kv8vBjBMCoI0JBHaDaCg9EnxpnCH8R6m
	FPvAmTY9h95CAPPUFOVHVuSwV3tY9a4lj4plJdWVmYh41ktmPLpG4tebqjmFi/O23DnVBsk7Y+e
	4JkTomjfQEPOKX172stBB5KBesDR8q5P4v/h+zNPZ047UzDjNhb0rPPui8HWLGVJ4uR3jegVtOn
	aJ3Wz1Qu7lp64KcStTUmswNrmyXVFxgTYXCTi8JX5xFBimPNP1shpAtFxkVLJFA3QbFy8ynQEkj
	iZ19edij/kT1fveejXZkE1SSvXeNak4CVxn71oo8WAfIEwm9WKMIr8qxe+CqqfR/Ltje8ViAEK1
	UVvU7UTqHt5RhjWwsCqdSpcjPkYN2S
X-Received: by 2002:a05:620a:458d:b0:8b2:1ee9:dcfb with SMTP id af79cd13be357-8cfc7b65a1cmr52317385a.8.1773945849126;
        Thu, 19 Mar 2026 11:44:09 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfacdaeb88sm611790085a.5.2026.03.19.11.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:44:08 -0700 (PDT)
Message-ID: <fc7b74095548d9c13a92d2944c1f5ca9f5c7dba5.camel@ndufresne.ca>
Subject: Re: [PATCH v3 01/27] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Thu, 19 Mar 2026 14:44:06 -0400
In-Reply-To: <20260127-spu-rga3-v3-1-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-1-77b273067beb@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_184412_133667_414C9D3B 
X-CRM114-Status: GOOD (  22.49  )
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
Content-Type: multipart/mixed; boundary="===============3093132651326125728=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3093132651326125728==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-cKylSNn6LcAUhVrxOu1V"


--=-cKylSNn6LcAUhVrxOu1V
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Add a new compatible for the RGA3 (Raster Graphic Acceleration 3)
> peripheral found on the RK3588 SoC. Also specify an iommu property,
> as the RGA3 contains the generic rockchip iommu. The RGA2 also has
> an iommu, but it's specific to the RGA2.
>=20
> The existing binding refers to the RGA2 peripheral. The RK3588
> contains one RGA2 core and two RGA3 cores. Both feature a similar
> functionality of scaling, cropping and rotating of up to two input
> images into one output image. Key differences of the RGA3 are:
>=20
> - supports 10bit YUV output formats
> - supports 8x8 tiles and FBCD as inputs and outputs
> - supports BT2020 color space conversion
> - max output resolution of (8192-64)x(8192-64)
> - MMU can map up to 32G DDR RAM
> - fully planar formats (3 planes) are not supported
> - max scale up/down factor of 8 (RGA2 allows up to 16)

Nothing import, but some more details on the differences can be found here.

https://github.com/sravansenthiln1/rga-demos/tree/main

They also removed from RGA3 the neural network quantization support
(CLIP((source + offset) * scale). I suppose that integer tensors are fading
away, and the accelerator does not do floats.

One things that isn't clear, even in the upstream RGA2 implementation is if=
 the
accelerator is cache coherent. When I study the BSP usage of RGA2, they
integrate the RGA2 directly into GStreamer software video converter. They d=
on't
do anything to flush the cache, indicating that RGA2 is most probably cache
coherent.

Do you know if RGA3 has the same feature or if this is one of the differenc=
e ?
Typically, RKIOMMU users are not, in RGA2, a completely custom mmu was used=
 (and
implemented inside the driver, as standalone).

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0.../devicetree/bindings/media/rockchip-rga.yaml=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 19 ++++++++++++++++++-
> =C2=A01 file changed, 18 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/=
Documentation/devicetree/bindings/media/rockchip-rga.yaml
> index ac17cda65191b..7735d8794c719 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> @@ -9,7 +9,9 @@ title: Rockchip 2D raster graphic acceleration controller=
 (RGA)
> =C2=A0description:
> =C2=A0=C2=A0 RGA is a standalone 2D raster graphic acceleration unit. It =
accelerates 2D
> =C2=A0=C2=A0 graphics operations, such as point/line drawing, image scali=
ng, rotation,
> -=C2=A0 BitBLT, alpha blending and image blur/sharpness.
> +=C2=A0 BitBLT, alpha blending and image blur/sharpness. There exist two =
variants
> +=C2=A0 named RGA2 and RGA3 that differ in the supported inputs/output fo=
rmats,
> +=C2=A0 the attached IOMMU and the supported operations on the input.
> =C2=A0
> =C2=A0maintainers:
> =C2=A0=C2=A0 - Jacob Chen <jacob-chen@iotwrt.com>
> @@ -20,6 +22,7 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0 oneOf:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3288-rga
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3399-rga
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: rockchip,rk3588-rga3
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - items:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - enum:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 - rockchip,rk3228-rga
> @@ -45,6 +48,9 @@ properties:
> =C2=A0=C2=A0 power-domains:
> =C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 1
> =C2=A0
> +=C2=A0 iommus:
> +=C2=A0=C2=A0=C2=A0 maxItems: 1
> +
> =C2=A0=C2=A0 resets:
> =C2=A0=C2=A0=C2=A0=C2=A0 maxItems: 3
> =C2=A0
> @@ -54,6 +60,17 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: axi
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: ahb
> =C2=A0
> +allOf:
> +- if:
> +=C2=A0=C2=A0=C2=A0 properties:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - roc=
kchip,rk3588-rga3
> +=C2=A0 then:
> +=C2=A0=C2=A0=C2=A0 required:
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - iommus
> +

You really can't use this chip with CMA ?

Nicolas

> =C2=A0required:
> =C2=A0=C2=A0 - compatible
> =C2=A0=C2=A0 - reg

--=-cKylSNn6LcAUhVrxOu1V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCabxD9gAKCRDZQZRRKWBy
9MTmAP9/UjJig3fQpTvjDlz3tiARS93/hVZoNEUjD3yE0V+9qAEAti3yCIjKjcaI
z1e1wbvEi3mfHC8yVbOrjPYReUxynQQ=
=46hR
-----END PGP SIGNATURE-----

--=-cKylSNn6LcAUhVrxOu1V--


--===============3093132651326125728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3093132651326125728==--

