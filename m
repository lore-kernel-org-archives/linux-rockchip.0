Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 765C7D1A442
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vy1aQ9cVsWlsDlEVkyvwwiKmsgMi7Fb9AnccHGs8hTE=; b=LDWA7c8/btStW2
	1GIfDH/G5CfvJwGSK7XgwLAbc//hnQ2hG/isV459NlFPwBWoQA4ji3kF0abaBF8H5A42feCd8r7KO
	0LaT8gHUGH/lwRPV4b7hpPI+10WlE4HNEHOymzm/RXXxCD9xIo1v5rs7EYTHVVpthWky7riZoEk4u
	OQl2F33tMJnxxi3SpdefDl4/I1dqfwg2HTIri0cuYMPa86pb1HMYk2HoIs/6aDsKgfBm6WC3cAZLY
	CJZ7BxM6a4bwjn5s9Myb6zr+QMzVFr0OlBjm1m4RQzYxH5Py/ks9AayyO5pSFU6yLDvxeS+aM6Ln0
	bULoY+hVl+4nOYBsFJtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWSG-00000000hR5-35fe;
	Sat, 12 Oct 2024 07:22:24 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWPc-00000000gyw-0img;
	Sat, 12 Oct 2024 07:19:41 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-71e053cf1f3so2486029b3a.2;
        Sat, 12 Oct 2024 00:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717579; x=1729322379; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRnaRhdgkUaUMlLRJLvxIED2m3y6s8utZfCC8ysa670=;
        b=MW3uTo2Xi2ocPqUsjqwx64jZqlN/WEjwimK2Pue41LMKBs2S2aeoxXFN7/CVEt9HCZ
         QBf+MaRv/pge3ibqoQR7E9ViNMcniiYqK8ptrAHOebDL2/W5Cu2hBZf5WaskzBWld4dL
         XXfsE7gssErAcDsUIH6zN02o1v3b380lXNNNwxC5QAhGDAW6YEOeUw+728YBrlSsJkyz
         qYngoEDHBaoxuZFL6KV1dOsJRnmNvIWwb2i6v5LAxMHhlYRhb5HQwTjuqR1WEXPg2aF0
         BX5ETSXXo9askNwhX8epZDm5rgZsy8jGWxyrcEBDi9+iorwwcs49IZyRkIXRtWewzTk6
         93zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717579; x=1729322379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YRnaRhdgkUaUMlLRJLvxIED2m3y6s8utZfCC8ysa670=;
        b=bAHaPllIVGUgjan+p1cKcyA11MBOCqf2NnOMTDGtRHa6hKcnjzgxHIn6y6K2vJm3CV
         W3qSZk+2oG2lIj/6yxAtoCk5ILxazjbO0W2Bcgn2FykCEsdxTxLVwtu2c7ibMzYG/JF4
         eH2xRw/oW2Ij/puoEAm/T5QQ6iyzpzAkC6+Dnqfz6qRG4uJg0jXtl4KTLr5IGsxy1Rap
         /uAGsWpy9+52Lol7Jinje7ax4DAcM/FlTnLquQ1HcGYXqptOhBG/c9RkcYyqzUNKjhfc
         PMNK+8WCx4PWZiBtuhyPiW8sGFELS8mr4hsO2tCmJaMGYY5KgihAVvraIWjwFsrEZT1U
         ChUg==
X-Forwarded-Encrypted: i=1; AJvYcCVOiqvxHn/Ms1EsqqUK6ZLxQr8dkmGbOv20rfkY+2bCza1alUI4hoRL4yLWVnT9jtpFmH5Vnd9Mrtlq@lists.infradead.org, AJvYcCVr7eh55tC8Hbjx/dwPPCf3RxOylB+Ks6uYeEQunH2ymFJDc7ZHx+JZ0eE8JQ/22dUa2KHcLwaBlSXzTI70dkLf@lists.infradead.org, AJvYcCXSqbPXba5wESXjSJ9/l9u3vtWIOpghiGe8OYfe/1qPEzCmJAv+cX/oZf3pXLyx1gnAG7pTXt5tRlhZiplA1Aw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3XlyLlOQGFKtV74BRTNCeeHwk+KyJDOaj6pkEd2Ee0oIhkUbY
	mFMz54tKZ084K6Blda5aaOb4ZjnlPRxQA3DgdxmdHt8zUEu1URsD
X-Google-Smtp-Source: AGHT+IFBdUwCJYRaP9uIilAhxIH8b2VIJABfgd2ZHHwiTppROC77o42YtpLJtRJ3UBXTnvVl99LC5w==
X-Received: by 2002:a05:6a00:228f:b0:714:2198:26bd with SMTP id d2e1a72fcca58-71e37e4a7b6mr8409189b3a.11.1728717579344;
        Sat, 12 Oct 2024 00:19:39 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba171sm3664620b3a.161.2024.10.12.00.19.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:19:39 -0700 (PDT)
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
Subject: [PATCH v3 1/6] phy: rockchip-pcie: Simplify error handling with dev_err_probe()
Date: Sat, 12 Oct 2024 12:49:03 +0530
Message-ID: <20241012071919.3726-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241012071919.3726-1-linux.amoon@gmail.com>
References: <20241012071919.3726-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_001940_231821_DA1E4D2D 
X-CRM114-Status: GOOD (  13.15  )
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
v3: None
v3: None
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
