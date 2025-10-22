Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 984A8CCD1BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 11:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P8J+J8/EXAyxQ5ocTeD/WCvEySwIFZuZLtja0zMAMI8=; b=o+1oQXz8AMV3DWRUXmByINItos
	NL+Pacs9LLNYYkf2ve+KZrUONQ+0vuMjO7V0Aa9+qJ2rHTdfohp8uxVt8P54fTj11FvKh6+NMjFIj
	wBzGCw5AS1g6sQoI5vwP2mBtI3N51uepssCZckk7vB59pH4KxGAuOiVWa+1DGc0KcALIfsRuNbL9/
	SrNFSF6RlqEm+NVKrX1+EqJBIhg0Hz7ZlaaXqpBTjPcww6g3FGzg2Gyl79k2kXLBPvmIux5JZs11m
	q+fVgPELBX1FUHM8zte433I2vuev1R3/p0Kvl7eOOlxUhK/gTqBbDQj0NlMiQjbc7y77wHFgXEi3y
	dfW4CRsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWmU-00000002bQd-1m83;
	Wed, 22 Oct 2025 11:13:26 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWmO-00000002bOI-3Oz1;
	Wed, 22 Oct 2025 11:13:22 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 28A091C008F; Wed, 22 Oct 2025 13:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ucw.cz; s=gen1;
	t=1761131599;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RiHRtBrAUxWkpptBogGfntRkFVC2Xst6OAKpWS80aZI=;
	b=a588LviioKG46EL+W3kvhY+IVvHPjaXGB76s3z6DaTDNxOphPnyzslyjeIE7w98AsOMlm+
	ruJR2QRUtzIICO16MGJ/MtxuvfZ9/Ysc12i5CoL4tjLpLRoxaxq08nm00+b7wafFOcFC7q
	YCjZL4qDlHCVkE76ZFrNlOWoHABsR7E=
Date: Wed, 22 Oct 2025 13:13:18 +0200
From: Pavel Machek <pavel@ucw.cz>
To: guptarud@gmail.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH v4 4/4] arm64: dts: rk3399-pinephone-pro: Fix voltage
 threshold for volume keys
Message-ID: <aPi8TsoarXJXvKuz@duo.ucw.cz>
References: <20250929-ppp_light_accel_mag_vol-down-v4-0-6598f22d3451@gmail.com>
 <20250929-ppp_light_accel_mag_vol-down-v4-4-6598f22d3451@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250929-ppp_light_accel_mag_vol-down-v4-4-6598f22d3451@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_041321_002521_BFFF3262 
X-CRM114-Status: GOOD (  10.06  )
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
Content-Type: multipart/mixed; boundary="===============4058848365132121265=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4058848365132121265==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8eFsTqdRSFJMsawS"
Content-Disposition: inline


--8eFsTqdRSFJMsawS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> From: Ondrej Jirman <megi@xff.cz>
>=20
> Previously sometimes pressing the volume-down button would register as
> a volume-up button. Match the thresholds as shown in the Pinephone Pro
> schematic.
>=20
> Tests:
>=20
> ~ $ evtest
>     // Mashed the volume down ~100 times with varying intensity
>     Event: time xxx, type 1 (EV_KEY), code 114 (KEY_VOLUMEDOWN), value 1
>     Event: time xxx, type 1 (EV_KEY), code 114 (KEY_VOLUMEDOWN), value 0
>     // Mashed the volume up ~100 times with varying intensity
>     Event: time xxx, type 1 (EV_KEY), code 115 (KEY_VOLUMEUP), value 1
>     Event: time xxx, type 1 (EV_KEY), code 115 (KEY_VOLUMEUP), value 0
>=20
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>

Reviewed-by: Pavel Machek <pavel@ucw.cz>

BR,
								Pavel
--=20
I don't work for Nazis and criminals, and neither should you.
Boycott Putin, Trump, Netanyahu and Musk!

--8eFsTqdRSFJMsawS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCaPi8TgAKCRAw5/Bqldv6
8oYXAJ9s4v0KB9wq1j3POu2TGNFDuabVrwCffytHlKiV39Y0bTN6VVIeuDzRjTg=
=r+hr
-----END PGP SIGNATURE-----

--8eFsTqdRSFJMsawS--


--===============4058848365132121265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4058848365132121265==--

