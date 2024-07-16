Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43812C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 14:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OzaehFeSM3YfgJjCigm1dDHmBB7ozO0MKLizUDo6O5E=; b=UZND3z9hb6WSdQtyeFKJRhsgvO
	JgDF27+o2kVZqdKc5qxW1JrN5in+dSrQN/WXLcNheI6/dqb+Vxnuxjumjlg+8pf1bC874HsW/825D
	yIhaNub0WHjgaUy+/Q5VVUfsTZU8Vb3Er/64m6bJMzCLj7fIZJl1itcHXcU6R5fzD41AL79mOl0Fv
	yQQhIXStocWvzO8+NXNzMxRLdMHuy4XI1EmpyCQDwIIupFOmYul6V9LfjZlqvkz4opyx89aKIlx/D
	eirZQUZCHPOA4Uq6eqK9Y7xZ+6tPFazxexnSIOyD4C7oxz5F+skqztrh6aXNaQeiOdWNF9hw6poNB
	Vcv++7CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTivt-0000000AeH1-1Rlv;
	Tue, 16 Jul 2024 14:13:33 +0000
Received: from out-181.mta1.migadu.com ([95.215.58.181])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTivp-0000000AeEA-2ZZ7
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jul 2024 14:13:31 +0000
X-Envelope-To: daniel@makrotopia.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1721139204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OOwmHCe649Ack/8wyuZb0NPCZh2F1YT3rt4JfPBVRIE=;
	b=BX/nf+C7bl7baFC2a77Dmx58LPc2Hw8RkBhjVMA5ZE4FcVNQQH9EbQuRD7yFldcBXMFGEr
	ycmxyrLkmV6oopbF1uxmrjNO+9B/QDc1ub0rF5+ooL4uIkj2u3ErS6A2tdxBo/49+Sat3D
	8umqn9i5Urh9oA5NDm/TmmInqquFSVNwAgI6Pri3CpHCQiy04+K2Qfuywnlh7rD4LDyBJR
	JEHeSh/sKlxVqwLqng9EyVq7Pe+QYUkiV2Ft9dvXAvlGlvBDZ9dwYwbUi1sFCJ8b936Sx1
	LXMNqbowsowb1UHywJ8JlGxhTNVwYaNNoL8feiaoWE+esktGBGe3LT+AGm00AA==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: martin@kaiser.cx
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: ardb@kernel.org
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-crypto@vger.kernel.org
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: olivia@selenic.com
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: wens@kernel.org
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: heiko@sntech.de
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Daniel Golle <daniel@makrotopia.org>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Olivia Mackall <olivia@selenic.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>,
 Heiko Stuebner <heiko@sntech.de>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Tue, 16 Jul 2024 16:13:10 +0200
Message-ID: <6779787.ZJYUc1KeCW@bagend>
Organization: Connecting Knowledge
In-Reply-To: <1874451.yxlQQexqVa@bagend>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <ZpZ1RSSYaLo45kUI@makrotopia.org> <1874451.yxlQQexqVa@bagend>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_071330_049404_239C4964 
X-CRM114-Status: GOOD (  16.58  )
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
Content-Type: multipart/mixed; boundary="===============7619824887747262196=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7619824887747262196==
Content-Type: multipart/signed; boundary="nextPart15370963.2mxTI6y2F0";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart15370963.2mxTI6y2F0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Tue, 16 Jul 2024 16:13:10 +0200
Message-ID: <6779787.ZJYUc1KeCW@bagend>
Organization: Connecting Knowledge
In-Reply-To: <1874451.yxlQQexqVa@bagend>
MIME-Version: 1.0

