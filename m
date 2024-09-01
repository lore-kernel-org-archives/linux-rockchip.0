Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 474A1CD3420
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 18:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCQHShagv6KvqpWA3g6hK8AHXu/wj2YhMjzd1JYk7mg=; b=AWr27xyAy6pyy0
	XYvPMZZPaerf2hDpRCQ0hcpsnJbeYpJo0GRdk6jvhgdzYRYokL0yTQWXqRHBQZTu2YWJQmkexFmcb
	jIPyedPuH+ytEYqpv0bQPNG/GvIdAkcGQi3P4S+QdNtK3bnl71OlTxbU+oeg5uD3lttYToo8pcmIx
	7GeO0hm2hozkZjYiuQA8gHVGR2JHDy5gtC/eQ4T8IQmTQ50dFGlPr4pQpUKQMfcxR0KZmhKJihI9M
	aHvcyeLIbMXcoDvd8hOOl0EW7r9AyUyLIEVyQlA0byzyTTWnXg+0SaGB4t6t4DYN7Jhu1yUEFUcbw
	nODy+CF3o4juyq8RlL1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpSs-0000000C968-1gu1;
	Sun, 01 Sep 2024 18:38:18 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpOr-0000000C8Ka-3BLT;
	Sun, 01 Sep 2024 18:34:11 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-7cd8c8b07fbso1234215a12.3;
        Sun, 01 Sep 2024 11:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725215649; x=1725820449; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1OZckweW5Fso4kEkpFhONlk2Rygt1dqEGGEL98qz2s=;
        b=QX234dMNEQr7jFXgxHzvnmHhYk+OcCy7YaPogBWF7qboOiYDy+8NK2Rwp0MK3mOMGY
         mppZZNKT3fZW7KzsgQXfObQP7liDbHp9nNylsXuhtYHtvBfXbEsVIea9pNWM3+APmIg1
         XMixDmgDKiEvOGI8FxHTwOgJic2VBuFhfY7PyLVkfPTDl436BYpadXfrK2KkZq+7Hq6C
         GYAb5gavX2ZSTGyIsTwOyZD/V5YVlYjYceYf/1GlKReqz4GYY2N9KDVyGbuelw+Lk0kJ
         lXPtlkkKgMBQh01PRj9SQ/FTxJCTQfs4L8wtu3mpJJkSxyTuHKZAFCrSdONi38lR3Cb3
         T33w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725215649; x=1725820449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W1OZckweW5Fso4kEkpFhONlk2Rygt1dqEGGEL98qz2s=;
        b=O8LGpCS4cTEM5eLO096cEQoDS+RNZgfWdn9kGQrA6L8B8oABtQ1nRLLMBMpob51wa9
         8fqBLPvKZtsk8gx9mKoStahghzEw3w8oH81lb5+W835IwR81VxDQjJbjeVt6DYcPwDN8
         2nrxTrKJ/oA1oF9K7dO2olZLUeloxZ8yOXhOlCIPamghn7QLclYG8CYHdsxCNoCgovOQ
         DMS2co+6eSGEzYZp96qg93DbIEy9k8PLhGwxr5pabQPUISbxwa1PgIlFVVuYppLo8+/i
         p/EyKoh2yDUUsR+Dpn/DM7R/9Xx3eLvT7i8TjFNqznDEyJvjn3gkRN3ZeydS+YziNKtM
         c/7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUwkHB9lUQAngZCjOWOVeEEMpAmBuM5Rbyd8+6EI2S5gekn6H9vtcpS8wCTglcT2VEXWSUv5ZUs//Cv9C1M8Ew=@lists.infradead.org, AJvYcCVz/o4FWfU/J2uYx9Rak7BgyPN0YSAmwVGKwiyZ39IkA7/zi2iSl7wmsER8NsLfCe++ruyjv0gnLy0d@lists.infradead.org, AJvYcCXRwE4QzQFF0lf153xoHblncaiIhWYtB1UqowGhgUN6C6gs4u+ywlaI6EBUnxZwz+7xA5yAK5iGMk0lcAC8ETAa@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6UZt6ie9D0G1FH+rLcLbNEYO0ASdYhCj9kZXVOierMnWNSd3k
	Svm208KmFaGTOEKAaFRNkfidJ6SZCpF8CV7tc4BDSJDh8uW0pnRE
