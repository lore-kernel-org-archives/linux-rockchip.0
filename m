Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26C19EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 08:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yIysltqgzRMwfO411PopILirUXr7QrKit3mKx1ZtA7M=; b=ExQD2erHoLXrMfe917pdC0Wzv3
	edHq0hD4W3r0V50JHV1teZWJNQ2hPrWS8mI+vtsQ3R0iqIfsQ76bYNdzligsQFlfkgcDMkFkr6tVB
	zSWoiLiPlDbFjMMwiyRcJF1p9mNPEcSSdff9G49l8tt84rIBlgxTn8xlTislb+fS8DoE6Ct8Etyl7
	eoLYc8TQ0cj80jtTq8Ljwgnt6dT+pzRMyyn3Uc17l6QAtxN+jzb9Gzj411/qC6nMbbUzgR4wy3jJ0
	s9lOrdv7SEX04BZu2UPmFayMyegh4Q29Ju7lUenTkXkZQdkHx79g7DTGw3nwWfL85BSWggP6qW2yH
	fXPA8qEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE4QM-00Cc53-2G;
	Tue, 27 Jun 2023 08:51:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE4QI-00Cc1w-1s
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 08:51:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qE4Og-0007V2-F6; Tue, 27 Jun 2023 10:50:02 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qE4OT-00AOye-Qh; Tue, 27 Jun 2023 10:49:49 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qE4OS-000CFt-WF; Tue, 27 Jun 2023 10:49:49 +0200
Date: Tue, 27 Jun 2023 10:49:48 +0200
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
Subject: Re: [PATCH 01/15] genirq/devres: Add error information printing for
 devm_request_threaded_irq()
Message-ID: <20230627084948.nwp7gmwpdtadcfhk@pengutronix.de>
References: <20230627071707.77659-1-frank.li@vivo.com>
MIME-Version: 1.0
In-Reply-To: <20230627071707.77659-1-frank.li@vivo.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_015142_632033_29692E8C 
X-CRM114-Status: GOOD (  28.08  )
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
Content-Type: multipart/mixed; boundary="===============7912142629537259169=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7912142629537259169==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fbpfi3z6hsdafixb"
Content-Disposition: inline


--fbpfi3z6hsdafixb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, Jun 27, 2023 at 03:16:52PM +0800, Yangtao Li wrote:
> Ensure that all error handling branches print error information. In this
> way, when this function fails, the upper-layer functions can directly
> return an error code without missing debugging information. Otherwise,
> the error message will be printed redundantly or missing.
>=20
> There are more than 700 calls to the devm_request_threaded_irq method.
> If error messages are printed everywhere, more than 1000 lines of code
> can be saved by removing the msg in the driver.
>=20
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---
>  kernel/irq/devres.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/kernel/irq/devres.c b/kernel/irq/devres.c
> index f6e5515ee077..94039a915218 100644
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
> +		dev_err(dev, "Failed to request threaded irq\n");
>  		devres_free(dr);
>  		return rc;
>  	}

My personal opinion is that generic allocation functions should be
silent. The reason is that the consuming driver is in a better position
to emit a helpful error message.

While there is some room to improvment in this generic variant (by
mentioning the error code and maybe also the irq number), consider a
device that has up to 3 irqs and sometimes only 1. So the driver might
want to handle some irq requesting silently. And also for non-optional
irqs

	mybus:mydev: Failed to request TX irq (EBUSY)

is much more helpful than

	mybus:mydev: Failed to request threaded irq

(Hint: "threaded" is not a helpful information here either.)

Yes, a message in the driver has the downside of making the kernel image
(or module) bigger, but the added value is IMHO worth that.

Also you might want to handle -EPROBE_DEFER and not emit a message then?
(Not sure if request_threaded_irq can return that.)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--fbpfi3z6hsdafixb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmSaoqwACgkQj4D7WH0S
/k66Lwf9Hq5nC1KErm/UPzhqFFiQaUkm5tlRfhc0HKwY231RXIl8U/sEUzFOmVp1
QoBQ3HUogIHlgELx2qVVR9friYW9RRjYQUIFa1Sr1AtICCHEbmveRdjqF07bZTdw
czHwMp90yKmH9mbGpEb7JfmhP+Gl3EJHkFZsfr9AniTRYyiDRNnKIOY8GbHv+Uvz
vtzJx3uAlv/rcGSMxY+OKqTl24TYEQAoL6nWjp2tDuv2qgqUyCXBFsNG3/NfKsED
ldiOz1Wlgger5JmYqUI2EikRolCllLBqEhUMZVTFdtckl0N82zUG+SKNhaSK37yP
Q6KBysmk81RWjCHUIWVmIbxhxxgdUQ==
=Okxi
-----END PGP SIGNATURE-----

--fbpfi3z6hsdafixb--


--===============7912142629537259169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7912142629537259169==--

