Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18553C77B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 12:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuLbK7jXxX5czqmxYHlSzGu/I4gqsK3siToxYERTxJM=; b=Rrj5aWsDTMDyFu
	iBisIyrkH19lE8bdiZYuYQjIvsV9kjmmdmU9IhAccWe+qP515uOBEeZ0rGD2/ajt9l+4sOZnriYsZ
	Vpl831+0QYOjk99IbsscKraIwFjiwkXS0J1V/aBbTZbwgP3NryPMEwr2EO05Dtvsyzd3WWHfr3qb+
	a88tE2UObYrwPi2adc6lH3xuT2goTJHHSDmRqI5MQQkid14CGDHTyG2D8Oh/xeXW+CwSvpriwNwug
	5SG3D4EHaYgnTjFF17RZbW0L0QUtcUCOlCmumOOPd7J2ymp0cqYDc6YhiaF/0FdY02w5dcLANYkvp
	BuSyfI9upzv/kUOJbfYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppqJc-00AvC4-2a;
	Fri, 21 Apr 2023 12:56:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppqJZ-00AvA5-1I;
	Fri, 21 Apr 2023 12:56:38 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ppqJN-0002ls-Gw; Fri, 21 Apr 2023 14:56:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-kernel@vger.kernel.org,
	Boris Brezillon <boris.brezillon@collabora.com>,
	kernel@collabora.com,
	Jagan Teki <jagan@edgeble.ai>,
	linux-clk@vger.kernel.org,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>
Subject: Re: (subset) [PATCHv2 0/2] Improve RK3588 clocks and power domains support
Date: Fri, 21 Apr 2023 14:56:23 +0200
Message-Id: <168208174581.198917.16324073084344740692.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230403193250.108693-1-sebastian.reichel@collabora.com>
References: <20230403193250.108693-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_055637_469483_F53BAECD 
X-CRM114-Status: GOOD (  11.63  )
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

[2/2] soc: rockchip: power-domain: add rk3588 mem module support
      commit: 632a6b6593d5bfe9932490f8483195bbf50cbbb7

For 6.5, so this will get a rebase after 6.4-rc1.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