On Tuesday, 16 July 2024 15:59:40 CEST Diederik de Haas wrote:
> For shits and giggles, I tried it on my PineTab2 too (also rk3566):
> 
> ===========================================================
> root@pinetab2:~# uname -a
> Linux pinetab2 6.10+unreleased-arm64 #1 SMP Debian 6.10-1~cknow (2024-04-24)
> aarch64 GNU/Linux
> 
> root@pinetab2:~# dd if=/dev/hwrng bs=100000 count=1 > /dev/null
> 1+0 records in
> 1+0 records out
> 100000 bytes (100 kB, 98 KiB) copied, 5,69533 s, 17,6 kB/s
> 
> root@plebian-pinetab2:~# cat /dev/hwrng | rngtest -c 1000
> rngtest 5
> Copyright (c) 2004 by Henrique de Moraes Holschuh
> This is free software; see the source for copying conditions.
> There is NO warranty; not even for MERCHANTABILITY or
> FITNESS FOR A PARTICULAR PURPOSE.
> 
> rngtest: starting FIPS tests...
> rngtest: bits received from input: 20000032
> rngtest: FIPS 140-2 successes: 730
> rngtest: FIPS 140-2 failures: 270
> rngtest: FIPS 140-2(2001-10-10) Monobit: 266
> rngtest: FIPS 140-2(2001-10-10) Poker: 23
> rngtest: FIPS 140-2(2001-10-10) Runs: 9
> rngtest: FIPS 140-2(2001-10-10) Long run: 0
> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> rngtest: input channel speed: (min=2.615; avg=137.889;
> max=9765625.000)Kibits/s rngtest: FIPS tests speed: (min=24.643;
> avg=34.518; max=68.364)Mibits/s rngtest: Program run time: 149674336
> microseconds
> ===========================================================
> 
> That's looking quite a lot better ... and I have no idea why.
> 
> The Q64-A is used as headless server and the PineTab2 is not,
> but I connected to both over SSH and they were freshly booted
> into, thus I haven't actually/normally used the PT2 since boot.

I did freshly install rng-tools5 package before running the test, so
I rebooted again to make sure that wasn't a factor:

===========================================================
root@pinetab2:~# cat /dev/hwrng | rngtest -c 1000
rngtest 5
...

rngtest: starting FIPS tests...
rngtest: bits received from input: 20000032
rngtest: FIPS 140-2 successes: 704
rngtest: FIPS 140-2 failures: 296
rngtest: FIPS 140-2(2001-10-10) Monobit: 293
rngtest: FIPS 140-2(2001-10-10) Poker: 32
rngtest: FIPS 140-2(2001-10-10) Runs: 10
rngtest: FIPS 140-2(2001-10-10) Long run: 0
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=2.612; avg=137.833; max=9765625.000)Kibits/s
rngtest: FIPS tests speed: (min=24.391; avg=34.416; max=68.364)Mibits/s
rngtest: Program run time: 149736205 microseconds
===========================================================

So that 704/296 vs 730/270 in the previous run on the PT2.

In case it helps:
===========================================================
root@quartz64a:~# grep . /sys/devices/virtual/misc/hw_random/rng_*
/sys/devices/virtual/misc/hw_random/rng_available:rockchip-rng 
/sys/devices/virtual/misc/hw_random/rng_current:rockchip-rng
/sys/devices/virtual/misc/hw_random/rng_quality:900
/sys/devices/virtual/misc/hw_random/rng_selected:0

root@pinetab2:~# grep . /sys/devices/virtual/misc/hw_random/rng_*
/sys/devices/virtual/misc/hw_random/rng_available:rockchip-rng 
/sys/devices/virtual/misc/hw_random/rng_current:rockchip-rng
/sys/devices/virtual/misc/hw_random/rng_quality:900
/sys/devices/virtual/misc/hw_random/rng_selected:0
===========================================================

Cheers,
  Diederik
--nextPart15370963.2mxTI6y2F0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpZ/9gAKCRDXblvOeH7b
brwYAP9OiJP/6N11UP/cWpJx8l8/sSOgeJKLWw9r5/M98JZJbwD/bZc08/n9+WCw
/OpBHuZSl5tXabtusXCV+hmock01kAA=
=Jqvx
-----END PGP SIGNATURE-----

--nextPart15370963.2mxTI6y2F0--





--===============7619824887747262196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7619824887747262196==--




