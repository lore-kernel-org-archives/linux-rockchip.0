Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D580ECCD199
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 17:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K2kOb9DfnaMqAu4z7F29prb0Uu4ChX86cILnK4MG3ZM=; b=I/HxxNCyyvNJAYRHBFr9F2sBnv
	QaeILafs9lAGTPjS083VX+9CQsnYazEgAA8Nowxg4I7li795PrESO3goRJtpRcJU+mgZKmQRP1jnE
	94kb0SjzLjl1zFYkdvU6K939tbLFIWbawSH5SsbrhZ4EaFAFUrWzobivdp9IdoVP3zbnw5nUcInwO
	e1k9ZvXd9J2gdbzi0hGgjhg/RzYHzGcioJox3RkPBjQJrzA+tiM+0VeU1C1yVjpRPDoSXzFlpWZrp
	w1qWTasVkSN326S0Am6y16C5GEtDRWhpNqLewytpZ2DYnvdDKBE8uIXuAeXpJwJVaoFXXUpFfa9sa
	txb0PnVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9RUN-00000005XC2-0k8o;
	Thu, 16 Oct 2025 17:10:07 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9RUJ-00000005XAq-3oGK
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Oct 2025 17:10:05 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1760634588; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gczbO7sKvcCDnqFSCQR1vw53dx1KwJ5W0866fWUOnSzlNftVHnFLj77hgcQUZtYXhY4ar0IDH7bqxBx/6iCFqfl2mqPQH6dsKBEJ9AkGJjyDHneSaj81ertXiYnhnrzH0c9O80Zn4V1KJw79ZGJd7mmXlgT28lr0FBTaCsiadOQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1760634588; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hbEVUDEoCtk3RUFUaAcs6tJL6oJ/a4YVjeL1gA2lj0c=; 
	b=YoBbzw8uapRMEd890bLia1G3i2fGbjjsf6WNJmThnnPZhpHq5BO92Bf9SGMz2GamRtF4h1WYTLoGbU9bpLWepgGbVx3Ks8mQQglFWILlhDV4b3SigUq7xntql27Ad1dm1DFHD+6AXpW5tzdEplrhLZj9CYVop0/m/UcwIIfPtiI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1760634588;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=hbEVUDEoCtk3RUFUaAcs6tJL6oJ/a4YVjeL1gA2lj0c=;
	b=UQsNPB5Go5CaZbJTq7W5TDuEJTrKB9w9Kk33sLnBncGFqC3D24repvUEoKp49MYr
	NaIT7U2ltqoYff1WLmjb5bzmBzfgIe57idrbASxG6LCiH7O8GXGe2SMPb0ks/ZXG9R3
	H6mgu+d0x3B+3yZ2biXQx7MHasadDM+zICc2J0Rg=
Received: by mx.zohomail.com with SMTPS id 1760634584762197.15433494671288;
	Thu, 16 Oct 2025 10:09:44 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id A00AA180305; Thu, 16 Oct 2025 19:09:37 +0200 (CEST)
Date: Thu, 16 Oct 2025 19:09:37 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH 1/2] mmc: sdhci-of-dwcmshc: Add command queue support for
 rockchip SOCs
Message-ID: <7bxs6nw5fnjq22p7gxrmjqjtw3g5nt6cacwpfjihxv5jk765si@ho3odkyxpi7m>
References: <20251014-rockchip-emmc-cqe-support-v1-0-918f03de0cb1@collabora.com>
 <20251014-rockchip-emmc-cqe-support-v1-1-918f03de0cb1@collabora.com>
 <70cca930-29ac-40a9-8e3d-fba1aace9156@intel.com>
MIME-Version: 1.0
In-Reply-To: <70cca930-29ac-40a9-8e3d-fba1aace9156@intel.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/260.576.51
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_101004_022599_FEA73E3F 
X-CRM114-Status: GOOD (  19.17  )
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
Content-Type: multipart/mixed; boundary="===============8421269192710913998=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8421269192710913998==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hi7slofuvqrfaiik"
Content-Disposition: inline


--hi7slofuvqrfaiik
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/2] mmc: sdhci-of-dwcmshc: Add command queue support for
 rockchip SOCs
MIME-Version: 1.0

Hi,

I will fix the typo in the commit message in PATCHv2.

