Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EB81C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 20:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MJX+TX+U9iDQJLaGYOcRHo4anpBZocfNxqKTf/bXyU=; b=lSh9b5plULkJWK
	GBt14E3iIWnbHONH5OMIW2CfqwQ5KLIbrEYGNYu5s5pEJ0xF1gWnAgKKPziiT8ecV5O10Y5Nk10jQ
	IRbNg34z+IUSqnkrtFdEkg8UO5YdmMCBu+SdoyreZKzqLFBfxl4pdg23H9ZMaLl+ar3KcjuANCKop
	53B/woa/49ylCAV81BEZjcdr7CS9CnmtXAfs5e0TimbWnGHVMdcNR+y7VOEpV9lAdajUNxnVzsSBn
	oNuMNS5TJEY3etIkSFLnchxDvDbw9/8i5RTPJc5nCcoLyIM4JHCR1fXPMb6sRpZAkTDtEfUmxP2Lf
	XMzLif9d4j02UupRYYfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJIzv-0000000CXKS-1Yvi;
	Mon, 17 Jun 2024 20:30:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJIzr-0000000CXHr-0KkJ;
	Mon, 17 Jun 2024 20:30:36 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJIzi-0003be-1t; Mon, 17 Jun 2024 22:30:26 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Yakir Yang <kuankuan.y@gmail.com>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH 02/13] clk: rockchip: Set parent rate for DCLK_VOP clock on RK3228
Date: Mon, 17 Jun 2024 22:30:25 +0200
Message-ID: <19757196.sIn9rWBj0N@diego>
In-Reply-To: <20240615170417.3134517-3-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
 <20240615170417.3134517-3-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_133035_692436_A9C32A6E 
X-CRM114-Status: GOOD (  12.36  )
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

Am Samstag, 15. Juni 2024, 19:03:53 CEST schrieb Jonas Karlman:
> Similar to DCLK_LCDC on RK3328, the DCLK_VOP on RK3228 is typically
> parented by the hdmiphy clk and it is expected that the DCLK_VOP and
> hdmiphy clk rate are kept in sync.
> 
> Use CLK_SET_RATE_PARENT and CLK_SET_RATE_NO_REPARENT flags, same as used
> on RK3328, to make full use of all possible supported display modes.
> 
> Fixes: 0a9d4ac08ebc ("clk: rockchip: set the clock ids for RK3228 VOP")
> Fixes: 307a2e9ac524 ("clk: rockchip: add clock controller for rk3228")
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

did your mailer have a hickup? Somehow I got patch2 (only this one)
2 times



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
