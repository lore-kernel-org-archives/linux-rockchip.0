Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AEE3C531D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 22:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QmQPrILgpKn/r1Pb2C9PvvKKm6QWIuTqPwauoBSYRR4=; b=oJ84ucivUp1++VvwVraaAokVrW
	Sg9D2anGKd8llJQYaeVScAs1mpmL+8BBOpEB1GPcP/KBl1BCH89dckhuG2pVq7OtpnZhQwZTSAtli
	uFhHJUkRh7WktLg4ptLBYa/I03dPHcj13MUP6Skar5gSqvRI7M9tRTXb4dKQJqpRp5WkZmNGmnclc
	PEUsS5uBIuKQESd6ajyeBq++SLpJhKzrL6rgCAE3wkaVwqrF1/yjSKp0s7b5Y+qYy5DEZZUzjxuM6
	nDLwZF9SK4rQs2FbN5v+xWLY4Gs9dIFjZu2W1BATDAcIowi4fbnHufV4NGAYNeT+U1Zbar/WyHLir
	3bLR0dUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1pk-0000000FCx6-3DGy;
	Thu, 23 Jul 2026 22:24:04 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn1pi-0000000FCwH-16gX;
	Thu, 23 Jul 2026 22:24:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1784845409; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ODlG6/Dr7zfVNBITK5q+zjIGFVJwHoF3Bw6Dx9mPdVJq9rzeWWRHTpnNs4Xgc8LNvEJ9bNVR9xDCgUZ5ihh2TvduoLW2M+C2pBoqHb4j8bSneC8Ihw9i9VmCsWzuqzdoGDlTPdKZc5ZmEWZhBtx4odsng6WXJpLsgYC/cL1j1Sg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1784845409; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=labg2PG4k0Dzn6qu2NEbidh5NuZ5vUXyu6act9w5b5E=; 
	b=Gksvwk12D1+wcpV+T3dCaxJ4OYqElAqU1jmOijkhoRUveFCq3um4bDPCFxwvcn3u8x5GfnTqtlMWQEJNfycU6GZ9K3trd4GGMbtMLyZWjJTrgWZsOEQKGjQJ+zSBroagEUe6V9vuAxFKzeWZ0KnHhihkiqvHUiYJtVnB6Jmg+Wc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1784845409;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=labg2PG4k0Dzn6qu2NEbidh5NuZ5vUXyu6act9w5b5E=;
	b=jmojtjpCXy4ZR2FmCnIyyooeiIjisSXYm0jkwMhbDoLBw9IH3grG63kXbxEoUQ3T
	h+C24vvYaZVhvKf4QFAe57JMMBBdAFbij3lagYwaClOVzF6ygw3ysB5AyjIz3pbxgqM
	09ljknNPU/nJWG/jYUQJEFl6V4h3nnRjLpF9EeSc=
Received: by mx.zohomail.com with SMTPS id 1784845407293120.01048474195886;
	Thu, 23 Jul 2026 15:23:27 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 8DA081803EC; Fri, 24 Jul 2026 00:23:20 +0200 (CEST)
Date: Fri, 24 Jul 2026 00:23:20 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Alexey Charkov <alchark@flipper.net>
Subject: Re: [PATCH v4 10/10] drm/bridge: synopsys: dw-dp: Add audio support
Message-ID: <amKTDtSFeiv2hoOK@venus>
References: <20260721-synopsys-dw-dp-improvements-v4-0-f0f4a4ede712@collabora.com>
 <20260721-synopsys-dw-dp-improvements-v4-10-f0f4a4ede712@collabora.com>
 <CAKTNdwE6OOPHYpMQXYfWPtdA26AiPJjSi6N_J-yGSU0mSL7HSg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKTNdwE6OOPHYpMQXYfWPtdA26AiPJjSi6N_J-yGSU0mSL7HSg@mail.gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/284.825.77
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_152402_356219_0E96E70E 
X-CRM114-Status: GOOD (  23.75  )
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: multipart/mixed; boundary="===============0074656130438028374=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0074656130438028374==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bji6xdkqdan63e5y"
Content-Disposition: inline


--bji6xdkqdan63e5y
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 10/10] drm/bridge: synopsys: dw-dp: Add audio support
MIME-Version: 1.0

Hi,

On Wed, Jul 22, 2026 at 12:06:33PM +0400, Alexey Charkov wrote:
> On Tue, Jul 21, 2026 at 9:52=E2=80=AFPM Sebastian Reichel
> <sebastian.reichel@collabora.com> wrote:
> >
> > Implement audio support for the Synopsys DesignWare DisplayPort
> > controller.
> >
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-dp.c | 230 ++++++++++++++++++++++++=
+++++++-
> >  1 file changed, 229 insertions(+), 1 deletion(-)
>=20
> Thanks for your work on this!
>=20
> Quick question. It looks like the audio-related change along with the
> DT binding update is independent of the hotplug/PM part, and shouldn't
> really depend on the (large!) USBDP PHY changes. Would it be possible
> to split it out as a separate mini-series, so that the whole thing
> doesn't have to wait for the fate of the USBDP PHY series?

It does not strictly depend on it, but

 * It requires quite some rebasing as it is at the end of the
   series, after the cleanups and runtime PM
 * Doing runtime PM without the USB-C bits is useless, since
   it's always enabled anyways
 * I cannot test this without USB-C

But the series applies, compiles and runs on the Sige5 without the
USBDP series. It would fail without the USBDP patches, if DT
contains the proper link to USBDP. As that depends on the acked,
but unmerged binding change from the USBDP series we should be
fine to land this before the USBDP series lands.

I've just send v5 with the Sashiko feedback on v4 fixed.

Greetings,

-- Sebastian

--bji6xdkqdan63e5y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmpilFAACgkQ2O7X88g7
+prIqQ//TqmMMk8KT0xyqmoOdCmaCS7civhFT5L8EX46vD4vvq8ZVxsEhyWPcM3L
5v5PNqNrwhXMFjKyNrahWNTUFmGysRzeMM4ZDVMsOW9IvYPa1hA7C2O0XUC4PYZp
IY+xOgGQg+A+zeayKd/HWbA4B2ZSKMci8cqFJF1PC9GLkW6DJf+rv17BvoGunkjy
0oGPJgqTwYuMnKSOpG1kL/ymOxVhNl/7UayaMHoBjz2/9hGs5y6eLtMYGeDPF3B1
FQRiqsBYM0ha5a4N/zp83B9jaK1AbmLKlFkGrGu5MX651vrB21wn1f7c4oJ1SYpg
l2QP2X2x8bsg1mUQmORHRwh3nnqSOFe79svokpd0R457XvWTJ2hShX0HSUeIjBop
9jEel1C0Ik/jjlvF+YlCYE7jDcnq4GKm/7HEPIcxC8ENwzZy30Pt7kG6YfBRbxiu
teJ7e0FgNokY9qfXXXJmFaHT59CkUhVQczavnpt8TXZRsNmy/yJuLTkNykr9/04y
GnmDF5R4+Di5aQ7Ih1t0kzoBsPeKwOuyn/r6YUXpeXb+6pl6xBa6EN9ENRZWH8Y/
HPR5Laa9PWC4wTHUUsaCYwi3DagjTZAS76b9I9ssZbVvIcMJAwb5eDYDrkO72SBd
mtHdirW8FMuQNQ5BVgPGw5dTzUfs7e+y5NJ3kln8R0ogXkyIyW4=
=snkY
-----END PGP SIGNATURE-----

--bji6xdkqdan63e5y--


--===============0074656130438028374==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0074656130438028374==--