On Thu, Oct 16, 2025 at 10:42:29AM +0300, Adrian Hunter wrote:
> > +static void rk35xx_sdhci_cqe_enable(struct mmc_host *mmc)
> > +{
> > +	struct sdhci_host *host =3D mmc_priv(mmc);
> > +	struct sdhci_pltfm_host *pltfm_host =3D sdhci_priv(host);
> > +	struct dwcmshc_priv *dwc_priv =3D sdhci_pltfm_priv(pltfm_host);
> > +	u32 reg;
> > +
> > +	reg =3D sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG=
);
> > +	reg |=3D CQHCI_ENABLE;
> > +	sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
> > +
> > +	reg =3D sdhci_readl(host, SDHCI_PRESENT_STATE);
> > +	while (reg & SDHCI_DATA_AVAILABLE) {
> > +		sdhci_readl(host, SDHCI_BUFFER);
> > +		reg =3D sdhci_readl(host, SDHCI_PRESENT_STATE);
> > +	}
> > +
> > +	sdhci_writew(host, DWCMSHC_SDHCI_CQE_TRNS_MODE, SDHCI_TRANSFER_MODE);
> > +
> > +	sdhci_cqe_enable(mmc);
> > +
> > +	sdhci_writew(host, DWCMSHC_SDHCI_CQE_TRNS_MODE, SDHCI_TRANSFER_MODE);
>=20
> Transfer mode was set already 2 lines up

Indeed. I was not sure if this is an intentional quirk from Yifeng
Zhao and thus kept this dual write.

> > +}
> > +
> > +static void rk35xx_sdhci_cqe_disabled(struct mmc_host *mmc, bool recov=
ery)
>=20
> As mentioned elsewhere "disabled" -> "disable"

Ack, will fix in PATCHv2.

> > +{
> > +	struct sdhci_host *host =3D mmc_priv(mmc);
> > +	struct sdhci_pltfm_host *pltfm_host =3D sdhci_priv(host);
> > +	struct dwcmshc_priv *dwc_priv =3D sdhci_pltfm_priv(pltfm_host);
> > +	unsigned long flags;
> > +	u32 ctrl;
> > +
> > +	mmc->cqe_ops->cqe_wait_for_idle(mmc);
>=20
> Is this necessary?  If so, it seems more like something that should be do=
ne by
> cqhci itself.

The RK3588 TRM says that the software needs to verify that the eMMC
controller is in idle state without any ongoing commands or data
transfers before disabling the CQ_EN bit (CQHCI_ENABLE in the kernel).

Thanks for the review,

-- Sebastian

--hi7slofuvqrfaiik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmjxJs4ACgkQ2O7X88g7
+pq51hAAm3CH6Mqi1/tRfS7aU5DQ4CTIPKPwk8OcIi55uSaw6dq9jg7bPBVs4V7n
9HB551tq8Pam5BJ4/rLH7izTRBCzSG/hvChWlKYqsVw1w60Pb/JaTBxoFiYrq9XD
gNfWsQPBo3hwxrkzeIxYNNn2AnLHcEmkzYLWjVRsxNaoalAsOtwgTA/8bY4Yuwvg
Q7zCCqj4XrWrhvYET/c8EIoYkfjOnTkNhvE/ErZRYPb1tJLSjrzJoxU0KjtUtGcm
ac+orwAkqDuMVOpL0CvdjZkDiOhnubYAL9vWcSDXKN++MbeMwaLoqsrl3x9bnw1X
eYzGDQr5pNK7ywYVAcxu6mOTFrQaBFzh7RcoV5f+Gpw2xjF99CYpGI5Nysxyjr/q
1KoaTFjp8FQxVxycZhPCAnbAXrvfWWhKCwU8bbR3tgYHFMTGR/bnQqYQFbTu+5nL
W54NRQir+pMjeAOt8/aKhPCvQ8FPOUdQoqXqUqt7iVBtEdDejfKxVgV+TAC/7ild
xhh+jwafHylVySu8xf7kYUgITtNXIkeDlaU34SvWUs+rZ8fXE+ixQPez4c2QMzy7
mImT+596Tn+3IeRjnZVGaRsFCHRcwZZ95O167gW2IfU6BCFNS3E3a6DULxsbrNmv
aVM8t/FpIjNYIHDNGGTKD2YybwFSNeY1c0F2L7zUBTcY8gir0cM=
=DGaK
-----END PGP SIGNATURE-----

--hi7slofuvqrfaiik--


--===============8421269192710913998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8421269192710913998==--

