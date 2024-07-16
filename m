Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CB58C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 14:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WBUwg8CH7W0IHn3w6A6AcZMk9afoNiS6Uhhdd/iYa6g=; b=frFPUD5S7gtsVkFb2D50h861f1
	OVVscM31DRzBbe21tYD17anMFq276Y2jH+IhP65LDKBSHy2TwG8W3hMf3VmvnDDmfOjbZU8NyECZ5
	8N+NdOS52Yt7DzxGi5KfasrhAUUrfK4cqnbOoyFrHvSA714htdRFrOCsGn7SvhchRUqjBbKy8CUQJ
	sWGxe/jnl8k0s3cQ7JvNH0PIp5EN8YH5yMuYVBF5RN1RdaNiYS0902SpJPn488t4o/Pb/tXI9j8w/
	gWhfakqfiNhvol5jyxCD/eK3fb2bzbNhhAePicospkMaopvPfK/tmKm0aVq/xTFTQDeJCN8aH/6c1
	MpCfZ40A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTij3-0000000Acsd-18yH;
	Tue, 16 Jul 2024 14:00:17 +0000
Received: from out-182.mta0.migadu.com ([2001:41d0:1004:224b::b6])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTiii-0000000Acmx-0ANV
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jul 2024 13:59:59 +0000
X-Envelope-To: daniel@makrotopia.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1721138392;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=z/6hLi0hpFU/NJWzKKvk3gXmqqY3bcj2xGhKR9ye2lU=;
	b=cvbTtkvuVRQtoPFPFc9QFmkPK72CWGEk6X6JjaXxorm963a3ava45U7yBk4gCIPBlYmBhQ
	ZJ7u/tk0f0rV0fWnZCvesGO6FaRkbcgVbsBvvdUNfgzhPgOptfnRsBCo5es0KEwqpBpIJL
	TFEivEKK+SYfUSdm+Ll8Enj4u21F2YOp7UDSYmqNCZoh3gdPiJthnabHgSAj85V/yN0lQo
	04hrxAX6MxxGdKreyXeg26F6G0Gzk5/3IAp4xQJhQjfJMxcIqh92W4juyOmeCQfqNpf9eP
	ccg72E/I+lEaKDXzE5E6apwuq80Qd9rKah876lUEyBYDi6SRrpoM3NcKy5N0FA==
X-Envelope-To: wens@kernel.org
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-rockchip@lists.infradead.org
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
To: Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Tue, 16 Jul 2024 15:59:40 +0200
Message-ID: <1874451.yxlQQexqVa@bagend>
Organization: Connecting Knowledge
In-Reply-To: <ZpZ1RSSYaLo45kUI@makrotopia.org>
References: <cover.1720969799.git.daniel@makrotopia.org> <6425788.NZdkxuyfQg@bagend>
 <ZpZ1RSSYaLo45kUI@makrotopia.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_065956_391601_36D6F42F 
