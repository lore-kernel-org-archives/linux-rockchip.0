Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DA5C197A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CZANVqmP9ShxnHS6kZ2tBF2ca7dSVnDqgxC6F59LyNo=; b=RjvDrdcr8pMWoqA0xt2GIe3bpE
	ZfgMdNakFjetMmEJx2iwwuiRU7lp77PW9yrIq5N0M2NL4b9t1BAA04XpmF4ZFzHHab65uiS9XInlc
	FWL6R9WdW4qyx6hICGFhkPSqXOarnUqcgHDI49cCX/uT6sFkUgEbo8P89NqIlswP4rmJXCJlPCGMj
	4Zy2XZ1dGVQGpqxxvtLYP575tUbRAn+dMhe3tqpnZp/AIVBxfdfKsK/JNqdQSVKkrjBGlTLjj4Jm5
	iXxwzLkAlcgbkTZL70wpI+IRGQhkPClqTJEBkT4llh11MI+eDqEN1s7ZIYxII40IvTCqrWYQ6mVlf
	VnLiNqYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ciy-003cm0-39;
	Thu, 16 Nov 2023 13:48:04 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3civ-003clE-10
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 13:48:02 +0000
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B4995660734A;
	Thu, 16 Nov 2023 13:47:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700142479;
	bh=0F+bD5IJvC5DvD53eU1GEpAuHcSfiOhDXPjgQwy4gxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ennw2qkv+TWcuWKJb/JxsE2jdCn3IKctEidn6+LBnljCe+v1UPs4IrEDksAcfrbkP
	 i/NA/dK8J1rHvXw6S3r3jO7jTHYPtSOfCi2G2oRm2RIbEzPmnhaLuelKA+pQpBL8y4
	 /q9u2CLaklIlN7g3XcC9aEPaUFMtdMzK64qKkNG73gPlvHkOavshCDgCZjM0C0pDDT
	 rihxJ1eRSLOTm3TYuHngAsXEKQckU9bKtfP+3mlLODjkX3RHMIcBjiPZ+o4oTPs1uO
	 aqzt89HdHbgYsIkMHYFYkhvOUUPkte3vR9J1J8ox5s3tAe4F9JIfGrBuMX9QC+4ah2
	 houZmc0+DWMJg==
Received: by mercury (Postfix, from userid 1000)
	id DA79210613A1; Thu, 16 Nov 2023 14:47:57 +0100 (CET)
Date: Thu, 16 Nov 2023 14:47:57 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andyshrk@163.com>,
	heiko@sntech.de, hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, devicetree@vger.kernel.org,
	kever.yang@rock-chips.com, chris.obbard@collabora.com
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Message-ID: <20231116134757.zu7axb6cvriqjm6y@mercury.elektranox.org>
References: <20231114112534.1770731-1-andyshrk@163.com>
 <20231114112855.1771372-1-andyshrk@163.com>
 <20231115090823.GY3359458@pengutronix.de>
 <8f2ebc81-51c5-44d5-b27b-633a6cc85d0d@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <8f2ebc81-51c5-44d5-b27b-633a6cc85d0d@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_054801_536602_35A3EAA9 
X-CRM114-Status: GOOD (  13.03  )
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
Content-Type: multipart/mixed; boundary="===============2690819138715030515=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2690819138715030515==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fodj6ulte5c5gkb5"
Content-Disposition: inline


--fodj6ulte5c5gkb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 16, 2023 at 06:39:40PM +0800, Andy Yan wrote:
> > >   	vop2->sys_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "r=
ockchip,grf");
> > This already lacks an error check, shame on me...
> >=20
> > > +	vop2->vop_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "ro=
ckchip,vop-grf");
> > > +	vop2->vo1_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "ro=
ckchip,vo1-grf");
> > > +	vop2->sys_pmu =3D syscon_regmap_lookup_by_phandle(dev->of_node, "ro=
ckchip,pmu");
> > ... but please don't duplicate that.
>=20
> It a little difficult to find a proper way to do the check, as not every =
soc need all these phandles.
>=20
> Do i need check it per soc?

I suggest adding a u32 flags to struct vop2_data and then have
something like this:

if (vop2_data->flags & VOP2_HAS_VOP_GRF) {
    vop2->vop_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "rockch=
ip,vop-grf");
    if (IS_ERR(vop2->vop_grf))
        return dev_err_probe(dev, PTR_ERR(vop2->vop_grf) "cannot get vop-gr=
f");
}

if (vop2_data->flags & VOP2_HAS_VO1_GRF) {
    vop2->vo1_grf =3D syscon_regmap_lookup_by_phandle(dev->of_node, "rockch=
ip,vo1-grf");
    if (IS_ERR(vop2->vo1_grf))
        return dev_err_probe(dev, PTR_ERR(vop2->vo1_grf) "cannot get vo1-gr=
f");
}

=2E..

Greetings,

-- Sebastian

--fodj6ulte5c5gkb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmVWHYUACgkQ2O7X88g7
+po82w//W3u/dHpgUXr+77xCVn2g3AVTWISnP6mEQ1VQkqATekZ8LpLJq7thz2pp
yuq3rG6e35mWVHVex5KNFzElA0eKPlHZ6Yy41mVK5lFn5/B00gVTKyY1Ke4b5gHS
ub3KYPmhEssqLioA4H+8w7clThuT6CClRrhH7snBTh+/Wq99ivsJTRvib3v5V1jE
nqzw/UnvodV54WlytiYADIsuRbcURk1BJx7xNgjuBBGWVjtOoUKPoJ4gqM8VpDmz
Ibc0H42k82E4XnWDbMZUaCEA2DqZOgNwlEAwX3lQGuJE6LYlUt/hRcU6+31AzdSh
ch9mGOFXz+8/6OxyWOD4uktftyiYAKFNL7Hon+z3pxBqoc2Bt94pcUlnfFyJvPgQ
WoaCQH4crpeYkPH4fo5QCyW5sUdtn12cM1ihF1JsUicAMmzsLcUagXKL7c+ObVrz
vCyPZGQDXuwiiNLSvkmG6yRrmAQFtquboGBPZOTH46fFNuASkR9ZuGEDm0nIH9Mh
AwWYqdlz9h/bg0vR/uXqro0DI0gx7TJwap870n9v5gvfK/e4MWM15W/VzbUv0Kxo
TL1+LtgAtDGbGVeuI3DHY94dzYwsov6yrViwuFC/wIgllZlHgK5Ir9su9XCfVCt1
SP5ybo1ag2VdjC88XQBHSV5m7hoKHC0PEJzAhtjvSSjbazh2PsM=
=DnDq
-----END PGP SIGNATURE-----

--fodj6ulte5c5gkb5--


--===============2690819138715030515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2690819138715030515==--

