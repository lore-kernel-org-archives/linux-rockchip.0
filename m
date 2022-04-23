Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77E5EC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 15:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ew1maeJhPnpRZqrGVwBG+d1S8ZAnAh8108AS9p6DQJE=; b=JRCGD69RBt0jZY
	agU+qv1N09CSiPUV2JIgb8T1VNgZLsrTj95dSRrw8Uzj0rmC1zcy0b8gqWduKZjF5VuJN67nXF+JW
	t3GD2gSMGSNWxdDX/kqFkkvqWjYPrmKD2xfk4mE9sxHzSVCA/30jmcr3y0wGfMnbGhR4WX+eOS/Vj
	fGngzh9yxVPJoQCpUmgUtNZdMU/6UV8Cf7MKtFAl1ETaArpp0s3apOQhIAdFvhn1tOEGBV5a9kE/5
	AtFYnmoCkIax65vXzG13enu8pF49B5O6+f7cqf+aaO62MCFFCgzDE2BfHO5outEkGu/sU4+JtL/7/
	rV0Gey7QKD3NXiyypVlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niHcm-004WaY-2t; Sat, 23 Apr 2022 15:24:40 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niHcI-004WHe-Ai; Sat, 23 Apr 2022 15:24:12 +0000
Received: by mail-qt1-x830.google.com with SMTP id bz24so7570534qtb.2;
 Sat, 23 Apr 2022 08:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/vlE3jklwJQd6ueFtiorc64wDSZ8+k3Jyqs3OwGaYUY=;
 b=UBnggtjfHwcWpvPs+QnS6XEae3Sasnm+H/xeBR9JPKtayJ7uYgzHfKAbKmnXOfFTn2
 PvdCdS64Odc13wkddhNe/6CK3a46xT5ijDkvTYm93iNk6S0EQL0Ckke6ySZFfbFVWq3h
 JB2fRQi0Cp6+d5Dc2jxelEfpT/CB6edvOKmOMS8FravcHZbPanbqRwKUN0AiqOuq14eA
 zV3fClSKFlBMRoDogHA+qWthT4EACXfTqAy2oWcecvDJQxQBluqi6+zlGV36ox6Gk6bG
 SE25zfwhunBWVHoJPWO2olCyF/D9Z6Jt+IuQ4ImwCnau5gdQi5XicLqecSvazd8scrvU
 AaqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/vlE3jklwJQd6ueFtiorc64wDSZ8+k3Jyqs3OwGaYUY=;
 b=7ZfSry3h018EqG7RPVytoGk0opX41clZ8xKq6Cv5oSg08vp0drTsDyTwUJP0TMBZK2
 g50m4aZQAYNw/ga3WgpXsBhV+j7G6ctVz1t6qZCAs4Z3XAmDRwMvFJ2wX1ewYxaeNh7E
 QlEBS/jw+4mXBqlFQS2Z5EJlKqwU9tK69WYVFzxS6bQw/PL1FGUZcnY33fMvqsTT0xqu
 DYfsthV2/7LQzGv+Uwd6yb5Bhzdf3wz+Lk/ZoE2mv3SYoDZXJ93FNe+XsCa0SPdaQdy9
 TEB1SxAWstbRph1SdG5oIBJqzSIKkg3AdUgf3jHjaEETQ9GmFTB76kp5vOinznXvlmhw
 BacQ==
X-Gm-Message-State: AOAM532wn3dpp/IMOuwPrkNWygX9zEHkd3d+CA9Ub8KI86q1e28U3aGc
 URfaOqfmdMwjMHguDKB1lko=
X-Google-Smtp-Source: ABdhPJy33XCCwrH6FQYKtkPcqctQEtJ/D+MhJRTW/U1KLGtthMgsWI0Tpo3VWe07SZePvCe/6l4sZg==
X-Received: by 2002:ac8:598b:0:b0:2f3:371f:7c2 with SMTP id
 e11-20020ac8598b000000b002f3371f07c2mr6644462qte.485.1650727448784; 
 Sat, 23 Apr 2022 08:24:08 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 y6-20020a05622a004600b002f33ba280cbsm3184165qtw.8.2022.04.23.08.24.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 Apr 2022 08:24:08 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Marc Zyngier <maz@kernel.org>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 2/5] PCI: dwc: rockchip: reset core at driver probe
Date: Sat, 23 Apr 2022 11:24:00 -0400
Message-Id: <20220423152403.1681222-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220423152403.1681222-1-pgwipeout@gmail.com>
References: <20220423152403.1681222-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_082410_430084_CCAF20B4 
X-CRM114-Status: GOOD (  14.53  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The PCIe controller is in an unknown state at driver probe. This can
lead to undesireable effects when the driver attempts to configure the
controller.

Prevent issues in the future by resetting the core during probe.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 22 +++++++------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c9b341e55cbb..d67ed811e752 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -152,7 +152,13 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
 	if (IS_ERR(rockchip->rst_gpio))
 		return PTR_ERR(rockchip->rst_gpio);
 
-	return 0;
+	rockchip->rst = devm_reset_control_array_get_exclusive(&pdev->dev);
+	if (IS_ERR(rockchip->rst))
+		return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst),
+				     "failed to get reset lines\n");
+
+	return reset_control_assert(rockchip->rst);
+
 }
 
 static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
@@ -182,18 +188,6 @@ static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
 	phy_power_off(rockchip->phy);
 }
 
-static int rockchip_pcie_reset_control_release(struct rockchip_pcie *rockchip)
-{
-	struct device *dev = rockchip->pci.dev;
-
-	rockchip->rst = devm_reset_control_array_get_exclusive(dev);
-	if (IS_ERR(rockchip->rst))
-		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
-				     "failed to get reset lines\n");
-
-	return reset_control_deassert(rockchip->rst);
-}
-
 static const struct dw_pcie_ops dw_pcie_ops = {
 	.link_up = rockchip_pcie_link_up,
 	.start_link = rockchip_pcie_start_link,
@@ -241,7 +235,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		goto disable_regulator;
 
-	ret = rockchip_pcie_reset_control_release(rockchip);
+	ret = reset_control_deassert(rockchip->rst);
 	if (ret)
 		goto deinit_phy;
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
