Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42C3CC27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 06:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CpBA/h+yPLghWj+ntLa7UpX2IZfJT2TxG9cTyr+H+aM=; b=4Ur5qwRVAKKrD6
	aFYZWBMDq8Pu7nbJocaDrRCH8C1wxd7iXHwePag1yCr7njm9syg2HlnKreINlwBcvpkMwKzf3xdWz
	DsR60hlLF2lU/S4oAD4V27FY6oqyq8nb9Hitw6EaJzu8dFpnLcQUKDyzWG0xJtaakxFLCRjABcNoM
	2C3jthxI8iqiHGiBFmBr8kPZD0PlDLNBeaPLA8WU+O+KEFcUt9aUlJU1atwY+zN05LQVk9e+iMmu1
	L2oueelUZqZmoOtYJvksizQgkQaweUY8Cr5sM5xuYxaKRVyfqJ9KlMUzikDlBKW3MbcfxhZC5wkyr
	qsf+VpuUZIuSxEV0BqjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKY1B-000000081vx-3tZD;
	Fri, 21 Jun 2024 06:45:05 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKY19-000000081vE-0xkr;
	Fri, 21 Jun 2024 06:45:04 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-2598001aae7so855049fac.2;
        Thu, 20 Jun 2024 23:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718952302; x=1719557102; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oM3ItnukudfPSjacUNsBaUKyLolfdMbpOCb7tOfpFSc=;
        b=jeSIVQTXhOkuOZefUDkiHB3T8oMq1ZaaUU+fELoeSue8uab/N1KivmFUoUAPsEp9s1
         t/cHUTcG0/z02A7xkoOqdZ7ymaJCHLt0jWw6lfTRa69MR1Pjh5wAIFkfb+u3tlDFZ0U1
         M0tNxoZS8W7GC32QpBLb+vYwu95O298y/al5qDM2L2Cyhd0cv+plkdXDcL8m15phsD9Z
         ICHdKHLkmOYDC6cc4OhtEoDx+3OZ+u5tnHjkR3viS4iMVVUnoKnxm9BlzV1pgLWySxM9
         s//goa6V7i1SNVwCdagtEvFiaZ8YG3BtS6VeAY896ZcnhS8w/qVSlWhxWMBUlYDo7JWs
         GKOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718952302; x=1719557102;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oM3ItnukudfPSjacUNsBaUKyLolfdMbpOCb7tOfpFSc=;
        b=o1HOvC1lqbrM2iNTQmwjV6dyzC7z/xUwSq9E5pDVzApCKZPsNv2aeuVzlvreooFCeh
         xhGb8nfU/UdojOoqnOzwhwkLg3iKkH0FdnjIg3vGabTOWCGjwLQa9KSzm7QrzW45Rj2R
         oxrgTV9fzt48nQSuepKU74Dt7ebIjOFk98YlL4tTg4nwMHQbVaZAlEMC9YuIcX9xBJzN
         U/QdwddwBtccsKOaXEmgZBUw0n9saivVMMPQC/JlTPosuwnEM/nuOqk1gJ/DSmqyRQze
         SVUnFdzH0hGvFsgQTtfkrD5s+SpEfrug7JHyF7Oorofr8r/fWt6DdBHdcmrKbb8U8G3h
         IIYA==
X-Forwarded-Encrypted: i=1; AJvYcCUXjJOnXOZL0sTMfCEAC3c6KPqIRDLB/cOH3unBQMnBsu5PLb/jybFARZZBOaHdF96ufKTUxe/ibK0Cb+Vi5vpGWax0geABKUw8q1BYQ5krmBcmpkdE0ujDXNERz0MT1tKfXjL8J3sgGMN9GKdtYdHfWo2TUBIdxvU=
X-Gm-Message-State: AOJu0YxcPqnbiv+pC8tVMbklA4p+nEz4tXrR8ZP5gb1f2qR3lF2UvhUP
	V7Nou2i5uU33y5MtAEGhLnmLXQE0ktezh3BXl3YTI35yIq6MMze+
X-Google-Smtp-Source: AGHT+IEbBzdQwiRjqR4y3v1rWDL1v5yalWbizkktabDpr8Ar27TT3aqBRN1VEIr4V47mZdBBKvXSQA==
X-Received: by 2002:a05:6871:82c:b0:24f:c7cf:17fb with SMTP id 586e51a60fabf-25c949901f1mr8202912fac.22.1718952301635;
        Thu, 20 Jun 2024 23:45:01 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70651194776sm683117b3a.67.2024.06.20.23.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 23:45:01 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	kernel test robot <lkp@intel.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
Date: Fri, 21 Jun 2024 12:14:20 +0530
Message-ID: <20240621064426.282048-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_234503_297818_C645B1AC 
X-CRM114-Status: GOOD (  18.94  )
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

Refactors the clock handling in the Rockchip PCIe driver,
introducing a more robust and efficient method for enabling and
disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
the clock handling for the core clocks becomes much simpler.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406200818.CQ7DXNSZ-lkp@intel.com/
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Fix compilation error reported by Intel test robot
---
 drivers/pci/controller/pcie-rockchip.c | 64 ++++----------------------
 drivers/pci/controller/pcie-rockchip.h | 15 ++++--
 2 files changed, 21 insertions(+), 58 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0ef2e622d36e..166dad666a35 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -30,7 +30,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *node = dev->of_node;
 	struct resource *regs;
