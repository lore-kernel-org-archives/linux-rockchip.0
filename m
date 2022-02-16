Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0123C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 01:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrCv7pgO2kMLyjQGIbXF3V/ZMcg11DFLr0rebegMy78=; b=kK8g7zezvx1SaI
	cqK6JNpdueV+XscgZnyJbwhmWTzRc1oV56iGmmHtylGQtyPeTQ7jtN5sz9H+N/KNIXrU5Zco+0/fe
	zDorLWzFlntzqSoDATqYoHyWatrGGbdlvoGBG7ZOQOVHNnNDy38lllcCEhYVJSAnYbHDnd7HUpLlk
	tvtr65fsbNvRUbKG7CEzsyUtGBp/bgsgGSdAGknjKq+xCGO+qdZuXttQ+wuFmBm/cVICO3B66+LjV
	6XOjBT++x+hwGpj6oJrGD3TNdKEQMXkfHTYhiz22F/iTYekkT8rjxLouHRHZiNNmmwyLdgDW9moJG
	VSIh1y8Inh/FoI0yeCmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK9Kj-005C5l-BT; Wed, 16 Feb 2022 01:42:17 +0000
Received: from mail-m17640.qiye.163.com ([59.111.176.40])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK9J7-005B11-Oi; Wed, 16 Feb 2022 01:40:39 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17640.qiye.163.com (Hmail) with ESMTPA id ADA055402AF;
 Wed, 16 Feb 2022 09:40:35 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, shengfei Xu <xsf@rock-chips.com>,
 Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v3 5/6] spi: rockchip: Suspend and resume the bus during
 NOIRQ_SYSTEM_SLEEP_PM ops
Date: Wed, 16 Feb 2022 09:40:27 +0800
Message-Id: <20220216014028.8123-6-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220216014028.8123-1-jon.lin@rock-chips.com>
References: <20220216014028.8123-1-jon.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRlCSUpWQhkeTRkfQk5CSE
 JMVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KxA6FDo6DD5PNBYjLg8TGRQj
 OBhPCxhVSlVKTU9PQkxOTUhNSU9DVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFISUlDNwY+
X-HM-Tid: 0a7f00303e18d995kuwsada055402af
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_174038_037082_ECB04CDF 
X-CRM114-Status: GOOD (  12.75  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: shengfei Xu <xsf@rock-chips.com>

the wakeup interrupt handler which is guaranteed not to run while
@resume noirq() is being executed. the patch can help to avoid the
wakeup source try to access spi when the spi is in suspend mode.

Signed-off-by: shengfei Xu <xsf@rock-chips.com>
Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

Changes in v3: None
Changes in v2: None
Changes in v1: None

 drivers/spi/spi-rockchip.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 83da8fdb3c02..8b4d56ee2193 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -964,14 +964,14 @@ static int rockchip_spi_suspend(struct device *dev)
 {
 	int ret;
 	struct spi_controller *ctlr = dev_get_drvdata(dev);
+	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
 	ret = spi_controller_suspend(ctlr);
 	if (ret < 0)
 		return ret;
 
-	ret = pm_runtime_force_suspend(dev);
-	if (ret < 0)
-		return ret;
+	clk_disable_unprepare(rs->spiclk);
+	clk_disable_unprepare(rs->apb_pclk);
 
 	pinctrl_pm_select_sleep_state(dev);
 
@@ -986,10 +986,14 @@ static int rockchip_spi_resume(struct device *dev)
 
 	pinctrl_pm_select_default_state(dev);
 
-	ret = pm_runtime_force_resume(dev);
+	ret = clk_prepare_enable(rs->apb_pclk);
 	if (ret < 0)
 		return ret;
 
+	ret = clk_prepare_enable(rs->spiclk);
+	if (ret < 0)
+		clk_disable_unprepare(rs->apb_pclk);
+
 	ret = spi_controller_resume(ctlr);
 	if (ret < 0) {
 		clk_disable_unprepare(rs->spiclk);
@@ -1031,7 +1035,7 @@ static int rockchip_spi_runtime_resume(struct device *dev)
 #endif /* CONFIG_PM */
 
 static const struct dev_pm_ops rockchip_spi_pm = {
-	SET_SYSTEM_SLEEP_PM_OPS(rockchip_spi_suspend, rockchip_spi_resume)
+	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(rockchip_spi_suspend, rockchip_spi_resume)
 	SET_RUNTIME_PM_OPS(rockchip_spi_runtime_suspend,
 			   rockchip_spi_runtime_resume, NULL)
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
