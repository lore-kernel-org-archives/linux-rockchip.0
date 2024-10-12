Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DA3FD1A442
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkcaWozzpj9MG4GmN3ugDXMc5NZgOdfnoW38SB++jZM=; b=i+fkI5ZjmWszgu
	3zambFqHVzF2LPg/TvxoIDDPtArNhQRdrbquqSV/0ZT07yjr5F6H2t7XuSBKMwxhhh+s87syHcRMR
	2mnjZ/k47CCw32oQDXixiy7AcLC8fkF/CGRMg1YUFQsHaI8AwMQ23Foy32IWhlroxpBThCiRVjhNJ
	3nKCn1U8QxSxcXIL587hdcMxujYhjylv4S0BcreSFLBoBZkiRHSah/OVQ388G8wF69bZxmN51FRjT
	ehxCxsGnbKbnM7oj2wUsXJVRu4KGAyMxUh0MtDrCMMpMyWKkIqhc/0SIYdUPcUwrsKXa8MD28mblI
	XKxrktDz1dj0X4uPuxew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWUx-00000000hfE-1RW9;
	Sat, 12 Oct 2024 07:25:11 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWPm-00000000h1U-1RxX;
	Sat, 12 Oct 2024 07:19:51 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-71df2de4ed4so1851965b3a.0;
        Sat, 12 Oct 2024 00:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717589; x=1729322389; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ei1bnltRJdZvKwzxVRf43H9d7hPRtvBawiK2S1vBv6g=;
        b=Ykftc77yXuS9c4xpL75/HtNYgN5KQZ5IKTJi6pbO2QKtPKaUC7sCXXNDJqbx8kpg9p
         KyacdC0hH5FBj7flJH0yTFllvzg1JhwQNYsLcYWevZ7cCrrPD4BCNwTjxdpNfPf3vGhE
         Axo8Kg6DPgskjL1rV7ipW/0ZApNvREGj7vdlmFOqz6Pcqiq9MZz01a5cXmet/G/+D/Mw
         SrWwPby7pF9xrWgSTcJQhtjVnAGYCMJnLEZpbvTLkwd18ji9WJsG0SXTxah08CPRN2rW
         LLxVcRMjjdFLS2owT6INcQv0denoWTYtlKv7Oh4OcM6x5kg/B34X83t+AvbGI56IZiYe
         q9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717589; x=1729322389;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ei1bnltRJdZvKwzxVRf43H9d7hPRtvBawiK2S1vBv6g=;
        b=qzzfH/iW10yyYFljQe27EtkwG+jGf47fskB8C9u2LaDiGkp5NJwWc8u1Iiz3HkXcED
         75G4Cdv8frQgef7bBDGSgMM/pBa2UDf5wzBdUisKM3KTJ4ptBhdEjKOMXkic4KXRuHs7
         ATIGz/FA9Tl2glfsg7QCDOVA3qbbx+g24mcaK0avRZ5IvMro66suKVgVDxRq2LI3B0d7
         C6pu4KcMBJwVTfIKsaeRi5cnJODhS3HAqhM3X7l3PN35rxWsaPiJ/HWbaAxLsjBH/H2t
         c/V+OOygORQGLN8cW98y4UZgkTshKQOqDee7NkUqocQglda3bWrDEcbPVDvixq/756UZ
         0SgA==
X-Forwarded-Encrypted: i=1; AJvYcCV2jYB6obWs7ya/PPhKvvewgfRRJVmRYsqOL1RSsb1dB5qc+ZKrctwrnA8LPzfMh9hVZJpklBumQOP0@lists.infradead.org, AJvYcCWRpyXeyMHAo7LRfsAQxWVdQ3QdBldSkycbZ/d0e90aflH+/P0jTMyhh37VCTT7rlr2P1CQ+koECjhqnWqhAZxm@lists.infradead.org, AJvYcCXSa9JgVLuccvGCcnQ57YBS8m91eiy66e31vLQBCdRNg9Qw7YyaKJHZcckfyvpttG1S8tfa50hfjLebQRnXRCg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwiqH8qoxTSuvO3qWS49fc3UGHJKnTyi3IJhsC7FvAC1+bZQ76U
	JnRAERCom8m5ffD45x/aQkLwtEuKoE3pYAXS/vKDVuu9L0el/cZ9
