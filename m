Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42993C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Oct 2022 12:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xac96H2QPsSB59PdIUO5USbbyNvD7UYo4yXCFUNPU1k=; b=zmtOm8JXNeRTOT
	3R4K1jy9UM5E7CeFBmIMu6RwxlOFdytxGEZJzvLI71sM/YktO5C7XB4DWjJoRUhe0ceeAdd3BA5xa
	ywOzU2SXcIej7Apm/C7YinQeLEzFI72V35zNdpxFj2fLBoco2m8a0P5Mfo1xw3c0P/XnkC3mFNglU
	MSj8MAwCiYVBBHNpjOR6Teh9rAq8Cs7oqG2XA9RTq6x2VoET9xJ+XKAoTbpu/f/bGLRBzPbv1fM7D
	R6bsmAPhDgsUXTZxrXzvWU++0HnGiPgrU4l5RUqLdwL8DVFXTJiFaCGqO+tGZO5THPac/vK/1J2tb
	4cLPa37k8DWlwKHcGJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiE8i-004BiK-LV; Tue, 11 Oct 2022 12:13:40 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiE8V-004Bez-Ex; Tue, 11 Oct 2022 12:13:29 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailnew.nyi.internal (Postfix) with ESMTP id D99A15801CF;
	Tue, 11 Oct 2022 08:13:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Tue, 11 Oct 2022 08:13:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1665490399; x=
	1665497599; bh=h+bKeu1mBzloAMDzTZ+e4Zc1Xy8rHYQ5MYO+4qVykqU=; b=C
	hmFZjLc0kdpx2Fxg7RUZmaosmON9dg4LeZlM4ejt29Kf4+vJeATQqJKup8g1Dqop
	rm/dtU7gQ/h1/g51LK7ZRhgF0np+8fUFXU4zkw7dfeyucHLwxD6jM64yMEcq5i9d
	5rV5ljzm4+9SVYf13wfBhzEOkLsPmfjuFc9p8UdpHjabU7qy/uXs9Wct9PMRfC7Z
	29BmXtd6DoCXIcCVtgMjRqflrIFsfEuE6wVINFRjWWfxciHv+NF32geD0GxG5RiW
	ZVupRYdyDcgeBjMCmZaLg6OTmn3oUq5ITZVawA3sXmAfVsf3cKb6lXNM18kcuCbg
	0s2//4uM9iuNarUjmSMjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1665490399; x=
	1665497599; bh=h+bKeu1mBzloAMDzTZ+e4Zc1Xy8rHYQ5MYO+4qVykqU=; b=B
	6b4HYO6KdSMoLv8So+hOQJJ/wDMa3AheBJ3jjmhOjGbGPCH8i5Ap3wF8dmKcowpo
	YFiR/jmcwW2OvWKE5BkAGAInvqevGP5DeWqYUI/bm0c7MVWJyPP35XW3baEh4L/M
	sxiVMrMgKuKEs/WfUu1PtCtZ10KgUKAsy38FfDjmahHb/sSC4N8Jp+yrIILvBtU8
	UoBtRWuLqlB+GKCJr96Jzel1luXLilc92BWUGy2ZIrFa3eoujZNslZVBoxlSRSPg
	9et7zdH19vwPRwpca1xgXZ4ggBXRY6pMtzWc8syWVdrgmghrQFzjba4M51uGcOpW
	G2cDW0aRKDK8g6kGg6ThQ==
X-ME-Sender: <xms:3l1FY9hLGkcNGvwu-soOD5Sf3RrQQhnF6VKAnzq2bvNmLfnCUT_L1w>
    <xme:3l1FYyB3bGnKQMzfTnQFyn4JPVmlkMtjKvyZlKt2zc_H8r7WByfPv9NuYRKOD-Ede
    WPJ8IhoazJ_bCc_Xe0>
X-ME-Received: <xmr:3l1FY9HQFd8nnCQDhLsCf0V2Q2E9o8qQBWBAuybXPhxlLdKYayEkE4w96nwW>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeejiedggeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggugfgjsehtqhertddttddvnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnhepiedtueffveeiueeftdduvdffffffgeffgfekiefhleelkedtlefhvefh
    udduhffgnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiii
    gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgv
    tghh
X-ME-Proxy: <xmx:311FYyQbdZm_oCNeO7hfsEd1Xnah5-vgc6fM2kU8kCGW15qR76MhrQ>
    <xmx:311FY6yqsgYw0xpF_OhkrL9r_fcQPplJ__hljQ1tyLWSniUVgIs3kA>
    <xmx:311FY47P3150M-CDPQq-D49-8PEk-3hbaY5T2LuRC0SUHt7HDDSYyw>
    <xmx:311FY3hvsqHFMgnaqb28HSoXFL5WEwf-b3A5WMHzV7gqWvY_p-32tg>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 11 Oct 2022 08:13:18 -0400 (EDT)
Date: Tue, 11 Oct 2022 14:13:16 +0200
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
Message-ID: <20221011121316.auoi4rs5werw6won@houat>
References: <634095b3.a70a0220.ad568.42a8@mx.google.com>
 <Y0QNSx+ZgqKSvPOC@sirena.org.uk>
 <20221010145010.ibodo56smlokfouu@houat>
 <Y0Q87tddypPtzZB3@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y0Q87tddypPtzZB3@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_051328_403744_37317273 
X-CRM114-Status: GOOD (  17.58  )
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

On Mon, Oct 10, 2022 at 04:40:30PM +0100, Mark Brown wrote:
> On Mon, Oct 10, 2022 at 04:50:10PM +0200, Maxime Ripard wrote:
> > On Mon, Oct 10, 2022 at 01:17:15PM +0100, Mark Brown wrote:
> > > On Fri, Oct 07, 2022 at 02:10:11PM -0700, KernelCI bot wrote:
> 
> > > The KernelCI bisection bot found a boot problem on today's -next 
> > > on rk3328-rock64 with a defconfig plus debug fragments triggered by
> > > cb1b1dd96241f ("clk: Set req_rate on reparenting").  The log doesn't
> 
> > Thanks for the report
> 
> > It might be related to https://lore.kernel.org/linux-clk/0acc7217-762c-7c0d-45a0-55c384824ce4@samsung.com/
> 
> > I've sent a series that might address this issue:
> 
> > https://lore.kernel.org/linux-clk/20221010-rpi-clk-fixes-again-v1-0-d87ba82ac404@cerno.tech/
> 
> > Let me know if it fixes things for you
> 
> Unfortunately I can't schedule tests directly, the board is in the
> Baylibre lab so I've CCed Corentan and Kevin who might be able to help.
> You should be able to see results via KernelCI for any tree that's
> included and runs the debug builds (including -next).

Stephen merged them yesterday in clk-next, but it looks like they didn't
make it into next-20221011. We should see the results soon enough.

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
