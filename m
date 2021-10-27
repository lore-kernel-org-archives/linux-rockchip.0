Return-Path: <SRS0=/XqT=PP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BBEDC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 13:26:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BBBB960041
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 13:26:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BBBB960041
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9u3RAei4gPb4dC+mXqK4sC92V1MjHUQhQbD4pnBqew=; b=AEdLe85Ct6Tuqy
	l0adJJpAAM0k8L5idwr3cR1/iZ79z4AeF76WQ15CPaRwjZEu21WR+UqoMVSFaJ6bL+9Z3+9/N+cIf
	a/RMLF0DuIN5BGzHyp9fvwYbqjDDn2aNjed7XofxbiKGpQE+WTVNSMIJm157MnSOrBsZEzba7D+qi
	PTkb686KoMS5toBHBb/wKVE9Z99Kje3EZsf1r1uc/8RZoL6G35fWqUz0zDeNh9Z4+5uzI02WK2otZ
	3MqrdhqTpHPNmQrAZaxw12W7bLDjLOimuv5X8luDIzeaoX3mB/C5LJ1yzCqqUeOmKUxkq9hYDokN6
	CqK8iHpE6he6wRDTZzBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfiwl-004yJm-TP; Wed, 27 Oct 2021 13:26:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfiwh-004yIE-35
 for linux-rockchip@lists.infradead.org; Wed, 27 Oct 2021 13:26:24 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mfiwf-0003TD-5O; Wed, 27 Oct 2021 15:26:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: sboyd@kernel.org, kernel@esmil.dk, linux-clk@vger.kernel.org,
 mturquette@baylibre.com, heiko@sntech.de
Subject: [PATCH 1/2] Revert "clk: rockchip: use module_platform_driver_probe"
Date: Wed, 27 Oct 2021 15:26:15 +0200
Message-Id: <20211027132616.1039814-2-heiko@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211027132616.1039814-1-heiko@sntech.de>
References: <20211027132616.1039814-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_062623_158342_8F39A361 
X-CRM114-Status: GOOD (  15.44  )
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

This reverts commit 1da80da028fe5accb866c0d6899a292ed86bef45.

Reading recent discussions [0] [1], I realized this change introduces
a number of problems:

- only converting to module_platform_driver creates the issue
  with the existing __init and __initdata attributes.

  When the driver would've been built as a module, all the missing
  clock-definitions (all are initdata) should've turned up as error
  in testing suggesting that the change wasn't at all

- a clock driver is a very core component of soc bringup and making
  this able to be built as a module solely for enabling the soc vendor
  to add out of tree changes for Android implementations is not in our
  interest and also everything except a ramdisk won't probe without a
  clock controller.

  This is especially true when the changes aren't really tested and
  are merely added to move the mainline driver "out of the way".

[0] https://lwn.net/Articles/872209/
[1] https://lore.kernel.org/all/163529604399.15791.378104318036812951@swboyd.mtv.corp.google.com/

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/rockchip/clk-rk3399.c | 2 +-
 drivers/clk/rockchip/clk-rk3568.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 7924598747b6..53ed5cca335b 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1656,7 +1656,7 @@ static struct platform_driver clk_rk3399_driver = {
 		.suppress_bind_attrs = true,
 	},
 };
-module_platform_driver_probe(clk_rk3399_driver, clk_rk3399_probe);
+builtin_platform_driver_probe(clk_rk3399_driver, clk_rk3399_probe);
 
 MODULE_DESCRIPTION("Rockchip RK3399 Clock Driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 939e7079c334..75ca855e720d 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1719,7 +1719,7 @@ static struct platform_driver clk_rk3568_driver = {
 		.suppress_bind_attrs = true,
 	},
 };
-module_platform_driver_probe(clk_rk3568_driver, clk_rk3568_probe);
+builtin_platform_driver_probe(clk_rk3568_driver, clk_rk3568_probe);
 
 MODULE_DESCRIPTION("Rockchip RK3568 Clock Driver");
 MODULE_LICENSE("GPL");
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
