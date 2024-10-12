Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB81D1A443
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9zPr+2q/pL/uVATcuQGL92ZJDLT4pt6X6ouoeRWq/U=; b=xxuYSPP+QPNRKL
	S8+fbEZGLPK4DnR4+CB18GSelmDnYt8DNW55jOkWkDCrM7wWeX0Gnt4Z4QTbFwMcyJgIz/wemqNEt
	qEXhaNQdK6czs7/abxwRcQk2lCCIrGLxqwGzupoQoyqGq/nFynmQZ6nVCGhbpG+xJTUqpkltHVkIs
	blqVxpZDoKlEyn0fU+DehXpjWRANYsP3jwRgX3WjtT+xT8bLL1ZcaGX3s0LZ04ujHTA2mw4DHxxWf
	YtRsy3vuQGPQcuFmrLl3xlu52XNu28Hhlq6qcPN3tQaFLHn96Tto6qayTJ6GAnvS3/kL6PTjHuy7F
	VpdoA7neMsKdoiS0XG/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWYx-00000000iFm-3sU3;
	Sat, 12 Oct 2024 07:29:19 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWQ1-00000000h68-03Gp;
	Sat, 12 Oct 2024 07:20:06 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-71e1a715c72so2056822b3a.1;
        Sat, 12 Oct 2024 00:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717604; x=1729322404; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ApDa1aMFJqfOVoyoGKBNzlcDrQSgxcYXTomesTpCDA=;
        b=NwHSCNATDgnMXCuoh6bkFuj5HCm6KdGmGOWpAvqZI4ujzEy0oLsOE+npqgLOw6GAgr
         wIvoG+vMIM0KuZQyZe1UGR6r6ByX6LBXfRJvuJBuPmnwWFcWIgC2Eb+KfIGPx26K/dn9
         ZO6G7gocEIwpLfS5m0rejfhUKUgIP1qTYfj2LWkBbAzTshC+BRxB3XEBV3xQzNBz69Yz
         jhosZtbNKRQmJ7mXR7l3QkTYc2duoUuNITfT5X9I2kjul0x4hzqKwbrQl42NalIVIAXL
         aX/4haDj48RDXYVIbR1CR0ZLoHF4/DJg1eNmyoPPfYNh3xqPWXWX8nGbIr+JDMg5GvBe
         Xtug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717604; x=1729322404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ApDa1aMFJqfOVoyoGKBNzlcDrQSgxcYXTomesTpCDA=;
        b=ZjpkMDnuf8h0UvhAYoVFmUHqkAlOVl1Vl8p6WMB6gkGUhmIWN0CsuA5g0vxEzBA//S
         ucQRhzHXbKku/a/Wh5kdXYLuxCWwkR/HW7IBfxUgK7jBlZh8r+U2lNKvU7sDtllSv7pj
         N257Eg/6XEGjqSVREa7y7I76vT5T/QiSTY2gskErGWQbZGSzqwYKebNW1vWDkzV06DYF
         M5pw5nSO/hkteYh9LmA9HC9NxseqcRx8g7yS6EQvzcivo6LUmIN9RwoZhXACspU+Qgxe
         r7HHEq7Ep5H1BV4bQgZWL+64f/vlguQn+tbQ5FVmGwa/sDcyrGFLCe29FkNSt5I50LT2
         L/uw==
X-Forwarded-Encrypted: i=1; AJvYcCU0OE9XqapsNr9ts2s7fbz8YxGRgSQRlcIpoVtyC4kxxNdl4OPtB7S+SUy5A0syGLETw3Mlc6uvw7r8Qgj5ExA2@lists.infradead.org, AJvYcCVgSEZQSa7K2ZNOWPs+CnHQFhUyzLuUTnFSev9y+5YQ8mr7slBgPL5zydw6jiXaor9pdTs7Dgizf67ZZ8MKeQ0=@lists.infradead.org, AJvYcCWT2ojJibTPhGXkT43MsGmTRgExM7CS6sBpB1YdyUyZ5uktp2EUCKoQCiLNthMa+ostEZ+jbyn582uh@lists.infradead.org
X-Gm-Message-State: AOJu0YzBvZ3RQZ9fwnR4B5cEsHuQU31egeeqQ5tjwtj4e0cbMY7HvYn+
	b4ynDKau1T+D1tgmukpbCqjR4BszMSCPpHB7dN76WF/MN0t3daP/lNiG5Q==
