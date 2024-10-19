Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 098FFD3E1AD
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 06:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGKfx/n6Kdps2qIQQQNLL6DWA4QcCEMH2qoLfDrBipI=; b=EKASJx2jvT1yLB
	7MFP7AbUcGY0WCwEgRwhh38pjriuleK0xDGR1he2MIv2kNQqofXfqsR1T2IZtSH9Axv0CsXarmdnL
	hiP/JBW/bOS/xMmQroqeMvO+xzjibOhlwASCB/3bTEJwD1nMCIk4KORN0KKYAIh+BrpT7D1uKXkVC
	AfuJvbEVfP8arc58SaNqWn/iy0T566GliKYnLVgw2Nja9JgdG0YLlBrvrFghDS47Nv1z0wchZ7hLS
	kTmXvvRRPAoqmIFjKgNVtt056MlU8GLqZsfYEuCWtgI1WT0awVWlUv8Am8ela05UeYiYCHnj1VJrc
	VSLYH2QHfvrD07evYNPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t22Ym-00000002dVW-1Gyu;
	Sat, 19 Oct 2024 06:03:32 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t22XQ-00000002dFA-2Blr;
	Sat, 19 Oct 2024 06:02:09 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-7ea68af2f62so2248166a12.3;
        Fri, 18 Oct 2024 23:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729317727; x=1729922527; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jQ6be+SEmsFjGTKinqiVprV+9Ah3x45IjGdiVlbmFiU=;
        b=UCVMlLxwJREskxxnSNnjtOGYlsM0zxuW0ZIgNpH6SxxWUy1FxVijrRyYIuS8gKfMFH
         uGR/WYU+StYssLSGXccgWEDo8HREw/1Jz04aTXfQhIYUhaxJy0sTiiJn1KAltu7cc+O4
         ykWoJ8xHIlymo4YX3p1AuJ249a8dV2xr7DxG4k/wp5edzEISIQlHFW0+9f5gdc9Qd5KJ
         KTTQYTYYEfayvq43dP78DoEI/hDt0/kkPePlQisrtJY0Naax0p4phxbdEayxhpxsazuJ
         mkL/gcJz+kp3DGsT/Caw2ZRO/wFaJd182lhBe9zgY4Ohv6rDzmPRtuMvCn8YVzdDWdVE
         4YxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729317727; x=1729922527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jQ6be+SEmsFjGTKinqiVprV+9Ah3x45IjGdiVlbmFiU=;
        b=OsO7pn2a5YfMSBO85kUyk34D07SZdBROwWx/Pk1dvC3Yo8tveW+K3ShgLYVnITit8Z
         Kw6Fl6bFMaBEjJ3k8mImmsLCYqSGOIXmZUR9e22wsND5WFv4DmSzhrgzirURCwpjHWUC
         uDTIJiuFkVmJbrTbwajdzXGeI4a4wijlo853ZM9kdxL83HqK/KYtKvOOPEuCqj4spHMY
         03CYtcW3Iopi4dJhwCrzNjDzO0ZpENl4cYrega0pknJWybQTdyU2B77qfAGOiO2KG6f8
         iwJgYZljiMLbrg7JFU2f0GqiIJxbIvRPJGJzb0koXVDi2aTqSk01eb2zXsnR9O7yU2fm
         xj+w==
X-Forwarded-Encrypted: i=1; AJvYcCWmsaWGDXkZ7Mfntxdhhfq8yC1DQUec0mqagkrk5RV9z7pKnhSgkOik09sntYL4b1pTLWpTF5Xx6CR5bTYwTVTH@lists.infradead.org, AJvYcCXmSvSr0nDsqKyrPtriIgT5hsxY8MdpzsZVy8I0/1eeQHkVbwQwYaZg/9rzUD1R/GdtxNPFFvRw9TantUaj9wM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwBdCuvoCtSr+9JcEkV7TfVwYdlK4PQeCtUPiIh5NG+D+CbQ+wG
	aDDsh6RuKeVYfjTFHGBJwBl5SUbhcNEZOhS3bH1/jV20tWojAptO
X-Google-Smtp-Source: AGHT+IFy+FfUBWUgsF+te5eNb1txluGoVKFLXLnrvrx8BjdXoDOY7NlHg2+3bpRImMOEoXcQpksJLA==
X-Received: by 2002:a05:6a21:2d88:b0:1d2:ef5c:13f6 with SMTP id adf61e73a8af0-1d92c597d59mr7155759637.34.1729317727448;
        Fri, 18 Oct 2024 23:02:07 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ea333e94fsm2424237b3a.69.2024.10.18.23.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 23:02:07 -0700 (PDT)
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
Subject: [PATCH v10 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
Date: Sat, 19 Oct 2024 11:31:33 +0530
Message-ID: <20241019060141.2489-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241019060141.2489-1-linux.amoon@gmail.com>
References: <20241019060141.2489-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_230208_591778_5A053510 
X-CRM114-Status: GOOD (  18.35  )
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

Currently, the driver acquires clks and prepare enable/disable unprepare
the clks individually thereby making the driver complex to read.
But this can be simplified by using the clk_bulk*() APIs.
Use devm_clk_bulk_get_all() API to acquire all the clks and use
clk_bulk_prepare_enable() to prepare enable clks
and clk_bulk_disable_unprepare() APIs disable unprepare them in bulk.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
V10: None
v9: Re write the commmit message.
v8: Improve the description of the code changes in commit messagee.
    Add Rb: Manivannan
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
