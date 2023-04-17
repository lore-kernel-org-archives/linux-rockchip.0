Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F6B7C77B75
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 23:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8/QJ59ihLB+hSWxzLqDlk53L7vdnqQKRZFwjTYDIp8=; b=wImxQIa0vVqi1e
	f3okLM6VPJA3JOpiTCeZa5tYwJT4MYjMB5tZBh5MfdmnGGyeXl/l1067B1tTcbpeLPLkP7eoqOeml
	EVDO09zZop2l8yDYOYCAcidN9E+E2LROr1Z8nMU43fPEE202MDgVsuY5I4tg8ZYJ8eM/Gf15ej8pw
	nZH9Lc7J7pvB9srQ7XkGp3oxucJcMlsVPOAt/3mpOVP56aDC5+AfKc299gZyYS6mcfP97zv1CSZ+L
	XpUwrpohC7GH72Nfn2TmYlqBrDj4xHGEtQMHt9Qez89vq77FwZEctTh5YywDACipsXDawFZgp8w6N
	tuYUX6qGuQhbWOlxcAjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poY6v-000NZB-02;
	Mon, 17 Apr 2023 23:18:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poY6s-000NYa-2q;
	Mon, 17 Apr 2023 23:18:12 +0000
Received: from [77.22.52.211] (helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poY6o-0007Ri-7z; Tue, 18 Apr 2023 01:18:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	kernel@collabora.com,
	Peter Geis <pgwipeout@gmail.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-clk@vger.kernel.org
Subject: Re: (subset) [PATCHv2 0/2] Improve RK3588 clocks and power domains support
Date: Tue, 18 Apr 2023 01:18:04 +0200
Message-Id: <168177346834.4012366.5864006914556584984.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230403193250.108693-1-sebastian.reichel@collabora.com>
References: <20230403193250.108693-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_161810_938464_FC1FAF8F 
X-CRM114-Status: GOOD (  11.10  )
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

On Mon, 3 Apr 2023 21:32:48 +0200, Sebastian Reichel wrote:
> After this patchset the power-domain support for RK3588 is basically on par
> with the downstream implementation. More importantly the clock controller
> change unblocks support for any IP blocks using linked clocks. The clock
> controller change must be applied before the power-domain change to avoid
> accessing unclocked registers.
> 
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20230331163058.5688-1-sebastian.reichel@collabora.com/
>  * Replace dsb(sy) with wmb() to fix COMPILE_TEST build on !arm64; direct replacement
>    would be mb(), but write memory barrier should be enough here as far as I can tell
>  * Added Tested-by from Vincent Legoll
> 
> [...]

Applied, thanks!

[1/2] clk: rockchip: rk3588: make gate linked clocks ignore unused
      commit: 64042c28c3bb6729df8e2fda89bc7ebbe3790907

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
