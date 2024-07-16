Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 799C1C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 12:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YgQjIqu9aXIYfu5d3bZjClnAJ0D8o5u0+Y46+QBVYKM=; b=MZ7M5ksJbKmWs7DNr6Nz/MjcB2
	dF7re3tV8xT2Mmuwb6z2A8uGyFPK9YL7/DMLqZaYjmAQvde5tbgMxomo+oF7j3G/Nr42VMl/3uEsY
	nBXZsAH95jmusZKL1dl5jR4AR4CDcO7EkLyFInUBc4pUHI2S2T/6ZTLT+sPe1ueF79/qK2pu+Isk0
	AjYpv+DizaBP1qJmwiOH9McsJl+alnV2u4UL5iXGwNoNmVlu+8TYYwQgYg91XWPTySwbl7xYpiXOy
	DtMiShv9etkaqeXYrg8ULhXc5J8dX4bCAm9Yj48mEc3d/0hf0S3/oT99uBO6r4PmOfCeXo/sHraDb
	FR7OokBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sThOp-0000000AQY1-1sS7;
	Tue, 16 Jul 2024 12:35:19 +0000
Received: from out-188.mta0.migadu.com ([2001:41d0:1004:224b::bc])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sThOT-0000000AQRa-33Fp
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jul 2024 12:35:00 +0000
X-Envelope-To: wens@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1721133292;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TUFna8KX4ihrtDkjdAKNgLT+tJDIS3c9nXtfNbeflQI=;
	b=PGWN6knRfOiyzyBmePMrs5eNI9XnN46/sa44jaUfrDReHR8E3BZIou5l4AikCZxA07uLKi
	AODkX8ezbh6Pb09qom3tdW5X9394/BSWmdfmtcopPuSqwhP9nYVY6HoB/LRv0brek/TFd4
	EyM8HD2LwKk1TOuAzvVY4TzEWfDV8cBlm6UBWAmehEwuAv+NCOk0HOeL6ptO6uMjRxy6OK
	vHFPHadXuHJM+hoOHerbWBFM+nvU8F9D6Pil5tETn67vCBGlckMI9khfEm3OMxRErGF2Ar
	bfB/A2dndy2llg0q9w2k80vW1CZeI53j3FFYERh4kEjMSJtNMjtwtV9DFi0ZZA==
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: daniel@makrotopia.org
X-Envelope-To: olivia@selenic.com
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: cristian.ciocaltea@collabora.com
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: martin@kaiser.cx
X-Envelope-To: ardb@kernel.org
X-Envelope-To: linux-crypto@vger.kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>,
 Herbert Xu <herbert@gondor.apana.org.au>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Tue, 16 Jul 2024 14:34:40 +0200
Message-ID: <6425788.NZdkxuyfQg@bagend>
Organization: Connecting Knowledge
In-Reply-To: <cover.1720969799.git.daniel@makrotopia.org>
References: <cover.1720969799.git.daniel@makrotopia.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_053458_528977_736C4BB0 
X-CRM114-Status: GOOD (  19.27  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5200045699565625219=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5200045699565625219==
Content-Type: multipart/signed; boundary="nextPart5537839.MQpQnaDgsY";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart5537839.MQpQnaDgsY
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Tue, 16 Jul 2024 14:34:40 +0200
Message-ID: <6425788.NZdkxuyfQg@bagend>
Organization: Connecting Knowledge
In-Reply-To: <cover.1720969799.git.daniel@makrotopia.org>
References: <cover.1720969799.git.daniel@makrotopia.org>
MIME-Version: 1.0

On Sunday, 14 July 2024 17:15:35 CEST Daniel Golle wrote:
> Rockchip SoCs used to have a random number generator as part of their
> crypto device.
> 
> However newer Rockchip SoCs like the RK3568 have an independent True
> Random Number Generator device. This patchset adds a driver for it and
> enables it in the device tree.
> 
> Tested on FriendlyARM NanoPi R5C.
> 
> ...
> 
> Aurelien Jarno (3):
>   dt-bindings: rng: Add Rockchip RK3568 TRNG
>   hwrng: add hwrng driver for Rockchip RK3568 SoC
>   arm64: dts: rockchip: add DT entry for RNG to RK356x
> 
>  .../bindings/rng/rockchip,rk3568-rng.yaml     |  61 +++++
>  MAINTAINERS                                   |   7 +
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   9 +
>  drivers/char/hw_random/Kconfig                |  14 ++
>  drivers/char/hw_random/Makefile               |   1 +
>  drivers/char/hw_random/rockchip-rng.c         | 227 ++++++++++++++++++
>  6 files changed, 319 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/rng/rockchip,rk3568-rng.yaml create mode
> 100644 drivers/char/hw_random/rockchip-rng.c

I just did the following test on my Quartz64 Model A running kernel 6.10
+ a number of patches, including this one:

===============================================================
root@quartz64a:~# dd if=/dev/hwrng bs=100000 count=1 > /dev/null
1+0 records in
1+0 records out
100000 bytes (100 kB, 98 KiB) copied, 5.64507 s, 17.7 kB/s
root@quartz64a:~# cat /dev/hwrng | rngtest -c 1000
rngtest 5
Copyright (c) 2004 by Henrique de Moraes Holschuh
This is free software; see the source for copying conditions. 
There is NO warranty; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.

rngtest: starting FIPS tests...
rngtest: bits received from input: 20000032
rngtest: FIPS 140-2 successes: 362
rngtest: FIPS 140-2 failures: 638
rngtest: FIPS 140-2(2001-10-10) Monobit: 634
rngtest: FIPS 140-2(2001-10-10) Poker: 106
rngtest: FIPS 140-2(2001-10-10) Runs: 43
rngtest: FIPS 140-2(2001-10-10) Long run: 0
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=2.638; avg=139.351; max=9765625.000)Kibits/s
rngtest: FIPS tests speed: (min=21.169; avg=36.158; max=68.610)Mibits/s
rngtest: Program run time: 148109761 microseconds
===============================================================

That's almost twice as many failures as successes ...
--nextPart5537839.MQpQnaDgsY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpZo4AAKCRDXblvOeH7b
boR5AQCgqaoiNWyzbxb+45ldj8zkL/JfpahT6y+T00sZkniBUQEAq8WpWtRZKF2U
KCvP/JqsEptPp3b08vRkAwxriNImTgc=
=mIG+
-----END PGP SIGNATURE-----

--nextPart5537839.MQpQnaDgsY--





--===============5200045699565625219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5200045699565625219==--




