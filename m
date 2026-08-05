Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC9DCC55174
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 20:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQyds0jO5XLO1pseSsWbCJNqxjJUQFRd3CVzBYY1HDQ=; b=2tXJA6U51liUy8
	XYiwoMmPPsS8TmJgXUxqCB3fDt0bCNyf+VWZC2swrpeOT7QEldjPeGU3hYQogWTcqsZSfd0Hl5RvR
	AVxQ/v+4E9ucMig+TXDOqiKP9wTJ6qaBH6tSFWdh33pU0MyQ/pJyRpAf+ESedFGmrsAyYXVyUd4Ws
	gVmUiK112Dd+17/m+mtLftHz2CCthV0SfE3U5YMF4CCOszL0oLAoCPCc115oINwjE3TQWGkwTFQjO
	gr82hBzm1127DyMR+s+1UnGqXpo86SUpK+taFcTt5W4TsgkZmwFUigkaRpvpI6nuE93Wd4LW3Opdr
	/BkPXqi0MDCMrfUl9Qbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wriiB-00000004Y9r-1wrr;
	Wed, 05 Aug 2026 20:59:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrii9-00000004Y8t-11X9;
	Wed, 05 Aug 2026 20:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=971/E5H2S2WsTVQ83jj0cYfp+Ciybhtp5GybpD0dmnI=; b=kRmyA8oxGfQsg3R/DDcROtnry4
	XoKUO1KsJPzKZ/xMHGngf56zx8kAaJ+FRqFmYvZEFWZer4xTcy5okVSGLnwz9Ks+PT0JWi4ZQW/b8
	/g/slhQ9JOl7uAFyVY5JYzDRRgDToO6RgFtH8WmjVDPdEQZs8BXyB3nkORCV49IkmNAuvFLgY/smd
	4uceg5I6IecSeybbE1DE6z0K7KSoZn8QvAaB5UOBiYiMu3Nf94JoplkjreSR6ejNwus/RtPrOX/Tm
	KsepF3tYNzgQ/5vrk6VK/mEecoHn8Gzeky8fefy49+sUdedAuB+6PddjjXuiLRVeFbr5KSXfFQHbO
	/kBo48Mg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	YouMin Chen <cym@rock-chips.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@flipper.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] clk: rockchip: rk3576: fix source muxes for SPI0..SPI4
Date: Wed,  5 Aug 2026 22:59:15 +0200
Message-ID: <178596355280.2517015.1649597472249791359.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260805-rk3576-spi-clk-v1-1-2f040d0d163b@flipper.net>
References: <20260805-rk3576-spi-clk-v1-1-2f040d0d163b@flipper.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_135937_304505_42C19A24 
X-CRM114-Status: GOOD (  10.08  )
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


On Wed, 05 Aug 2026 17:45:09 +0400, Alexey Charkov wrote:
> The TRM defines available source muxes for SPI0..SPI4 as
>  - b00: clk_gpll_div6_src
>  - b01: clk_gpll_div8_src
>  - b10: clk_cpll_div10_src
>  - b11: clk_xin_osc0_func
> 
> Which doesn't match what the current clock driver implements, making it
> impossible to derive some SPI clock rates such as 37.125 MHz (which
> requires clk_gpll_div8_src as the source mux).
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: rk3576: fix source muxes for SPI0..SPI4
      commit: 586ff159ec02533c17dd928641529cb0b52e9c62

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
