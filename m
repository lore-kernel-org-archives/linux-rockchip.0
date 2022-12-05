Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CFD3C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 21:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOvzCSc1eqgp9fagP7sxhFUtz2irBtS83sgWjftm4sU=; b=fV0ygFMZ4HKG/7
	ZAqfm0P3j5MnI1hxFXu3YSmn+3ErngPBNWcuypz0ZxJ8XXnSAf1yTTcHtA0s+35Q07jgfUJBFGgXQ
	ZJSBIkANr8l2wzq8T686vbbQdHBxXbukNc6PVgsDWwikVjZM15GgnZztGj9GAx1AY9fWWf0aJd0qQ
	OCXjMzx3ub3gmdeoS/30fhjKvvtMNKBSAWo4dL2b5306qLfhN/xXr5DSxSRWzVeXJj5Sxykf7yT5y
	J5Mf1qM7KkY9O/SBesOo66MhXp3ZtH5PFUGra12vG2YTs+lR5AIwoVpxRrQB0PbTaLClTOPKgXJuw
	h/DEZWrlvc0r8jFo9qEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JDZ-00AqVY-LP; Mon, 05 Dec 2022 21:41:41 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JDO-00AqOr-1G; Mon, 05 Dec 2022 21:41:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 97FF461464;
	Mon,  5 Dec 2022 21:41:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87684C433C1;
	Mon,  5 Dec 2022 21:41:27 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="UcX63CxV"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1670276485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Cd+XRNCKmMHT7hFR6etWaPdNaLOAGBor4KfIYpxPTiU=;
	b=UcX63CxVLud3xJ7yYliyJ2IPekJGw8CsCg51VN7p+kv/6TMbQQMqBvjp8wY1lFXz77JzbG
	wj4Tt4uzLPi3/F2UV8+PDDSsDKUQ+23n6PVQt+bYvBivST7DuFFlmeClAkyoZ9zEoddIDf
	tL5RJVSkldP8/nY7JBdBKQE+J7nR3no=
Received: 	by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 0357b102 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 5 Dec 2022 21:41:25 +0000 (UTC)
Date: Mon, 5 Dec 2022 22:41:22 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lin Jinhan <troy.lin@rock-chips.com>,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] hwrng: add Rockchip SoC hwrng driver
Message-ID: <Y45lguC4ZiniiWS/@zx2c4.com>
References: <20221128184718.1963353-1-aurelien@aurel32.net>
 <20221128184718.1963353-3-aurelien@aurel32.net>
 <Y43uiVo41vljLsZM@zx2c4.com>
 <Y45j/hd2MnnXzcAo@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y45j/hd2MnnXzcAo@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_134130_427482_DAAB93D2 
X-CRM114-Status: GOOD (  17.35  )
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

Hi Aurelien,

On Mon, Dec 05, 2022 at 10:34:54PM +0100, Aurelien Jarno wrote:
> Well I am not sure it really matters. 90% is actually conservative, it's
> the worst case I have seen, rounded down. However I often get much
> better quality, see for instance the following run:
> 
> | Copyright (c) 2004 by Henrique de Moraes Holschuh
> | This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> | 
> | rngtest: starting FIPS tests...
> | rngtest: entropy source drained
> | rngtest: bits received from input: 16777216
> | rngtest: FIPS 140-2 successes: 819
> | rngtest: FIPS 140-2 failures: 19
> | rngtest: FIPS 140-2(2001-10-10) Monobit: 17
> | rngtest: FIPS 140-2(2001-10-10) Poker: 0
> | rngtest: FIPS 140-2(2001-10-10) Runs: 2
> | rngtest: FIPS 140-2(2001-10-10) Long run: 2
> | rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> | rngtest: input channel speed: (min=132.138; avg=137.848; max=147.308)Kibits/s
> | rngtest: FIPS tests speed: (min=16.924; avg=20.272; max=20.823)Mibits/s
> | rngtest: Program run time: 119647459 microseconds
> 
> Does the exact value has an importance there? I thought it was just
> important to not overestimate the quality.

That's the right principle. I just worry about estimating it like that
from looking at the output, rather than being derived from some
knowledge about the hardware. Maybe 50% (quality=512) is more
reasonable, so that it collects two bits for every one?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
