Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D523CD98CF
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 15:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ja63as4Pgzvy1y9bGMhK0sZF5RvNfWwYL4G1P0z9vXE=; b=CA84mKOdDrij7lHbAW9r1ug/Fg
	qt/ttIZPQm9apEvZaQPJFzerabd2dbqstJEhG8U/q3aXPLYnsLDWJheeBsIjuXXOy8v/evM8HpFCA
	CeMLEhwvZwUu7WOi1U3GTYU4TDv735xMKyjri/uQmJAYruL/HthzGSL3ZC8fj8OaJZteqEjARGVux
	hoZfSja95V7B42kIRrstrJ3EjROOSgBjx+/jpaWUGwL95mTzMBpuIcbn1FMLL/UH6qYyIQcSXnBMz
	0Z1+VhRAEdIYu4xSPXcbqQxX/yGjF2cfeES/OUcOamhmP2UzdYvqDfOFsPbTxJcArvkDU3ttqwKtr
	BvGK52bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY4Gh-0000000BCH2-413M;
	Fri, 12 Jun 2026 15:58:03 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY4Gg-0000000BCG8-148D;
	Fri, 12 Jun 2026 15:58:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1781279867; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=nGvzkeuAayjdmBeqtxbjSWHbdPj8/CMrlnp4k5a07CEE11tERyT42JuG3FEpYN8ArfOh7vM3wdb6O43o0CUsmtS83AC6EEJAksu+JBIs+/WKYNjW3XFwZt4WrcEi1ueQR6dotr75yvNLK/ehDEhQJDj+lIZXuNRvjcmrmdRfidE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1781279867; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=vzdJ9w2taUV525sIaNdL6rwORL1fnnyeOFL2zOPHUvc=; 
	b=I64hqWs9kfidq6Sua/Ter/ug4SFISdzHpkNJx3kT4lVm3a19ejchBMK8Z0vw07KYDpEV284wpcIsQomhzLp8PuxSHaczeMU3gVGwmtLJd6OO4+uKFXvrkbH7U8/Q/r+GbHdO7RuqK/R8VMr58hKsXqLd7SKZqM+5nwW4LfeEibM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781279867;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=vzdJ9w2taUV525sIaNdL6rwORL1fnnyeOFL2zOPHUvc=;
	b=VRN6z7S5+7K9JM9iR+cBluY6aRs1RVeyf7/gayIkp58AnkAg7LGrPlgwMJDWyn1J
	UuIoGA42i+Jrdm5cqL2X/7ll9Ac+t8wr/HjSVA6URfHh1sHeOuw9QQXw7y76+VZ4b1R
	AofejKoL13MDuLMr2GbhM8nGZdaZ9U9VQbkoWxS0=
Received: by mx.zohomail.com with SMTPS id 1781279864587114.40647436656968;
	Fri, 12 Jun 2026 08:57:44 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id D5B15180674; Fri, 12 Jun 2026 17:57:39 +0200 (CEST)
Date: Fri, 12 Jun 2026 17:57:39 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Yubing Zhang <yubing.zhang@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 07/16] phy: rockchip: usbdp: Support single-lane DP
Message-ID: <aiwrNQhPsqlqDB-Z@venus>
References: <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <20260428-rockchip-usbdp-cleanup-v4-7-7775671ece22@collabora.com>
 <f29df43b-111d-471b-8579-0196596fc32b@linaro.org>
MIME-Version: 1.0
In-Reply-To: <f29df43b-111d-471b-8579-0196596fc32b@linaro.org>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/281.270.71
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_085802_323987_E266A16A 
X-CRM114-Status: GOOD (  14.64  )
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
Content-Type: multipart/mixed; boundary="===============4144801225022396365=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4144801225022396365==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rchdwn5oprkndp3s"
Content-Disposition: inline


--rchdwn5oprkndp3s
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 07/16] phy: rockchip: usbdp: Support single-lane DP
MIME-Version: 1.0

Hi,

