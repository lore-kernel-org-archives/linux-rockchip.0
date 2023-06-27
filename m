Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93A6EEB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 11:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u6PV8lnU/YLFm+5fXFjuMFkvafAB1cHP+qQVM315sVw=; b=xN8yXQGSddRywnGQhIgo94XbXQ
	//cOyMmWYf6Me/V3RgkPtani0Jawzt68CakaV52hDT/aj1XQtJYW9+qADnBZ/eYk3Op96KRWqU9Xo
	7CDm39pcnJbGersbCLW8CeVmKxsuPU3CfpcL7rA44w3MYmryz2apTXfZKMIvQpgg8dbkxeUha5iBr
	pckyiYbySjgdLqtHhhax9C1Ee5P5zbNLY1EN+t87RQvNEYQI8jtA/M7ncRGsvsAZ29AXuWbMjVG8z
	lkVvIt1YwY8cgKEGSZBI1ylYUhRq6cRJJyLgNj9GKTtGZbmvouvARYyrGqp+nMqYynKreRcA3Vlyj
	U7ApkPJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE6S9-00D1Aw-1z;
	Tue, 27 Jun 2023 11:01:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE6S5-00D19g-2u
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 11:01:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qE6R4-0007fq-JI; Tue, 27 Jun 2023 13:00:38 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qE6Qv-00AQAC-96; Tue, 27 Jun 2023 13:00:29 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qE6Qu-000ECV-GT; Tue, 27 Jun 2023 13:00:28 +0200
Date: Tue, 27 Jun 2023 13:00:25 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Yangtao Li <frank.li@vivo.com>
Cc: miquel.raynal@bootlin.com, rafael@kernel.org, daniel.lezcano@linaro.org,
	amitk@kernel.org, rui.zhang@intel.com, mmayer@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, agross@kernel.org, andersson@kernel.org,
	konrad.dybcio@linaro.org, thara.gopinath@gmail.com, heiko@sntech.de,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	thierry.reding@gmail.com, jonathanh@nvidia.com, tglx@linutronix.de,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	srinivas.pandruvada@linux.intel.com,
	DLG-Adam.Ward.opensource@dm.renesas.com, shangxiaojing@huawei.com,
	bchihi@baylibre.com, wenst@chromium.org,
	hayashi.kunihiko@socionext.com,
	niklas.soderlund+renesas@ragnatech.se, chi.minghao@zte.com.cn,
	johan+linaro@kernel.org, jernej.skrabec@gmail.com,
	linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 01/15] genirq/devres: Add error information printing
 for devm_request_threaded_irq()
Message-ID: <20230627110025.vgtplc6nluiiuvoh@pengutronix.de>
References: <20230627101215.58798-1-frank.li@vivo.com>
MIME-Version: 1.0
In-Reply-To: <20230627101215.58798-1-frank.li@vivo.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_040141_938823_9B586BF6 
X-CRM114-Status: GOOD (  27.11  )
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
Content-Type: multipart/mixed; boundary="===============4679529112809748167=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4679529112809748167==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t3yaxbxt6bm6emkg"
Content-Disposition: inline


--t3yaxbxt6bm6emkg
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, Jun 27, 2023 at 06:12:01PM +0800, Yangtao Li wrote:
> Ensure that all error handling branches print error information. In this
> way, when this function fails, the upper-layer functions can directly
> return an error code without missing debugging information. Otherwise,
> the error message will be printed redundantly or missing.
>=20
> There are more than 700 calls to the devm_request_threaded_irq method.
> Most drivers only request one interrupt resource, and these error
> messages are basically the same. If error messages are printed
> everywhere, more than 1000 lines of code can be saved by removing the
> msg in the driver.
>=20
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---
>  kernel/irq/devres.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/kernel/irq/devres.c b/kernel/irq/devres.c
> index f6e5515ee077..fcb946ffb7ec 100644
> --- a/kernel/irq/devres.c
> +++ b/kernel/irq/devres.c
> @@ -58,8 +58,10 @@ int devm_request_threaded_irq(struct device *dev, unsi=
gned int irq,
> =20
>  	dr =3D devres_alloc(devm_irq_release, sizeof(struct irq_devres),
>  			  GFP_KERNEL);
> -	if (!dr)
> +	if (!dr) {
> +		dev_err(dev, "Failed to allocate device resource data\n");
>  		return -ENOMEM;
> +	}
> =20
>  	if (!devname)
>  		devname =3D dev_name(dev);
> @@ -67,6 +69,7 @@ int devm_request_threaded_irq(struct device *dev, unsig=
ned int irq,
>  	rc =3D request_threaded_irq(irq, handler, thread_fn, irqflags, devname,
>  				  dev_id);
>  	if (rc) {
> +		dev_err_probe(dev, rc, "Failed to request threaded irq%d: %d\n", irq, =
rc);

This changes semantics because dev_err_probe() is only supposed to be
called in probe functions. Not sure about devm_request_threaded_irq, but
its friend request_irq is called in the setup_irq (or open IIRC)
callback of serial drivers.

While I assume changing to dev_err_probe is a result of my concern that
no error should be printed when rc=3D-EPROBEDEFER, my other concern that
adding an error message to a generic allocation function is a bad idea
still stands.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--t3yaxbxt6bm6emkg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmSawUgACgkQj4D7WH0S
/k7nEAf/Sl6IkhcKwJ4ubKgDKscqGnFI0cXLbwVB+ka4iZfjqT5YcryVy/7nzzc4
i3/0+bkJ03exSpcwA2tD+lYPOiEOGjeP/zlVkVO4yUom1zTqv5nxhhV9RlGNaOh4
078C0cl2BRqDJoTleXNliumh2XZAQwQRCBGjZvxF5nbgbz72DN9KCae20rqtrNGx
B8kXn6gLq7G3/LyeuUxanxoyk0ok5qPOhbp7fCwRV5FFaq8p4C0AEQKp+IxGwBLm
YaRpSdThVEGAPaK+FvneVS7geTX5lliN3me02TSHTRDgE4WrMcITeJ3kyImTjU+A
wSYX7roBs61l4eBj3iITpZkOBqw6ww==
=xLpK
-----END PGP SIGNATURE-----

--t3yaxbxt6bm6emkg--


--===============4679529112809748167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4679529112809748167==--

