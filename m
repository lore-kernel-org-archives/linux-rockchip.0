Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 758AFC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 09:44:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 08B9161157
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 09:44:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 08B9161157
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pJaB8F3PW3HdSbPtauW6Te/t5/nygHociPK1CaKw5ZY=; b=OTSPpo7yGEXqgm
	GBY/HgPDQ/msiN//BEu3GuabR2nlL6R7HzjSSVFhoPMwlVvpt2CjXV9ceMiBRfPpYLsXsQUw7MZG4
	reFRNGN/31qQljmF9zLL8/KCUAqH3SCO/KmOzreX6KKX9R/CX54q5oLadHz0U8u9XYo+sdE6O9tvN
	TJtEvTUrP60uAQ2s/tYSnio385V17Qu0Wm8t1B0y69ynJJ8hq81PQW5HcQxZueLSS4FqxTLeKkP/8
	1aLCrMkQWEV5WvBlsAwa2afqvvkR57jjgH6CwFi3/wv1R+G7z1NF3qYj+Bt7E1vb8rLafeZE3Jguc
	NYkZ/kJ6LBwSGVbpLYgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUnBP-002Cak-3T; Mon, 27 Sep 2021 09:44:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUnBM-002CZD-V5
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 09:44:22 +0000
Received: from user91-192-32-221.grape.cz ([91.192.32.221] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1mUnBK-0002Dm-5k; Mon, 27 Sep 2021 11:44:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 5.16
Date: Mon, 27 Sep 2021 11:44:16 +0200
Message-ID: <4726255.Mh6RI2rZIc@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_024421_034049_DAD0F374 
X-CRM114-Status: UNSURE (   8.08  )
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

please find below some Rockchip clock changes for 5.16

Please pull, thanks
Heiko

The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:

  Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.16-rockchip-clk-1

for you to fetch changes up to 1da80da028fe5accb866c0d6899a292ed86bef45:

  clk: rockchip: use module_platform_driver_probe (2021-09-21 00:44:53 +0200)

----------------------------------------------------------------
Move to use module_platform_probe and enable usage
of Coresight-related clocks on rk3399.

----------------------------------------------------------------
Brian Norris (2):
      clk: rockchip: rk3399: make CPU clocks critical
      clk: rockchip: rk3399: expose PCLK_COREDBG_{B,L}

Miles Chen (1):
      clk: rockchip: use module_platform_driver_probe

 drivers/clk/rockchip/clk-rk3399.c | 17 ++++++++++-------
 drivers/clk/rockchip/clk-rk3568.c |  2 +-
 2 files changed, 11 insertions(+), 8 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
