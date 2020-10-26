Return-Path: <SRS0=TxuA=EB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F93CC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 11:17:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E7E72223C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 11:17:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="QjK3k3Bh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E7E72223C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EREpf/DZ0hgozqozhtsv7pRtusIoOwoiElusn9gtEUQ=; b=QjK3k3BhencufAda4BFZafrT6Z
	/ZJopHdSUW7eQ0WT6ZSOkWLQfHPTNJcB+MW74QNyK9/KcT9JR9nb3wLFQyXe1xvhWPseedlE0htpT
	uzPn2pZCnFh/J0cMEgWmoyhiS7ocYm0Rmyyu7ZNKGnYK6zX2uo8zTvvO/ET1x4gZsO20WaROHt6V3
	vdHAt53QW0sY41jno8XK6BNas1mXH/t9pZTgUJzP2ykzZ/dEgoFgVtCewVza3XtGO0zZZMJJTptqY
	nE89mv/c9Ht1kvyCJaZACoA2YXtAlvQMgkBXGywQ6rRAkA7Mpyr2EUGUWudbvlYxGPF7tdeVl8uNb
	oczwaRTg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kX0VW-0001wD-OM; Mon, 26 Oct 2020 11:17:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kX0VG-0001oC-Ni; Mon, 26 Oct 2020 11:17:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FA69101E;
 Mon, 26 Oct 2020 04:17:28 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9CF623F719;
 Mon, 26 Oct 2020 04:17:27 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	heiko@sntech.de
Subject: [PATCH] clk: rockchip: Add appropriate arch dependencies
Date: Mon, 26 Oct 2020 11:17:20 +0000
Message-Id: <72abb0f794b8ed77e274e8ee21c22e0bd3223dfd.1603710913.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201026_071730_943669_99A02F59 
X-CRM114-Status: GOOD (  13.32  )
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
Cc: linux-rockchip@lists.infradead.org, zhangqing@rock-chips.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

There's no point offering support for 32-bit platforms to users
configuring a 64-bit kernel - and vice-versa - unless they are
explicitly interested in compile-testing.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/clk/rockchip/Kconfig | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index 47cd6c5de837..effd05032e85 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -11,67 +11,77 @@ config COMMON_CLK_ROCKCHIP
 if COMMON_CLK_ROCKCHIP
 config CLK_PX30
 	bool "Rockchip PX30 clock controller support"
+	depends on (ARM64 || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for PX30 Clock Driver.
 
 config CLK_RV110X
 	bool "Rockchip RV110x clock controller support"
+	depends on (ARM || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RV110x Clock Driver.
 
 config CLK_RK3036
 	bool "Rockchip RK3036 clock controller support"
+	depends on (ARM || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK3036 Clock Driver.
 
 config CLK_RK312X
 	bool "Rockchip RK312x clock controller support"
+	depends on (ARM || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK312x Clock Driver.
 
 config CLK_RK3188
 	bool "Rockchip RK3188 clock controller support"
+	depends on (ARM || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK3188 Clock Driver.
 
 config CLK_RK322X
 	bool "Rockchip RK322x clock controller support"
+	depends on (ARM || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK322x Clock Driver.
 
 config CLK_RK3288
 	bool "Rockchip RK3288 clock controller support"
-	depends on ARM
+	depends on (ARM || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK3288 Clock Driver.
 
 config CLK_RK3308
 	bool "Rockchip RK3308 clock controller support"
+	depends on (ARM64 || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK3308 Clock Driver.
 
 config CLK_RK3328
 	bool "Rockchip RK3328 clock controller support"
+	depends on (ARM64 || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK3328 Clock Driver.
 
 config CLK_RK3368
 	bool "Rockchip RK3368 clock controller support"
+	depends on (ARM64 || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK3368 Clock Driver.
 
 config CLK_RK3399
 	tristate "Rockchip RK3399 clock controller support"
+	depends on (ARM64 || COMPILE_TEST)
 	default y
 	help
 	  Build the driver for RK3399 Clock Driver.
-- 
2.28.0.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
