Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PULL_REQUEST,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FC16C4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 22:20:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF95F2065E
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 22:20:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="B4L7rgnT"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF95F2065E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oIcaR+jSOxk1Ka3AwJRZtRnWfw4Ay+42sHl0/UVLBhw=; b=B4L7rgnTISgbbRCwhyHhC4wdBG
	/hppXUhVx6xAJH0VyfNgqfj4JMMwXNzLK+D9V5USaW5lSvjVRWvmN+aCOMVm482GAVK8/9lXsN2tX
	L9QIXNppIXOq/kLRkc46YqmQ8B+znJQP7dXDxMeMwofwaueoDF3q2hfXohIC1sws2IooAWliPHhT0
	HSRrh0IkI+Bi3t28WLn3ulJunAkOOyQnOvdKyAjWd7JcFfjIkaa89c2KuDDIc7ghR1sTSxH+CiEVt
	kdyNTXvdtsspWHCrA0C4Le7c2deR2jxal/whzZM+W3KlRStDlJi3Y10ztuTmhi19CbCLkgX9HPJVz
	N2LfZpUA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLD80-0002eO-Iz; Wed, 23 Sep 2020 22:20:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLD7y-0002dn-3B
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 22:20:43 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kLD7v-0001h5-0F; Thu, 24 Sep 2020 00:20:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] Rockchip clock changes for 5.10
Date: Thu, 24 Sep 2020 00:20:38 +0200
Message-ID: <2431097.4Q4uIW3KjO@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_182042_140386_C9FA0EBE 
X-CRM114-Status: GOOD (  12.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mike, Stephen,

please find below Rockchip clock changes for 5.10
I gave the module rework a spin in a number of different Rockchip socs
and all were happy so far.


Please pull, thanks
Heiko


The following changes since commit 9123e3a74ec7b934a4a099e98af6a61c2f80bbf5:

  Linux 5.9-rc1 (2020-08-16 13:04:57 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.10-rockchip-clk1

for you to fetch changes up to 70d839e2761d22eba6facdb3b65faea4d57f355d:

  clk: rockchip: rk3399: Support module build (2020-09-22 15:16:54 +0200)

----------------------------------------------------------------
Ability to build the clock driver as module and removal
of an unused parent-names struct.

----------------------------------------------------------------
Elaine Zhang (6):
      clk: rockchip: Use clk_hw_register_composite instead of clk_register_composite calls
      clk: rockchip: Export rockchip_clk_register_ddrclk()
      clk: rockchip: Export rockchip_register_softrst()
      clk: rockchip: Export some clock common APIs for module drivers
      clk: rockchip: fix the clk config to support module build
      clk: rockchip: rk3399: Support module build

Krzysztof Kozlowski (1):
      clk: rockchip: rk3308: drop unused mux_timer_src_p

 drivers/clk/Kconfig                     |   1 +
 drivers/clk/rockchip/Kconfig            |  78 ++++++++++++++++++++++
 drivers/clk/rockchip/Makefile           |  42 ++++++------
 drivers/clk/rockchip/clk-ddr.c          |   1 +
 drivers/clk/rockchip/clk-half-divider.c |  18 ++---
 drivers/clk/rockchip/clk-rk3308.c       |   1 -
 drivers/clk/rockchip/clk-rk3399.c       |  56 ++++++++++++++++
 drivers/clk/rockchip/clk.c              | 113 +++++++++++++++++---------------
 drivers/clk/rockchip/softrst.c          |   7 +-
 9 files changed, 232 insertions(+), 85 deletions(-)
 create mode 100644 drivers/clk/rockchip/Kconfig




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
