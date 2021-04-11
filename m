Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E790C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 09:42:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E794A61205
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 09:42:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E794A61205
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XhDIkffdB1+P6N56HmqwyV5G+U9SXm7fnf95RcOyvyk=; b=OE/pOB/r+1TqvdANPKRUeS0WDZ
	SwoFFztEjqXT9l43mBLXwybt9hLAzZEwiDaIQIT2tMazqVCN/IJo3ZR6T5r4zmNihan+wZ3BiFn4k
	rvCzCoAyq/GO6jhKRNqEE+3LiQBvU/fTCvCJ7r6HZLQlSiXqxy0bqalMeW4FL0wL7jQrTx7ax3zOs
	TbaO0WI1Dk8tgrRiH3zYlAZgQZXnvRtlWpiXp0O/1Du7LCaSKQbk/FOXKbbzMANYhsOXzDZLf5fTZ
	dOoewMScT1jZ9rXK7mOeDExXXM9NYNZIhE3CiA2ZWLZGfvi26KWxyY/ueiClTGZIg6I0cDVeZvLqI
	WOGL8lTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVWbg-004GOg-O5; Sun, 11 Apr 2021 09:42:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVWbf-004GOU-RW
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 09:42:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description:In-Reply-To:References;
 bh=s9TL35BU0cR+mrcCKE2ch4WQ1l/xZIMtrPxUcWm3EN8=; b=p50+WmH7mQydIvNTSrLar6NNc5
 g0f4e828sbHaV7FYLmS8BVuBVPblAcQQqRIqoiLjOXSNQCDjWFtA/xBDcouKqOLG9YOtfZDVQt3xb
 G0PnJfNDLvP3xupVgHdZNxUyrGM1RTpKIp3VM8MdzSLDWmN01XJI54VigWaaOQi5l1p0TVAXYR9UR
 dKELCoEbzDGio9ufizKpzrs42l22OhAb7nypOf6/UqwztvOPSxAtB8UecjIdYWKigx5DfEUSOsNVD
 9uZJDlbGXttGXqmuZ3vYpzc4ffJXuiFCWXTwvXJT82KGJjhucI9t4tMDnsnoQqGMcIhG1ZcVFVYi/
 YZekewwQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVWbd-005RJy-Ai
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 09:42:14 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lVWbY-00047A-2T; Sun, 11 Apr 2021 11:42:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 5.13
Date: Sun, 11 Apr 2021 11:42:05 +0200
Message-ID: <5450499.DvuYhMxLoT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_024213_397577_48FAD586 
X-CRM114-Status: UNSURE (   8.69  )
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

please find below Rockchip clock changes for 5.13

Please pull, thanks
Heiko

The following changes since commit a38fd8748464831584a19438cbb3082b5a2dab15:

  Linux 5.12-rc2 (2021-03-05 17:33:41 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.13-rockchip-clocks

for you to fetch changes up to 40f29839d8bef5aecaa772afa8e5f2ff8434b49f:

  clk: rockchip: drop MODULE_ALIAS from rk3399 clock controller (2021-03-21 11:13:30 +0100)

----------------------------------------------------------------
Support for the clock controller on the new rk3568
and some cleanups for rk3399 modularization.

----------------------------------------------------------------
Elaine Zhang (4):
      clk: rockchip: add dt-binding header for rk3568
      dt-binding: clock: Document rockchip, rk3568-cru bindings
      clk: rockchip: support more core div setting
      clk: rockchip: add clock controller for rk3568

Heiko Stuebner (2):
      clk: rockchip: drop parenthesis from ARM || COMPILE_TEST depends
      clk: rockchip: drop MODULE_ALIAS from rk3399 clock controller

 .../bindings/clock/rockchip,rk3568-cru.yaml        |   60 +
 drivers/clk/rockchip/Kconfig                       |   29 +-
 drivers/clk/rockchip/Makefile                      |    1 +
 drivers/clk/rockchip/clk-cpu.c                     |   53 +-
 drivers/clk/rockchip/clk-px30.c                    |    7 +-
 drivers/clk/rockchip/clk-rk3036.c                  |    7 +-
 drivers/clk/rockchip/clk-rk3128.c                  |    7 +-
 drivers/clk/rockchip/clk-rk3188.c                  |   14 +-
 drivers/clk/rockchip/clk-rk3228.c                  |    7 +-
 drivers/clk/rockchip/clk-rk3288.c                  |    7 +-
 drivers/clk/rockchip/clk-rk3308.c                  |    7 +-
 drivers/clk/rockchip/clk-rk3328.c                  |    7 +-
 drivers/clk/rockchip/clk-rk3368.c                  |   14 +-
 drivers/clk/rockchip/clk-rk3399.c                  |   15 +-
 drivers/clk/rockchip/clk-rk3568.c                  | 1725 ++++++++++++++++++++
 drivers/clk/rockchip/clk-rv1108.c                  |    7 +-
 drivers/clk/rockchip/clk.h                         |   54 +-
 include/dt-bindings/clock/rk3568-cru.h             |  926 +++++++++++
 18 files changed, 2857 insertions(+), 90 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3568-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3568.c
 create mode 100644 include/dt-bindings/clock/rk3568-cru.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
