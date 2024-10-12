Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F1DD1A431
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 05:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUQDmmXnPyJNVklAJmc+pPn1K3SWUi65w2flFzy6EW4=; b=pwPrOZ+ze+C+ww
	ezuzNlQri/JtI6jgi5H4j1brGXgGTsunhWuPDhqfNxV26EIkqjYKWgUI5nL14Q9ZzGusvuKg2PTUl
	8lQPf/4S+VVHZPiKPxR10sQGQpTC51N5Ub7gSPRNHOsNQTZ0eusDWIO9a+voZ17eYInEub5q6n7mg
	btD+PQOsgBM7dbdrCo3w/kso+FKgHDi1Fj4SwJqV7ayjQmuX9plLBgBP1nvlFU9gevMI/iZsPqjrp
	3PIPYxteynB7C+7coQr3ZYNyrGhlo+f6kyXRd0O2I9vH9tv63v635nNaRzSR8UV3w/oZLuwrTGwL2
	CCGomZaPPd8tk40+oHhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szUM7-00000000YON-1TNj;
	Sat, 12 Oct 2024 05:07:55 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szUKm-00000000Y9P-3ju9;
	Sat, 12 Oct 2024 05:06:34 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-71e0c3e85c5so2230675b3a.2;
        Fri, 11 Oct 2024 22:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728709592; x=1729314392; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hVdwZ9INnz1rSSRJAqZ6l2BLOiXSoUY6Jd3SSqJ9fJ0=;
        b=HTZ1cSO4TUhEYVbfPTNiy5SoXd8apzukIgZFZq75ldgahnBlKJ0jUwgegtXf2GeiO0
         pN08lGEc4AZfYkpUVVPC+EHF24KROam0NGAaanBg24rcfwcT0lUC2zqBrkVkqpE8ULib
         XfZYfsykFE9ETmx4SdPRsCoEmts311/ZfOhVj7hhoZRaT/aM34vwu9FPXEVwBXFGhyHw
         wAo6b3qtab8nyc/No/14/LzSWRQwJ+y5vqkj/6+xxfXazOVe8CKU4w51I4ri+2x8O2PP
         g1tIpcMG/IB85gM30qOdLslpJURMAdFT4PwnUe/9zMZA6yi0cFHmkUgtLmJHTmSa5oSO
         gIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728709592; x=1729314392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hVdwZ9INnz1rSSRJAqZ6l2BLOiXSoUY6Jd3SSqJ9fJ0=;
        b=E/r5ZDB0zJECnytWN18kJfNA+PLnfmz4QpzOtwTy1Jz1ur5+4g2tx51e7sd/9TZjmt
         do0MMQaYAKpDdwHUJig2LsMSpLRSKlkSyCLRM+ORQm+/v3M+JJCS1Or0l+ZruOCinhaN
         LZ4lsjSZGF+8+zFM2jTtnYKQkDA9GTbcQ7aPUHmRhb6bI2+AemyTmy/2E6fimtU2Yv7/
         wGpNNyOd5/mfJf78qrBuvAyBKs0WfKbuxZ3SNjy7FyvZwTyMo90cc3i9sz4j5rELCM6X
         zmnRa8fOlyYgf7ySpRGpWZnWpcrDF2kTAyB2qkw+WleIWUwqUm+NVR5kx7KmM0fIU2g6
         h3/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXCF+v8jD4TGPMCRs1T9xa+dAX5+tUxsXrNA7fBA0JN+Ruuoy5OWC/AAzgB0uyq2x/qbH9y5KHwVE6kiRf1Cnzr@lists.infradead.org, AJvYcCXcK+9dtZfHBN+iw/oPWk7+L6xtZeNWkdIo+hpYCLLZqRHbdHpxpTbXsLMkM6csqJ6LJgcQCtivS9BWHiBnlQg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyxutmFw7pWqsScu6pGFp8+i0Vqf36yhwv3bDyS6FDO0s37S2Vz
	VV3Zw4XZcATDxYOl0cKljbNzbrR08t8D6wt/LKF97qGknial/ldv
X-Google-Smtp-Source: AGHT+IG6hfffFkqnW00YmxEtnyyslCZ1TgJ6ch7+yc84KUAa5gHmGPezTpWnj8SUYjLC034jL5kBbg==
X-Received: by 2002:a05:6a00:3d4b:b0:71d:fbf3:f771 with SMTP id d2e1a72fcca58-71e380bb0dbmr7375679b3a.24.1728709591850;
        Fri, 11 Oct 2024 22:06:31 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e4ad1b9f7sm859809b3a.190.2024.10.11.22.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 22:06:31 -0700 (PDT)
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
Subject: [PATCH v7 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
Date: Sat, 12 Oct 2024 10:36:03 +0530
Message-ID: <20241012050611.1908-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241012050611.1908-1-linux.amoon@gmail.com>
References: <20241012050611.1908-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_220632_956732_EE60FA89 
X-CRM114-Status: GOOD (  17.24  )
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

- Replace devm_clk_get() with devm_clk_bulk_get_all().
- Replace clk_prepare_enable() with clk_bulk_prepare_enable().
- Replace clk_disable_unprepare() with clk_bulk_disable_unprepare().

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v7: Update the functional change in commmit message.
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
