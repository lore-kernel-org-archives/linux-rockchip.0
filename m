Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C349C9830E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 08:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FX22qQwDHW9E/pHkqjCDn+GdmRjgwVR15e4XY9M4FTM=; b=GWhB38A0mXrJyz
	hBY+wi2KC9WXXnInRawyACOBdTfu3UalgPTmEu/do30jLjnYVEev15rNmnbzmkPAOr27orxImTHNU
	qoV785mCtHiwoz5wXW1ZiBqRtjU0axDAg+HdyrkolNeeIeWDava20GZla40GErFW06LUWIa5gpS8h
	gKDh6Tf66U5NV0s+pdc1ChChD1luwNAz1CO8IQAt0rpmqfSNLgzMTO2XiR3EamIwz7ecICwAPY/8T
	qr4JftJuHDeuLxMUDsRbe5MEmQeZljRA1jaOLcUPmXLPAuJNhbDz/zUUIDFJlUYFh6lwGPvQ10GgL
	X/wUq1BMyYD5ObXycIcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fAW-0000000AUkJ-15KX;
	Thu, 24 Sep 2026 08:51:04 +0000
Received: from mail-m9382.xmail.ntesmail.com ([103.126.93.82])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9fAQ-0000000AUiO-0Ai3
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 08:51:01 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4f01e1b87;
	Thu, 24 Sep 2026 16:50:50 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>
Cc: Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/2] mmc: core: add mmc_send_tuning_timeout()
Date: Thu, 24 Sep 2026 16:50:22 +0800
Message-Id: <1790239823-139583-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1790239823-139583-1-git-send-email-shawn.lin@rock-chips.com>
References: <1790239823-139583-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0d29c3f4503a4kunm11feacd55405de
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUIeH1ZKHklISkJIQk
	1LQ05WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BlSfYSf8pl0lDDHELvsr++dVLOgOiS/TAnQ0+YMjRvy1ZQZDLyH1D5lXnDTpW/kdv+Jao2yr55g98FlfUQ/yb5tH9HnLPO6rdCtvblW3YmXqFChrPqZXYm28/3fIyAJS2hWXxatOvu621DHG2fXNa5v0LWJUbwTcnlXrVzUHj4k=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=sruEtLMqlbgePRm762lKIDdTMJN72z82oizqShLTvfM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_015058_591579_459B5010 
X-CRM114-Status: GOOD (  12.39  )
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

Add mmc_send_tuning_timeout() which takes the data timeout in
milliseconds, and turn mmc_send_tuning() into a thin wrapper keeping
the current 150 ms, so there is no behaviour change for the existing
callers.  This lets drivers pass a tighter timeout for software
tuning, e.g. hosts which scan the tuning window phase by phase.

Suggested-by: Adrian Hunter <adrian.hunter@intel.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2: None

 drivers/mmc/core/mmc_ops.c | 22 +++++++++++++++-------
 include/linux/mmc/host.h   |  2 ++
 2 files changed, 17 insertions(+), 7 deletions(-)

diff --git a/drivers/mmc/core/mmc_ops.c b/drivers/mmc/core/mmc_ops.c
index a952cc8..d59ff82f 100644
--- a/drivers/mmc/core/mmc_ops.c
+++ b/drivers/mmc/core/mmc_ops.c
@@ -673,7 +673,8 @@ int mmc_switch(struct mmc_card *card, u8 set, u8 index, u8 value,
 }
 EXPORT_SYMBOL_GPL(mmc_switch);
 
-int mmc_send_tuning(struct mmc_host *host, u32 opcode, int *cmd_error)
+int mmc_send_tuning_timeout(struct mmc_host *host, u32 opcode, int *cmd_error,
+			    u32 timeout_ms)
 {
 	struct mmc_request mrq = {};
 	struct mmc_command cmd = {};
@@ -707,12 +708,7 @@ int mmc_send_tuning(struct mmc_host *host, u32 opcode, int *cmd_error)
 	data.blocks = 1;
 	data.flags = MMC_DATA_READ;
 
-	/*
-	 * According to the tuning specs, Tuning process
-	 * is normally shorter 40 executions of CMD19,
-	 * and timeout value should be shorter than 150 ms
-	 */
-	data.timeout_ns = 150 * NSEC_PER_MSEC;
+	data.timeout_ns = timeout_ms * NSEC_PER_MSEC;
 
 	data.sg = &sg;
 	data.sg_len = 1;
@@ -740,6 +736,18 @@ int mmc_send_tuning(struct mmc_host *host, u32 opcode, int *cmd_error)
 	kfree(data_buf);
 	return err;
 }
+EXPORT_SYMBOL_GPL(mmc_send_tuning_timeout);
+
+int mmc_send_tuning(struct mmc_host *host, u32 opcode, int *cmd_error)
+{
+	/*
+	 * The eMMC and SD specs give the tuning process an overall
+	 * budget of 150 ms.  mmc_send_tuning() simply applies that as
+	 * the timeout of every single tuning command.  Drivers which
+	 * want a different timeout can use mmc_send_tuning_timeout().
+	 */
+	return mmc_send_tuning_timeout(host, opcode, cmd_error, 150);
+}
 EXPORT_SYMBOL_GPL(mmc_send_tuning);
 
 int mmc_send_abort_tuning(struct mmc_host *host, u32 opcode)
diff --git a/include/linux/mmc/host.h b/include/linux/mmc/host.h
index 198554e..032c018 100644
--- a/include/linux/mmc/host.h
+++ b/include/linux/mmc/host.h
@@ -753,6 +753,8 @@ static inline int mmc_card_uhs2_hd_mode(struct mmc_host *host)
 int mmc_sd_switch(struct mmc_card *card, bool mode, int group,
 		u8 value, u8 *resp);
 int mmc_send_status(struct mmc_card *card, u32 *status);
+int mmc_send_tuning_timeout(struct mmc_host *host, u32 opcode, int *cmd_error,
+			    u32 timeout_ms);
 int mmc_send_tuning(struct mmc_host *host, u32 opcode, int *cmd_error);
 int mmc_send_abort_tuning(struct mmc_host *host, u32 opcode);
 int mmc_get_ext_csd(struct mmc_card *card, u8 **new_ext_csd);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
