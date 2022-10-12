Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0853C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 08:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFcY7jxj0Y2ijiPlYkL5LTQnsi0PMcRq8RxDrKYOzfE=; b=Pr7MC/Zm+upzGf
	bfMFoarpHUt6jH4BbTH4jFSmGtYC1SSmuZAoVaHd5W7CN2dZjGmXFGvUi5IbEaPRl57k/U2NSDPgL
	PTNFKOVunurQwTtZSMfcMCgITURf33Q92mjWOKt9GIXlXBdmsgQM/34r34RwF+jzD9ytGt2P3jBFu
	sbG57ARhTjzA5doZT0j9D4eEsRvVeOgKO64R0ixijaAZnuJKwhwqgjgwRopPKkbLaZtzI4pFbr9Hz
	LmOboTKTyuf8ZYB5g/V3RfApBO8V8aa2iVFzzmq6PolGt+xBSWzsbi8HCe4oYncfOT4OiSEZKqf7V
	CX7pBxfL2xYuZKttQDUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiX45-007KI7-Ch; Wed, 12 Oct 2022 08:26:09 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiX3j-007KBo-4P; Wed, 12 Oct 2022 08:25:48 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.nyi.internal (Postfix) with ESMTP id 0C0E15802C9;
	Wed, 12 Oct 2022 04:25:43 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 12 Oct 2022 04:25:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1665563143; x=
	1665570343; bh=nCdF6LxUb7wjK1rhEWVCAxMOJXRtBNecpAtga3Tlows=; b=J
	CwXwF6nL86zoKoaicMyZgJQB5b1NhSTOyxIxAVrYI+Jc/GjqHnfh6TQhHdJ4CpkY
	EyhuFjPcFPsiYva88c8nTBDCjVjXKwUKrWf3xI51qNHYlas8DJElEXWKCY+wLDoQ
	F9R6WQF3LZOaZTqfjzOrWPjTvkWGCxLB125Tjp1xuZxGG0R617Xh72tupjnvbxr8
	6xomIU/VCDhVQluHlyB5dcaEHaJc/Kk9SV7KSrFgzws0byzyGvlxUOUPH8IOHKQS
	fxwdSRpv6mfoCCMWG4TX1ZrOj2HZoUcnWa1n6r1ZFf8VrnRJ7HrJKm9yWR9gSQ3j
	INyQrLRGD8WFGcm48AS+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1665563143; x=
	1665570343; bh=nCdF6LxUb7wjK1rhEWVCAxMOJXRtBNecpAtga3Tlows=; b=k
	17oqJOiPDruhmoP021u2afRGAaGwPSPpWhLYpiJHbhnOti+PBTEzJML/6uq0mym3
	MkAu8uF/H8K1MRY11lxapq1Yf0QcgFfCnN8xGwAbhP7rpMYAk0I+mnssR3k8FlRU
	52SBiF6CbxnBFaXkQvHM/1flnuCOUrV8H+sJ4GPcHo/lJjI+Y6vrO0gfqQcyKsOL
	8hhjWUPgDc5EYjo9lX9jjQ6kxbJiWmzHwaaj4s5ONweWVs8p9abN+CPMcINuVoJt
	YJJdTv6GBzRkoqz5FmMaYX90rGgQGcCGjGV65oRgtbV9AIiXxZAcUvvMTMMjcQRK
	dYUXxGbpzyiz59MStSU5Q==
X-ME-Sender: <xms:BXpGYwjfY1cjLlmjaksLx7V3BA02B9FVcU9I9CaljZXOtbt9cfZWEA>
    <xme:BXpGY5BCPcMczaRcVI1xDoxxuKCQnp3g8SBI7ZPkfWKSrloW4BoKVKz1aLfsQ7aNg
    hX6ZpETwi0AB0FYju8>
X-ME-Received: <xmr:BXpGY4EPA19oXbNW62jZ3U9VD2SPShrpi6tjIO9oQLQPmWveJMfA1rzvYyBZhT03QHQp6c4Gk2h0s6i-zh_eH9E5xaabFm7bJsts>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeejkedgtdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggugfgjsehtqhertddttddvnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnheptefhtedtheevleehfefgjefhgeeluddtkedtgeekudekgfegveeuhfdt
    jeffhfetnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpkhgvrhhnvghltghirdhorh
    hgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgr
    gihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:BnpGYxTsCqIfgouDi_59yw7HxrBmmPLYa7plozBnwZfVn8gfaWA7tQ>
    <xmx:BnpGY9xAdAWDbjgjwXhnXHeSFUI6StwT1yj1yATAr9MHr5RVdR6eXw>
    <xmx:BnpGY_7he9gdCEnr7cxBZuEgbibik1ovm2AkSMzBowTfBn9Qg-G2Dg>
    <xmx:B3pGYyjGFIoIlV3wiuP7WrPyrq3vKlnu_So-_TZBK6B6JWdTrv8K2g>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Oct 2022 04:25:41 -0400 (EDT)
Date: Wed, 12 Oct 2022 10:25:38 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Brown <broonie@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	kernelci-results@groups.io, bot@kernelci.org, gtucker@collabora.com,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Naresh Kamboju <naresh.kamboju@linaro.org>,
	Linux Kernel Functional Testing <lkft@linaro.org>,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: next/master bisection: baseline.login on rk3328-rock64
Message-ID: <20221012082538.oraby66smwwdiasa@houat>
References: <634095b3.a70a0220.ad568.42a8@mx.google.com>
 <Y0QNSx+ZgqKSvPOC@sirena.org.uk>
 <20221010145010.ibodo56smlokfouu@houat>
 <Y0Q87tddypPtzZB3@sirena.org.uk>
 <20221011121316.auoi4rs5werw6won@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221011121316.auoi4rs5werw6won@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_012547_427246_954D1C36 
X-CRM114-Status: GOOD (  20.94  )
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

On Tue, Oct 11, 2022 at 02:13:16PM +0200, Maxime Ripard wrote:
> On Mon, Oct 10, 2022 at 04:40:30PM +0100, Mark Brown wrote:
> > On Mon, Oct 10, 2022 at 04:50:10PM +0200, Maxime Ripard wrote:
> > > On Mon, Oct 10, 2022 at 01:17:15PM +0100, Mark Brown wrote:
> > > > On Fri, Oct 07, 2022 at 02:10:11PM -0700, KernelCI bot wrote:
> > 
> > > > The KernelCI bisection bot found a boot problem on today's -next 
> > > > on rk3328-rock64 with a defconfig plus debug fragments triggered by
> > > > cb1b1dd96241f ("clk: Set req_rate on reparenting").  The log doesn't
> > 
> > > Thanks for the report
> > 
> > > It might be related to https://lore.kernel.org/linux-clk/0acc7217-762c-7c0d-45a0-55c384824ce4@samsung.com/
> > 
> > > I've sent a series that might address this issue:
> > 
> > > https://lore.kernel.org/linux-clk/20221010-rpi-clk-fixes-again-v1-0-d87ba82ac404@cerno.tech/
> > 
> > > Let me know if it fixes things for you
> > 
> > Unfortunately I can't schedule tests directly, the board is in the
> > Baylibre lab so I've CCed Corentan and Kevin who might be able to help.
> > You should be able to see results via KernelCI for any tree that's
> > included and runs the debug builds (including -next).
> 
> Stephen merged them yesterday in clk-next, but it looks like they didn't
> make it into next-20221011. We should see the results soon enough.

It looks like it's fixed with next-20221012:
https://storage.kernelci.org/next/master/next-20221012/arm64/defconfig+debug/gcc-10/lab-baylibre/baseline-rk3328-rock64.html

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
