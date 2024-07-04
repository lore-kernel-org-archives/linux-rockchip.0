Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39DACC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 10:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0RzLlwqHtvHoVf7Hys1vCdwCWeukflULryvEyw39qLA=; b=DH63Ifg7RJm27GHn8U9rARlf1E
	BSBPGCw7dMnbtXYH8xx0G0FLUYxZQvgjucRXCxrpYy4BZxEh+6G4wNvsLmrfZhnT6vwh64bu1/Gdi
	rlhUTuDRp9DLGgTBdyM32nrlAUOEq1I9jexVEMpmRyaL9vvTENfPj2IcyA3yNk6K0KIlWo/q7h0Zs
	NTKt56/vT/WkSmejNor8MI5wwzzTzMq5Szpf6X8eEGw1RcEeowYgJ3Jo9p+n+X/0bhgGB+GI5eyh4
	Aw4BqZTS+m63I9F6y5rfxG4PktAt/zh8E2AGDQQmqFvFS6jai2KVyOJEdBkVdLma8ZVpjy72ytiyb
	FspieeTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJnc-0000000Csnv-15tq;
	Thu, 04 Jul 2024 10:34:48 +0000
Received: from out-170.mta1.migadu.com ([2001:41d0:203:375::aa])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJnP-0000000CslZ-2Rt6
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 10:34:37 +0000
X-Envelope-To: dri-devel@lists.freedesktop.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720089270;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WaeRZ2nOjo92gumscFG9YpVZTkXiyVaKUvdvkRECyMs=;
	b=DgCVIFGJBTAj+jAEd25PHvFZkbUs1LImkDzhrgReBtXijVUVkKPP1wnPw2V4WaUOujxKvu
	jJyvcjGiG7wvLqhry+l86pk0JW7Rh9tTmnqCZ9stUzB3kkBnqSTMEkcgT31X3WondIGuK+
	p0kxQBoVq3VXNRM74CpUq01obpMyoDsywt4GndWznVjvavjG1lDtEG/Zme0utAXrcRMLRj
	7UupdPzTKXI+xG/ed47jl9Gxmtq7x0KIS7cO4cntuC9vIIJ7+zog4SFdllKvn2FZgJJ17c
	9AhprNEbSOAXdN9LXFoOPFcnF/g/Jmpf3EO/Uieoogaqiix1nVJTqAcHclxVTA==
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: heiko@sntech.de
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: kernel@pengutronix.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: benjamin.gaignard@collabora.com
X-Envelope-To: michael.riesch@wolfvision.net
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: pgwipeout@gmail.com
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: dmitry.osipenko@collabora.com
X-Envelope-To: dsimic@manjaro.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH v11 09/24] drm/rockchip: dw_hdmi: add regulator support
Date: Thu, 04 Jul 2024 12:34:18 +0200
Message-ID: <17377562.Wbl12GSNyo@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3615926.LM0AJKV5NW@diego>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <16078476.GIfNKF0EQE@bagend> <3615926.LM0AJKV5NW@diego>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_033435_775980_A5D0ED72 
X-CRM114-Status: GOOD (  17.29  )
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
Content-Type: multipart/mixed; boundary="===============1526215507943070323=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1526215507943070323==
Content-Type: multipart/signed; boundary="nextPart2562580.NADL9uRC7c";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2562580.NADL9uRC7c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 04 Jul 2024 12:34:18 +0200
Message-ID: <17377562.Wbl12GSNyo@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3615926.LM0AJKV5NW@diego>
MIME-Version: 1.0

On Thursday, 4 July 2024 12:00:43 CEST Heiko St=FCbner wrote:
> > Is it possible to probe for those avdd_0v9 and avdd_1v8 regulators only=
 on
> > devices that should have them?
> >=20
> > On a Rock64 (rk3328), but probably for all VOP1 devices, they're not
> > present and that results in the following warnings:
> > dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy
> > regulator dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, usi=
ng
> > dummy regulator
> counter-argument, why not define them in the dts?
> I.e. looking at the rock64 schematics, you want the dvideo_avdd_1v8 (from
> LDO1) and dvideo_avdd_1v0 (from LDO3) if I'm not mistaken. Why this stuff
> is called dvideo and not hdmi in there I have no clue ;-)

That appears to be a valid counter-argument ...

On donderdag 4 juli 2024 12:28:53 CEST Alex Bee wrote:
> Those regulators exist for _all_ RK SoCs that use dw-hdmi controller, as =
it
> has to be supplied in same why (as it is always the same controller). In
> particular case of rock64[0] its:
>=20
> DVIDEO_AVDD_1V8P6 -> VCC_18
> DVIDEO_AVDD_1V0M6 -> VDD_10
>=20
> So: Just fix the device tree and your warnings are gone :)
>=20
> [0] https://files.pine64.org/doc/rock64/ROCK64_Schematic_v2.0_20171019.pdf

=2E.. confirmed by Alex Bee.

I do wonder about 0.9V vs 1.0V, but I'll bug someone else about that ;-)

Cheers,
  Diederik
--nextPart2562580.NADL9uRC7c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoZ6qgAKCRDXblvOeH7b
bvq+AP9nd2vWXEhpjpT5r1vm/NRY9bGkS/orX1vBaxZgGcwjmQEA9GlBCm3VIGIq
h8OWrwrSTdI76Uh1Eb98A1qx9ctzUAI=
=S12p
-----END PGP SIGNATURE-----

--nextPart2562580.NADL9uRC7c--





--===============1526215507943070323==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1526215507943070323==--




