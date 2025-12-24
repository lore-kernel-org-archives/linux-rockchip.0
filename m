Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DC37E77361
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 14:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rDe1FfQ9DItFWhiLoLs5sqq91qQIu28Ow3TxR1Isu/E=; b=k3xGF4E46fIpgYPTjKr3CGV1ZT
	DvyQJi+Hc8dtnoW7mXffvA0Bf1VGjI5MPeTkLiAHlwRBvPYu36EOK01TlIPt09Er5/7dFEU9v+DAL
	+zEi4gmWgOW7HzB3qiRO6P59DBxd9SfmxtFRceEvzPRXBZAwRIJ5U6Voo4dWMr0syatJGuCiBqMPM
	abHvyN8zmEh4qY4ErA0D5YmEB62rOvTYizM214UK7qXPyI+mKKyXzr2cdqIf+HKfnGX4pyeNRSOdv
	qo4fW6g2Ax0XCwqfaaar5lPNwCKAJyqSmoKmnVcwnwchoG9KNQO1a+axwQbHjXqRC4WgrBXiTVmiS
	6OXmmu1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQAb-0000000H1X1-2RXt;
	Wed, 24 Dec 2025 14:49:08 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQAI-0000000H1UQ-1vM1
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 14:48:54 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-88fdac49a85so23111996d6.0
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 06:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766587717; x=1767192517; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kv8uVhQiYXeEfFC22LTWeYBZIiji9JQILeQzDCWhcvk=;
        b=xrFB0+qRqWP7RX5kMF1m7LoeT0PjLTKn+F7QzKgFDWTPYlV79ho9sAE/ajAPVVMdCN
         WDTkv1OqYGb+jjLVhFmcsJxynsI32dHZc3lMMsPZ+rWxf/hVsCeGeoASTU/9LU4Tad7B
         kZVsleX1CVdD5dazXjm+nvGK9con9rhOauBkywEFD/qgOSlPDYeGgj8J2AHOurMbIW67
         ygJtfBW1jE0896cP1g27lhgb5VJaj9bnjhBB2tFej5QvL/uLBRQM2ggdXySonyAJcVyK
         QGd0u5w7imNsgXL4bRc85CQpFbt2/hiy2+KIPXHllWvEfw9Nx7ZcJwpfqae+75CImMBG
         aBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766587717; x=1767192517;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kv8uVhQiYXeEfFC22LTWeYBZIiji9JQILeQzDCWhcvk=;
        b=kIILpXfQcMkgFrV1kmr0FOXcxL6o0Yhq3PMs+fKgC8+X9kzofQ84kQTOxA0iYG6yVF
         7v0kv39U71cB79sqXgfPU3GsD6cnGJQZQKrkH3LvWNboKiz16rXYvF8O96KLO/AXoIgw
         ofp8KTDYu/ur7kUS/AbEO+ALOwDQSj3Hhj3+5EFVmpEXFNd32TzJ11bG12nY81K/VqIT
         vXvHPUqgYRAmlPEAFgn0ZskcNbYx4dsH4lHjVVGJgU6WbxRtuOGjcWcEgyNG3owLhiUs
         LF6VwJ5cMQzzEQvGnf4ENUGz/g85GH7M+5MktjgV/R79A0bX8bnap5Ludp15qOG45LrC
         SaxA==
X-Forwarded-Encrypted: i=1; AJvYcCVxnrKitDI4eCXFTiYyANQGqCdSEHirxFga/AZjMLR7xsb+4EtxLaweO3Tu0FxiULejPlLD9sG7ytzX78/9IA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxyo2ccl7OfjutLuvRQEbBZxTtJ0WIEWEfgcs/lpNGEMhm4AHo7
	UujA/jKh+OvUQhdAVNn6vFU2qtQj/XdG0uMGSrFWXTdQApIVx93tM6BigLwtMSQcFCA=
