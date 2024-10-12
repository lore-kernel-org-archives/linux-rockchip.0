Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D9F0D1A442
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKTIGicqZ60U830ZSqy353lUU3RxO9FZd8uxCD6eUxA=; b=Zu4nLtTBu/s+5i
	koqIocgUBHSGMaNUISrfqDXDQRtuTu/eSjygukc4opQmXgFVqPaR3KntqQULtgQuwYqbJ4L0sc+Dv
	GwHJTCFuO1c9Aj3Okyve4Oouc1zo6uq4qrJBeEvhYMMY+3CsAAS9S2nxdjLyHFD72fb9o6RtwGEPX
	trsngDDpmO5qnfywKsdgHlK8hDXP3vK87xf8NNPYHUI/aVzSiSmCgAMZ+5NKGyw1qsQRpQ41ZUtbc
	j2HKw/gv8bGfIt7OMjE9mbMtnWgCK43UeoZ53FO5V14M0pbsT02iliRo/YkSRYM1eD6v4u6WKwZgx
	RVADeVVaKnZZwphmnZtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWTb-00000000hXt-13Ij;
	Sat, 12 Oct 2024 07:23:47 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWPh-00000000gzh-1GRC;
	Sat, 12 Oct 2024 07:19:46 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-71e4244fdc6so856724b3a.0;
        Sat, 12 Oct 2024 00:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717584; x=1729322384; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UDPgjk5EMnq9O3TXdBLuoizjZD+u/zLo9dMYOLZW6Gs=;
        b=WmTE2AGV5H6slHWMnRxT2CHmEy+nyn2HCew+O7TLy+gLX3+QLfFOU6lIisX8lYbXz/
         ZImmkdq/N1dYJJIre8IriK+A4qlfbDzj/bCG+nmcs65tPTzVp6WjKhHpSg4X5jyDhJNF
         3Ju5cx1fkjUhXSJDBVx9bEfUrHkj0vLnWo5HLtyjj/UU4VMGMOlBq7U6a28isyv/KOW2
         lpkwaIRGi0DUtemVrSk52SAsH6CTZhEbjD6Nwy5KGDpQZcaC3wXv0hr8So1BH6urUmoL
         LpX5vxfyZaWNL2lfm+2wI4EPR9k9VIJuFWOKhpZTBaGGjwCho5P1vMjb+cC7ZKDuE93A
         hS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717584; x=1729322384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UDPgjk5EMnq9O3TXdBLuoizjZD+u/zLo9dMYOLZW6Gs=;
        b=B+gUM3eLdPWj7Lxql1hZGOx5sHUnNBpJLzNRXF63SbCBo0aFAoqVfYs8FWPRphYPHx
         Hr9k7gtpFy5eEujokO184p7mX3bVFrrAZDYJ+RaPgSyeVybPT8M/sZxrIumktAR4wM4p
         iSZ8DDTNv7I72G30JEOCCBkKJ/B3Y/7jBJjrjZRSI1gnc95GPqG92TYryikP2aUS9+SA
         bJPGZjJfbcy0ZEi1ohFq4mOLQ+0lFXCssRwkBhVWrHDCEZYuWM82nftjR0ztZDujc4Vp
         w31+lmQWOC0Mv2rksXqwJpZctzvHs0sWrcio/T1RemZX/+YjSSLuyWFallNnZgkyB/6K
         517Q==
X-Forwarded-Encrypted: i=1; AJvYcCUPylTiwTeLwnLbGYoPbmIt0mB0vhacsyM0oHzs0v34k/z406ngFnZscnPpSYZpK6Plu3ahJqGormm4@lists.infradead.org, AJvYcCUzxcxMXNiJHXRjF57VpZqIfOXSh6kBdiTgCi/T5U0htXOortK/t/90k5ayVSYyl5+Ch3JFDAJ60zyUXvXvZh8=@lists.infradead.org, AJvYcCVbxECGeZpoXpNwjlv+rQ3oWogHunK9koGjP3V3Rsxw6XA7jSS44WPlIBsFqRtG4qNdVP6StYkJbK9uC+5nfhaD@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0WFROoi5CqLezhIhdkpdQg6Qfumf+yd/7urTpghvUbYeRZMsY
	uATyaAi8YIGowPA1vkRGy6VqaDGM0ZslJivr2upZRkcjEzBUOhIr
X-Google-Smtp-Source: AGHT+IHOKv/G3fft8lrCLPkbfUGY4VYY1XzqY3QsgC+ZnNRSYHKjHGuKluxzX8c+5kAFExIe9iS23w==
X-Received: by 2002:a05:6a00:2288:b0:71e:ed6:1cab with SMTP id d2e1a72fcca58-71e4c1cfc19mr2588966b3a.26.1728717584316;
        Sat, 12 Oct 2024 00:19:44 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba171sm3664620b3a.161.2024.10.12.00.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:19:44 -0700 (PDT)
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
Subject: [PATCH v3 2/6] phy: rockchip-pcie: Use devm_clk_get_enabled() helper
Date: Sat, 12 Oct 2024 12:49:04 +0530
Message-ID: <20241012071919.3726-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241012071919.3726-1-linux.amoon@gmail.com>
References: <20241012071919.3726-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_001945_362873_AE532D20 
X-CRM114-Status: GOOD (  16.79  )
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

Refactor the mutex handling in the rockchip_pcie_phy_init() function
to improve code readability and maintainability. The goto statement has
been removed, and the mutex_unlock call is now directly within the
conditional block.

Return the result of reset_control_assert() function, with 0 indicating
success and an error code indicating failure

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3:
Dan Carpenter: Reported below warning.
smatch warnings:
drivers/phy/rockchip/phy-rockchip-pcie.c:278 rockchip_pcie_phy_init() warn: missing error code 'err'
So refactor the mutex_lock/mutex_unlock and return the err code.
v2: Change the subject drop: Change to use/Use
v1: New patch in this series
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 34 +++++++-----------------
 1 file changed, 10 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 51e636a1ce33..b5b1b1a667b2 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -274,30 +274,19 @@ static int rockchip_pcie_phy_init(struct phy *phy)
 
 	mutex_lock(&rk_phy->pcie_mutex);
 
-	if (rk_phy->init_cnt++)
-		goto err_out;
-
-	err = clk_prepare_enable(rk_phy->clk_pciephy_ref);
-	if (err) {
-		dev_err(&phy->dev, "Fail to enable pcie ref clock.\n");
-		goto err_refclk;
+	if (rk_phy->init_cnt++) {
+		mutex_unlock(&rk_phy->pcie_mutex);
+		return 0;
 	}
 
 	err = reset_control_assert(rk_phy->phy_rst);
 	if (err) {
 		dev_err(&phy->dev, "assert phy_rst err %d\n", err);
-		goto err_reset;
+		rk_phy->init_cnt--;
+		mutex_unlock(&rk_phy->pcie_mutex);
+		return err;
 	}
 
-err_out:
-	mutex_unlock(&rk_phy->pcie_mutex);
-	return 0;
-
-err_reset:
-
-	clk_disable_unprepare(rk_phy->clk_pciephy_ref);
-err_refclk:
-	rk_phy->init_cnt--;
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
 }
@@ -312,8 +301,6 @@ static int rockchip_pcie_phy_exit(struct phy *phy)
 	if (--rk_phy->init_cnt)
 		goto err_init_cnt;
 
-	clk_disable_unprepare(rk_phy->clk_pciephy_ref);
-
 err_init_cnt:
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return 0;
@@ -375,11 +362,10 @@ static int rockchip_pcie_phy_probe(struct platform_device *pdev)
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
