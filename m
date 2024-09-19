Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BEA7CF3963
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Sep 2024 19:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S9U/BCc+lC2xlomhHFGbsBlakNZE0dlfJ6NraavCBK4=; b=icwZbAOKQ3EW7MfZK81sMERICA
	twOgo1ukV/Oy7y7jcUdfM3G5wrzwCOZIMIdr06R8qWfdFaFcdj9G3oiEhAxvEMGpemsroLT5SX+dE
	B/zCPCtKUKInIKxON2KFNO8vOQytlREBf1LWtgxMhJciwrAsGUcnzKzUm+BE1F9ck1Mrj44UkIi7j
	k1KQ4Xk9p6MmSSY3FMleQ1wAxGczS5jqwg1lNVF2V9mT4/rJxmJoDZm/w+XVA8EZVL8clp7MA8nRR
	g5FzVNvdcbPAC/eEU/pMsfpeE/FgR/EBhiTPoaoTqF2PCjfooaVn8n9TErxwJyq9MkGhK/Qa7oa12
	hNiK0Ssw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srMoY-0000000AucN-2j4Z;
	Thu, 19 Sep 2024 19:27:42 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srMoW-0000000Aubu-0Cv7
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Sep 2024 19:27:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1726774046; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gzUFKT1zZHbHP8nrXYFQSeK/Vbu95YHXygfLOyzh7xLvaS+kfB4wbx7xPFlCub3gcfSEVOV+gb1jAd4z3YCyXyaaaMgRJeeLYjDWGYm1Qc03X19kr1YChlB9U8mZhbyNv/UQ8GRvrL/eIft9KpVGH6enO/Ar+IH21aGflvFqlWg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1726774046; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=t4Ne6sfF33Z90OyTmpxA9lLW1DDECmfnMlVBavSL5ic=; 
	b=ipzXPtcdqeWebG+eqHH0DMV6ZnEIBxSP4DKIKEkSVEDO435h2ibNSrpjCYffUYGkQx3Z1aLp7YArZuwxew4/LtGjBCiv7qySAPT1qIfiPpR2pGv5n8XZHe36JOaU8I4YVnEbrM/98Cov5/H9f6JJzhGzal3i47/5Z5etbrJ3blE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1726774046;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=t4Ne6sfF33Z90OyTmpxA9lLW1DDECmfnMlVBavSL5ic=;
	b=boxTSPfrtotkdSf8bMksmMn/hm2KakSAkiCoWXnsGwZZxhVlxlbNwcY4zmfbtW0U
	zWipuumOiMSwc5x2E510uzqFaxClI7zwIiMr1L6ubMeeoE1FN+keULZZ7pIGqfz+fYG
	vX8EOjOkteMYJzqcXO8Qy6jVGQWLEPWUkiUPjJyA=
Received: by mx.zohomail.com with SMTPS id 1726774044357158.77599800361543;
	Thu, 19 Sep 2024 12:27:24 -0700 (PDT)
Received: by mercury (Postfix, from userid 1000)
	id BC5CE106031C; Thu, 19 Sep 2024 21:27:17 +0200 (CEST)
Date: Thu, 19 Sep 2024 21:27:17 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	=?utf-8?B?QWRyacOhbiBNYXJ0w61uZXo=?= Larumbe <adrian.larumbe@collabora.com>, Boris Brezillon <boris.brezillon@collabora.com>, 
	Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 6/6] arm64: dts: rockchip: Add GPU power domain
 regulator dependency for RK3588
Message-ID: <zvzrjkacazxbv4cjxcnihv4rb2t3tu2zjd6zkny63ygfifpz7i@j4saijws5rcp>
References: <20240919091834.83572-1-sebastian.reichel@collabora.com>
 <20240919091834.83572-7-sebastian.reichel@collabora.com>
 <a4d94eab-8543-45e1-b657-fa7f12470538@kwiboo.se>
MIME-Version: 1.0
In-Reply-To: <a4d94eab-8543-45e1-b657-fa7f12470538@kwiboo.se>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/223.982.64
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_122740_165753_C4216413 
X-CRM114-Status: GOOD (  29.14  )
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
Content-Type: multipart/mixed; boundary="===============0374697030558248682=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0374697030558248682==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qcskwoh6fbt5qu6y"
Content-Disposition: inline


