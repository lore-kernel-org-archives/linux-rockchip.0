Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42B43CD37B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 07:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8CgN5Ns+yK+pKBQ+yAeE3de5rppCP/gCwB9aw+ddT0=; b=TaQwB0qdMwqRIK
	s2CvoPtAJsRO0UYpN9bS/SSik6TnM+z9iSI+WobPSXitXu7/E0O+WFrI8SZMzSiZ18sXg59AGdigQ
	BNGhypPnQ/ecKfGNGQMsbQ2W1TvjFWPY5zU143GAAtT7dufN5eexVgeIa9qY8mTgXOGQFqfekIEGs
	KIbXHiWf4pDkZh1y1vp8tWvy82M2hr7BNXCFBEpWQlTn8EDarlrdx+SsIGXQ/WbQK6S1zurV60Nij
	BNcJg4B7DhFv1vZ7HjqZafrOHEJKzcsOB4MdrVOWKAarFSm/Qe85sAHtjUdBU9uW3Td6ClnOB6lnF
	kPQnBN51pMqG512hwLQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8tB-00El05-1v;
	Mon, 18 Sep 2023 07:41:49 +0000
Received: from mail-m15599.qiye.163.com ([101.71.155.99])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8t9-00EkzC-0B;
	Mon, 18 Sep 2023 07:41:48 +0000
DKIM-Signature: a=rsa-sha256;
	b=Dx/i0c+8V9/7en//12Jz5c5gBRAnA8seIFegWNqTloJQOPfPosEIAnxJ1nBsv+tCOpQGQCpkO+lYIuC78m77ZmKAjoLc/754Y4JguuMLbdU4uEus9lhZ8++WIk9IK1EHT6o4fxKHB5bOa6uEL0UmZCgFwQY0OyBrVcqhRHUdll8=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FkT1/NwLGJhJV/2v8LOqPw2GTHqfJkCBrpYsiomQWlQ=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 5EF406804E8;
	Mon, 18 Sep 2023 15:32:00 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	xxx@rock-chips.com,
	xf@rock-chips.com
Subject: [PATCH v1 8/8] clk: rockchip: fix the clk config to support module build
Date: Mon, 18 Sep 2023 15:31:51 +0800
Message-Id: <20230918073151.7660-9-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918073151.7660-1-zhangqing@rock-chips.com>
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRgZTVZKS0JISRoaHh5PHhpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa7340c5a2eb5kusn5ef406804e8
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ngg6NBw5OT1CL0oWIgwPSBMy
	QkxPFBVVSlVKTUJOS0lJSElKSE9CVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLQ003Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_004147_272825_F2BA2DEE 
X-CRM114-Status: UNSURE (   8.54  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Mark COMMON_CLK_ROCKCHIP\CONFIG_CLK_RK3399\CONFIG_CLK_RK3568\
CONFIG_CLK_RK3588 to "tristate",
to support building Rk3399\Rk3568\Rk3588 SoC clock driver as module.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/Kconfig b/drivers/clk/rockchip/Kconfig
index 9aad86925cd2..8574c2f6ecf6 100644
--- a/drivers/clk/rockchip/Kconfig
+++ b/drivers/clk/rockchip/Kconfig
@@ -2,7 +2,7 @@
 # common clock support for ROCKCHIP SoC family.
 
 config COMMON_CLK_ROCKCHIP
-	bool "Rockchip clock controller common support"
+	tristate "Rockchip clock controller common support"
 	depends on ARCH_ROCKCHIP
 	default ARCH_ROCKCHIP
 	help
@@ -87,21 +87,21 @@ config CLK_RK3368
 	  Build the driver for RK3368 Clock Driver.
 
 config CLK_RK3399
-	bool "Rockchip RK3399 clock controller support"
+	tristate "Rockchip RK3399 clock controller support"
 	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3399 Clock Driver.
 
 config CLK_RK3568
-	bool "Rockchip RK3568 clock controller support"
+	tristate "Rockchip RK3568 clock controller support"
 	depends on ARM64 || COMPILE_TEST
 	default y
 	help
 	  Build the driver for RK3568 Clock Driver.
 
 config CLK_RK3588
-	bool "Rockchip RK3588 clock controller support"
+	tristate "Rockchip RK3588 clock controller support"
 	depends on ARM64 || COMPILE_TEST
 	default y
 	help
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
