Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18679C54E41
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 08:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k37Fx0f7pIKhO5MgpFdsJmD7pKutAN391bLV05lvEnk=; b=kY2keCKD/SGjwt
	J51Qi6yOF9AjeSPmXN0Mn0nVBcLG13SgQt8G91z3wSVCo/IxJWTpZa2lqjPEln6TQc9T3QSm/yhJi
	cQH6YB0gkbDOhePHaBYOLB2QIZXHRrO95ddjgrJadeMxno8dAf6P2ODIZ60ASJjUdBZFPCMQW6uWy
	lG1eo9koYAZXdU+bbTTUbNiCoA2dmtDjhLMlr/xTyJONuRKmvW84+4/CdkdHxb5wSdvOLagSSVPST
	pn9uytwLTR5vn021Bcrx3B1vtY8L6+TPnAHp2Rs7nyLK1wCph+JrPXmjFH62Ap9BaWDjPOLqGcwOS
	A26OKvCtL+1rIz4ZT+Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfFNZ-00000008UJB-1i2G;
	Wed, 28 Feb 2024 08:33:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfFNW-00000008UI1-2tyl
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Feb 2024 08:33:27 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfFNO-0007e7-0U; Wed, 28 Feb 2024 09:33:18 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.9 #1
Date: Wed, 28 Feb 2024 09:33:17 +0100
Message-ID: <4130821.6PsWsQAL7t@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_003326_763338_89DE80B8 
X-CRM114-Status: GOOD (  12.73  )
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

please find below a pull-request with some Rockchip clock changes for 6.9

I guess the most interesting change is the removal of the CLK_NR_CLKS
constant from the rk3588 binding. While it was nice to define the upper
limit of clocks for array-search purposes, it was noted that changing this
when adding new clocks actually breaks the ABI.

Thankfully Sebastian invested the time to find a solution to not need that
constant in the driver anymore.

That change also got the needed review by dt-maintainers and people
also checked the usage in i.e. u-boot, so it's better to do this now than
later :-) .


Please pull.

Thanks
Heiko


The following changes since commit 6613476e225e090cc9aad49be7fa504e290dd33d:

  Linux 6.8-rc1 (2024-01-21 14:11:32 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.9-rockchip-clk1

for you to fetch changes up to 1361d75503fccc0e6b3ecbcd5bb53bbdfdc52f0a:

  clk: rockchip: rk3399: Allow to set rate of clk_i2s0_frac's parent (2024-02-27 23:45:53 +0100)

----------------------------------------------------------------
New pll-rate for rk3568, i2s rate improvements for rk3399,
rk3588 syscon clock fixes and removal of overall clock-number
from the rk3588 binding header and a prerequisite for later
improvements to the rk3588 linked clocks.

----------------------------------------------------------------
Chris Morgan (1):
      clk: rockchip: rk3568: Add PLL rate for 128MHz

Heiko Stuebner (1):
      Merge branch 'v6.9-shared/clkids' into v6.9-clk/next

Ondrej Jirman (1):
      clk: rockchip: rk3399: Allow to set rate of clk_i2s0_frac's parent

Sebastian Reichel (6):
      clk: rockchip: rk3588: fix CLK_NR_CLKS usage
      dt-bindings: clock: rk3588: drop CLK_NR_CLKS
      dt-bindings: clock: rk3588: add missing PCLK_VO1GRF
      clk: rockchip: rk3588: fix pclk_vo0grf and pclk_vo1grf
      clk: rockchip: rk3588: fix indent
      clk: rockchip: rk3588: use linked clock ID for GATE_LINK

 drivers/clk/rockchip/clk-rk3399.c               |  6 +--
 drivers/clk/rockchip/clk-rk3568.c               |  1 +
 drivers/clk/rockchip/clk-rk3588.c               | 55 +++++++++++++------------
 drivers/clk/rockchip/clk.c                      | 17 ++++++++
 drivers/clk/rockchip/clk.h                      |  2 +
 include/dt-bindings/clock/rockchip,rk3588-cru.h |  3 +-
 6 files changed, 52 insertions(+), 32 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
