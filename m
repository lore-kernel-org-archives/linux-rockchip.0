Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8768C7115A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Jun 2025 22:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EPenGtLYs8s462xYUFD+NDXi6dZS6P50KRe4iuUOS8g=; b=JzqY/jAysbKl51AN+Y298KG2ol
	6zi/DB5MZdTn2qeEmKNbUmhh6DgOuxa4DdPzT+fPEPmrZ7c7Be1VTQj5aAbEfe+a/wCIzKlOE/yJw
	B1umfOgOL7F7kONL4wVNDdac35+siLCNGMte8PZigzgRwWhCQBAxfJfUF7FFtwiHmnwcNpYEwUEK0
	WTEM4nQdJ0pyCKX7e2UzcCqZM1YEA7s+yc18swWpALaiOgVrac70DylmqXX0uB/elisWsm2roPFit
	lufUMPQN1XKyM5Z+Nc/aEJziGFfqam1IEiXKA/siOUiDXUPt4dH4vOzwUIrOHLZpcVK+qNwE3cKdi
	SO73SV/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTTKD-00000001IEj-1SDv;
	Sun, 22 Jun 2025 22:38:09 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTTKB-00000001IE3-30sI
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Jun 2025 22:38:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750631880; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=grNhQtZPynGPaxIfVo2ewyHWr+xRgsoZ3PLfBBntmBeY02yf7kbXfeEqGQDa0gdwYrlC7Xb38PSZat5hsHFNg9QHaxeMKGmfGSEWE3FcLR9yLWua4/K8QainDCh2kwEN8mVIh7Fu6tPCajQbin4toln0Q2humDQAshwVam/eKeY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750631880; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=WZFXplL7Oqd3eoXVl29jxmVkZRy+F55mDoQX6eminKs=; 
	b=kUyWmqBWtl0JPntPFjBYPiWFS0E4pNyOchsRJB4Yz2H0yDYnxP2vNOtpc/6686r7mhcct4mztfE/4RVMahgsNO9zow4P3Y0XkXklG4lKKJLT+GL7g3Ym0QjEihg4+Zp4iZmfwMip/ie7sKbwyZQx6OyirLD4uyswPmsfzuA57t0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750631880;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=WZFXplL7Oqd3eoXVl29jxmVkZRy+F55mDoQX6eminKs=;
	b=ivCTq1No1BEPxZKzTQAy5zNXJHNIa3wmakytwKjgI64iHSCea+fhixzwjH20zruR
	d0+9hCYnNa18nHFy2DaHzEJ/J5rQaj16POMXp7WEj/i0ralYYKTaFhSMTTw58CCwSNs
	bQ+9IU/jZb2HKAdayRqPttY3ET/cImF4TvVyANs0=
Received: by mx.zohomail.com with SMTPS id 1750631877756727.6472621369028;
	Sun, 22 Jun 2025 15:37:57 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 204B7180956; Mon, 23 Jun 2025 00:37:53 +0200 (CEST)
Date: Mon, 23 Jun 2025 00:37:53 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com, heiko@sntech.de, 
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 3/5] power: supply: bq257xx: Add support for BQ257XX
 charger manager
Message-ID: <rnej3oxgijyec36z7ejmbfdhncrgwpydasb2c4jc54zqo24t5b@ntzziuweqjny>
References: <20250621180119.163423-1-macroalpha82@gmail.com>
 <20250621180119.163423-4-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250621180119.163423-4-macroalpha82@gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.3/250.624.82
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_153807_829630_44EBD816 
X-CRM114-Status: GOOD (  16.86  )
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
Content-Type: multipart/mixed; boundary="===============4986102048318751913=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4986102048318751913==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ua6kmqvzpsne5sdx"
Content-Disposition: inline


--ua6kmqvzpsne5sdx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V2 3/5] power: supply: bq257xx: Add support for BQ257XX
 charger manager
MIME-Version: 1.0

On Sat, Jun 21, 2025 at 01:01:17PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the charger function of the BQ257XX. The device is
> capable of charging batteries with a layout of 1 to 4 cells in
> series.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

