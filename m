Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94A4EC56205
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 19:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KiGWugI8drpgRxaWihBylPVsdn+XMrsfw0teoL/cYfk=; b=mtMiszaRVNxVVNq6O5YfR+0jS3
	LRBUr3Lj5yHR2NL2RrT3wRkqKC9zNmFfipB66folSD1RuqRcRHtAfJIDlqghq6bTpneR+/pGDo3HU
	phlM2jPPQBa8HQtfFQPL7KGM08yl5P7JFx6BiLakCQn56Eo6MAuK844lLvQAowF04dv+GU800R6b0
	FqiaABFJn6nHZQaOLfvkPJA9QU5snnrhPmowf1wAJp+sqCHCI9WbD8309+DYej6I6TfYEW7OwzxgW
	VXzXGpLY+9VqvIawmS5v6C3vvyuZXtl2LwfEE82COjpDaU5SnxcHr3F9sKfI8Ah7SrcxJkr/tPoZJ
	Tl0/mWPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws3oX-00000006ZMR-1a5D;
	Thu, 06 Aug 2026 19:31:37 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws3oU-00000006ZLX-3gk8;
	Thu, 06 Aug 2026 19:31:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1786044688; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=QbhQQK5Qr76DMi6yS8H3nY4dOLEyEBRXaMEeVxntkQIlfvcEAMpu+Zjdo/1pW9LPZfnMzBgzOZnGA2EjOrNSd3urmvMX1f/bS7fGn7Vi1IM5YZGBZsVg7t4VLGEjQJzD3BYQzK8ssM+lZpUMTAxuULrGbQT5TVuregrX8L591aE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1786044688; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=KRFUt8vbxGVxS0Eb12cKI5Ku5Kct0AiAebJDdp3PYHI=; 
	b=fLgLLitrnam1I91DwCOjV6gsXQGusQsm31qwkKELJ4t/9A5SjJ5xZHHYkWCGyBkttJL2rdzzUr0ctHf8RefWlMQJgRJ1ASu0TYItnjWwQ5I5bWcjskudyEzFJXTo/X02z/Om4NkTH2dOf7PcG6BOJI+1s9yaj6S1QeEQqQPlFA8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1786044688;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=KRFUt8vbxGVxS0Eb12cKI5Ku5Kct0AiAebJDdp3PYHI=;
	b=aoxkuusvivCzLAruUdGcjh8VDqDYVW6szKx2tBXsgvEVUbHn89bXjJrdfm0t87K7
	dKpsttje4k1J99rqBbEdy12KoFKyy0CRNWIitGKiz/wxCqx1sjPTMK81QXwmeozq7oA
	nHYS66ymcTuRxEvh9risAfgz/lQv0iMwe49Et6nQ=
Received: by mx.zohomail.com with SMTPS id 1786044685919282.93021641986775;
	Thu, 6 Aug 2026 12:31:25 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id AA8951808BD; Thu, 06 Aug 2026 21:31:20 +0200 (CEST)
Date: Thu, 6 Aug 2026 21:31:20 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: jason98166@gmail.com, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] phy: rockchip-samsung-dcphy: factor MIPI D-PHY
 power on/off into helpers
Message-ID: <anTgZiqnol4226Le@venus>
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <Ji-6adk9LJbP87Y7X6SfOcAyVnGpO4dbHk0lBikX3NGAPz3dynWpvL8QjkVM3G3jEnwTrTV0p7nOqBxPRaH0MQ==@protonmail.internalid>
 <20260726-dcphy-rx-v1-v2-2-cf9cc34a412a@gmail.com>
 <43327fb2-0085-4d86-b408-8723d852c258@linaro.org>
MIME-Version: 1.0
In-Reply-To: <43327fb2-0085-4d86-b408-8723d852c258@linaro.org>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/286.26.37
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_123134_946980_D92603EC 
X-CRM114-Status: GOOD (  16.27  )
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
Content-Type: multipart/mixed; boundary="===============0360757694956357498=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0360757694956357498==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qplt4v54nyb6hmut"
Content-Disposition: inline


