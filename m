Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE486C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 19:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ekkZ03CwE1cwoYk1GyCrHpNR3EH8CMEGVIz72sxE80o=; b=G+xTu4oc4lr33E
	Fq5oHIxNfL6O2IkUZCDTj5qiOS+cfhPwvFSxstW4I/S75flHholtxT/euOyND3q7ErwHdxH4swraV
	57VYr4fzTKjZSXCpo2aCCfUi1z8XFa725DpfAsXnWjzEz3iNAXKpbOnYTW3MR+DpDHwW9RciOvedP
	HsbJE8T60K8aDSrlfCaCMkJgNNnB/w6dpSIM6n4wQyVpnsTkly+OfHBELdSmdy05fkccoMTTB7FF0
	aYoxbjYqrvJNlGIXev8adiTdHX0G1Jfvj6/makVmeUmDBFlop4JYYiWPnB6/L/8cDKna0fnT4WUj+
	savO40AZpV76wkv8Ek6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPRy5-0000000EFky-1qVB;
	Thu, 04 Jul 2024 19:18:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPRy2-0000000EFkX-3uiS
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 19:18:08 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPRxv-00062i-LP; Thu, 04 Jul 2024 21:17:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.11 #1
Date: Thu, 04 Jul 2024 21:17:58 +0200
Message-ID: <8961259.VV5PYv0bhD@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_121807_005348_CE9A1AD8 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
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

Hi Mike, Stephen,

please find below a pull-request with some Rockchip clock changes for 6.11

Nothing really stands out, it's just some small changes.

Please pull.

Thanks
Heiko


The following changes since commit 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0:

  Linux 6.10-rc1 (2024-05-26 15:20:12 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.11-rockchip-clk1

for you to fetch changes up to d89e8096957e35742c9922d3f6628f24de0d6163:

  dt-bindings: clock: rk3188-cru-common: remove CLK_NR_CLKS (2024-07-04 19:48:31 +0200)

----------------------------------------------------------------
More exported clocks for rk3128 peripherals, conversion to kmemduo_array
for clock controllers and both rk3128 and rk3188 drop the CLK_NR_CLKS
from their dt-binding header, where it does not belong.

----------------------------------------------------------------
Alex Bee (7):
      dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
      clk: rockchip: rk3128: Export PCLK_MIPIPHY
      clk: rockchip: rk3128: Add hclk_vio_h2p to critical clocks
      clk: rockchip: rk3128: Drop CLK_NR_CLKS usage
      dt-bindings: clock: rk3128: Drop CLK_NR_CLKS
      dt-bindings: clock: rk3128: Add HCLK_SFC
      clk: rockchip: rk3128: Add HCLK_SFC

Andy Shevchenko (1):
      clk: rockchip: Switch to use kmemdup_array()

Heiko Stuebner (1):
      Merge branch 'v6.11-shared/clkids' into v6.11-clk/next

Johan Jonker (2):
      clk: rockchip: rk3188: Drop CLK_NR_CLKS usage
      dt-bindings: clock: rk3188-cru-common: remove CLK_NR_CLKS

 drivers/clk/rockchip/clk-cpu.c                |  5 ++---
 drivers/clk/rockchip/clk-pll.c                |  8 ++++----
 drivers/clk/rockchip/clk-rk3128.c             | 24 +++++++++++++++++++-----
 drivers/clk/rockchip/clk-rk3188.c             | 18 ++++++++++++++----
 include/dt-bindings/clock/rk3128-cru.h        |  4 ++--
 include/dt-bindings/clock/rk3188-cru-common.h |  2 --
 6 files changed, 41 insertions(+), 20 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