-	int err;
+	int err, i;
 
 	if (rockchip->is_rc) {
 		regs = platform_get_resource_byname(pdev,
@@ -127,28 +127,13 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 					     "failed to get ep GPIO\n");
 	}
 
-	rockchip->aclk_pcie = devm_clk_get(dev, "aclk");
-	if (IS_ERR(rockchip->aclk_pcie)) {
-		dev_err(dev, "aclk clock not found\n");
-		return PTR_ERR(rockchip->aclk_pcie);
-	}
-
-	rockchip->aclk_perf_pcie = devm_clk_get(dev, "aclk-perf");
-	if (IS_ERR(rockchip->aclk_perf_pcie)) {
-		dev_err(dev, "aclk_perf clock not found\n");
-		return PTR_ERR(rockchip->aclk_perf_pcie);
-	}
-
-	rockchip->hclk_pcie = devm_clk_get(dev, "hclk");
-	if (IS_ERR(rockchip->hclk_pcie)) {
-		dev_err(dev, "hclk clock not found\n");
-		return PTR_ERR(rockchip->hclk_pcie);
-	}
+	for (i = 0; i < ROCKCHIP_NUM_CLKS; i++)
+		rockchip->clks[i].id = rockchip_pci_clks[i];
 
-	rockchip->clk_pcie_pm = devm_clk_get(dev, "pm");
-	if (IS_ERR(rockchip->clk_pcie_pm)) {
-		dev_err(dev, "pm clock not found\n");
-		return PTR_ERR(rockchip->clk_pcie_pm);
+	err = devm_clk_bulk_get(dev, ROCKCHIP_NUM_CLKS, rockchip->clks);
+	if (err) {
+		dev_err(dev, "rockchip clk bulk get failed\n");
+		return err;
 	}
 
 	return 0;
@@ -372,39 +357,13 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 	struct device *dev = rockchip->dev;
 	int err;
 
-	err = clk_prepare_enable(rockchip->aclk_pcie);
+	err = clk_bulk_prepare_enable(ROCKCHIP_NUM_CLKS, rockchip->clks);
 	if (err) {
-		dev_err(dev, "unable to enable aclk_pcie clock\n");
+		dev_err(dev, "rockchip clk bulk prepare enable failed\n");
 		return err;
 	}
 
-	err = clk_prepare_enable(rockchip->aclk_perf_pcie);
-	if (err) {
-		dev_err(dev, "unable to enable aclk_perf_pcie clock\n");
-		goto err_aclk_perf_pcie;
-	}
-
-	err = clk_prepare_enable(rockchip->hclk_pcie);
-	if (err) {
-		dev_err(dev, "unable to enable hclk_pcie clock\n");
-		goto err_hclk_pcie;
-	}
-
-	err = clk_prepare_enable(rockchip->clk_pcie_pm);
-	if (err) {
-		dev_err(dev, "unable to enable clk_pcie_pm clock\n");
-		goto err_clk_pcie_pm;
-	}
-
 	return 0;
-
-err_clk_pcie_pm:
-	clk_disable_unprepare(rockchip->hclk_pcie);
-err_hclk_pcie:
-	clk_disable_unprepare(rockchip->aclk_perf_pcie);
-err_aclk_perf_pcie:
-	clk_disable_unprepare(rockchip->aclk_pcie);
-	return err;
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
@@ -412,10 +371,7 @@ void rockchip_pcie_disable_clocks(void *data)
 {
 	struct rockchip_pcie *rockchip = data;
 
-	clk_disable_unprepare(rockchip->clk_pcie_pm);
-	clk_disable_unprepare(rockchip->hclk_pcie);
-	clk_disable_unprepare(rockchip->aclk_perf_pcie);
-	clk_disable_unprepare(rockchip->aclk_pcie);
+	clk_bulk_disable_unprepare(ROCKCHIP_NUM_CLKS, rockchip->clks);
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_disable_clocks);
 
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 6111de35f84c..72346e17e45e 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -11,6 +11,7 @@
 #ifndef _PCIE_ROCKCHIP_H
 #define _PCIE_ROCKCHIP_H
 
+#include <linux/clk.h>
 #include <linux/kernel.h>
 #include <linux/pci.h>
 #include <linux/pci-ecam.h>
@@ -287,6 +288,15 @@
 		(((c) << ((b) * 8 + 5)) & \
 		 ROCKCHIP_PCIE_CORE_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b))
 
+#define ROCKCHIP_NUM_CLKS	ARRAY_SIZE(rockchip_pci_clks)
+
+static const char * const rockchip_pci_clks[] = {
+	"aclk",
+	"aclk-perf",
+	"hclk",
+	"pm",
+};
+
 struct rockchip_pcie {
 	void	__iomem *reg_base;		/* DT axi-base */
 	void	__iomem *apb_base;		/* DT apb-base */
@@ -299,10 +309,7 @@ struct rockchip_pcie {
 	struct	reset_control *pm_rst;
 	struct	reset_control *aclk_rst;
 	struct	reset_control *pclk_rst;
-	struct	clk *aclk_pcie;
-	struct	clk *aclk_perf_pcie;
-	struct	clk *hclk_pcie;
-	struct	clk *clk_pcie_pm;
+	struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
 	struct	regulator *vpcie12v; /* 12V power supply */
 	struct	regulator *vpcie3v3; /* 3.3V power supply */
 	struct	regulator *vpcie1v8; /* 1.8V power supply */

base-commit: 50736169ecc8387247fe6a00932852ce7b057083
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