On Wed, May 06, 2026 at 04:53:07PM +0200, Neil Armstrong wrote:
> > @@ -537,6 +538,13 @@ static void rk_udphy_usb_bvalid_enable(struct rk_u=
dphy *udphy, u8 enable)
> >    * <0 1>                  dpln0         dpln1       usbrx         usb=
tx
> >    * <2 3>                  usbrx         usbtx       dpln0         dpl=
n1
> >    * ------------------------------------------------------------------=
---------
> > + * if 1 lane for dp function, 2 lane for usb function, define rockchip=
,dp-lane-mux =3D <x>;
> > + * sample as follow:
> > + * -------------------------------------------------------------------=
--------
> > + *                        B11-B10       A2-A3       A11-A10       B2-B3
> > + * rockchip,dp-lane-mux   ln0(tx/rx)    ln1(tx)     ln2(tx/rx)    ln3(=
tx)
> > + * <0>                    dpln0         \           usbrx         usbtx
> > + * -------------------------------------------------------------------=
--------
> >    */
> >   static void rk_udphy_dplane_select(struct rk_udphy *udphy)
> > @@ -544,18 +552,18 @@ static void rk_udphy_dplane_select(struct rk_udph=
y *udphy)
> >   	const struct rk_udphy_cfg *cfg =3D udphy->cfgs;
> >   	u32 value =3D 0;
> > -	switch (udphy->mode) {
> > -	case UDPHY_MODE_DP:
> > -		value |=3D 2 << udphy->dp_lane_sel[2] * 2;
> > +	switch (udphy->dp_lanes) {
> > +	case 4:
> >   		value |=3D 3 << udphy->dp_lane_sel[3] * 2;
> > +		value |=3D 2 << udphy->dp_lane_sel[2] * 2;
> >   		fallthrough;
> > -	case UDPHY_MODE_DP_USB:
> > -		value |=3D 0 << udphy->dp_lane_sel[0] * 2;
> > +	case 2:
> >   		value |=3D 1 << udphy->dp_lane_sel[1] * 2;
> > -		break;
> > +		fallthrough;
> > -	case UDPHY_MODE_USB:
> > +	case 1:
> > +		value |=3D 0 << udphy->dp_lane_sel[0] * 2;
>=20
> What's the point of keeping this no-op calculation ?

This function is cleaned up in a later patch to no longer have the
switch/case at all ("Cleanup DP lane selection function"). I kept
the no-op calculation here, since it IMHO makes it easier to understand
the cleanup patch and will be optimized away by the compiler anyways.

(I will send out a new patch series in a jiffy)

Greetings,

-- Sebastian

--rchdwn5oprkndp3s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmosLG8ACgkQ2O7X88g7
+powOhAAjGKDnrFO/NogQjJApKysPt9NuuN6z1D58zENDmEHAdPNtxLZl9DsyK1f
bhNbIb/kv9nN3HuJgCHsT3/5FiG7xUMq/FzE/LZXkYv70AA9TC1uH8hd6/JvTxzi
jVzUVU9Kgxg0Q5RxfOlFF9pC1NhT+BWzbT5vAbdF367hEKzPataR01oYpn/jgEmg
v7otspxo6li0UWm/kYndVpql9nwDTWTn7upSLcUUNC2JOqVq/JRw9IhX4E+4Q7yO
05uATUwjSXCsWlP2fvLGTuyouPEnpT4vIZEE5yC4MiY4ZMZJECvluWweAhBsrVf6
mcztycUWmsTqEtqfAR02KxwtNJS0cmGpCdKfA/n+GulU4TgsCzD3vsUNQcs4sU6V
rVGb/v4Wh6QJbMBzw8Y+t2ts2coGC27fZUx8f3cSX0KOTqlg2t704/dHvcA9ooAK
rMUekMp8P4TVtXYf2MHtGU4QwviQUqkXGe2STukCIX/fgNYMGPmDrQKo0NUb1BgU
UzApK1gna3wOUBXojV1efN/JEpxQqBbEcy8DJeVu31jBO2ymYObn9PKf2hqjSnIG
HJ/35QT9khXiDj9zcg/pxt7abqwVJVRfIad0nsJ+tIsCYHTlmOzkJTqxauq3A8Zl
Qqjgl0LYeZotsiZ4PCrEiDJyVqxUwdE9+EQR3gyVNoCUcARsNhw=
=+Cjz
-----END PGP SIGNATURE-----

--rchdwn5oprkndp3s--


--===============4144801225022396365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4144801225022396365==--

