Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30E22C52D6F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 05:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jtE+HNrUKKgjDXJuNro+wqbTKxA/74PB4rZ7Jfc+sXo=; b=DZgX7Syp/mCEsg
	jQ/5hzNh8fomj/ViMoUDzfsDESMLHWaUuCdUZc+kzNne8mr695o11hXXa9gi7Ac0+EB/zdG0rEnt+
	BNjeXAeNAIU59Z0l2IpewDPlIzMNwrDExsFS9ZbiuQb2B4cc7yItTPQsD0jlbA0d0qNYxykKJPkp0
	BDXogGcWVudMwSt5F20niLzYEB7XRvYVZf7y+eGqXBPjSFBXqFNqV+N3jtIbRH7emTHx9STMG/y1y
	zzUsOnRrKql/n0lLW03MYhe3ZS/jIlBB/EahNIGR0+jMhhzT+WycvebTa5Fi2swsYVezNLFbhMb7V
	nTGp/eN/91H/BNlL2hWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shj7K-00000001VYy-1OPu;
	Sat, 24 Aug 2024 05:15:14 +0000
Received: from mail-m17237.xmail.ntesmail.com ([45.195.17.237])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shj7G-00000001VY7-3NK6;
	Sat, 24 Aug 2024 05:15:12 +0000
DKIM-Signature: a=rsa-sha256;
	b=KFdvO7JscHuM/NTAAGVKObPjlLINFAnduAYtJLeB9c6tYIjoNrnFYJFXjLSxBCG400goR1rVJuD32o8LedATmKds7ONUrzKlcK/2qVNQZ4zc65cO4Basm004NSOKJpi2kbvBNGW0L5zwT04GW8a4YpwX4DVE32J9M9B6w8pWsZQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nd5VIf5W6pvlmFIxeaG4uBeEYTx1cRTIUzJ8Ujk2LXs=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id DA5DD6E085D;
	Sat, 24 Aug 2024 13:14:54 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: briannorris@chromium.org,
	broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	jon.lin@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org
Subject: [PATCH] spi: rockchip: Avoid redundant clock disable in pm operation
Date: Sat, 24 Aug 2024 13:14:52 +0800
Message-Id: <20240824051452.3954878-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhlOGlZIS0lPGE9LSUsaSElWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9182cf15d509d5kunmda5dd6e085d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTo6Hjo4OTIrKBoVOQoBVh4O
	NzIaCkpVSlVKTElPT0xNT0JOTE9PVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFPTElDNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_221511_103121_16CE78FA 
X-CRM114-Status: GOOD (  11.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix WARN_ON:
[   22.869352][ T1885] clk_spi0 already unprepared
[   22.869379][ T1885] WARNING: CPU: 3 PID: 1885 at drivers/clk/clk.c:813 clk_core_unprepare+0xbc4
[   22.869380][ T1885] Modules linked in: bcmdhd dhd_static_buf
[   22.869391][ T1885] CPU: 3 PID: 1885 Comm: Binder:355_2 Tainted: G        W         5.10.66 #59
[   22.869393][ T1885] Hardware name: Rockchip RK3588 EVB1 LP4 V10 Board (DT)
[   22.869397][ T1885] pstate: 60400009 (nZCv daif +PAN -UAO -TCO BTYPE=--)
[   22.869401][ T1885] pc : clk_core_unprepare+0xbc/0x214
[   22.869404][ T1885] lr : clk_core_unprepare+0xbc/0x214

Fixes:  ("spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM ops")
Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip.c | 57 +++++++++++++++++---------------------
 1 file changed, 26 insertions(+), 31 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index e1ecd96c7858..043a7739c330 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -940,33 +940,24 @@ static void rockchip_spi_remove(struct platform_device *pdev)
 	spi_controller_put(ctlr);
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int rockchip_spi_suspend(struct device *dev)
+#ifdef CONFIG_PM
+static int rockchip_spi_runtime_suspend(struct device *dev)
 {
-	int ret;
 	struct spi_controller *ctlr = dev_get_drvdata(dev);
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
-	ret = spi_controller_suspend(ctlr);
-	if (ret < 0)
-		return ret;
-
 	clk_disable_unprepare(rs->spiclk);
 	clk_disable_unprepare(rs->apb_pclk);
 
-	pinctrl_pm_select_sleep_state(dev);
-
 	return 0;
 }
 
-static int rockchip_spi_resume(struct device *dev)
+static int rockchip_spi_runtime_resume(struct device *dev)
 {
 	int ret;
 	struct spi_controller *ctlr = dev_get_drvdata(dev);
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
-	pinctrl_pm_select_default_state(dev);
-
 	ret = clk_prepare_enable(rs->apb_pclk);
 	if (ret < 0)
 		return ret;
@@ -975,41 +966,45 @@ static int rockchip_spi_resume(struct device *dev)
 	if (ret < 0)
 		clk_disable_unprepare(rs->apb_pclk);
 
-	ret = spi_controller_resume(ctlr);
-	if (ret < 0) {
-		clk_disable_unprepare(rs->spiclk);
-		clk_disable_unprepare(rs->apb_pclk);
-	}
-
 	return 0;
 }
-#endif /* CONFIG_PM_SLEEP */
+#endif /* CONFIG_PM */
 
-#ifdef CONFIG_PM
-static int rockchip_spi_runtime_suspend(struct device *dev)
+#ifdef CONFIG_PM_SLEEP
+static int rockchip_spi_suspend(struct device *dev)
 {
+	int ret;
 	struct spi_controller *ctlr = dev_get_drvdata(dev);
-	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
-	clk_disable_unprepare(rs->spiclk);
-	clk_disable_unprepare(rs->apb_pclk);
+	ret = spi_controller_suspend(ctlr);
+	if (ret < 0)
+		return ret;
+
+	/* Avoid redundant clock disable */
+	if (!pm_runtime_status_suspended(dev))
+		rockchip_spi_runtime_suspend(dev);
+
+	pinctrl_pm_select_sleep_state(dev);
 
 	return 0;
 }
 
-static int rockchip_spi_runtime_resume(struct device *dev)
+static int rockchip_spi_resume(struct device *dev)
 {
 	int ret;
 	struct spi_controller *ctlr = dev_get_drvdata(dev);
-	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
-	ret = clk_prepare_enable(rs->apb_pclk);
-	if (ret < 0)
-		return ret;
+	pinctrl_pm_select_default_state(dev);
 
-	ret = clk_prepare_enable(rs->spiclk);
+	if (!pm_runtime_status_suspended(dev)) {
+		ret = rockchip_spi_runtime_resume(dev);
+		if (ret < 0)
+			return ret;
+	}
+
+	ret = spi_controller_resume(ctlr);
 	if (ret < 0)
-		clk_disable_unprepare(rs->apb_pclk);
+		rockchip_spi_runtime_suspend(dev);
 
 	return 0;
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
