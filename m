Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88DFAC43219
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 12:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kO03w9ltfK4vG0eTKXkyjlrCyaT4Lr+vdO+2IuEDh/U=; b=hfK2+ucPLy8xPM
	3vpix0QZ50eJ84af8M48Y35AnrSZleW/E9VhHERbqG9NjZnfvOJ/ryRFCyHEzuF6/ykIzuXZgX9ET
	x16EYNsABxGAcZeDnMdz8xQIoFGipMsfRyetZKxZS7EXt1pe1FsWTv/46TzgEc6sZpU7fLYsE/FMU
	J3qPoZbk6594+xwe1tURMbavaZHIidd+c91XXJXR2Nq8Kmh8Pbl8n6kVwF9lhuERN4BPoc0KJ09PI
	dHIgldaUBSPmfV4cB2mzhKMXl4yhdjYkuROYcokBCZBwGxLPaLNCzyaPxTfRs28FvZYp4aL4RzwLR
	YtdFQnPTHyqPZXlTNz2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPtV-00BBJY-1k; Fri, 29 Apr 2022 12:38:45 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPtS-00BBHc-3s; Fri, 29 Apr 2022 12:38:43 +0000
Received: by mail-qv1-xf31.google.com with SMTP id a5so5240687qvx.1;
 Fri, 29 Apr 2022 05:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=201AgYs6wxZXn0CiA5WtaZGJH3IgZsAjitKsl1zeggo=;
 b=bt8ayZxMHw4laYtEaAyGgX7330rJVK1ajlU2d7QFoy4B+KP+smWpbI+Wwy2NmAvgCJ
 7PfJV5I4EOSb0DQk4hXHy6CeFgeD5azjLC7j8waIAkAAG/v7EXQ7fv081l6lydsgyzms
 tRKu1FUzyOnfPfQ3gTTWN4pO1V7Dfla+jZa7B2NPrGiFVjxMTK9qU76IPJK8mJI7QzAg
 RXnsuDeet4J4L3lFY6gbnQWbfvKfl5jRZ+pTK3Y3VWjQeabU4a6xQ0NfnYNMfiMYVxtU
 08h8XTxaiw0Si7GdIGZNvcgGGLn0s6IL8FXwYjYubMwQVpq5Mlp1aCWleRm/gz3AwpTL
 CEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=201AgYs6wxZXn0CiA5WtaZGJH3IgZsAjitKsl1zeggo=;
 b=Ym8haizYwkIdap2YVaVufhYjQSnBMuT9VAFtIf2jCtL2aD0ep9pCV5zkLeUE+TCtMa
 1XKR+25h1dzQKPV0M7wWvApPpCNkiId6RN5/4FjanmTzrADGK1WL2bhewyjhaC2i1fFK
 2G2dbMUpylRgQlDtnv6aABoQCOs6g00fx/EL9ykyEsexU/1HdNs8/YdYIvmUbpcQpDXs
 NtU1zeU6WbJishcwv+YKU8/KrOSW5MR7xaDvJEmXgtQNZDXMpE3m1x3l1hNswbqgw0oG
 DKFA6LV3qgGyYtmU48M3TdqgdKQxDIeYiughWISwMuP04KjNtgituj/ft8CgBbe5IGqq
 eW/w==
X-Gm-Message-State: AOAM533Vu4V4t8cqTbbSmwNczD9/v6tBH4GfwYOfTPHUjGD1Hmd93j8F
 O5jzxY2AdvVhDzkpQuwZoK85E7oyQzFYH3JP
X-Google-Smtp-Source: ABdhPJyeoCUg6N0c4WPfHjvyCADXc9l4KxtqZKYvz7SV8mcxhCCx3m1zBH5DBIY79I69gcfQpeQ6ww==
X-Received: by 2002:a05:6214:519b:b0:456:48f2:a1b1 with SMTP id
 kl27-20020a056214519b00b0045648f2a1b1mr12840340qvb.4.1651235920957; 
 Fri, 29 Apr 2022 05:38:40 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 v126-20020a37dc84000000b0069f9c375519sm1431644qki.46.2022.04.29.05.38.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 05:38:40 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Marc Zyngier <maz@kernel.org>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: [PATCH v9 2/5] PCI: rockchip-dwc: Reset core at driver probe
Date: Fri, 29 Apr 2022 08:38:28 -0400
Message-Id: <20220429123832.2376381-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429123832.2376381-1-pgwipeout@gmail.com>
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_053842_207522_D08377CB 
X-CRM114-Status: GOOD (  15.11  )
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
Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 23 ++++++++-----------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c9b341e55cbb..faedbd6ebc20 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -152,6 +152,11 @@ static int rockchip_pcie_resource_get(struct platform_device *pdev,
 	if (IS_ERR(rockchip->rst_gpio))
 		return PTR_ERR(rockchip->rst_gpio);
 
+	rockchip->rst = devm_reset_control_array_get_exclusive(&pdev->dev);
+	if (IS_ERR(rockchip->rst))
+		return dev_err_probe(&pdev->dev, PTR_ERR(rockchip->rst),
+				     "failed to get reset lines\n");
+
 	return 0;
 }
 
@@ -182,18 +187,6 @@ static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
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
@@ -222,6 +215,10 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = reset_control_assert(rockchip->rst);
+	if (ret)
+		return ret;
+
 	/* DON'T MOVE ME: must be enable before PHY init */
 	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
 	if (IS_ERR(rockchip->vpcie3v3)) {
@@ -241,7 +238,7 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
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