X-Google-Smtp-Source: AGHT+IFsw1Y6x7x4B49Cs5Sitm7AtWn/o4JBeTJPuqe7CDeq3DvEnDZYXFgGluNUXLU0iuQXhCPlsA==
X-Received: by 2002:a05:6a00:1390:b0:71e:ba5:821b with SMTP id d2e1a72fcca58-71e3806bfefmr7441120b3a.27.1728717604256;
        Sat, 12 Oct 2024 00:20:04 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba171sm3664620b3a.161.2024.10.12.00.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:20:03 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Dan Carpenter <dan.carpenter@linaro.org>
Subject: [PATCH v3 6/6] phy: rockchip-pcie: Use guard notation when acquiring mutex
Date: Sat, 12 Oct 2024 12:49:08 +0530
Message-ID: <20241012071919.3726-7-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241012071919.3726-1-linux.amoon@gmail.com>
References: <20241012071919.3726-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_002005_084465_2E3DA878 
X-CRM114-Status: GOOD (  11.46  )
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

Using guard notation makes the code more compact and error handling
more robust by ensuring that mutexes are released in all code paths
when control leaves critical section.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: New patch
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 6dd014625226..bd44af36c67a 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -124,7 +124,7 @@ static int rockchip_pcie_phy_power_off(struct phy *phy)
 	struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
 	int err = 0;
 
-	mutex_lock(&rk_phy->pcie_mutex);
+	guard(mutex)(&rk_phy->pcie_mutex);
 
 	regmap_write(rk_phy->reg_base,
 		     rk_phy->phy_data->pcie_laneoff,
@@ -133,7 +133,6 @@ static int rockchip_pcie_phy_power_off(struct phy *phy)
 				   PHY_LANE_IDLE_A_SHIFT + inst->index));
 
 	if (--rk_phy->pwr_cnt) {
-		mutex_unlock(&rk_phy->pcie_mutex);
 		return 0;
 	}
 
@@ -146,11 +145,9 @@ static int rockchip_pcie_phy_power_off(struct phy *phy)
 			     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
 					   PHY_LANE_IDLE_MASK,
 					   PHY_LANE_IDLE_A_SHIFT + inst->index));
-		mutex_unlock(&rk_phy->pcie_mutex);
 		return err;
 	}
 
-	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
 }
 
@@ -161,10 +158,9 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	int err = 0;
 	u32 status;
 
-	mutex_lock(&rk_phy->pcie_mutex);
+	guard(mutex)(&rk_phy->pcie_mutex);
 
 	if (rk_phy->pwr_cnt++) {
-		mutex_unlock(&rk_phy->pcie_mutex);
 		return 0;
 	}
 
@@ -172,7 +168,6 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	if (err) {
 		dev_err(&phy->dev, "deassert phy_rst err %d\n", err);
 		rk_phy->pwr_cnt--;
-		mutex_unlock(&rk_phy->pcie_mutex);
 		return err;
 	}
 
@@ -230,13 +225,11 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 		goto err_pll_lock;
 	}
 
-	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
 
 err_pll_lock:
 	reset_control_assert(rk_phy->phy_rst);
 	rk_phy->pwr_cnt--;
-	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
 }
 
@@ -246,10 +239,9 @@ static int rockchip_pcie_phy_init(struct phy *phy)
 	struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
 	int err = 0;
 
-	mutex_lock(&rk_phy->pcie_mutex);
+	guard(mutex)(&rk_phy->pcie_mutex);
 
 	if (rk_phy->init_cnt++) {
-		mutex_unlock(&rk_phy->pcie_mutex);
 		return 0;
 	}
 
@@ -257,11 +249,9 @@ static int rockchip_pcie_phy_init(struct phy *phy)
 	if (err) {
 		dev_err(&phy->dev, "assert phy_rst err %d\n", err);
 		rk_phy->init_cnt--;
-		mutex_unlock(&rk_phy->pcie_mutex);
 		return err;
 	}
 
-	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
 }
 
@@ -270,13 +260,12 @@ static int rockchip_pcie_phy_exit(struct phy *phy)
 	struct phy_pcie_instance *inst = phy_get_drvdata(phy);
 	struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
 
-	mutex_lock(&rk_phy->pcie_mutex);
+	guard(mutex)(&rk_phy->pcie_mutex);
 
 	if (--rk_phy->init_cnt)
 		goto err_init_cnt;
 
 err_init_cnt:
-	mutex_unlock(&rk_phy->pcie_mutex);
 	return 0;
 }
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
