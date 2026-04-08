Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8163410FC45F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Apr 2026 23:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SsTgVdC6lHut865wpoMwkySBGBcJD+S7FbfqmDATsUo=; b=kqhhhDwqFdpbse
	gl0ehGxggdn79ec5X12geaFrEdjCvleEy/xKI1zCOicpOaDMFM1XYO4N6t+/gj5sT7GC1cteHOHD1
	GlsGiJwvxlRVE31Y4BCb+yb8fg2r2Wh/0E1vxNIgBcJJ8V5oGEwjFjM5zOdBWRB0yNa/3pzbZpmbS
	isufvKcOPZsD3u8PwypcJrNXlSuX2RU9IG7LZNqxHABMLKR/cD5ase9PdIh61gKvNgvRxo/+f4Qy5
	HPg3Wmd560VPREf7/KCZ9rc71XSsCK9eT4/Tsa1LwN8q47oDveCkwbvwxbkVIrVXhtci0qXzZHI30
	Yp97nFM4OUf+DVCVqoLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAbua-00000009VJq-1iQK;
	Wed, 08 Apr 2026 23:02:16 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAbuY-00000009VJC-28zg
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Apr 2026 23:02:15 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-8cfc3ca1922so18610785a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Apr 2026 16:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775689332; x=1776294132; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BvbCwq68/qWYU9XfnJUnTP1IOqn0jqRNVTQiaBiIGqE=;
        b=l+nwzhxHqQucBFJdwCMudzDKhTfk9FpmlvooRzG9jFHWS5Ng8ijmbt5LohxUs0vtwb
         1O3c+TqihxULVnOzdMwzzb8WQ66OMJNLR8PqZN6h+1XbeCJVGGp6LLowADrR+7eRqk/f
         XIxCWVOfUeq5dB0KSMY+d/bSZBmMlExrN8aJMIYaQj2h4C96pe9/int33+hCzCMxhys9
         Bek+ehD30tyZKuWVuOA5KPwxQkpz0YkE5MPi0yJ/6998fQs6k/4V52KF6ttiY8EX3kyP
         hQllRfIcBwI9Yw1rIqJgEZ5nYqhP8c/Q6fOdSDfR0EDoTxymBxuGpBI6v+r/RKFxRBaR
         93Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775689332; x=1776294132;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BvbCwq68/qWYU9XfnJUnTP1IOqn0jqRNVTQiaBiIGqE=;
        b=WkecESOUXBTnZXCLCoe3L91ZmRUd55P3ri1JfE6n7wD2Efw+mHcV4knz/PAn5L+gGB
         OHiew56WOcx8rGQh4fqImWRJ4+H09oQ5JkJoR8HsMss8YiQqDxNxuP1tDsUJuVuqIFLW
         cVgugT84OqzfeV9xCxRwEueJtN1XbAgfTBLm2clJ6V8TGQpaONbvUcEmEe1HH87Pj4Hx
         XbSfo4gd66qpJClYPP0iSTxD6gH9qQuT5qUDxLcUuzjCemoK0K7UafFur+NpKdm8QmhE
         jpsS5z78hAcb8a+2aY12fG6Zma8EUn2uYv7f9CX7gSotCBfAeuNmzoz42/FKitc+Uzc6
         RbLQ==
X-Gm-Message-State: AOJu0Yx2akPg1SLF3AzbbBHv29aIBi6ScmsuMIV9ga/vG3m4T50qy8lB
	B0x//cjXQc/ilN9QdNr8YbwCAI6JrvlGaSUnjJB5wP9Hk+12MCChI2s2Mib3Cg==
X-Gm-Gg: AeBDiesHZcJURzWQvkJv2soxi6ZHFvzGeCj8N1pTDsMMEN0QSgLN5rbrogs47dgisQB
	ZoeCDUduGdciUDESv3xYhhZaFcOLwuaCruvUpz6a7xoL3oTBWijM9ix2dIV+Y6+n+1HM1TFBDvw
	3iTPAXVr/9Bt1uVPqZqlZpEZyTswViw5Rhd2xXbpg3jnaRpPrf6uQOeBHIwo3jF07H5CgUm2IW1
	4dgJ6lwDkATGV+Ko8ma25+/poZyGMWDgUvRyyb7948rWdA/i2tZDvHlnif5rfO0Wf3B0nkjmUEw
	PApSEB3hUeyEtNEg2nhFGKaZtC8uwDW+9iGPpTvDsAuAiwmJ7ijxiUyaRss6sZDG/JBBFw8Q3Yc
	uRJlkLRDpZpWR9QbqSR+cYa4UWL/KPXp6AbE6C2iZaitRqydHgpT4CIeC6QXc4BvAefjfhBJNyM
	bXT4PacGXI0FQm/8bx4AGsc9YQCQylAcYmO7tqTpjpN6UUMXRNluu71KI=
X-Received: by 2002:a05:620a:29c3:b0:8d8:13c9:55cb with SMTP id af79cd13be357-8dc439f3cbbmr205076785a.4.1775689332280;
        Wed, 08 Apr 2026 16:02:12 -0700 (PDT)
Received: from ryzen ([2601:644:8000:5b5d::8bd])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8d2a5392d35sm1611561585a.10.2026.04.08.16.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2026 16:02:11 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Srinivas Kandagatla <srini@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] nvmem: rockchip-otp: alloc clks with main struct
Date: Wed,  8 Apr 2026 16:01:53 -0700
Message-ID: <20260408230153.20726-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_160214_543962_05F9A157 
X-CRM114-Status: GOOD (  10.20  )
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

Use a flexible array member to simplify allocation slightly. No need for
a separate calloc.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/nvmem/rockchip-otp.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
index 0ec78b5e19e7..2c0feb036f3f 100644
--- a/drivers/nvmem/rockchip-otp.c
+++ b/drivers/nvmem/rockchip-otp.c
@@ -78,9 +78,9 @@ struct rockchip_data {
 struct rockchip_otp {
 	struct device *dev;
 	void __iomem *base;
-	struct clk_bulk_data *clks;
 	struct reset_control *rst;
 	const struct rockchip_data *data;
+	struct clk_bulk_data clks[];
 };
 
 static int rockchip_otp_reset(struct rockchip_otp *otp)
@@ -424,7 +424,7 @@ static int rockchip_otp_probe(struct platform_device *pdev)
 	if (!data)
 		return dev_err_probe(dev, -EINVAL, "failed to get match data\n");
 
-	otp = devm_kzalloc(&pdev->dev, sizeof(struct rockchip_otp),
+	otp = devm_kzalloc(&pdev->dev, struct_size(otp, clks, data->num_clks),
 			   GFP_KERNEL);
 	if (!otp)
 		return -ENOMEM;
@@ -436,11 +436,6 @@ static int rockchip_otp_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(otp->base),
 				     "failed to ioremap resource\n");
 
-	otp->clks = devm_kcalloc(dev, data->num_clks, sizeof(*otp->clks),
-				 GFP_KERNEL);
-	if (!otp->clks)
-		return -ENOMEM;
-
 	for (i = 0; i < data->num_clks; ++i)
 		otp->clks[i].id = data->clks[i];
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
