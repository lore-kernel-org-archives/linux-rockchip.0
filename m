Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7029FD1036B
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 23:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDAeWgOBg9eeNxrUfB4/DBlVLsb9Y2vFr0TGoYc3Nms=; b=nufdFm978C5y2b
	GSeEvuxr59eiLc6u8Wl9O0u3RAdGkCqvRKbUoWDqwvn6THLwch2zG5D/jMy+VNYzTonO1eRgGPjF6
	s+2nc7TN4AVT91bvRIabDX3Y735vkFcqTZ9QooTsdBgvyl70K/33yVdML2ud3uvhQnPB0nA5eEhZq
	E34/UDW2PkJy6TWBHIGHzoaqKnFNH5KOCQ4iP6auNAW00JYadxcmY1Ls/tGzE72UCHOfueyOKfDgg
	6oWBaL5yKmOIFw8Dp5jpx37ZQFJy8KT4kE4E8TdldJqhBJdCHMusur9jXgKAXuI/+yaBoiYLdaDAS
	QpWOV/EeZFZK6Io2pL9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO2R8-0000000E3hV-2AFJ;
	Tue, 25 Nov 2025 23:27:06 +0000
Received: from mail-m82218.xmail.ntesmail.com ([156.224.82.218])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vO2R5-0000000E3ge-3oz3
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 23:27:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2ae234a18;
	Wed, 26 Nov 2025 07:26:58 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/2] mmc: sdhci-of-dwcmshc: Disable internal clock auto gate for Rockchip SOCs
Date: Wed, 26 Nov 2025 07:26:39 +0800
Message-Id: <1764113200-237279-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1764113200-237279-1-git-send-email-shawn.lin@rock-chips.com>
References: <1764113200-237279-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9abd577d1209cckunm0d7ff06b4d7c0c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR8fTFYeGkwfSxhPSklLS0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZFCilqXL7q2AKpn7Cuo0ibtnmG7LmIqPV6FA4Wd3b5JSg+Z+xCtXr5aRRv3Q+gXi9EEpBO96T0EXZ+UUUPNWBYhYOnG7hYVXfZI5VOsCu1JQ4178+F19ckA4XXz5lJAQNK3CTpWfbkAIjxIN4lUiHOATGwl2oY5V0PByOirp8U4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=01MlGEe//G6BpeQK9BiOoMGUGr3i1N9jpoYUzNG2dho=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_152704_421092_792F4F4B 
X-CRM114-Status: GOOD (  11.88  )
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
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---

Changes in v2:
- rebase and add acked-by tag

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
