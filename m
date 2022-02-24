Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABE4C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 22:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NadtuOEOQEfRp1apPFMriMgSN83v2CbJmrGH3ZdW8Eo=; b=FE1bxFgvA6lGC7
	lS74hWhV90sj/IW/iF1OdflVtL+pq5KEG/Pc8pWjHAihZfVrhowpY4Mw0/XidRKXA1xDipJg5HRF2
	ToX8m0Mus4ZjwG31wBLXJk7DheSBM8gCwjcPuosIlQUiOkdJGPsU4xNbZtr3FJOf+raj+bCqUpv8Y
	vbYpV9Ng31qqbShrioSTIJvdtamKPYij1a4n9l/XkPpKCDnl95HswADH3SaZg6rBm7iEzBv8iuz0Y
	7PmoVvUmterOQWTqMJSZchz1Rg36Oyo+EXjD0csPE7fkYkqY7z/hc6gUrsWrIEZLXVYgBYrBYSQgg
	1X+/eMXkSOnX88N4x9nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNMmm-002Zdt-Lf; Thu, 24 Feb 2022 22:40:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNMmj-002Zcx-L3
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 22:40:31 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nNMmd-00042X-Cg; Thu, 24 Feb 2022 23:40:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 5.18
Date: Thu, 24 Feb 2022 23:40:21 +0100
Message-ID: <5797913.TNu9mpgMAd@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_144029_725582_9D8016C1 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

please find below some Rockchip clock changes for 5.18

Please pull, thanks
Heiko

The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.18-rockchip-clk1

for you to fetch changes up to 10b74af310735860510a533433b1d3ab2e05a138:

  clk: rockchip: re-add rational best approximation algorithm to the fractional divider (2022-02-24 00:07:16 +0100)

----------------------------------------------------------------
Improve the clocks for the rk3568 display outputs (parenting, pll-rates),
use of_device_get_match_data() instead of open-coding on rk3568
and reintroduce the expected fractional-divider behaviour that disappeared
with the addition of CLK_FRAC_DIVIDER_POWER_OF_TWO_PS.

----------------------------------------------------------------
Minghao Chi (CGEL ZTE) (1):
      clk/rockchip: Use of_device_get_match_data()

Quentin Schulz (1):
      clk: rockchip: re-add rational best approximation algorithm to the fractional divider

Sascha Hauer (3):
      clk: rockchip: Add more PLL rates for rk3568
      clk: rockchip: drop CLK_SET_RATE_PARENT from dclk_vop* on rk3568
      clk: rockchip: Add CLK_SET_RATE_PARENT to the HDMI reference clock on rk3568

 drivers/clk/rockchip/clk-rk3568.c | 20 ++++++++++++--------
 drivers/clk/rockchip/clk.c        |  3 +++
 2 files changed, 15 insertions(+), 8 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
