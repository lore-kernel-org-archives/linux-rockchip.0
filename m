Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A07FC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 21:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0zLhHSkoR6BnsGb2FAI8qHO4GeiaPcb4QZm20W2+tKA=; b=L8T8vUPb6x1zZ5
	WzX0h2zjwFZ9y2pV/6tvkCo6nkZArHNzMvCgKzi/hMCFyRtPvX3PGp7HMPnRgxPsvYkB2aQ7R3Y9D
	eSEtueQ+Z+d0RSbbEtWBuq6ilqeFCvPdIlTWJkDD3aoU+UnWOdtoKykpVoreU7/f1dGs25wHxIW3U
	yM8TBRo274edyAr6iTMoU/Ce5hwuFr0wnlJOhFcONViheE3H5/dqTgGlR+bd9EFv77xQYUz6hI5Vv
	7Z3udoBetGPP//12SsvldmVZ5YasRcud4Ef7GGVs0fSlz5LwZG6tZfSyoIvXRSULYO8spiPMQfEpK
	3QypSL2652bdiVHlN2rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9wD-00CmGk-2C;
	Tue, 12 Dec 2023 21:05:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9wA-00CmFk-2w
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Dec 2023 21:05:08 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9w2-0006qK-SQ; Tue, 12 Dec 2023 22:04:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.8 #1
Date: Tue, 12 Dec 2023 22:04:58 +0100
Message-ID: <2913962.e9J7NaK4W3@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_130506_948930_40E75829 
X-CRM114-Status: UNSURE (   6.68  )
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

please find below a pull-request with some small Rockchip stuff.

Please pull.

Thanks
Heiko


The following changes since commit b85ea95d086471afb4ad062012a4d73cd328fa86:

  Linux 6.7-rc1 (2023-11-12 16:19:07 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.8-rockchip-clk1

for you to fetch changes up to 721bf080f249ab2adcc4337abe164230bfb8594f:

  clk: rockchip: rk3568: Mark pclk_usb as critical (2023-12-05 10:45:55 +0100)

----------------------------------------------------------------
Two new pll rates and an additional critical clock on rk3568.

----------------------------------------------------------------
Chris Morgan (3):
      clk: rockchip: rk3568: Add PLL rate for 115.2MHz
      clk: rockchip: rk3568: Add PLL rate for 126.4MHz
      clk: rockchip: rk3568: Mark pclk_usb as critical

 drivers/clk/rockchip/clk-rk3568.c | 3 +++
 1 file changed, 3 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
