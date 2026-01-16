Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 857B7D47CAB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 00:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrPan7FLn+HA9Jns5UohVUSa+Mf7PBYSX6tFWe/f+X8=; b=HBCAlmIPJB+ii8
	A22rimc6/FW8sI+Dw/n/enWJUZ4v/a0stSOwqkXJtvBt1g0Oijb6q9U9Dy0QOtZ+YsEV92smZ/YTu
	5smYbINYdLXJiG3ZNMZvXTj/PHJmPBAO13spJ529ln/kkZgv79AwNR/tY/8zH7yT8MMRU/5ragQV2
	cq1LS6TNDe8UatHj74wXcw1jF+ImfPCWdoR6DT4NvQ+Tga/11Bh+p4O6EW0pIn8DrlCr8XHnlChnS
	E9OV5C495J5/YASY+O0ZyAot8A1CaIAOCnRY/QUkIwTTCtRboScT+jUr0aPmwDIJMk4xhDW6Yv5ow
	VqJfzzpEJ9m9AoPGBtNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgY8H-0000000DNnB-2IsJ;
	Fri, 16 Jan 2026 00:56:09 +0000
Received: from mail-m822136143.xmail.ntesmail.com ([8.221.36.143])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgY8E-0000000DNmq-1jNO
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 00:56:09 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30d5a76b5;
	Fri, 16 Jan 2026 08:55:58 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 3/5] mmc: dw_mmc-rockchip: Fix runtime PM support for internal phase support
Date: Fri, 16 Jan 2026 08:55:30 +0800
Message-Id: <1768524932-163929-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768524932-163929-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bc44d49ba09cckunm67a197c8691bf9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhoYS1YZSUxCSkJCTx9CSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cn2q+pBXzH8PPm0DJPSFzeewkBw5/2FjgWROFXyful9U9I970ROifthHNseNkFnzLwMuIqu/Oot6nVrOerDkZogR9bzFdNcOhL6zn1EkXzMzqeanbhGIC1u1PeRkIIb1O9KQnyAB2Dut5xDyPxAVeuBSnTdxcGP9/qeP4FrwSLY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=nAxcwtoR+PZuKKJSWxlt9Mjgw/ELV6cayHnxUmZ3BKE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_165607_507995_48C15FFC 
X-CRM114-Status: GOOD (  14.92  )
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

RK3576 is the first platform to introduce internal phase support, and
subsequent platforms are expected to adopt a similar design. In this
architecture, runtime suspend powers off the attached power domain, which
resets registers, including vendor-specific ones such as SDMMC_TIMING_CON0,
SDMMC_TIMING_CON1, and SDMMC_MISC_CON. These registers must be saved and
restored, a requirement that falls outside the scope of the dw_mmc core.

Fixes: 59903441f5e4 ("mmc: dw_mmc-rockchip: Add internal phase support")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Tested-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---

Changes in v3: None
Changes in v2: None

 drivers/mmc/host/dw_mmc-rockchip.c | 38 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 879188f..2fe0896 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -36,6 +36,8 @@ struct dw_mci_rockchip_priv_data {
 	int			default_sample_phase;
 	int			num_phases;
 	bool			internal_phase;
+	int                     sample_phase;
+	int                     drv_phase;
 };
 
 /*
@@ -573,9 +575,43 @@ static void dw_mci_rockchip_remove(struct platform_device *pdev)
 	dw_mci_pltfm_remove(pdev);
 }
 
+static int dw_mci_rockchip_runtime_suspend(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct dw_mci *host = platform_get_drvdata(pdev);
+	struct dw_mci_rockchip_priv_data *priv = host->priv;
+
+	if (priv->internal_phase) {
+		priv->sample_phase = rockchip_mmc_get_phase(host, true);
+		priv->drv_phase = rockchip_mmc_get_phase(host, false);
+	}
+
+	return dw_mci_runtime_suspend(dev);
+}
+
+static int dw_mci_rockchip_runtime_resume(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct dw_mci *host = platform_get_drvdata(pdev);
+	struct dw_mci_rockchip_priv_data *priv = host->priv;
+	int ret;
+
+	ret = dw_mci_runtime_resume(dev);
+	if (ret)
+		return ret;
+
+	if (priv->internal_phase) {
+		rockchip_mmc_set_phase(host, true, priv->sample_phase);
+		rockchip_mmc_set_phase(host, false, priv->drv_phase);
+		mci_writel(host, MISC_CON, MEM_CLK_AUTOGATE_ENABLE);
+	}
+
+	return ret;
+}
+
 static const struct dev_pm_ops dw_mci_rockchip_dev_pm_ops = {
 	SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
-	RUNTIME_PM_OPS(dw_mci_runtime_suspend, dw_mci_runtime_resume, NULL)
+	RUNTIME_PM_OPS(dw_mci_rockchip_runtime_suspend, dw_mci_rockchip_runtime_resume, NULL)
 };
 
 static struct platform_driver dw_mci_rockchip_pltfm_driver = {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