X-CRM114-Status: GOOD (  25.39  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Content-Type: multipart/mixed; boundary="===============1981519538897029533=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1981519538897029533==
Content-Type: multipart/signed; boundary="nextPart2139056.YYODicKxRJ";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2139056.YYODicKxRJ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Daniel Golle <daniel@makrotopia.org>
Date: Tue, 16 Jul 2024 15:59:40 +0200
Message-ID: <1874451.yxlQQexqVa@bagend>
Organization: Connecting Knowledge
In-Reply-To: <ZpZ1RSSYaLo45kUI@makrotopia.org>
MIME-Version: 1.0

Hi Daniel,

On Tuesday, 16 July 2024 15:27:33 CEST Daniel Golle wrote:
> On Tue, Jul 16, 2024 at 02:34:40PM +0200, Diederik de Haas wrote:
> > [...]
> > rngtest: starting FIPS tests...
> > rngtest: bits received from input: 20000032
> > rngtest: FIPS 140-2 successes: 362
> > rngtest: FIPS 140-2 failures: 638
> > rngtest: FIPS 140-2(2001-10-10) Monobit: 634
> > rngtest: FIPS 140-2(2001-10-10) Poker: 106
> > rngtest: FIPS 140-2(2001-10-10) Runs: 43
> > rngtest: FIPS 140-2(2001-10-10) Long run: 0
> > rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> > rngtest: input channel speed: (min=2.638; avg=139.351;
> > max=9765625.000)Kibits/s rngtest: FIPS tests speed: (min=21.169;
> > avg=36.158; max=68.610)Mibits/s rngtest: Program run time: 148109761
> > microseconds
> > ===============================================================
> > 
> > That's almost twice as many failures as successes ...
> 
> That's bad news, and apparently different from Aurelien's initial
> testing of the driver.
> 
> Can you try if the result is also that bad when using his version of
> the driver:
> 
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/20221128184718.1
> 963353-3-aurelien@aurel32.net/
> 
> If so, we can try to increase RK_RNG_SAMPLE_CNT, and we may need
> different values depending on the SoC...

I had been using a rebased version (with fixed includes) of Aurelien's
patch set and I switched to 'your' version somewhere in the 6.10-rcX
cycle, but I didn't record exactly when.
But I had a 6.9.2 kernel of which I'm confident has that rebased patch set:

=========================================================== 
root@quartz64a:~# uname -a
Linux quartz64a 6.9+unreleased-arm64 #1 SMP Debian 6.9.2-1~cknow (2024-04-24) aarch64 GNU/Linux

root@quartz64a:~# dd if=/dev/hwrng bs=100000 count=1 > /dev/null
1+0 records in
1+0 records out
100000 bytes (100 kB, 98 KiB) copied, 5.6801 s, 17.6 kB/s
root@quartz64a:~# cat /dev/hwrng | rngtest -c 1000
rngtest 5
Copyright (c) 2004 by Henrique de Moraes Holschuh
This is free software; see the source for copying conditions. 
There is NO warranty; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.

rngtest: starting FIPS tests...
rngtest: bits received from input: 20000032
rngtest: FIPS 140-2 successes: 361
rngtest: FIPS 140-2 failures: 639
rngtest: FIPS 140-2(2001-10-10) Monobit: 637
rngtest: FIPS 140-2(2001-10-10) Poker: 115
rngtest: FIPS 140-2(2001-10-10) Runs: 34
rngtest: FIPS 140-2(2001-10-10) Long run: 0
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=2.603; avg=137.548; max=9765625.000)Kibits/s
rngtest: FIPS tests speed: (min=21.479; avg=37.156; max=89.547)Mibits/s
rngtest: Program run time: 149992805 microseconds
=========================================================== 

So that's consistent(ly bad).

For shits and giggles, I tried it on my PineTab2 too (also rk3566):

=========================================================== 
root@pinetab2:~# uname -a
Linux pinetab2 6.10+unreleased-arm64 #1 SMP Debian 6.10-1~cknow (2024-04-24) aarch64 GNU/Linux

root@pinetab2:~# dd if=/dev/hwrng bs=100000 count=1 > /dev/null
1+0 records in
1+0 records out
100000 bytes (100 kB, 98 KiB) copied, 5,69533 s, 17,6 kB/s

root@plebian-pinetab2:~# cat /dev/hwrng | rngtest -c 1000
rngtest 5
Copyright (c) 2004 by Henrique de Moraes Holschuh
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.

rngtest: starting FIPS tests...
rngtest: bits received from input: 20000032
rngtest: FIPS 140-2 successes: 730
rngtest: FIPS 140-2 failures: 270
rngtest: FIPS 140-2(2001-10-10) Monobit: 266
rngtest: FIPS 140-2(2001-10-10) Poker: 23
rngtest: FIPS 140-2(2001-10-10) Runs: 9
rngtest: FIPS 140-2(2001-10-10) Long run: 0
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=2.615; avg=137.889; max=9765625.000)Kibits/s
rngtest: FIPS tests speed: (min=24.643; avg=34.518; max=68.364)Mibits/s
rngtest: Program run time: 149674336 microseconds
=========================================================== 

That's looking quite a lot better ... and I have no idea why.

The Q64-A is used as headless server and the PineTab2 is not,
but I connected to both over SSH and they were freshly booted
into, thus I haven't actually/normally used the PT2 since boot.

HTH,
  Diederik
--nextPart2139056.YYODicKxRJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpZ8zAAKCRDXblvOeH7b
biPgAP4w2EctjF1IbZ6okanhouXKBT7puVwkG4ARRF2EXzy2aAD9EBom0mLY87MC
ruDMJ4tVdTkx+/wFphSdl9PKA5TEZg4=
=5K2E
-----END PGP SIGNATURE-----

--nextPart2139056.YYODicKxRJ--





--===============1981519538897029533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1981519538897029533==--