X-Gm-Gg: AY/fxX50WqA4L826Fz4PlZbjLGF5z/1clXArWALf8Pckk/3f4I5nT6hNg3AhCMf0zPr
	QvfgL1QyRIG/TNGUBs+AEcZJyJiJ1S/7xqllNYRoRS6FEn/U4n9sVBgk2u7Py0qEZguKFgSqR0h
	3HlFgG8N8ipSA5x6fiLjwo81DaDZd5+5Ml0VLVIzXv5AtQfY3k5MnsoghWjXwaGOygSy4rSXuj5
	cO2yf+0+reNM8HYH6S+74QhSDuTb0sQ7+OsdoaQAdLbWFUt10g0olDMp/B6iv6dhM9dj52OaLqo
	FLFIsX8r5fP1VLV7XX2YGobUSNGbu3W8eMUkuHLQUwzM2kXKzjoxQdzlwdSJsRdf2Vxm5HDDXzJ
	gjfe5ZkX4qm9Qm8XdR82Cn24phE9MV+RkEJEP/+aU3WR/eCsrtp8TmJeZw6iFxG12thPMg1jwdi
	rreIqFURi8x9SOS64V
X-Google-Smtp-Source: AGHT+IHUw306Ut7ymeV0kJIFuDFhQmJhzVDxJ8eqcQqn6KuZn3cQi9qGKe1+/PE9xQtkQkAuW1Wvfg==
X-Received: by 2002:a05:6214:5013:b0:880:5851:3c49 with SMTP id 6a1803df08f44-88d82621f22mr305922536d6.0.1766587717216;
        Wed, 24 Dec 2025 06:48:37 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88d969fed73sm128870776d6.15.2025.12.24.06.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 06:48:36 -0800 (PST)
Message-ID: <43caf038367d00217d11237e54c82240c3caea5a.camel@ndufresne.ca>
Subject: Re: [PATCH v2 04/22] media: rockchip: rga: use clk_bulk api
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
Date: Wed, 24 Dec 2025 09:48:35 -0500
In-Reply-To: <20251203-spu-rga3-v2-4-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-4-989a67947f71@pengutronix.de>
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
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_064843_494368_FED1D7AA 
X-CRM114-Status: GOOD (  17.03  )
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
Content-Type: multipart/mixed; boundary="===============2396220666460286241=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2396220666460286241==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-5GfWg0gYb1YIqmTgJN+W"


