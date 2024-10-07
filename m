Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1E4BCFB43C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oq/fe1V5yqrzv6GBgh6QELOg0fblPh46SOjGMEmcMjI=; b=bkXnikTAQfxGKd
	oTCLC3Wx0MOOaKYRnQoxIL3q0WadvF4532iGVh7zwF/ZsKR0M4kzVWCeq9TFRVA9ft07Zo2pY5xRM
	dNS6I+JEax6AVFg+n+biM5Cuw1MBFHa3AKCHf3Fb5D5F0DM2ktu7fLGux36JE7FVh1mzpCqc640ml
	4zEw/wZawB9ZV7b58M3YJuMOWRbpQGsgmSiEjW5+g7sspc8QoFpKvDvW/iPvaicx4ARs92HerVn3M
	rzChsM2llkzw7epnVF79o6oylPwahl2d9mEMigd1Mo6kGU0lcAuBBdip+sFZEUh32ssV3GpaA/767
	fjtYysQMfHZtVPWUVcCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxexa-00000001CIE-2zvZ;
	Mon, 07 Oct 2024 04:03:02 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxerX-00000001BWq-1lTs;
	Mon, 07 Oct 2024 03:56:48 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-656d8b346d2so2455113a12.2;
        Sun, 06 Oct 2024 20:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728273406; x=1728878206; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Yl2K4EmUgHgFL47sO4eEWU/jT7JgMHndlEzcZuCb+c=;
        b=am1KgasQLu0/Ti9pLf8upaMBhvhs+Ymh+/mWknKyBmna15va0Gz9sb2bXVvwr5CRIh
         hYdziuFRePw3cd9Vl8xEO2gZ8mXkRn1vHvx9RMuOnk9dlqJr/lYmEPEY87e+8tJViGZY
         FNXBu5hojGBvsPYcX08duPtEVjhr8BadGLGq4YLLnDIFYpDNlYHL/DpwbwwURTGiKfd/
         TzM5mB7S0g/bloqThb7SR5Z9+ZPs7203SqWx6D/5E8q5xtkYGGv6Xvx9MZa9O5ib102y
         JouZUR/Xp0viCbRTaGu1HqnYpBqv55eru8vpLoqLN9VFDX/icB1TLPH+IowAUJCSi4Ed
         IUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728273406; x=1728878206;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Yl2K4EmUgHgFL47sO4eEWU/jT7JgMHndlEzcZuCb+c=;
        b=EfPxUue/wJF5wH7wY4g90FA7Uci7viLG0d0v4cjFinXy3bGys0o5QufXfMLpj8tYlu
         Jl4q1Y7kXxlvbDBSxJLYLC1C90FPON4FiQtkDzjNwVlu7AzwTZZoNPeD6nB5soy7O0+d
         trReF/DsxWyEP2lM03MiQ4HiJ/AMgGcGHTFVMYkq8hGzM2kbUkV5LfjLqTH4F0EXh113
         mV5pD5/bmO8JnEKg8BZKdxtbUSS/mm0U+gsIQ3pCzeGtZAzp7HIw57SrZjnPDMB74k4g
         lLo5cjQsmPbC3cKj4UVvYNf5CZjzlJ1jLqKuZ0A7U9cB8kbNc1hXDfWlyuljrYOB0Z9K
         nvcA==
X-Forwarded-Encrypted: i=1; AJvYcCU1F9za3K8roPoOnwaTEBkA+fywt8Y7AyVLPI4YVywbjPe5SGExUq936TWB2zht/rAHGqsocSeJ5sXx@lists.infradead.org, AJvYcCVIKomrL1hf/n7suZLG+/V9aV5qSbaf4Ftxdgf/7hHj5OPA+MoY9p1Zqyqq0njvlxbznMFxOQ7jYaZVqft+AKU=@lists.infradead.org, AJvYcCXD9LnaEcyAGlzrGbOraRq5QGAjpEmUZ82NgEOxpFHUvH2NT+8RIXNcw7EpWqJ5UIQyM3OJqhTBU5UswI84AsS0@lists.infradead.org
X-Gm-Message-State: AOJu0YxhD2ja86gx3ayCp8cari6XXdJ1Kb83RhsFmc11/VqZNg+Cd6ia
	RkaiEb5W2NWorEQAZGSMKbU1q9/6VFHCuzH5wg3VvkSQvR4uq7eK2G/pVw==
X-Google-Smtp-Source: AGHT+IG2Zgblg95zfw1iMCpAfHL2xKdST9d36NrXxikTBWWWicgc6zwdWqnGZd9qLMDNR+2EHrmRGQ==
X-Received: by 2002:a05:6a21:9cca:b0:1cf:6c64:f924 with SMTP id adf61e73a8af0-1d6dfacacedmr16387346637.38.1728273406386;
        Sun, 06 Oct 2024 20:56:46 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0cbbac6sm3451322b3a.39.2024.10.06.20.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 20:56:46 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v2 3/3] phy: rockchip-pcie: Use regmap_read_poll_timeout() for PCIe reference clk PLL status
Date: Mon,  7 Oct 2024 09:26:11 +0530
Message-ID: <20241007035616.2701-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241007035616.2701-1-linux.amoon@gmail.com>
References: <20241007035616.2701-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_205647_483199_EC9F5134 
X-CRM114-Status: GOOD (  12.97  )
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
v2: Fix the subject, add the missing () in the function name,
    Fix the typo reference
v1: None.
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 56 +++++++-----------------
 1 file changed, 15 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index a1b4b0323e9d..2c4d6f68f02a 100644
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
