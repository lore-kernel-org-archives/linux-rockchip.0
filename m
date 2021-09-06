Return-Path: <SRS0=S7g1=N4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6AE2C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 12:05:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A6CE261027
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 12:05:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A6CE261027
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8D0xBGFqNOYezyoV4ZIwrHBXnoCO3/kTqoh9nbQo5Og=; b=ilCOJ5dzvH8CW1
	c6qzvcciVrBOr1IMTe7t/XW7hBjweLuM5LJdDqU38uIUOKJLE/aPK/NKILvpZ6ZyykvMkA1HSYHiY
	0p3R/gOmJE3KDt2TGkK3dwq3p+2lKLVQpDzcYYG6h0CAKcozSLejMZyto0gi4MvMNCVYL69mxThpF
	hE+2M37faeq9+xTkpmqCmhz9TjCxuVSfCuulyiWb874Qw+DN8FiwiQZuCpbY/XSTJR0FyLbjC/hZ2
	cRrn5GYwFYntsh9CUmaP5HULhMITVr/zG50n//acBfIRjkh+20KemhADcksWY7KJWw5J6RwM8a5ck
	sXzqHGysa6JvnxKa9xXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNDNn-000i7C-2Z; Mon, 06 Sep 2021 12:05:51 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNDNY-000i00-BT; Mon, 06 Sep 2021 12:05:38 +0000
Received: by mail-ej1-x632.google.com with SMTP id i21so13101377ejd.2;
 Mon, 06 Sep 2021 05:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J5rWzfawpu0XOsLyVwwYFgYCCr8KgHSAplCrfWcEUCc=;
 b=KYUpVbsceN24EZchDkkkol2zEry8/zZBvVe/CMNKasw0zP0fQumSMEkppUrrAB+wGv
 RRfevlklzFRZtH9W/mNoHsu+GG/RjUOIGL6ChoMEHgK7sxD3RvqkLRZAvNQNqvipm7Qr
 cTQlfIPe1GsNW+UvZK7BNiUuMXdUASH+Aqnla+22Ask9dzyDNc6ehe95YdO2q0n8eCzY
 ZuJLzMs8RQ/uItFbxCO3WfXsNP5dywIi6b5gkewTZajSIhB6UdA8pR5UEWq9WTFHWKIo
 1rQjMbJYLu8jsl82JOs/gHoMEf7B+/OHLCbf2CIqSjzSrrFck4NxU3uwEU99O0suf8eT
 7axQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J5rWzfawpu0XOsLyVwwYFgYCCr8KgHSAplCrfWcEUCc=;
 b=kMUA1wp/1klLtC/T7w5XEcNnOIuR/U9q0x+A+ZPzio1H2IKNPiHFYIu9sJLRi8kc9w
 8/QaPReMFxx1L9i9ZvBnmeucWUk9qX9sBLB8ifMZ6OlEZokehvzF+1tgyjEQCF6dISfz
 z0a/ffA4STEUId+MzllnMci2IMiVqHSz8+Jp0gGATGGGGC+DDl9JZUBomX76QQTqvAx+
 bqrEtQwvWaU4qMXZx9bn0v06kPUL2/ijJxo8PKy+5/wUk1NvxM890sPtOa4BfT7Isee1
 m+cl+tfjb2dPHQ//jRuEMowBTvIRvuuGkJkAIeJ1eWghfZiPm2ivyTnNEdsLwK4Snyll
 1IsA==
X-Gm-Message-State: AOAM530zw+x0+t55e4iv66uekODudAfwvUF06yzSO68/h/6x8vXNCDUL
 lQRvQw73JgX18HjVvHtY4iU=
X-Google-Smtp-Source: ABdhPJxzUl/7BL4o86N4tIBXw9ehKJmQ0k3lSpIaKtVm3BI+0Af3eaSd4+mihFeqKv7n7AXDOZlSUQ==
X-Received: by 2002:a17:907:2a85:: with SMTP id
 fl5mr13028347ejc.91.1630929934659; 
 Mon, 06 Sep 2021 05:05:34 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b8sm4536954edv.96.2021.09.06.05.05.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 05:05:34 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 3/4] thermal: rockchip_thermal: allow more resets for
 tsadc node
Date: Mon,  6 Sep 2021 14:04:03 +0200
Message-Id: <20210906120404.10005-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210906120404.10005-1-jbx6244@gmail.com>
References: <20210906120404.10005-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210906_050536_431951_9F9A3A62 
X-CRM114-Status: GOOD (  12.79  )
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

The tsadc node in rk356x.dtsi has more resets then currently
supported by the rockchip_thermal.c driver, so use
devm_reset_control_array_get() to reset them all.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/thermal/rockchip_thermal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 657d84b99..dc3a9c276 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1383,7 +1383,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	if (IS_ERR(thermal->regs))
 		return PTR_ERR(thermal->regs);
 
-	thermal->reset = devm_reset_control_get(&pdev->dev, "tsadc-apb");
+	thermal->reset = devm_reset_control_array_get(&pdev->dev, false, false);
 	if (IS_ERR(thermal->reset)) {
 		error = PTR_ERR(thermal->reset);
 		dev_err(&pdev->dev, "failed to get tsadc reset: %d\n", error);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