--=-5GfWg0gYb1YIqmTgJN+W
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Use the clk_bulk API to avoid code duplication for each of the three
> clocks.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga.c | 64 ++++----------------=
-----------
> =C2=A0drivers/media/platform/rockchip/rga/rga.h |=C2=A0 5 +--
> =C2=A02 files changed, 9 insertions(+), 60 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 43f6a8d993811..ef568b3758380 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -698,48 +698,10 @@ static const struct video_device rga_videodev =3D {
> =C2=A0	.device_caps =3D V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING,
> =C2=A0};
> =C2=A0
> -static int rga_enable_clocks(struct rockchip_rga *rga)
> -{
> -	int ret;
> -
> -	ret =3D clk_prepare_enable(rga->sclk);
> -	if (ret) {
> -		dev_err(rga->dev, "Cannot enable rga sclk: %d\n", ret);
> -		return ret;
> -	}
> -
> -	ret =3D clk_prepare_enable(rga->aclk);
> -	if (ret) {
> -		dev_err(rga->dev, "Cannot enable rga aclk: %d\n", ret);
> -		goto err_disable_sclk;
> -	}
> -
> -	ret =3D clk_prepare_enable(rga->hclk);
> -	if (ret) {
> -		dev_err(rga->dev, "Cannot enable rga hclk: %d\n", ret);
> -		goto err_disable_aclk;
> -	}
> -
> -	return 0;
> -
> -err_disable_aclk:
> -	clk_disable_unprepare(rga->aclk);
> -err_disable_sclk:
> -	clk_disable_unprepare(rga->sclk);
> -
> -	return ret;
> -}
> -
> -static void rga_disable_clocks(struct rockchip_rga *rga)
> -{
> -	clk_disable_unprepare(rga->sclk);
> -	clk_disable_unprepare(rga->hclk);
> -	clk_disable_unprepare(rga->aclk);
> -}
> -
> =C2=A0static int rga_parse_dt(struct rockchip_rga *rga)
> =C2=A0{
> =C2=A0	struct reset_control *core_rst, *axi_rst, *ahb_rst;
> +	int ret;
> =C2=A0
> =C2=A0	core_rst =3D devm_reset_control_get(rga->dev, "core");
> =C2=A0	if (IS_ERR(core_rst)) {
> @@ -771,22 +733,10 @@ static int rga_parse_dt(struct rockchip_rga *rga)
> =C2=A0	udelay(1);
> =C2=A0	reset_control_deassert(ahb_rst);
> =C2=A0
> -	rga->sclk =3D devm_clk_get(rga->dev, "sclk");
> -	if (IS_ERR(rga->sclk)) {
> -		dev_err(rga->dev, "failed to get sclk clock\n");
> -		return PTR_ERR(rga->sclk);
> -	}
> -
> -	rga->aclk =3D devm_clk_get(rga->dev, "aclk");
> -	if (IS_ERR(rga->aclk)) {
> -		dev_err(rga->dev, "failed to get aclk clock\n");
> -		return PTR_ERR(rga->aclk);
> -	}
> -
> -	rga->hclk =3D devm_clk_get(rga->dev, "hclk");
> -	if (IS_ERR(rga->hclk)) {
> -		dev_err(rga->dev, "failed to get hclk clock\n");
> -		return PTR_ERR(rga->hclk);
> +	ret =3D devm_clk_bulk_get(rga->dev, ARRAY_SIZE(rga->clks), rga->clks);
> +	if (ret) {
> +		dev_err(rga->dev, "failed to get clocks\n");
> +		return ret;
> =C2=A0	}
> =C2=A0
> =C2=A0	return 0;
> @@ -935,7 +885,7 @@ static int __maybe_unused rga_runtime_suspend(struct =
device *dev)
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga =3D dev_get_drvdata(dev);
> =C2=A0
> -	rga_disable_clocks(rga);
> +	clk_bulk_disable_unprepare(ARRAY_SIZE(rga->clks), rga->clks);
> =C2=A0
> =C2=A0	return 0;
> =C2=A0}
> @@ -944,7 +894,7 @@ static int __maybe_unused rga_runtime_resume(struct d=
evice *dev)
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga =3D dev_get_drvdata(dev);
> =C2=A0
> -	return rga_enable_clocks(rga);
> +	return clk_bulk_prepare_enable(ARRAY_SIZE(rga->clks), rga->clks);
> =C2=A0}
> =C2=A0
> =C2=A0static const struct dev_pm_ops rga_pm =3D {
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index 72a28b120fabf..a922fac0c01a3 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -6,6 +6,7 @@
> =C2=A0#ifndef __RGA_H__
> =C2=A0#define __RGA_H__
> =C2=A0
> +#include <linux/clk.h>
> =C2=A0#include <linux/platform_device.h>
> =C2=A0#include <media/videobuf2-v4l2.h>
> =C2=A0#include <media/v4l2-ctrls.h>
> @@ -81,9 +82,7 @@ struct rockchip_rga {
> =C2=A0	struct device *dev;
> =C2=A0	struct regmap *grf;
> =C2=A0	void __iomem *regs;
> -	struct clk *sclk;
> -	struct clk *aclk;
> -	struct clk *hclk;
> +	struct clk_bulk_data clks[3];
> =C2=A0	struct rockchip_rga_version version;
> =C2=A0
> =C2=A0	/* vfd lock */

--=-5GfWg0gYb1YIqmTgJN+W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUv9QwAKCRDZQZRRKWBy
9PD/AP4tic+jV60iRFkPYzejPFAmtdDlWpNwzUiuwJZwW678VwEAnEx6nok/9TcX
lGjkyKo77ZGxsPzeclf3xOMh+37c4QA=
=g61U
-----END PGP SIGNATURE-----

--=-5GfWg0gYb1YIqmTgJN+W--


--===============2396220666460286241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2396220666460286241==--

