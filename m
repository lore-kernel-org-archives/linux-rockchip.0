Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 683B0D711D5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 07:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oN+Kbl1hoqFw14jrjKT5Abw4NqmS+eB1fvXiCAbEHNM=; b=maKnVpvpFM1Wno
	DjDU8riva31ZJOGRcxWJu8BBQnmcOiBeBZjzsWiO447s2TzTWPm43r9nw0gZXpC7TUdOgpjD8kUFw
	oEapKGEqFw/cllWg5c5+OirvFw0ihbSH3Mo1OjBULRooZRx6xugtsEzFHe7oWSWKY9DQYNa56aHG5
	7+Q5p483W0cWvKuqSvpYyGGNxnS9JPRnhjDsXJ35pMHSOHXBX/Aa6m33Qe/x2RtQsYrObRDuj4tA9
	G8laOQTjck/C1VYv0Y1toPwBXZJElZ4Mt+uoo16aDYAhXJ6Tj7W4ssuvSTn65HHuGf00YazC6FR4L
	YaQ+waRcJwOp7zyGtkGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXa57-0000000DLPy-1F24;
	Mon, 22 Dec 2025 07:11:49 +0000
Received: from mail-m19731109.qiye.163.com ([220.197.31.109])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXa53-0000000DLPO-3TME
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 07:11:47 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2e1915ea7;
	Mon, 22 Dec 2025 15:11:31 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: [PATCH] mmc: sdhci-of-dwcmshc: Prevent illegal clock reduction in HS200/HS400 mode
Date: Mon, 22 Dec 2025 15:11:25 +0800
Message-Id: <1766387485-205480-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9b44e6217109cckunm4bed3a38233852
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk0dSlYaTR1IHktDTRkaGUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=EOPPGYHzk6kLsXnLNj40NzjhyqJTQtEaSmUoUDCDYJ2gArpMLAp+zEGE09V7EmlIDwuStV+0Yo3ynDzJ0bxHqCdW+p4xLIfO8EK9Rj6Mx3ifpMt3VHOs3u0SgKwJ/htu5QTKk7A5oiAZonwm/7R0gq/U7UXQOslf42z34ADTjOA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=epFuvGNMnq8DZa8S9kytiEiXcwWoqxCo6P+b2a8XwfU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_231146_406221_031EEDB8 
X-CRM114-Status: GOOD (  10.07  )
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

When operating in HS200 or HS400 timing modes, reducing the clock frequency
below 52MHz will lead to link broken as the Rockchip DWC MSHC controller
requires maintaining a minimum clock of 52MHz in these modes.

Add a check to prevent illegal clock reduction through debugfs:

root@debian:/# echo 50000000 > /sys/kernel/debug/mmc0/clock
root@debian:/# [   30.090146] mmc0: running CQE recovery
mmc0: cqhci: Failed to halt
mmc0: cqhci: spurious TCN for tag 0
WARNING: drivers/mmc/host/cqhci-core.c:797 at cqhci_irq+0x254/0x818, CPU#1: kworker/1:0H/24
Modules linked in:
CPU: 1 UID: 0 PID: 24 Comm: kworker/1:0H Not tainted 6.19.0-rc1-00001-g09db0998649d-dirty #204 PREEMPT
Hardware name: Rockchip RK3588 EVB1 V10 Board (DT)
Workqueue: kblockd blk_mq_run_work_fn
pstate: 604000c9 (nZCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : cqhci_irq+0x254/0x818
lr : cqhci_irq+0x254/0x818
...

Fixes: c6f361cba51c ("mmc: sdhci-of-dwcmshc: add support for rk3588")
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/sdhci-of-dwcmshc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index 51949cd..204830b 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -739,6 +739,13 @@ static void dwcmshc_rk3568_set_clock(struct sdhci_host *host, unsigned int clock
 	sdhci_writel(host, extra, reg);
 
 	if (clock <= 52000000) {
+		if (host->mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
+		    host->mmc->ios.timing == MMC_TIMING_MMC_HS400) {
+			dev_err(mmc_dev(host->mmc),
+				"Can't reduce the clock below 52MHz in HS200/HS400 mode");
+			return;
+		}
+
 		/*
 		 * Disable DLL and reset both of sample and drive clock.
 		 * The bypass bit and start bit need to be set if DLL is not locked.
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
