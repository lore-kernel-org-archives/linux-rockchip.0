Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A14BECCF9E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 14:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxEzYBpvi+ux2vsUBK9opPUGuzimFhv03F050mYVRl8=; b=CPuCY1JajbUbfv
	zVEpzT+q6alOR93RfBMYiR4oZ+xbsaO6gKa6mc4JNN5WDp+Kuni0xoqt+KWDsfpeL/Ujm1zOisyEZ
	x3vNC/JtXU0AeJ7+6M7ePYYgxkgkn874dOwtf/WEE3BEJn5sy8D+x4NOkeY9JpRZ9F79QxSct39b8
	Izv9W6czdl/kB6NL8iBPb+iUiMj5ErufW2T53MBtanMtrZPkjWQU21w8EKlRFQ0w7ErV6rarg3Auu
	E7gJhZIR67hvB6pcTlpotmBaozq+HnX5HSSItVCQaV8U7SWQsbZOSevXzSeLNygVb4qBQA4uqo7Hm
	muZUtxEg4KXrp+H8nMsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOe6-0000000EAX1-2IrC;
	Mon, 27 Oct 2025 14:56:30 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOe4-0000000EAVf-2Rk4
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 14:56:29 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-781206cce18so4720355b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Oct 2025 07:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761576988; x=1762181788; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XJHpdmr2NXtFEk3A9X9aIw2etVmtC3q73hrlmlo4/OE=;
        b=efdS3w11bpHaEEadEp4Fii1X/c8oExZAv/cyVOBjs1sN/8/BJDlUo8CDelUpkelfJT
         65EaReL7YQ2vASZ7gBXUihX6wxaVKbSoNebYuVg223UezQVA68o2+g4lSPpi15CzbdmL
         20ORgELUQU1amPUHE3wNm7Uv+tSIp232JsXSdC0zpqxDhwLbDhOnk+EgtwATnog2zBml
         3PRIMb/oG9GHqtWN7CzELady0XM72y5yup3XCpVyGFoEhuEK5rL1kCLsWq1AhZtE8F0Y
         kZmj1Rc/MRkryErUpnsuuChR9z3W8S7n+pp1+I0YjyHfcN07ThF+yQ0B0SGKo3lM/JUl
         ByuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761576988; x=1762181788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XJHpdmr2NXtFEk3A9X9aIw2etVmtC3q73hrlmlo4/OE=;
        b=NYSCS07c1h5D/ZlKs4p/OiJaheNmcm6ksJifbTZNRzKMgStDhE+tPHfgQmFHqYULua
         NbSKJ3EMLIHTP5BWBjLoRz18vvfiKVVh50c9uY18FBKFTU2xAomFkDaSMsOoQzC+vuga
         M4BxTey/5kFE9Ushz9D/HKRleZCVjHcFvYmJsW+f2g5nXow3sVCLVRj2ZO3zMp/1yX8i
         b775zjLlTn0bYfT4mwSWWHNdIZ/KzQT84i2ea1i2HrV1YmZW1vVdD+ZSWx5+ryrS//+g
         65Ddn/PXG5KagcKA51PTTeEqVzHWfycLTyC1SdSvcba4FhpAAlqHtxDpRpvo/jhelfot
         X1bQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxfQ4oy6rxCpPJfm7+nFvmoteZSm8apIHfd7leSYigYsnI8Cpzuh7FeMaA0LClfCvBiWMORL5SraJ9QgiD5w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUfGAAnsu9RrQHksOh/aFF0RiYTMzQncPQApLZjE+/8wytqW1l
	cSpjDgf7gv9tHXvuL5NfbOASr/Fn/VmM/muKpo9TX0ui/6sDCheVqQsU
X-Gm-Gg: ASbGnctTr6P74D1dtuQ+P/55sCZ5Z6PqPJB1byDFvHsnARoohgphnHkAnQ8ozcy83WI
	akW7vnhrLuKlPwqXZzjwuMrgFFc6vN4ZGKyKKPaku18O27VwkL6IiLAsP6lWM9QAeI1izK4X0lV
	j8ee9ZEZJnpmqJeg0RzlkyC3SJBfDXr8SlTOp0GZq9ny+U9rtgqv5E65ZxNx7B89j4DRepzis6j
	cVwaiTUdyWEcvegiku3W3ROiMvZbYio4nO3b1OAOlQYl2G3Bec/M9T5/L7eCTkmpHTAp1iCzHqm
	DaJs9AXDd9k7WXD1+KH/jTElPOXiQcMfE62aPw3AtzCWe756HrCghfzItq2/ebz5OumObdPXaAX
	SEv2+3Hb5ytB5S128c7auXD82nwx1dPCUNASgkUrKldditJBVnhIjKRKLQPLdjVkmFAiKip1Ihg
	==
X-Google-Smtp-Source: AGHT+IFpo+vKMKtPf87tmaXVzNFkUX+AxdjSTgekyu9iCoaPZB3m/DdveKL6EgBsKmZAINobovUjew==
X-Received: by 2002:a05:6a00:6d48:10b0:76b:ecf2:7ece with SMTP id d2e1a72fcca58-7a284df06aamr11245249b3a.12.1761576987961;
        Mon, 27 Oct 2025 07:56:27 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.108])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414012b19sm8373372b3a.12.2025.10.27.07.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:56:27 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Hans Zhang <18255117159@163.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-pci@vger.kernel.org (open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 2/2] PCI: dw-rockchip: Add runtime PM support to Rockchip PCIe driver
Date: Mon, 27 Oct 2025 20:25:30 +0530
Message-ID: <20251027145602.199154-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251027145602.199154-1-linux.amoon@gmail.com>
References: <20251027145602.199154-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_075628_630796_B5782255 
X-CRM114-Status: GOOD (  14.62  )
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

Add runtime power management support to the Rockchip DesignWare PCIe
controller driver by enabling devm_pm_runtime() in the probe function.
These changes allow the PCIe controller to suspend and resume dynamically,
improving power efficiency on supported platforms.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index b878ae8e2b3e..5026598d09f8 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -20,6 +20,7 @@
 #include <linux/of_irq.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
@@ -690,6 +691,20 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto deinit_phy;
 
+	ret = pm_runtime_set_suspended(dev);
+	if (ret)
+		goto disable_pm_runtime;
+
+	ret = devm_pm_runtime_enable(dev);
+	if (ret) {
+		ret = dev_err_probe(dev, ret, "Failed to enable runtime PM\n");
+		goto deinit_clk;
+	}
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		goto disable_pm_runtime;
+
 	switch (data->mode) {
 	case DW_PCIE_RC_TYPE:
 		ret = rockchip_pcie_configure_rc(pdev, rockchip);
@@ -709,7 +724,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 	return 0;
 
+disable_pm_runtime:
+	pm_runtime_disable(dev);
 deinit_clk:
+	pm_runtime_no_callbacks(dev);
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 deinit_phy:
 	rockchip_pcie_phy_deinit(rockchip);
@@ -725,6 +743,9 @@ static void rockchip_pcie_remove(struct platform_device *pdev)
 	/* Perform other cleanups as necessary */
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 	rockchip_pcie_phy_deinit(rockchip);
+	pm_runtime_put_sync(dev);
+	pm_runtime_disable(dev);
+	pm_runtime_no_callbacks(dev);
 }
 
 static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk3568 = {
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
