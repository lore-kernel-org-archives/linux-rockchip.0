Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B3D8CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 07:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iTqFgiRkm5kaWJFRkNia9RXvqBI9bieja0SGUwNWKyE=; b=LnY7lUsm5gSu/o
	LTH1ysBSzehyzyTiT5Jb3UWJBm+8wJkMJE4lO29Ykk2KvQz8xtS1BhYc1d7jKak5lMg6otxMnKlV5
	b3gh9aFi7DUQsWMHSzTnCtHqNaWWYAX7KfTl9SDkQ0M6sHhx3XJQR0BykigO8VwA1xJIGnC9Wjrgr
	moz3eGOzb3f77C8ruMvEAKKZTuGwFr+VxW78yjLOtDKCjYNWWmBOA6angagSue3fR3iQhGsNILj43
	CC/IbE6l+pPLypLO6OdvIZ2Yn9V0vvD5CsyheHvKsf93E7aKyXjFDL4zpO6W1Qug6F+asAOzgY9IF
	tLRHPDFN/CNZbWmVq8mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5X6-00000008HqC-0gtk;
	Wed, 12 Nov 2025 07:44:48 +0000
Received: from mail-m1973177.qiye.163.com ([220.197.31.77])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5X2-00000008HoK-3azL
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 07:44:46 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 294e35839;
	Wed, 12 Nov 2025 15:44:32 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] mmc: sdhci-of-dwcmshc: Disable internal clock auto gate for Rockchip SOCs
Date: Wed, 12 Nov 2025 15:44:19 +0800
Message-Id: <1762933460-204066-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a7705fc4409cckunm8f73707313c85a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ05PS1ZCGEhCThgdSk8fT01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=MEojOPY5t5IOHQKfAUdMm/Y4HVAF/I+5HXm7HevuM2qYTLUoaAN4BTzSmznXaq7CXltOMyGYF1J/+3ASM/x/4KnnybHmP0KKePUgQwEJfrtZblfr92LY6CoYgzKGmx57B4pfKkKx0K77ufQslDJKkds3Wz61oNmoHadZyNI7UxI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=zRbfAm65IZ20BrBgT0gB8jiEvce6GcYJAghk2mnfg6I=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_234445_366365_AAB6EF5B 
X-CRM114-Status: GOOD (  10.45  )
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

Enabling CMDQ support can lead to random occurrences of the error log when
there are RPMB access and data flush executed:

"mmc2: Timeout waiting for hardware interrupt."

Enabling CMDQ and then issuing a DCMD as the final command before disabling
it causes the eMMC controller to auto-gate its internal clock. Chip simulation
shows this results in a state machine mismatch after CMDQ mode exit, triggering
data-timeout errors for all subsequent read and write operations.

Therefore, the auto-clock-gate function must be disabled whenever CMDQ is
enabled.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/sdhci-of-dwcmshc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index c66a8df..e276a4e 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -713,10 +713,11 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 
 	sdhci_set_clock(host, clock);
 
-	/* Disable cmd conflict check */
+	/* Disable cmd conflict check and internal clock gate */
 	reg = dwc_priv->vendor_specific_area1 + DWCMSHC_HOST_CTRL3;
 	extra = sdhci_readl(host, reg);
 	extra &= ~BIT(0);
+	extra |= BIT(4);
 	sdhci_writel(host, extra, reg);
 
 	if (clock <= 52000000) {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
