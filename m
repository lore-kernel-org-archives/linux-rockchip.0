Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23611C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAyVbRcmupDPkc8Ji5dTC828ZqDOFTjuVxsb0ER6FEE=; b=mBC9PJfR9bRIOf
	o5yPEeD9YU7RFAdM7FYgC+hNs89fl29USMXStoGRqDy1rEFwzdpvYxbRuibkKH7xp2Np5JuhSh8nb
	fX7Xw3qZZ1wX9kNVj7nh1rg6XetdLTniUctZlhVGszN8pTOju77FWRFv4wg7ZPpO+C0kPtMlozEoj
	KR72FykJr4WjgDwAwZ3IkoXX99fBGmy64sqRfOkK7DXZZqrhg61EzqKPBJjO/WBSOzErbqyua0AJo
	xt5p2ouoCmEiJHE9EN+pcOaR8L4fA7mGx+bzTn2uJf6PPMgw8NvVgV/4+B7P7gPodPB1d+P9pn09t
	Vystoi+RH/vYfwNdqBqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWORd-008yE8-Bo; Mon, 21 Mar 2022 20:16:01 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJt-008tXw-Kt
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:10 +0000
Received: by mail-wr1-x42a.google.com with SMTP id t11so22243367wrm.5
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+HaTfNod3aEyDePLcyY2jAUHNy+p+ObhCTXVNT/SKZc=;
 b=emOhvDacn9fqoR2jXRzNDjn/fMmRrieuSeznEfikBdGRSkW2QwjxouH81+Fwjh0AFd
 evXQ4E/OjsZlquw1PFRoq0qZ8V1uU2dFw1KW4yypwDaSb1WSt5zeJgWlg5AYy9384SQ3
 EpD6THUKpqH7hPQTQY08PbmuT8BAv4OnTUVoUfDp5LtFeplmVBFPr3+8hTR4tBIHhOeF
 3vG09MypOc4eMpOZxMnmImtm/CgbL7xv9hLR14dx73f+uOss+jTDm/5foL1JamFERmKp
 x1ttW1tsMfncnHvuIpVhHHrNp5HQlCPINjlHk+DHdfCdKbg5tZiKZ5O664jCsB5wZ5Z7
 ikWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+HaTfNod3aEyDePLcyY2jAUHNy+p+ObhCTXVNT/SKZc=;
 b=oWYUaR3twEn6VNPg8XFziWquRFmKEitIzA4rNLbwMtM0PADGP9V+oBpvoo97RxC84B
 NG5uxaA4WZAm2bKxzbMbPQoTHAiDYDqo8XABybRPEoeLxSOZ3/vTCaCDmxr/CNipOQaa
 adJJ2vT/utE9QG+7k7bvoavDzAsx0B30Ddtd19+i2Ea4O/zedbdV5Xi9EdVsAULmIK3D
 SmaAFWpZsEyIOzXSuZmNJWdbuH/+nP0/IsojTKJKSaKfkXc72BKcyfL/6bL3M9oD69Xo
 UV9AuTYPwcSxCxGxufnRQ7Yu8aQXkbHm69Oog4t2HVg3cT/dGrUh+Y6O5eT5139kZZLI
 GMUA==
X-Gm-Message-State: AOAM533F9qZ7Isd1zG+Gk7DDiQZ0KR8Z61xlUy7AXlIxcY4gKfxJ7Qy+
 zZt3WPTMVBqiQwnij4bmcRWujg==
X-Google-Smtp-Source: ABdhPJwHFqbCE5MwjHAeF2xKY2Y2VcS4CCDMlY5kasTggHm29bdfQnRql04xP+EjlytxwV7aRGHYZg==
X-Received: by 2002:adf:df8c:0:b0:203:e4f3:920 with SMTP id
 z12-20020adfdf8c000000b00203e4f30920mr19305159wrl.461.1647893280338; 
 Mon, 21 Mar 2022 13:08:00 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.07.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:08:00 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 14/26] crypto: rockchip: handle reset also in PM
Date: Mon, 21 Mar 2022 20:07:27 +0000
Message-Id: <20220321200739.3572792-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130801_773221_8FD3E82E 
X-CRM114-Status: GOOD (  12.09  )
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

reset could be handled by PM functions.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index d9258b9e71b3..a11a92e1f3fd 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -73,6 +73,8 @@ static int rk_crypto_pm_suspend(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
+	reset_control_assert(rkdev->rst);
+
 	rk_crypto_disable_clk(rkdev);
 	return 0;
 }
@@ -81,6 +83,8 @@ static int rk_crypto_pm_resume(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
+	reset_control_deassert(rkdev->rst);
+
 	return rk_crypto_enable_clk(rkdev);
 }
 
@@ -222,13 +226,6 @@ static void rk_crypto_unregister(void)
 	}
 }
 
-static void rk_crypto_action(void *data)
-{
-	struct rk_crypto_info *crypto_info = data;
-
-	reset_control_assert(crypto_info->rst);
-}
-
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
 	{}
@@ -254,14 +251,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	reset_control_assert(crypto_info->rst);
-	usleep_range(10, 20);
-	reset_control_deassert(crypto_info->rst);
-
-	err = devm_add_action_or_reset(dev, rk_crypto_action, crypto_info);
-	if (err)
-		goto err_crypto;
-
 	crypto_info->reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(crypto_info->reg)) {
 		err = PTR_ERR(crypto_info->reg);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
