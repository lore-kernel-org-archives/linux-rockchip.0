Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1793BCFB43C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EAvfIBbcCTdQBxhwCGKXwcKnxeHTSGRxlG79wfdik8=; b=27tleID85z9uJf
	gj6DFQjkrOBknJlxPa0KmgzS4ZM6Mtrj5URg4uIIUY945bMSsPkMmZUqr7kZrOcY4dcFLcc/4mB+8
	wGgMf/4qRoln4MtJ7Lb5viYq0RKEcj+GEYhk5aUnabvxY3Y9Vvs9Zbivpv5DE8raJEiAP6wI/f9oj
	DTj1tTZJY8bAg0efSLgjRKhCW9h/JfGOQRBhoy5HgH1JWpbry2Wt6q3lfcG4sdcTxDktLqA2Df7TR
	uKPzQdb003vgCaUaVattVvp8BdqYKGEamZVPX9HoeXFNV6wdlm6gje3DlO70+5zrOVBSWsyEhFuZf
	CZNoZWWLHU1t4PAyrxpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxev8-00000001C3N-1mxY;
	Mon, 07 Oct 2024 04:00:30 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxerN-00000001BSm-33xP;
	Mon, 07 Oct 2024 03:56:39 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-6e7b121be30so2524126a12.1;
        Sun, 06 Oct 2024 20:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728273397; x=1728878197; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8xZ0sSFTRQLD8htIs0XMnH5FhNQDjNg6QCAysEVYUBQ=;
        b=b3lkhi5ypOtcA2A1ymdCh8ozva8dHpcLDRPY8mzpDE2bbYt+dATA/Zftw/sWUVNbbX
         5OGDPzNzHab6oCWO9oZplQL4gZeNy645hCeBbBM7h1pQUBZujA7OXY1KKjs0fwD1TUl4
         vD4FPQtDBEEv4cu+nSnkLtVPNrNgcFRE/OCdhwZ6wpouEzYN4iyf+PDSD4dx+LYQ4MUq
         03i+OOhdMITAuKl33Idrpow3vK2K3jwDl1rLyCEQ8mRfpD+h5IdrvU8ypjURd85qqLUX
         zsT2IH1r5NlLukPT3DNpnSzE0WPQN7iPnu+0oY7xC6p8G7f/A3RcnnljQ20pzyMJrZpg
         Onaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728273397; x=1728878197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8xZ0sSFTRQLD8htIs0XMnH5FhNQDjNg6QCAysEVYUBQ=;
        b=rLcJ0i0reyDitInjKbpZSevwlz4RI+dAWsEF4dbSOCdS7yE/nNxAS6kKFwblb2rLzO
         S49r8Upl33D/ysqyF2XA9uuMLauWKirMLzCk4c6omb2QdO7vV+fJ7rK4W90t9fpmGBIj
         YgA6ApoLTmoT+P2gY/69oO0FXGPZjTtz6Ss3LKvDT3Z/frsP/V6Zrcggt/r5zT+QCx7w
         bKcJVwF8Iln4TemG8ULxNvzJkjzzXsu0h3LVvcsRAceBStxjGVUpPe5e3HMuy/iESWJb
         BjjQx3s3csjT8x/XcX5Md1jjClqIarHqbmZaJI7ZpIoa2et1FBIfDxfq0TnKlcAIklAq
         tFRg==
X-Forwarded-Encrypted: i=1; AJvYcCUVB6YihpQYIq1cvpme/b8AvduMj4g2UAvLsXfsvD696jdn+odcRsiRzpYTrpwTnzAB5ODYXkqYo9lV66QSYAY=@lists.infradead.org, AJvYcCWkzl3RPXPxqjhFPXifevAwCZSudkR+gKNB2YnZiRCKBOc+3PpwmoHl8o0GSEUOYU3V/alWWriZH0hq@lists.infradead.org, AJvYcCXrmefzg72R6HoCSjAq2tNUtj29AmlxPR6pzbzHz5IpeZPUf7h6+pYoXcrcfPFfWX2ZM+Xgqv6Tu8Hu/Ua8cSBO@lists.infradead.org
X-Gm-Message-State: AOJu0YwsIzRi8kIFCvqAd/6TEPjgEGX8NCvaeKyB9Zblre+9jsAy291o
	wCDmGtFgR7FCjVCECljXHGJ3BPD7YbNvF1LeMFIGNa7HIutpuYxBqpxdBA==
X-Google-Smtp-Source: AGHT+IGRbfQ8Ygsa7B/NPIUIYHPuPbH6Ec8dQH336nVKqtXQ6uAhYhVO9BVtb98LpLQywzEMyD5EiQ==
X-Received: by 2002:a05:6a21:27a7:b0:1d6:f623:17ab with SMTP id adf61e73a8af0-1d6f62318a4mr5355559637.12.1728273396761;
        Sun, 06 Oct 2024 20:56:36 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0cbbac6sm3451322b3a.39.2024.10.06.20.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 20:56:36 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v2 1/3] phy: rockchip-pcie: Simplify error handling with dev_err_probe()
Date: Mon,  7 Oct 2024 09:26:09 +0530
Message-ID: <20241007035616.2701-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241007035616.2701-1-linux.amoon@gmail.com>
References: <20241007035616.2701-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_205637_795765_6B478B80 
X-CRM114-Status: GOOD (  13.52  )
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

Use the dev_err_probe() helper to simplify error handling during probe.
This also handle scenario, when -EDEFER is returned and useless error
is printed.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2: None
v1: None
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 51cc5ece0e63..51e636a1ce33 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -371,12 +371,9 @@ static int rockchip_pcie_phy_probe(struct platform_device *pdev)
 	mutex_init(&rk_phy->pcie_mutex);
 
 	rk_phy->phy_rst = devm_reset_control_get(dev, "phy");
-	if (IS_ERR(rk_phy->phy_rst)) {
-		if (PTR_ERR(rk_phy->phy_rst) != -EPROBE_DEFER)
-			dev_err(dev,
-				"missing phy property for reset controller\n");
-		return PTR_ERR(rk_phy->phy_rst);
-	}
+	if (IS_ERR(rk_phy->phy_rst))
+		return dev_err_probe(&pdev->dev, PTR_ERR(rk_phy->phy_rst),
+				     "missing phy property for reset controller\n");
 
 	rk_phy->clk_pciephy_ref = devm_clk_get(dev, "refclk");
 	if (IS_ERR(rk_phy->clk_pciephy_ref)) {
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