--qplt4v54nyb6hmut
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/4] phy: rockchip-samsung-dcphy: factor MIPI D-PHY
 power on/off into helpers
MIME-Version: 1.0

Hi,

On Thu, Aug 06, 2026 at 05:17:45PM +0100, Bryan O'Donoghue wrote:
> On 26/07/2026 15:55, Jason Yang via B4 Relay wrote:
> >   static int samsung_mipi_dcphy_power_on(struct phy *phy)
> >   {
> >   	struct samsung_mipi_dcphy *samsung =3D phy_get_drvdata(phy);
> > @@ -1368,7 +1376,7 @@ static int samsung_mipi_dcphy_power_on(struct phy=
 *phy)
> >=20
> >   	switch (samsung->type) {
> >   	case PHY_TYPE_DPHY:
> > -		return samsung_mipi_dphy_power_on(samsung);
> > +		return samsung_mipi_dphy_tx_power_on(samsung);
> >   	default:
> >   		/* CPHY part to be implemented later */
> >   		return -EOPNOTSUPP;
> > @@ -1383,16 +1391,11 @@ static int samsung_mipi_dcphy_power_off(struct =
phy *phy)
> >=20
> >   	switch (samsung->type) {
> >   	case PHY_TYPE_DPHY:
> > -		samsung_mipi_dphy_lane_disable(samsung);
> > -		break;
> > +		return samsung_mipi_dphy_tx_power_off(samsung);
> >   	default:
> >   		/* CPHY part to be implemented later */
> >   		return -EOPNOTSUPP;
> >   	}
> > -
> > -	samsung_mipi_dcphy_pll_disable(samsung);
> > -
> > -	return 0;
> >   }
>=20
> This looks a bit funny.
>=20
> Do you have an int method() {} with a final path that returns no value ?
>=20
> Tooling/compilers will definitely and rightly complain about that.

int function() {
    ...

    switch(foo) {
    case 42:
        return 1;
    default:
        return 0;
    }
    /* cannot be reached */
}

Greetings,

-- Sebastian

--qplt4v54nyb6hmut
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmp04QQACgkQ2O7X88g7
+pr/lg//Ra9D/4mEe+23YNBGY2KkyTz3Kh/UKQ6OxYCuYq6/KXl3KXhmcfxSrMCw
LAY8oiDCpyYprafpHYgPB8D4G6QF1hM9jvnljK5tdlvVWl5iMnhNL7keps/ulLWV
8V9D84pJ3mQFwsyJw4f9AwuncrQDF8jULin/bnmypnMx9pP3mGgs3xDKT0jERvnq
CKWMvbQ2qjG6PA5uTV+79VAwEi9ymTwFoJQ4wtD24f1CGf3YAXdiUwfUTRLfbk8y
tHHUvlo0egFImbXOiHF1WloCw+xmB9Wj6GOItvyHiYn/zLmxACC3PaqYN3UNZToC
dIKms9WG9QGmNFiVeTBWlI0UOXFI74pF64MTsGvyBL2KB1cGnMmgX1/bV7LZaMWx
uOM14+SPi1qeixksaFXvXGCA+mnMj5TrCrZ9jSfjdWFah4qbWgBDdQx8k6BvJlIa
nrl+OYUi7gqIs5G7I7REMKl8Iv6VIwEwJ2otkuPvmBDMYgKiVrgVqdQACW3f46Nw
8ZCrOd64PS6YmkTBhbbMLl8Xgdpdcp2O3Z0Fm/Xjj4YcCAM2gOmqzpzfddjC/hy1
pITrCjZx28c28rZADa4qX2M/ajJ6YchOv7JOFKg383BS2VbspNQY+B1qIa87xmDi
lBygOAkvPexuGQ9ceVc1NSshAG/Ks/hyggKgMqNiE9UjfY58ixc=
=OkYa
-----END PGP SIGNATURE-----

--qplt4v54nyb6hmut--


--===============0360757694956357498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0360757694956357498==--