X-Google-Smtp-Source: AGHT+IGHNnL0hR5nCBDTCirZJfQbJMU9jdSi821rPi96/CgZugLrK7sJ+5WJuuelZIParpqlLGUGPw==
X-Received: by 2002:aa7:8e5a:0:b0:71d:f240:ec5 with SMTP id d2e1a72fcca58-71e26effbf5mr14046534b3a.14.1728717589354;
        Sat, 12 Oct 2024 00:19:49 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba171sm3664620b3a.161.2024.10.12.00.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:19:49 -0700 (PDT)
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
Subject: [PATCH v3 3/6] phy: rockchip-pcie: Use regmap_read_poll_timeout() for PCIe reference clk PLL status
Date: Sat, 12 Oct 2024 12:49:05 +0530
Message-ID: <20241012071919.3726-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241012071919.3726-1-linux.amoon@gmail.com>
References: <20241012071919.3726-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_001950_405757_1C8DCAC0 
X-CRM114-Status: GOOD (  12.61  )
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

Replace open-coded phy PCIe reference clk PLL status polling with
regmap_read_poll_timeout API. This change simplifies the code without
altering functionality.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: None.
v2: Fix the subject, add the missing () in the function name,
    Fix the typo reference
v1: None.
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 56 +++++++-----------------
 1 file changed, 15 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index b5b1b1a667b2..e60f24b0b363 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -162,7 +162,6 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	struct rockchip_pcie_phy *rk_phy = to_pcie_phy(inst);
 	int err = 0;
 	u32 status;
-	unsigned long timeout;
 
 	mutex_lock(&rk_phy->pcie_mutex);
 
@@ -191,21 +190,11 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	 * so we make it large enough here. And we use loop-break
 	 * method which should not be harmful.
 	 */
-	timeout = jiffies + msecs_to_jiffies(1000);
-
-	err = -EINVAL;
-	while (time_before(jiffies, timeout)) {
-		regmap_read(rk_phy->reg_base,
-			    rk_phy->phy_data->pcie_status,
-			    &status);
-		if (status & PHY_PLL_LOCKED) {
-			dev_dbg(&phy->dev, "pll locked!\n");
-			err = 0;
-			break;
-		}
-		msleep(20);
-	}
-
+	err = regmap_read_poll_timeout(rk_phy->reg_base,
+				       rk_phy->phy_data->pcie_status,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       200, 100000);
 	if (err) {
 		dev_err(&phy->dev, "pll lock timeout!\n");
 		goto err_pll_lock;
@@ -214,19 +203,11 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	phy_wr_cfg(rk_phy, PHY_CFG_CLK_TEST, PHY_CFG_SEPE_RATE);
 	phy_wr_cfg(rk_phy, PHY_CFG_CLK_SCC, PHY_CFG_PLL_100M);
 
-	err = -ETIMEDOUT;
-	while (time_before(jiffies, timeout)) {
-		regmap_read(rk_phy->reg_base,
-			    rk_phy->phy_data->pcie_status,
-			    &status);
-		if (!(status & PHY_PLL_OUTPUT)) {
-			dev_dbg(&phy->dev, "pll output enable done!\n");
-			err = 0;
-			break;
-		}
-		msleep(20);
-	}
-
+	err = regmap_read_poll_timeout(rk_phy->reg_base,
+				       rk_phy->phy_data->pcie_status,
+				       status,
+				       !(status & PHY_PLL_OUTPUT),
+				       200, 100000);
 	if (err) {
 		dev_err(&phy->dev, "pll output enable timeout!\n");
 		goto err_pll_lock;
@@ -236,19 +217,12 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 		     HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
 				   PHY_CFG_ADDR_MASK,
 				   PHY_CFG_ADDR_SHIFT));
-	err = -EINVAL;
-	while (time_before(jiffies, timeout)) {
-		regmap_read(rk_phy->reg_base,
-			    rk_phy->phy_data->pcie_status,
-			    &status);
-		if (status & PHY_PLL_LOCKED) {
-			dev_dbg(&phy->dev, "pll relocked!\n");
-			err = 0;
-			break;
-		}
-		msleep(20);
-	}
 
+	err = regmap_read_poll_timeout(rk_phy->reg_base,
+				       rk_phy->phy_data->pcie_status,
+				       status,
+				       status & PHY_PLL_LOCKED,
+				       200, 100000);
 	if (err) {
 		dev_err(&phy->dev, "pll relock timeout!\n");
 		goto err_pll_lock;
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
