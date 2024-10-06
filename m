Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77D83CFB424
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Oct 2024 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yeBRzaPloJQ7KeU2VK3yi3IxNiQW6k/JsJ/McG6lig=; b=GIfigjjuL9LNvJ
	ieCWbi0Wxq+fPQo4dR/68/1htXARengjog6JnuMtTWw0XMDY3zz4EjWymYdsN0SGRSWjOmNVsUQQA
	c3sW1vM2eotjS9R4RBIqhQ4r2JQwoe5EGv3AzwLtZS/f3FvMDiInsrVdn2p6qh3XHKNCTKqk1Ez1r
	lX45cR3lil3dTF4nmacU1q7W0U6P5gZm7ThyctOtDEoLsHZiqozmM5FWJX7FUEJNV+i+oEQ3XvMq8
	JkALnPgeZKtobzg13G3ec8GhpetV9KNZ7OnnhzOH2IdMnEOsSUEcJ8e299+X/2530ICBq1lpr67z/
	hIE9GXUzYG+83A4qz8jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVya-00000000QBo-3FlE;
	Sun, 06 Oct 2024 18:27:28 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVwJ-00000000PqI-0WMI;
	Sun, 06 Oct 2024 18:25:08 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2e0a5088777so2942631a91.2;
        Sun, 06 Oct 2024 11:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728239106; x=1728843906; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BIiaV4Ox+gLOn9Mc+aj8cfaNVwn8b8YJ5I4FANpYiac=;
        b=J/V0h/BhsyQ5Da8DHbG1Ta3fTrSDLxULEFpJwQ7I4oXz8oxwgwYXJyhWj/cvOh1YuA
         2bqEP2+LhYkyOrrto9Xk6wntpeJ99pAiHgjz6TtIyAbB3Q/szVMbT17llw/I5LmMNhI7
         7fmQjhFZIp09IrSiltpHVkQGkFCkDVhzKmgdtOSM1IGhSmGF8pcHcTD7dZ6HSSWrErY9
         gd1Kr28RYocofJB/cOYfe09bgfalG1yzDjY1zuUv4xYWKEQFhGnZJUMU5xfWS3/cQfQR
         uTb52NPQaN8mubLuqYliGk0UkpYKbjCsSTL4l8wW96iKQ80cA1ZM7SXKIjRr6MsHOqM6
         KECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728239106; x=1728843906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BIiaV4Ox+gLOn9Mc+aj8cfaNVwn8b8YJ5I4FANpYiac=;
        b=Bs0TOtPHt9GnApZpOfkLP9rDhxyhs1Q82RE+p3hw5NeNM9O7/t/mdihOMhm+U1UzWy
         pEnST4cU8XA9mpByNME+QRApg9mqzUkakA2GmkrW0UldCguFJ4jJKK3vSrODP31nHx2Q
         0jokSujoCWYb5xuWVvwbkbFDYY54qnacaAojXPVPMQrdh3jvmyBwfFt4Qc4GGgYe26qL
         W3cnYI57wqZkWkUpqxugsoXemnfOwycFK48MXJqkXXp+BlbwxEDJlYBV6hFg9r24NXMU
         UxNbppw0U1RZUwmxGYATjOi/oiclPmRJXAy24hoROOxwv1Z8kplH90HJaks98iouPAS5
         BSUA==
X-Forwarded-Encrypted: i=1; AJvYcCX+n0X0fpXfBrq91dL6ho07B2ndbPNXhtRsuUIPbnxFzqK6eLJMjKIz+VJolKKWnzsd+3e6f5EtWFv564LRNZY=@lists.infradead.org, AJvYcCXy1o+DNSLuNruZu5iBIVT0DmGaLGZLb/EBqJIoaWO2212FJUyoc8TVO7E9HXbVTQazaPKFSozmLftKn8VE2SkW@lists.infradead.org
X-Gm-Message-State: AOJu0YyOpjOdcGqGhNsfFiFU9FthmTjhWzdKF5L9pQj16MJQ5n6OLIqk
	UlE9qfevkp1c+fZfGNqD/eKwtfRFWyDCZwM4GEZCx6ewlYZt0Y28
