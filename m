Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8681C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 00:51:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE36764E56
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 00:51:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE36764E56
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ru7YVXvsumd30zecod2BVLVZZWi05GMRT2uP41qobV0=; b=inoYrqnQ0yWSW3PJdigsB4Wl6L
	Q+O0PTXWgKv1fS5sWEl34I/GQtXz2fyUE13u+oCkuADw+KX2S4QVPylccz8G42DQ1j/iGwLf8JbKY
	I5gK7N2igDPwTusfQd30mNdOCF9WQVaf1aF8zkiPoR6hkpdBRsw2ggIPq0YaAStiG6hBY+/ukHYPK
	rLWS5tnCtViGn92DGkubZeRBLCXjh+u3V3g2BOIgH8FRQtj+mVy7QVLOYLwnR1/ntyM5j/1eIXnn8
	u4VeciJUXIUYhLr6DrKeoaEqt5fDHM3ELINvS3QpIrPUOlgoyQ6h9OpMqahfffL15OZX5MVF1YTS3
	rSIEXvMQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l8ulX-0003IL-Nj; Mon, 08 Feb 2021 00:50:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l8ulW-0003Hi-0j
 for linux-rockchip@lists.infradead.org; Mon, 08 Feb 2021 00:50:58 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l8ulN-0006cH-UM; Mon, 08 Feb 2021 01:50:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Subject: [GIT PULL] Rockchip clock changes for 5.12
Date: Mon, 08 Feb 2021 01:50:45 +0100
Message-ID: <3091603.aeNJFYEL58@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210207_195058_119512_7DCF3691 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

please find below Rockchip clock changes for 5.12

Please pull, thanks
Heiko

The following changes since commit 5c8fe583cce542aa0b84adc939ce85293de36e5e:

  Linux 5.11-rc1 (2020-12-27 15:30:22 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.12-rockchip-clk1

for you to fetch changes up to 4bc23b3c83c9a3fc0a7dd8f2f11f451aa92c85cd:

  clk: rockchip: fix DPHY gate locations on rk3368 (2021-02-06 01:05:04 +0100)

----------------------------------------------------------------
Kerneldoc fixes and some new rk3368 clock ids related to
camera input.

----------------------------------------------------------------
Heiko Stuebner (5):
      clk: rockchip: add clock ids for PCLK_DPHYRX and PCLK_DPHYTX0 on rk3368
      clk: rockchip: use clock ids for PCLK_DPHYRX and PCLK_DPHYTX0 on rk3368
      clk: rockchip: add clock id for SCLK_VIP_OUT on rk3368
      clk: rockchip: use clock id for SCLK_VIP_OUT on rk3368
      clk: rockchip: fix DPHY gate locations on rk3368

Lee Jones (4):
      clk: rockchip: Demote non-conformant kernel-doc headers in main clock code
      clk: rockchip: Remove unused/undocumented struct members from clk-cpu
      clk: rockchip: Demote kernel-doc abuses to standard comment blocks in plls
      clk: rockchip: Demote non-conformant kernel-doc header in half-divider

 drivers/clk/rockchip/clk-cpu.c          | 4 ----
 drivers/clk/rockchip/clk-half-divider.c | 2 +-
 drivers/clk/rockchip/clk-pll.c          | 6 +++---
 drivers/clk/rockchip/clk-rk3368.c       | 6 +++---
 drivers/clk/rockchip/clk.c              | 4 ++--
 include/dt-bindings/clock/rk3368-cru.h  | 3 +++
 6 files changed, 12 insertions(+), 13 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
