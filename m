Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84107CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Nov 2025 07:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhhwJ6UfZpXWdGzT3PgEr7mGJbR8CGlGe3kQNO2ve2Q=; b=1z0APJ1YDMuw1h
	iQnMxlYK+RY7+8rJx2Xwd8vMIhYypR3ocnNs7p8Z/BjAlKEeegi7OMT//jPb2Kl6HXdlvrnfuIVA3
	HS7sSRX+x1/AKp2eIdQZaZVsIZh3O40Lgk3bfdfy2IMQ7+t+0xYwv/64Fn8Xsamu4mwnYKEzY55/6
	LIGZM9x9SZxVUyq2h2P90sBrbJwX4xOj0dyKsEEygCUZ0Ro222uAVVMS1NU/3/Hx7qkATNs5ziTV2
	pTDW2QCD+ItFW6SnThA1XB5LziJDzuj6evBX3IqQN+VagNn8L0R1nWFHMtBGIxNPecoU8RGPnkYmN
	sv2LCqBydkmm0R4VLlOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5X4-00000008Hq1-3pKh;
	Wed, 12 Nov 2025 07:44:46 +0000
Received: from mail-m3275.qiye.163.com ([220.197.32.75])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ5X2-00000008HoO-3UyQ
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Nov 2025 07:44:46 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 294e35849;
	Wed, 12 Nov 2025 15:44:35 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] mmc: sdhci-of-dwcmshc: reduce CIT for better performance
Date: Wed, 12 Nov 2025 15:44:20 +0800
Message-Id: <1762933460-204066-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1762933460-204066-1-git-send-email-shawn.lin@rock-chips.com>
References: <1762933460-204066-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9a7706096a09cckunm8f73707313c8a8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlKSlYZShkZGklLH0pDSR9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=EqalDPPL0j5CyaUmzf68LwMuynULiV4qfMIMJcAIk132+68QqKNr32d6N/opUnx7eNgH5T2dfiaG5yt6XHjVE1cbwOGTPiqLEuGmNFV9wJhZ5zO01gW2WBAeFxXDT1xX3xFaa8t15CSD6nKI4G2xiNp/vSq0wQ+CeJ1RFKBNjXQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=eQpfZEJeVDoHX/pt3LZYm2mfJEiV7aEbD+NJE5uWFxg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_234445_366395_8AE375E2 
X-CRM114-Status: UNSURE (   9.07  )
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

CQHCI_SSC1.CIT indicates to the CQE the polling period to use for
periodic SEND_QUEUE_STATUS (CMD13) polling. Some eMMCs have only one
hardware queue, and CMD13 can only query one slot at a time for data
transmission, which cannot be processed in parallel. Modifying the
CMD13 query interval can increase the query frequency and improve
random write performance.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/cqhci.h            | 1 +
 drivers/mmc/host/sdhci-of-dwcmshc.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/mmc/host/cqhci.h b/drivers/mmc/host/cqhci.h
index ce189a1..3668856 100644
--- a/drivers/mmc/host/cqhci.h
+++ b/drivers/mmc/host/cqhci.h
@@ -93,6 +93,7 @@
 /* send status config 1 */
 #define CQHCI_SSC1			0x40
 #define CQHCI_SSC1_CBC_MASK		GENMASK(19, 16)
+#define CQHCI_SSC1_CIT_MASK		GENMASK(15, 0)
 
 /* send status config 2 */
 #define CQHCI_SSC2			0x44
diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index e276a4e..cad5165 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -631,6 +631,11 @@ static void rk35xx_sdhci_cqe_pre_enable(struct mmc_host *mmc)
 	struct dwcmshc_priv *dwc_priv = sdhci_pltfm_priv(pltfm_host);
 	u32 reg;
 
+	/* Set Send Status Command Idle Timer to 10.66us (256 * 1 / 24) */
+	reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_SSC1);
+	reg = (reg & ~CQHCI_SSC1_CIT_MASK) | 0x0100;
+	sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_SSC1);
+
 	reg = sdhci_readl(host, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
 	reg |= CQHCI_ENABLE;
 	sdhci_writel(host, reg, dwc_priv->vendor_specific_area2 + CQHCI_CFG);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