X-Google-Smtp-Source: AGHT+IFUey3b+n+xgvsk3A3QkIQivs73Fk+cCDp0br0nrKsufgy8h7LMMcoUdhX14sv9BvrRhEbW3g==
X-Received: by 2002:a17:90b:4a4a:b0:2e0:b741:cdbe with SMTP id 98e67ed59e1d1-2e1e631e2d4mr11196672a91.26.1728239106336;
        Sun, 06 Oct 2024 11:25:06 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e85c905esm5458471a91.17.2024.10.06.11.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 11:25:06 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v6 RESET 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
Date: Sun,  6 Oct 2024 23:54:36 +0530
Message-ID: <20241006182445.3713-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241006182445.3713-1-linux.amoon@gmail.com>
References: <20241006182445.3713-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_112507_175901_235EB0C9 
X-CRM114-Status: GOOD (  16.82  )
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
v6: None.
v5: switch to use use devm_clk_bulk_get_all()? gets rid of hardcoding the
    clock names in driver.
v4: use dev_err_probe for error patch.
v3: Fix typo in commit message, dropped reported by.
v2: Fix compilation error reported by Intel test robot.
---
 drivers/pci/controller/pcie-rockchip.c | 65 +++-----------------------
 drivers/pci/controller/pcie-rockchip.h |  7 ++-
 2 files changed, 10 insertions(+), 62 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index c07d7129f1c7..2777ef0cb599 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -127,29 +127,9 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
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
-
-	rockchip->clk_pcie_pm = devm_clk_get(dev, "pm");
-	if (IS_ERR(rockchip->clk_pcie_pm)) {
-		dev_err(dev, "pm clock not found\n");
-		return PTR_ERR(rockchip->clk_pcie_pm);
-	}
+	rockchip->num_clks = devm_clk_bulk_get_all(dev, &rockchip->clks);
+	if (rockchip->num_clks < 0)
+		return dev_err_probe(dev, err, "failed to get clocks\n");
 
 	return 0;
 }
@@ -372,39 +352,11 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
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
+	err = clk_bulk_prepare_enable(rockchip->num_clks, rockchip->clks);
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
 
@@ -412,10 +364,7 @@ void rockchip_pcie_disable_clocks(void *data)
 {
 	struct rockchip_pcie *rockchip = data;
 
-	clk_disable_unprepare(rockchip->clk_pcie_pm);
-	clk_disable_unprepare(rockchip->hclk_pcie);
-	clk_disable_unprepare(rockchip->aclk_perf_pcie);
-	clk_disable_unprepare(rockchip->aclk_pcie);
+	clk_bulk_disable_unprepare(rockchip->num_clks, rockchip->clks);
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_disable_clocks);
 
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 6111de35f84c..bebab80c9553 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -11,6 +11,7 @@
 #ifndef _PCIE_ROCKCHIP_H
 #define _PCIE_ROCKCHIP_H
 
+#include <linux/clk.h>
 #include <linux/kernel.h>
 #include <linux/pci.h>
 #include <linux/pci-ecam.h>
@@ -299,10 +300,8 @@ struct rockchip_pcie {
 	struct	reset_control *pm_rst;
 	struct	reset_control *aclk_rst;
 	struct	reset_control *pclk_rst;
-	struct	clk *aclk_pcie;
-	struct	clk *aclk_perf_pcie;
-	struct	clk *hclk_pcie;
-	struct	clk *clk_pcie_pm;
+	struct  clk_bulk_data *clks;
+	int	num_clks;
 	struct	regulator *vpcie12v; /* 12V power supply */
 	struct	regulator *vpcie3v3; /* 3.3V power supply */
 	struct	regulator *vpcie1v8; /* 1.8V power supply */
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
