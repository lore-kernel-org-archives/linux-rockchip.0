Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2AFEEB64D0
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jun 2023 16:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=unVfJuLJ1KtUOs/tA3OFNMr3+J3+StXvykCBbDtk6Ow=; b=rLZAp+3xf6xTHojmA8GixE7vNh
	xD8LFgvQzwRQ0VviPLNyWkbbDdaBwgmraINfmANo3WzzJhUFhYGcDxI4ESqR+wPhDqj2pPoTCNNCZ
	spMGnayWXewJQZaCaI6Z2KAZO6p2fLuPdIYWMt3BGWV+RcEfMzLUgbPZRUJTP593ptuoK6HLFA0zi
	B5duoPJ/JVnQQWCaN5x4er4Wj5lPAProzHAO2nlR/kN1Mul1Rfg52UZPSXtyyeQ8i1mnwOqC3keNU
	IExVl3wYBdzSiuX50W3oa73r13s373fzweRQpuvdEF0Xjfauh+UmIpknIi9USS0FC+984vooDwcXg
	KmNB1oOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q96mn-008aJs-3A;
	Tue, 13 Jun 2023 16:22:25 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q96mj-008aIe-13;
	Tue, 13 Jun 2023 16:22:23 +0000
Received: from mercury (dyndsl-091-248-189-170.ewe-ip-backbone.de [91.248.189.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1FC0E6606EF9;
	Tue, 13 Jun 2023 17:22:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686673339;
	bh=MADM0OvComNnVgRiTtbdHEXJKTfQ5wtfSsTHqpNZ7+Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cG7lOXdeYoK/EWOb0ByXUM8o7LL/QXTRtRP9r7fzeNr2SsPnglx5QGOR2u3xtyLzq
	 +/9z8neWmJLvxJn9IbHrX6FoDT2HVS9fLS+DYBK/KgGJrs4hc/rNKAe3Gia6PUH1PF
	 DuiU3FnEmYEo3ffkyXG98y8h6UvIHVgChwrKPAMKTNe0gDZmRds060hnSmKWWYJUNx
	 aVaoB2GlaSx6iiBc9rEBLQsTlfOOWSGE6pPsq4XEpO9Ez6sS2sYagf445F0h6fQN9E
	 V/qB43D5b4bdatSJIlqKzPheZeKdgmCBy3WKCGpoVhYRUFS9t5CsyBZADZeBV6Rl6+
	 chCQ8hfE8NNlQ==
Received: by mercury (Postfix, from userid 1000)
	id 3BC991066FBA; Tue, 13 Jun 2023 18:22:17 +0200 (CEST)
Date: Tue, 13 Jun 2023 18:22:17 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v5 02/25] PM / devfreq: rockchip-dfi: Embed desc into
 private data struct
Message-ID: <20230613162217.auqdeogoxs35fuqe@mercury.elektranox.org>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230524083153.2046084-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20230524083153.2046084-3-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_092221_491770_032B03C1 
X-CRM114-Status: GOOD (  22.05  )
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
Content-Type: multipart/mixed; boundary="===============4790561535128037297=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4790561535128037297==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jfxv54ui2trftfa7"
Content-Disposition: inline


--jfxv54ui2trftfa7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 24, 2023 at 10:31:30AM +0200, Sascha Hauer wrote:
> No need for an extra allocation, just embed the struct
> devfreq_event_desc into the private data struct.
>=20
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>  drivers/devfreq/event/rockchip-dfi.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event=
/rockchip-dfi.c
> index 74893c06aa087..467f9f42d38f7 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -49,7 +49,7 @@ struct dmc_usage {
>   */
>  struct rockchip_dfi {
>  	struct devfreq_event_dev *edev;
> -	struct devfreq_event_desc *desc;
> +	struct devfreq_event_desc desc;
>  	struct dmc_usage ch_usage[RK3399_DMC_NUM_CH];
>  	struct device *dev;
>  	void __iomem *regs;
> @@ -204,14 +204,10 @@ static int rockchip_dfi_probe(struct platform_devic=
e *pdev)
> =20
>  	data->dev =3D dev;
> =20
> -	desc =3D devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);
> -	if (!desc)
> -		return -ENOMEM;
> -
> +	desc =3D &data->desc;
>  	desc->ops =3D &rockchip_dfi_ops;
>  	desc->driver_data =3D data;
>  	desc->name =3D np->name;
> -	data->desc =3D desc;
> =20
>  	data->edev =3D devm_devfreq_event_add_edev(&pdev->dev, desc);
>  	if (IS_ERR(data->edev)) {
> --=20
> 2.39.2
>=20

--jfxv54ui2trftfa7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSIl7gACgkQ2O7X88g7
+pqavg//eGagVO58ELSDQgmcdseNzq5Z+G6qMNxVtz7FQsw+l/RWj2SPWK2u4g/a
sQ2WAQyE2/f/VIt3kp0evIvau8xhc77d84NCfuNOYHeWKsmnH81opNj5n5PiGAzK
iNwCRyecDGgOvar0ZqK+4RWS/+h0K//WH/dq85ssVMkkFye8GMTlYszbDWka5p98
BGQNHW7EuT8qCsni4haqU0CfW9/P0fSMPBjjygittVYlXu1Om2VCTBZpeB9uF6iQ
4hMJx9ih76+K4kQBMvxArKQOkZYBGYIUfjY97lH/YKZvrGf88Hm5RV2HiWzhN9v2
GUmxqlq/A2pyPBhlbRhZZNf/0At99qGKIUwyffLW5+6YLFgAtAysRleRmd2BpkXn
WrVsggohh0L0oaW4RWKeyT6/ZtcJ5qD9e1vari6JF0S+5+W+1CHtvEY+yQa3kekD
WVuc1HtRNeqkqjgiO9I051BOepkIrb6RTGJPi6Rsotz5QIQatW7GzhwUhhT0cDUs
f3ZcRjTvABqOfEVq4Y+ybEpcrhmlUW4hUPJjNsztf86D4mwAtUaRebpFof8NkJVn
9g3322XfKBBxRfMlnwYVeT7oNuMurn7YuyUvfydFSNyuxXYUdQEDj+Y2UQ2luBi8
IVunO3oplN9wAXOJHhYUsS//sGUeDNhcD7YwzSdxVnOs4ow2DVg=
=XyGu
-----END PGP SIGNATURE-----

--jfxv54ui2trftfa7--


--===============4790561535128037297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4790561535128037297==--

