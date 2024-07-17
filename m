Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15396C3DA49
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 02:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QrAHo4ike6uMACUT8dVJU9RnecodSTePhc6UqlJ1Tmw=; b=AA1r/erew3NThA
	AzPgW5pUF3QyZD9kkdpJMT5mJckCu0WUQ8/hr0tf0WXhPBCf7/3lcIBgzKL96EXihMhjqghVIKOnK
	HLzQiC7ZXdop8rNNggBPkJd/Hs4PI7JLjTMQrQAnBd0o7PtCRYWiu5vLSn4uYOKYTpxh9KBus39uH
	1ZlXxFfFGxg/tZfcQIG2yj8mR8mtQv/E5Ge+KJyppKOI+aWE90KxS3qIcJBSLG/4TLGdJlxweZk2D
	8HJqzFFk1+hbM29/uBLj9WtZazRgbyG2Mdv8FntPCPrGq9k3xf1VjMlgGP3dDBsGBWyJZ+bN9yvCl
	stik5kSINlzzU3PU1x9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTuM1-0000000CLt6-01bT;
	Wed, 17 Jul 2024 02:25:17 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTuLx-0000000CLsa-1dsK;
	Wed, 17 Jul 2024 02:25:15 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.97.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1sTuLk-000000006Cr-1FJG;
	Wed, 17 Jul 2024 02:25:00 +0000
Date: Wed, 17 Jul 2024 03:24:55 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Martin Kaiser <martin@kaiser.cx>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	devicetree@vger.kernel.org, linux-crypto@vger.kernel.org,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Olivia Mackall <olivia@selenic.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Message-ID: <ZpcrdwZBNFu-YlZt@makrotopia.org>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <CAGb2v67zxs03xScN8OfWXR1gf8tddJciXrjw3FQZcL7pR3ocxA@mail.gmail.com>
 <3190961.CRkYR5qTbq@bagend>
 <3220752.Q7WYUMVHaa@bagend>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3220752.Q7WYUMVHaa@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_192513_476788_9E79AB47 
X-CRM114-Status: GOOD (  12.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jul 16, 2024 at 07:19:35PM +0200, Diederik de Haas wrote:
> On Tuesday, 16 July 2024 18:53:43 CEST Diederik de Haas wrote:
> > rngtest: FIPS 140-2(2001-10-10) Long run: 0
> 
> I don't know if it means something, but I noticed that I have
> ``Long run: 0`` with all my poor results,
> while Chen-Yu had ``Long run: 1``.
> 
> Different SoC (RK3399), but Anand had ``Long run: 0`` too on their
> very poor result (100% failure):
> https://lore.kernel.org/linux-rockchip/CANAwSgTTzZOwBaR9zjJ5VMpxm5BydtW6rB2S7jg+dnoX8hAoWg@mail.gmail.com/

The conclusions I draw from that rather ugly situation are:
 - The hwrng should not be enabled by default, but it should by done
   for each board on which it is known to work well.
 - RK_RNG_SAMPLE_CNT as well as the assumed rng quality should be
   defined in DT for each board:
   * introduce new 'rochchip,rng-sample-count' property
   * read 'quality' property already used for timeriomem_rng

I will prepare a follow-up patch taking those conclusions into account.

Just for completeness, here my test result on the NanoPi R5C:
root@OpenWrt:~# cat /dev/hwrng | rngtest -c 1000
rngtest 6.15
Copyright (c) 2004 by Henrique de Moraes Holschuh
This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

rngtest: starting FIPS tests...
rngtest: bits received from input: 20000032
rngtest: FIPS 140-2 successes: 875
rngtest: FIPS 140-2 failures: 125
rngtest: FIPS 140-2(2001-10-10) Monobit: 123
rngtest: FIPS 140-2(2001-10-10) Poker: 5
rngtest: FIPS 140-2(2001-10-10) Runs: 4
rngtest: FIPS 140-2(2001-10-10) Long run: 0
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=85.171; avg=141.102; max=4882812.500)Kibits/s
rngtest: FIPS tests speed: (min=17.809; avg=19.494; max=60.169)Mibits/s
rngtest: Program run time: 139628605 microseconds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
