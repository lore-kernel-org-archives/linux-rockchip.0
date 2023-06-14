Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBCF9EB64DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 15:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZDJXOSQZOdGju+wPXwOEDaZt2SyoPHT3ld/ZKy8Pn8s=; b=HDosgAEkKOKtEfqCly7sCvBkHA
	H7pAXTyMB2OuuV6GMzlNBeb88cYmB/HxR0X1SYWShzolrfT9fqiavUpZZSKlpTxWOO0FKLCxdjWpy
	tQW5i2a8ryeYet8mwpTrbUUSGsNCXi/SjShhfF9oZ8Q6VvBbW6TPnVS0rIECOoufGknyIrbaUK3sk
	2o9/jIWFZqhZafJBH/pIaD4a5YIDefH3U6UiuZJL/WSWc79JHvuyuThNB4nPm0OE1QO8lZz7JWGeP
	EXW4dfEqg6sH8bJSW/t1a1ie9wCl3n24BAe2rtFdDdfz8GpalI8HWGUdYt6une3xEsF7x0FRVJjjN
	29N9bLVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SB6-00C1Zn-1u;
	Wed, 14 Jun 2023 15:12:56 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9SB4-00C1YQ-06
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jun 2023 15:12:55 +0000
Received: from mercury (dyndsl-091-248-213-214.ewe-ip-backbone.de [91.248.213.214])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C83D16606F55;
	Wed, 14 Jun 2023 16:12:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686755567;
	bh=RFrGh9szowhh5Yf7dwMfwHNUSv29//jl3cvURIOHaYU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lkNgEln7sNYY8UI97oKfFtjO6J8HKakoNXs8NyI0FgbI33MyaBwoFq27k2/oNripg
	 ryQNx7ZJwbA94vFljLl1LyAtx7eh19jb2MEfExSX7SRWhRMSr+ak7hRSk3kcrW2fp1
	 TO6NydhBW5kNn3HUEldzrh8guuNdFFL3Ab3UDaWBxuvNUSEeABnAbvxYaCfXuAfV6n
	 GDDNvrCuVUo0w8KEWBViZ8yGKXxmCCCPypLb1EmjEvapeAN1vlnitAb1PFvVBYedFV
	 8O7SyjDPI0nKBRXwut/XZZ9e8ZPib+WT9b/Q/rUlB6AClHKaE/+XLu87iDP22tDn0j
	 6WWVT/BEWso0g==
Received: by mercury (Postfix, from userid 1000)
	id 6B3C11060A61; Wed, 14 Jun 2023 17:12:45 +0200 (CEST)
Date: Wed, 14 Jun 2023 17:12:45 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Vincent Legoll <vincent.legoll@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Subject: Re: rk3588 tsadc
Message-ID: <20230614151245.zi45j7zxsewagosm@mercury.elektranox.org>
References: <CAEwRq=oddAzJcVBhxJVe9QActLe30cPdnzhGormv6xr8nu6RXg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEwRq=oddAzJcVBhxJVe9QActLe30cPdnzhGormv6xr8nu6RXg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_081254_200705_FAD07E7D 
X-CRM114-Status: GOOD (  13.74  )
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
Content-Type: multipart/mixed; boundary="===============2095928902610920338=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2095928902610920338==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ma7gng745g7aqpd2"
Content-Disposition: inline


--ma7gng745g7aqpd2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Vincent,

On Wed, Jun 14, 2023 at 02:56:31PM +0000, Vincent Legoll wrote:
> when testing the latest collabora rk3588 branch, I see the
> following kernel message:
>=20
> rockchip-thermal fec00000.tsadc: Missing rockchip,grf property
>=20
> Is this something on my end or is the
> arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> file missing a rockchip,grf line ?

No, that is fine. The RK3588 is one of the chips where this comment
applies:

	/* The tsadc wont to handle the error in here since some SoCs didn't
	 * need this property.
	 */
	thermal->grf =3D syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
	if (IS_ERR(thermal->grf))
		dev_warn(dev, "Missing rockchip,grf property\n");

Maybe we should add 'bool grf_needed' to 'struct rockchip_tsadc_chip'
and make this mandatory on platforms needing the GRF and not
requested at all on the other platforms to reduce confusion.

Greetings,

-- Sebastian

--ma7gng745g7aqpd2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSJ2OcACgkQ2O7X88g7
+pqq7A/+IJZagULcJyinZcExm75RCIKndSXhEPAHU5FQLFoxCOv/CMInO2Z6orxC
7QA9v1ok9QXv/Yy1VM1EEqcbZID8Gvyqch4qJq/QKniUTli9DHFRpZATm81keN71
SCwy7eLVBZt2vZPetEvCRnde/N3njdypxljMCAy/syT/H4C6kxX/0EPBCGWOFGdq
oMgDsF9w3R3Qh4GQ+NdoeM2K4XMMLyGZ6NtJRuz+SGRlQPgob4TgU/zpPD3/ZTGs
TzGSosjJZwcoz0WuSREfseWKLCmtesAtnGyCBx5hd7gAUIfbi+C57Br+isbjOKxZ
JGZnAW+eMlIc5rieqr5tLultfYcB5i6SEAbd+IMioP3IZyi9t+1wu6lI2DS8s8NB
CfCq1FuQJQZSFq8pmUUMKXRvg9LdFNaGbPctLXPa9oyevM4j4VuJdZ4Z+mLzyYyW
nYN/WGEUDQQh70AtAkaRoAS9iKLxfgnE6ibYQVbBqvGZfBLw7NI96h680x3QnpAZ
NNvY4orKm7FEQCBFYw9KU9IzvqSDNyhubpqzSDcVSFZqDegDJccifdan9omou9s8
TzwyJHamIELbDaZzSmFe/OOzIsd9SbbuA+hSgg0iLrtdb5UL5xV3nZwPeZw6vUI0
tziZ2xMKBlvfNQtbVswSnBNrS9EhmfivZ9iuuV+ItgSKHAuvR8s=
=S81I
-----END PGP SIGNATURE-----

--ma7gng745g7aqpd2--


--===============2095928902610920338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2095928902610920338==--