--qcskwoh6fbt5qu6y
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 19, 2024 at 01:33:25PM GMT, Jonas Karlman wrote:
> On 2024-09-19 11:12, Sebastian Reichel wrote:
> > Enabling the GPU power domain requires that the GPU regulator is
> > enabled. The regulator is enabled at boot time, but automatically
> > gets disabled when there are no users.
> >=20
> > If the GPU driver is not probed at boot time or rebound while
> > the system is running the system will try to enable the power
> > domain before the regulator is enabled resulting in a failure
> > hanging the whole system. Avoid this by adding an explicit
> > dependency.
> >=20
> > Reported-by: Adri=E1n Mart=EDnez Larumbe <adrian.larumbe@collabora.com>
> > Tested-by: Adrian Larumbe <adrian.larumbe@collabora.com> # On Rock 5B
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts         | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi                | 2 +-
> >  arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi          | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588.dtsi | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts               | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts             | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts           | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts              | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi               | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts           | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts        | 4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts          | 4 ++++
> >  12 files changed, 45 insertions(+), 1 deletion(-)
>=20
> Any reason why following rk3588 DTs was not updated?
>=20
> rk3588-evb1-v10.dts
> rk3588-quartzpro64.dts

These two I skipped initially, since they have the GPU regulators
always enabled due to the coupling. I'm not 100% sure if the GPU
or the GPU-MEM regulator (or both) are required for the GPU power
domain.

> rk3588-nanopc-t6.dtsi
> rk3588s-gameforce-ace.dts
> rk3588s-odroid-m2.dts

=2E.. And these I missed, since they are new.

I don't have enough time to prepare a v3 before my vacation.
Note, that not describing the regulator just keeps the current
behaviour.

> I also expect we may need to define domain-supply for the npu on
> rk3588 and also both gpu and npu on rk356x in a future series.

Yes, I already discussed that in Vienna with Heiko and Tomeu. The
binding change also allows adding a regulator to the NPU power
domain.

> Similar freeze issue has been observed on rk356x when booting vendor
> kernel with npu support enabled using mainline U-Boot and DT [1].
>=20
> To work around that issue on rk356x the npu regulator could be changed
> to always-on/boot-on to get past the kernel freeze [2].
>=20
> [1] https://github.com/armbian/build/pull/7025#issuecomment-2291067748
> [2] https://github.com/Kwiboo/u-boot-rockchip/commit/da31da4b68f858f54364=
a21b0dd00fef2ab0d0d6

Yes, that looks like the same issue and I guess the changes to the Rockchip
power-domain driver should also work for rk356x. I don't have one, though.

-- Sebastian

--qcskwoh6fbt5qu6y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmbsexIACgkQ2O7X88g7
+ppTJxAAkEXAcW4m8OiEyvh+R+umb7431j7PO5cBpN3NM+cGmUD+ARwYE4yCH5Mi
lqLf72szC73KnWPS5Eu9mhCEFBIrhNmEVrQM69ibmlHyihhZh2CO3X2wDV+UAm79
ZyJ+OP71kvCHndjSNEXILKxXAyoARczvn+tbFICz3di3S+UXlqs1s3NnzGvjjBlo
GwxkCx5JwIKsdc3FOe5Mtj3Lw08lCF3qxJTXxT9anF/2h055IJco8diIsGlAAXy7
LnCQkpgZZBLKeJFhFeuMV7lJgjGK0bsymHl6P8dzXSIZtXBLbMRTXql8qunv4cUY
hkVH0V6iduGVdcj/uZEpoOAAXqFQE+1UVA8Bsyf69/o3806iUzR3Z2zJk7CdZgu3
3PUw/fpgDmFpMI7nIIH2GY6Q5+4yssZb0nd6kzCepIf41dQWAXAvvq3bBCjRz0cw
eOP/BIZYEFwRSOu0YL+EQ7ae4kQ/j05sFMCBRFRGUB4uoLZbKWSos/SRt0DWTNQv
N97DxGJmjfxH/zSxExgLqebsV1KZd6Frg4G7Nzp4XgW8hghoqPe+0YvQVNMLRfq7
Y+y67lrBNCnEfnGv+mIU+cDWaH1NDlPAz1Zfjb8jdBOizYJjfohFdOyRNWc6RVh1
i8kJklC2dA/K95e/LTU+1bPYFnnrycmrvFKrjECNmIGRAuRIz6Q=
=nKZO
-----END PGP SIGNATURE-----

--qcskwoh6fbt5qu6y--


--===============0374697030558248682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0374697030558248682==--

