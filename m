Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DB1BEA854C
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 03:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4DjvrHa0kvJ7hJaSk42qXOsimjr6jHFB5AJlmwD5bI=; b=dhTgHkKOzjzfr1
	awNL2TyvIQBQ/HqV0tVCk69SQEAQ8Z7i1cnkqEqF1EU8XTHpFAYZCeBZmselD402VrNoMhg7lv3TQ
	pk7pwHwv+w3TzBQJE6vHLMx/se57CmuBZi+600oCnmMaiUBhGjKjSmN8AUtDq3h/G1j2gIzy1Bzdl
	RMO4GEZj2Z3gw7KxTrxC56jPS+PfAvv+SfPatpZ5R74Asrfq3HN0Q41iDO2mZStE0GOi0AdreO5ze
	K07dXMRRWixpTPGW4OfQXOu5V+oapTR1A6fCIia2Vb9Mz2xTzXcpNyopdUSoBws+dXRsmT/Uv+rWf
	sopLdth9uXt/vmwQP5Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzRJB-00000006ayP-1mAY;
	Mon, 09 Mar 2026 03:29:29 +0000
Received: from mail-m19731101.qiye.163.com ([220.197.31.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzRJ8-00000006awz-1quA
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Mar 2026 03:29:27 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3631478fe;
	Mon, 9 Mar 2026 11:29:21 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Jaehoon Chung <jh80.chung@samsung.com>
Cc: linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/3] mmc: dw_mmc: Add parsing mmc_clk_phase_map support
Date: Mon,  9 Mar 2026 11:29:01 +0800
Message-Id: <1773026943-111633-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
References: <1773026943-111633-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9cd0a4678a09cckunm2100c80115ef2d2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ09JSVYaS0MdQk9DSUpKT0JWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=JlSIYYYK+dDaJlXBq2h0qk9lzKjvwqMvstw8DmcFgvV+2HILyYWb8AutXkyTxozE8n3/OrF721nS+S9IhflnK/lSSRtdn0AUygMMPvHVkk8vcejsLxFLRampCgXTd3Zlpv+M1Uim12tleVkyZlo2qBKLMl1mOZ0Jjh7eh9mrSqE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=OX+mVHT1fmYQaO98NVvH8Ox08vkymTaLRGMH2ErP/a8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260308_202926_708223_8FDED865 
X-CRM114-Status: GOOD (  10.35  )
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

The dw_mmc library already assists in invoking mmc_of_parse() to
provide unified parsing for variant drivers. We can also call
mmc_of_parse_clk_phase() to help variant drivers achieve unified parsing.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/dw_mmc.c | 2 ++
 drivers/mmc/host/dw_mmc.h | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
index edea9f4..bbdd759 100644
--- a/drivers/mmc/host/dw_mmc.c
+++ b/drivers/mmc/host/dw_mmc.c
@@ -2866,6 +2866,8 @@ static int dw_mci_init_host(struct dw_mci *host)
 	if (ret)
 		return ret;
 
+	mmc_of_parse_clk_phase(host->dev, &host->phase_map);
+
 	ret = dw_mci_init_host_caps(host);
 	if (ret)
 		return ret;
diff --git a/drivers/mmc/host/dw_mmc.h b/drivers/mmc/host/dw_mmc.h
index 9a27d77..42e58be 100644
--- a/drivers/mmc/host/dw_mmc.h
+++ b/drivers/mmc/host/dw_mmc.h
@@ -130,6 +130,7 @@ struct dw_mci_dma_slave {
  * @pdev: platform_device registered
  * @rstc: Reset controller for this host.
  * @detect_delay_ms: Delay in mS before detecting cards after interrupt.
+ * @phase_map: The map for recording in and out phases for each timing
  *
  * Locking
  * =======
@@ -250,6 +251,7 @@ struct dw_mci {
 	struct platform_device	*pdev;
 	struct reset_control *rstc;
 	u32 detect_delay_ms;
+	struct mmc_clk_phase_map phase_map;
 };
 
 /* DMA ops for Internal/External DMAC interface */
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