[...]

> +static void bq257xx_external_power_changed(struct power_supply *psy)
> +{
> +	struct bq257xx_chg *pdata =3D power_supply_get_drvdata(psy);
> +	union power_supply_propval val;
> +	int ret;
> +	int imax =3D pdata->iindpm_max;
> +
> +	pdata->chip->bq257xx_get_state(pdata);
> +
> +	pdata->supplied =3D power_supply_am_i_supplied(pdata->charger);
> +	if (pdata->supplied < 0)
> +		return;
> +
> +	if (pdata->supplied =3D=3D 0)
> +		goto out;
> +
> +	ret =3D power_supply_get_property_from_supplier(psy,
> +						      POWER_SUPPLY_PROP_USB_TYPE,
> +						      &val);
> +	if (ret)
> +		return;
> +
> +	pdata->usb_type =3D val.intval;
> +
> +	if ((pdata->usb_type =3D=3D POWER_SUPPLY_USB_TYPE_PD) ||
> +	    (pdata->usb_type =3D=3D POWER_SUPPLY_USB_TYPE_PD_DRP) ||
> +	    (pdata->usb_type =3D=3D POWER_SUPPLY_USB_TYPE_PD)) {

Duplicated check for POWER_SUPPLY_USB_TYPE_PD.

> +		ret =3D power_supply_get_property_from_supplier(psy,
> +							      POWER_SUPPLY_PROP_CURRENT_MAX,
> +							      &val);
> +		if (ret)
> +			return;
> +
> +		if (val.intval)
> +			imax =3D val.intval;
> +	}
> +
> +	if (pdata->supplied) {
> +		pdata->chip->bq257xx_set_ichg(pdata, imax);
> +		pdata->chip->bq257xx_set_iindpm(pdata, imax);

Are you sure about this? ichg and iindpm are two completley separate
things. One runs at USB bus voltage and one runs at battery charge
voltage. Setting both to the same current limit is a hint that
somebody did not understand what they are doing.

Otherwise the driver LGTM (apart from the documentation issue
reported by the bit of course).

Greetings,

-- Sebastian

--ua6kmqvzpsne5sdx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmhYhbkACgkQ2O7X88g7
+prTcQ/9GarcqLJe8fliCoDCgTEFFMG7VqF7yaDYCQOIqDpuDYcaVGXpl3ARJHUx
MVE9V95m3D15xsm2eBgjjrAc4y8YL5wUKQ93qne0T+gFq2ijQBSdOxMNhpskZB+q
aiexF3VRLrOhciF1Aw70W0cllaYBAYCtGZycLMqHVhPDMTJ4UZZmqBAmcjl1hWCo
/9hq4+34ti2u3oz2Bm7mOpZA9bQR2P+16s43PkYeaRP7F7vC9cm6a61/wV0lq3O3
AbVOKXpMJRSGCZkWZ9l+Gj545I36yInYfXbZ5iF5a9x+0QkF4se2chaCqWtt+OLI
xyI0lpfm3RAynTiOVuE9InMgc3/v60zg9Gn3mPJK2MhCMZvA6NDYIKpAKQ3xZR39
dUZFTSTG4avWTk2pkX2HjPeBvfaIe2Meuwws3ZLO5ZqsBmu5LZfufflybVN5FJoS
csmUpGVHaGQtjieUXbtW/Mr1xKPrhXtv/bQGyBCHOU3JCsgCMeO+uh7e3u5DkQ0S
tQ/vefZNBEeNFj8n230EU4kIfJC5MZ9XcHz1akdOVp9fR59x9jn40J3XyAcG1hFO
fWjun9KKWAzuJrp6MA7cw7ssz+VZCVk9JTmM9ERVZmct4s4rtFILy3yc38HxFx8t
giVJr8LBkliFroQjugIWW02v2N9m5ojYs2Mj+OF8t19fvYFs61o=
=vKxx
-----END PGP SIGNATURE-----

--ua6kmqvzpsne5sdx--


--===============4986102048318751913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4986102048318751913==--

