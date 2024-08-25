Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3676CC5472D
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 03:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YQG6BJisXlYNlQ6EKp7VSRs0CePHiv0lsiBIHQiO2Sk=; b=qav7RFNMXVYSNz
	x+X2AbH2ULkHgCW6eypvLfe0FeOq7ycdTCS36JpuuBEAUwy5ukjLkUB0w5GklymWe6+gGpf1lZTz8
	IUiZHin4tOU0u3ghLPi+iWb1Mdt/U8LUoaGLsGzXjc4dH9wKp0ap/SfEcCnVtAIlwq5+3wiGYVHxj
	ac7iHr5W2jdTRZ0dI5yva7JREOVSjw7lwcPQHZy5A/BmMfYStspWLv4kerU4GidP0a9kUqnBUouv7
	feFnNc1yTr8UxDts1bHhoJwVURw2SJPfGUJNQL+Iw72RA+4AVnt2hJfQeZM4TgNLFPFB2rH+ppcum
	qpdLJrzNCBq/elb4hXUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1si4L7-00000003U4E-3xwE;
	Sun, 25 Aug 2024 03:54:53 +0000
Received: from mail-m1019.netease.com ([154.81.10.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1si4L4-00000003U3K-2N1R;
	Sun, 25 Aug 2024 03:54:52 +0000
DKIM-Signature: a=rsa-sha256;
	b=VYa0Yt98s0Rumgcmipid52XzFr4FclL8Z8e2rig7JJAGAvHrXCuld7IUKXJYwb7bySUldK1r8Bca2SE4/wNGj+FZ4wusQuEMSJ7VykbHZ+8bG5XKhns8uu0xeraOToXzXDwKQMOBuNP08vS/Of/rfPoV31oVJmUrQhxHN0HL7S8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=USvsLmNu2/MMrUgY+emHYMuQ+S74Sb6oHGMumsHYhoA=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 0ED5B6E07EB;
	Sun, 25 Aug 2024 11:54:25 +0800 (CST)
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
Date: Sun, 25 Aug 2024 11:54:22 +0800
Message-Id: <20240825035422.900370-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUNMSlZIGE5ISUIYH0seSBpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9187abbf3609d5kunm0ed5b6e07eb
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ni46PAw4TTI6SxkTETI8Tigz
	EAgKCyhVSlVKTElPTk5DS01OQktIVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFPTEhDNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_205451_139583_7BC5B058 
X-CRM114-Status: GOOD (  11.68  )
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

Fixes: e882575efc77 ("spi: rockchip: Suspend and resume the bus during NOIRQ_SYSTEM_SLEEP_PM ops")
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
