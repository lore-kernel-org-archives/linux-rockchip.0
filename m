Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8DA5C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 21:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFHbGZu+txxmJrronV5GaOrW1QsbJAA8XAHf2ms5Ub8=; b=QJIyntoXFwbSQy
	Qha+OWnbDKrCvOQQfMACgRmAFFk5xW+sowJ+HERKUo+jqyXd+y4EB/t4PwubOELfOSnNTg9W9GwJE
	7FZVn7IuwDyl6LI+keNUGu9VGnueRhRWxXeeqRMt5lENsbEXKdGft6fhtYMnEOgflvdhxN/iwyNid
	Jo0yjSiEFHzhMNBHLYbPvxcRU/SOJLcs7Tiq21Rnz8SUpr54ldnuEtXPmsbLzfZAWvSrvf4YS0Yf7
	+RiWGYafUeVmL6EnDAzaBvsTsX+Pp/uzmBBSt4SJVEHlUx1I083R7EENhj/uwxZRmkkWsxRZXcYLy
	VyWys/9cftKf+cvn5e3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2J7i-00Amis-Jn; Mon, 05 Dec 2022 21:35:38 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2J7W-00AmXU-Fk; Mon, 05 Dec 2022 21:35:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=RAu47D9qhSPeqGH6WidK6jmmj65HEM0DSNp12TyKSG0=; b=HZcoEtIlLfMXONr9DyEAs9FQGJ
	N84DVRwyt515vU6/4KRZVhPFYXo1ymWy0iln/LngK/DPsAdk044Vk6VKmhJhd7PT/OGGQ+QrJ/tA9
	jQnzMs6Io0kNHx3nN2MmnYIl6dG6Ukh02Qmu73N3yEQZsWh2Bs3bMhC7qfXm07L6R9djWP48nSUFJ
	xWD5uVLujymazwk9/QgVuVw9bGTiaebvYfbrgrDCG7xn6CI9xkN/huQZks6zlDyvsWHdxxOIp87Qt
	58piDtyB2EZNkgN/Ze1FuBEGebD6Qoa7/v/UoApuUmGw8L2ec0feCrqylDNALOPZGuLxCvgvBGt5G
	A4KdSbQw==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1p2J73-00BKxr-Kw; Mon, 05 Dec 2022 22:34:57 +0100
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1p2J70-00GGBC-2X;
	Mon, 05 Dec 2022 22:34:54 +0100
Date: Mon, 5 Dec 2022 22:34:54 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Olivia Mackall <olivia@selenic.com>,
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
Message-ID: <Y45j/hd2MnnXzcAo@aurel32.net>
Mail-Followup-To: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	Olivia Mackall <olivia@selenic.com>,
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
References: <20221128184718.1963353-1-aurelien@aurel32.net>
 <20221128184718.1963353-3-aurelien@aurel32.net>
 <Y43uiVo41vljLsZM@zx2c4.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y43uiVo41vljLsZM@zx2c4.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_133526_547873_24802AE3 
X-CRM114-Status: GOOD (  17.96  )
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

Hi,

On 2022-12-05 14:13, Jason A. Donenfeld wrote:
> On Mon, Nov 28, 2022 at 07:47:17PM +0100, Aurelien Jarno wrote:
> > The TRNG device does not seem to have a signal conditionner and the FIPS
> > 140-2 test returns a lot of failures. They can be reduced by increasing
> > RK_RNG_SAMPLE_CNT, in a tradeoff between quality and speed. This value
> > has been adjusted to get ~90% of successes and the quality value has
> > been set accordingly.
> 
> Can't you reduce it even more to get 100%? All we need is 32 bytes every
> once in a while.

From what I understood, we get the raw stream of the TRNG, there is no
conditionner and the TRNG is not FIPS compliant. So even with the
slowest speed, you don't reach 100% and you only get a very small
increase in the quality while it's way more slower.

> > +	rk_rng->rng.quality = 900;
> 
> If your intention is "90%", this should be 921 or 922, because the
> quality knob is out of 1024, not 1000.

Well I am not sure it really matters. 90% is actually conservative, it's
the worst case I have seen, rounded down. However I often get much
better quality, see for instance the following run:

| Copyright (c) 2004 by Henrique de Moraes Holschuh
| This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
| 
| rngtest: starting FIPS tests...
| rngtest: entropy source drained
| rngtest: bits received from input: 16777216
| rngtest: FIPS 140-2 successes: 819
| rngtest: FIPS 140-2 failures: 19
| rngtest: FIPS 140-2(2001-10-10) Monobit: 17
| rngtest: FIPS 140-2(2001-10-10) Poker: 0
| rngtest: FIPS 140-2(2001-10-10) Runs: 2
| rngtest: FIPS 140-2(2001-10-10) Long run: 2
| rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
| rngtest: input channel speed: (min=132.138; avg=137.848; max=147.308)Kibits/s
| rngtest: FIPS tests speed: (min=16.924; avg=20.272; max=20.823)Mibits/s
| rngtest: Program run time: 119647459 microseconds

Does the exact value has an importance there? I thought it was just
important to not overestimate the quality.

Regards
Aurelien

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