X-Google-Smtp-Source: AGHT+IFqD4cq32sJgonIzbTceZ/6isHD9h4Ev1uaZFsEW7Xxuog+FeUhQLuaeZwURmm3Ht2J2S2xow==
X-Received: by 2002:a17:903:22c4:b0:202:13b0:f8d2 with SMTP id d9443c01a7336-2058422304dmr187195ad.46.1725215648617;
        Sun, 01 Sep 2024 11:34:08 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20559b793f8sm16262405ad.15.2024.09.01.11.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 11:34:08 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 5/6] phy: rockchip-pcie: Change to use devm_clk_get_enabled() helper
Date: Mon,  2 Sep 2024 00:02:12 +0530
Message-ID: <20240901183221.240361-6-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240901183221.240361-1-linux.amoon@gmail.com>
References: <20240901183221.240361-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_113409_817578_C5ACCB4F 
X-CRM114-Status: GOOD (  15.87  )
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

Use devm_clk_get_enabled() instead of devm_clk_get() to make the code
cleaner and avoid calling clk_disable_unprepare(), as this is exactly
what this function does. Use the dev_err_probe() helper to simplify
error handling during probe.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
--
v5: New patch in this series
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 25 ++++++------------------
 1 file changed, 6 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 51e636a1ce33..a1b4b0323e9d 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -277,26 +277,16 @@ static int rockchip_pcie_phy_init(struct phy *phy)
 	if (rk_phy->init_cnt++)
 		goto err_out;
 
-	err = clk_prepare_enable(rk_phy->clk_pciephy_ref);
-	if (err) {
-		dev_err(&phy->dev, "Fail to enable pcie ref clock.\n");
-		goto err_refclk;
-	}
-
 	err = reset_control_assert(rk_phy->phy_rst);
 	if (err) {
 		dev_err(&phy->dev, "assert phy_rst err %d\n", err);
-		goto err_reset;
+		goto err_out;
 	}
 
-err_out:
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return 0;
 
-err_reset:
-
-	clk_disable_unprepare(rk_phy->clk_pciephy_ref);
-err_refclk:
+err_out:
 	rk_phy->init_cnt--;
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
@@ -312,8 +302,6 @@ static int rockchip_pcie_phy_exit(struct phy *phy)
 	if (--rk_phy->init_cnt)
 		goto err_init_cnt;
 
-	clk_disable_unprepare(rk_phy->clk_pciephy_ref);
-
 err_init_cnt:
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return 0;
@@ -375,11 +363,10 @@ static int rockchip_pcie_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(rk_phy->phy_rst),
 				     "missing phy property for reset controller\n");
 
-	rk_phy->clk_pciephy_ref = devm_clk_get(dev, "refclk");
-	if (IS_ERR(rk_phy->clk_pciephy_ref)) {
-		dev_err(dev, "refclk not found.\n");
-		return PTR_ERR(rk_phy->clk_pciephy_ref);
-	}
+	rk_phy->clk_pciephy_ref = devm_clk_get_enabled(dev, "refclk");
+	if (IS_ERR(rk_phy->clk_pciephy_ref))
+		return dev_err_probe(&pdev->dev, PTR_ERR(rk_phy->clk_pciephy_ref),
+				     "failed to get phyclk\n");
 
 	/* parse #phy-cells to see if it's legacy PHY model */
 	if (of_property_read_u32(dev->of_node, "#phy-cells", &phy_num))
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
