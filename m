Return-Path: <SRS0=GbX+=LO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04657C48BDF
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jun 2021 22:32:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5893961164
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jun 2021 22:32:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5893961164
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jlLNQJSyf84DIH1zIZH/KVyqIXilLgNhKZrA0Y5E1Tc=; b=oZxOLvnxiw348x
	t4tNWYDovxVOIraydGE6mLjf6sMb6tQX3G0uaRbU0+OMzhjiF9klcC5Jn/MyJd4BHapMcn2b6n+yH
	TX+r96wLoscrnCB7lLBZxF+5ShDlosdLMGDbwDk0Hyix9FukK3qheYgmHaAPFoJ9WS/xQYQlU1EfB
	TJexE6yaZoTFzvyZ96VZax+A0cXC3cHgyvGkGo5DP9YrippXFe/OO6KAx/M7b3tx6F79yUAOwjn49
	JwAfXmWNXWfrC8ip+W1/5pVJnVnTAIsEjHRHQY4uY0GefFtqr5PiPtuUGxTNnBJm0cH+YuUFukaZ3
	uVo5xvsg0TNt0QGwdUhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lv5yz-001gX6-VW; Sun, 20 Jun 2021 22:32:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lv5yx-001gWY-6o
 for linux-rockchip@lists.infradead.org; Sun, 20 Jun 2021 22:32:00 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lv5yq-0005VB-Mv; Mon, 21 Jun 2021 00:31:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 5.14
Date: Mon, 21 Jun 2021 00:31:52 +0200
Message-ID: <4340280.LvFx2qVVIh@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_153159_300593_A3A9D7D5 
X-CRM114-Status: UNSURE (   7.46  )
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

please find below Rockchip clock changes for 5.14

Please pull, thanks
Heiko

The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:

  Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.14-rockchip-clk1

for you to fetch changes up to 2adafc0512625bbd090dc37a353ddda15d525e9d:

  clk: rockchip: export ACLK_VCODEC for RK3036 (2021-05-28 17:53:19 +0200)

----------------------------------------------------------------
Reduce memory footprint of PLL rate tables, a fix for the newly
added rk3568 clk driver and an exported clock for the
newly added video decoder.

----------------------------------------------------------------
Alex Bee (1):
      clk: rockchip: export ACLK_VCODEC for RK3036

Elaine Zhang (1):
      clk: rockchip: Optimize PLL table memory usage

Peter Geis (1):
      clk: rockchip: fix rk3568 cpll clk gate bits

 drivers/clk/rockchip/clk-rk3036.c |  2 +-
 drivers/clk/rockchip/clk-rk3568.c | 10 +++++-----
 drivers/clk/rockchip/clk.h        | 29 ++++++++++++++++++-----------
 3 files changed, 24 insertions(+), 17 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
