Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C53C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 10:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=COKMhnPDP956jjcwaq2Um2bHgJ56otpsNivVAp9Rtmw=; b=dkj0w/5J9JFbEs
	RvjXWYEPsfh99CInsqcXOB/KfBkL7qrPd07e76I3tjk7++rgEwkvmAnnxFP+qL13iI+VCpN32nZbw
	vjS8OKA5ZWRyVMHIKwIWUMN9KwAWVMqAql6b6IHfA3UG91m22SmQj/XdmXGxpGxQsrOHiufWRQDCu
	KPHJ/fOLgOypAgvaek5caM926i7s2lic92MustD0WKKZlNGVJXW54+OtpIIZpYxP5YPwvkNmew9sh
	Rbf+AhG7qKgpopR1TWN5i4G+IzdPQziG3t4GfmZO0iNwO9SyxnqoF8XJooiBIZXfeKDz3/LC8WaC5
	iHL0G1z0vGSBj1bZJn9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM3bf-00000002Qsz-2uZw;
	Tue, 25 Jun 2024 10:40:59 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM3bc-00000002Qrr-22l0;
	Tue, 25 Jun 2024 10:40:57 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-7067a2e9607so1957398b3a.3;
        Tue, 25 Jun 2024 03:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719312055; x=1719916855; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=il3Ey5Gsm4oBBZ02CLeVI03mpmEtmmFpL868Qx4qwFI=;
        b=Vkpyoz1aOcjblGl9PCKc+2viV3UYl3qS38Q3JfVIM7vkSB9oQKm999a4WtL0OaQeHF
         I/Jtbly5p57TEyCk1hLE5WHZ/raaSmKos5FRfhYnR6vwWVsFKUYVuiovgGuFO2Y8aMo0
         xbAlFCBaUN2u0RB1ZXPNQRFQ3piO/72Bi8CFUv0INl7eOVttlMEuPYmAy8O7g68ZPMdI
         Mr3l6Fso0RRLg4+9ep8NASvsOE4uosTAQaZL5H/fsiHp3bA3u4pZRdSXxuNqlD/W7tJ0
         G4xN2GeayucJNNYyazniKs/QefbGcQhDtx26J1qQFcxVzXot1v/JSgMUqC4/FlxwtqfC
         MsrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719312055; x=1719916855;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=il3Ey5Gsm4oBBZ02CLeVI03mpmEtmmFpL868Qx4qwFI=;
        b=GDEYyphO4eaVlQuJ2OlFLIn0TdjjDfJdCOZtsITecD6IBUQsPh/vvCagWwaiUxR8gY
         8yc/lpMDS6WOrZxxHWtnXLP6uFU0W0PXkoCIO0nA2HDEgE30g2NulQ5post+pgIH63cH
         byp1+cpsmtSfKTgbNIGHuumnmbgR4hx0GxU4d3mPBWE+jrFCSo6Q0YnKiCKxzyncdCoB
         wxAHyi0TFnRzFLprgdkNKd6jy19G/Y9WkWFa9IK4l+EXLmM+jIVF7xD7W/scDhc8kRfk
         tDLR34TO0CO6bceUaWMJurc5zoxuxvl2uZyv4VCZD1FtRN5HpgOQ8h0rOA+36+CZgXRM
         K5FQ==
X-Forwarded-Encrypted: i=1; AJvYcCX/uDfyUp9BNCwJSslURFZ3p6rTLGbPGm5d6OayafP89AT/e7GLiCHszaIHX2nPrirZEOlzXkOxivnUU7RxSMZILj4kGcdxAw1zZHKtSAt9gqzGZtIZt4xYp87ZpkoWEbj6Bz1KxzfPrBm/0wfSes2hexrSB21kpho=
X-Gm-Message-State: AOJu0YycQXxqdMiKn2KP4178K3guSXLDw7HKwgC5rUDwFiz99GH93nHP
	+FoBBt5gYPYIyAXVUdd7ZFRtbXsTmzq1REowYSL7+R5VWlvqqi0F
X-Google-Smtp-Source: AGHT+IG5jMBJIUjR09xa4CpVgIEtsG2aJEYqUh5bHUayd+mBtoMCOI7oMvAVeuXfekdaoIvcE10DfA==
X-Received: by 2002:a05:6a00:80ca:b0:705:e773:f8da with SMTP id d2e1a72fcca58-70670ee781dmr6251744b3a.15.1719312054989;
        Tue, 25 Jun 2024 03:40:54 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7065e2c103bsm6943684b3a.92.2024.06.25.03.40.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 03:40:54 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
Date: Tue, 25 Jun 2024 16:10:32 +0530
Message-ID: <20240625104039.48311-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_034056_592557_CFEA85B4 
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

Refactor the clock handling in the Rockchip PCIe driver,
introducing a more robust and efficient method for enabling and
disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
the clock handling for the core clocks becomes much simpler.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v4: use dev_err_probe for error patch.
v3: Fix typo in commit message, dropped reported by.
v2: Fix compilation error reported by Intel test robot.
---
 drivers/pci/controller/pcie-rockchip.c | 68 ++++----------------------
 drivers/pci/controller/pcie-rockchip.h | 15 ++++--
 2 files changed, 21 insertions(+), 62 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0ef2e622d36e..804135511528 100644
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
@@ -127,29 +127,12 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
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
-	}
+	err = devm_clk_bulk_get(dev, ROCKCHIP_NUM_CLKS, rockchip->clks);
+	if (err)
+		return dev_err_probe(dev, err, "failed to get clocks\n");
 
 	return 0;
 }
@@ -372,39 +355,11 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 	struct device *dev = rockchip->dev;
 	int err;
 
-	err = clk_prepare_enable(rockchip->aclk_pcie);
-	if (err) {
-		dev_err(dev, "unable to enable aclk_pcie clock\n");
-		return err;
-	}
-
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
+	err = clk_bulk_prepare_enable(ROCKCHIP_NUM_CLKS, rockchip->clks);
+	if (err)
+		return dev_err_probe(dev, err, "failed to enable clocks\n");
 
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
 
@@ -412,10 +367,7 @@ void rockchip_pcie_disable_clocks(void *data)
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

base-commit: 35bb670d65fc0f80c62383ab4f2544cec85ac57a
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
