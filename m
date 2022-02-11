Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 064E8C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 03:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqlgBd9WSluto1JDSf3F7tB8h8R/xjbBlDEmorGfBIA=; b=lqJtwAoPvK5zGR
	YOGsttsxyZAfvj33FqvKfTCKMrR1o06D+CRUHEyxQD+MU/U6D9U/GmNYU9wdIwwjQv2TwB4RSZJUP
	Ntd8qFU1vhp19sQ9/ZD5mbmSxOMkbRl8e+bRkikMzSjDsEwHXQzzjyXmNo+GusEC8CTOYmLFWW5Md
	QqCEp15rTsrEAemG1qA0dquyExtevbq/Lelcw1qeZMHZM0FaGFWfogxmtpOzgjAcKGDTJfS9lVX3c
	4CO81PsoB00R5fLkVWjMjzi4Be1WnU6JECWYz685VjzOqpmcARGI6LALw3DOWo7DPH82zcD0Ty60x
	t2R0/rJHLYL7ihNRYiTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIN0R-005gTa-Er; Fri, 11 Feb 2022 03:53:59 +0000
Received: from mail-m17664.qiye.163.com ([59.111.176.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIMwQ-005ePS-ID; Fri, 11 Feb 2022 03:49:58 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17664.qiye.163.com (Hmail) with ESMTPA id 91E471401FA;
 Fri, 11 Feb 2022 11:49:48 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, shengfei Xu <xsf@rock-chips.com>,
 Jon Lin <jon.lin@rock-chips.com>
Subject: [RFC PATCH v1 4/6] spi: rockchip: Suspend and resume the bus during
 NOIRQ_SYSTEM_SLEEP_PM ops
Date: Fri, 11 Feb 2022 11:49:36 +0800
Message-Id: <20220211034938.25097-5-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220211034938.25097-1-jon.lin@rock-chips.com>
References: <20220211034938.25097-1-jon.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUJLQ0lWGB1KTEsaGUhDHx
 5CVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6M006Czo5OD5LEh46TU8tDT45
 Hy5PCVFVSlVKTU9PTk5KSENCS0hLVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFISkxMNwY+
X-HM-Tid: 0a7ee6e6be74da2fkuws91e471401fa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_194950_833116_7884FD12 
X-CRM114-Status: GOOD (  12.20  )
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

 drivers/spi/spi-rockchip.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 5f6a70664871..5457af616a44 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -959,14 +959,14 @@ static int rockchip_spi_suspend(struct device *dev)
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
 
@@ -981,10 +981,14 @@ static int rockchip_spi_resume(struct device *dev)
 
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
@@ -1026,7 +1030,7 @@ static int rockchip_spi_runtime_resume(struct device *dev)
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
