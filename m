Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36981C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Nov 2023 13:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBrtYbqvFnXXK6y3NvfCKnmugR8Xz9WF6BxtnsOo2XA=; b=limuwn36OCiPaW
	J3jYVX5P4wo/S1MbCWRdb42Aq6tP5Vy6oDEG1Ae4u3mm7aHctyOHmVeCPaaxkJHDSoZPnSJEu1S8E
	do6j4RM4Pn4sWc8K/15ddkfFgYub/JJEg/KAbO9nso6MOyaU/0BC0/WOv+79QWEXgWgpgBrbRdAGw
	S4GNHYRsVhajLUHr/19jkcdu/u7FNAjBq+DG0ZenfnG/hv0PHylVo7GD4gZfWItsPa8/tAgvN3mG9
	rIK+DqtSr6+VQip2g73uWPpy6CUXERXZnpNfRO7GUfLcjKhsTU0X0Qxa6UXO+yMXJ/FXyH7K1iuvM
	XvO7na4uj2/JRPpEQ5rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXy4-009Yc6-11;
	Thu, 02 Nov 2023 13:42:40 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyXy0-009Ya8-1V;
	Thu, 02 Nov 2023 13:42:37 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53e2dc8fa02so1559650a12.2;
        Thu, 02 Nov 2023 06:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698932554; x=1699537354; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mtT6nxgsYYS4sdsaY7t86FYZfBLOlduBaZpsVAIl6mA=;
        b=GK4SHirQJ3UKo0/2yQZ5WWvfFpcpdnTL3xPIGtd1fOgmCf0YbtI7zY7bfMzc5DCw3v
         Lu5efuRoy7xjpOGhgErGMBXdbLAnntoO08vDdHaQaMCz+dectIaLE0AzRFTA0PHNUw8r
         7RdVZtudJaxYSowyim7Eqga9cLbAQXQk53gZ13LUYsLRwC3HlREAFfV0Nhj2y6A05iOi
         EKuTqJFdm0uxMvnmwkAgmPoQV+G4tH+Nqbw9dq8gw79QXaqUNIe/zW/SSoezz7FJjnVS
         8B3wNGi0f3onJzZZ5IZSl8a1lQRunICNzYfHsopHT68Hp5KKZPmeteKuXeb5NS8LPNpv
         0m6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698932554; x=1699537354;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mtT6nxgsYYS4sdsaY7t86FYZfBLOlduBaZpsVAIl6mA=;
        b=rl6qoghZ0VuIZBVIbLxGcn+1utsLe1Q1EUgAzvkxi8QjXCwieAahKlXjFEFURvy7Hj
         AOCVW7OrGAqa2xTCAKNY+hurZfUXcecZgpxeNI0pETpkefO/yM1zgiBAJbScjAA1yE+e
         Y0ZOk97B0tvARpW96MwJL9/Gew0pSCd9ahh0WGVXuKCt1t2CGHsj6IfIcc3yfYZX4CkP
         TBs0hyCCDVrRUhzegbrPNaG3eYs4gQriXNbunrqal+t0/VGZPJvPknrnilolfk08A0PZ
         dUOkZWUW7zb0Ms1nM997QwS2TDFyg/cpB1hQstfEV0PI1uzNMy3NNbKYVEfpEDuL4/Gy
         XsqQ==
X-Gm-Message-State: AOJu0YwZ3NCzUxODZZ+2gtMruPYBTygkDUhhBCC7n3nyiZ9V1LRanlZk
	w6l2+k7xgStb6LV72toeQLk=
X-Google-Smtp-Source: AGHT+IGhrHVKX8Mcwu1ULzEU38/CACnkgTDqYLqxetznwQ5sVClFv+wxqUtm2VH+CqBwnOqPQHgfDw==
X-Received: by 2002:a05:6402:2029:b0:53d:a7d9:5149 with SMTP id ay9-20020a056402202900b0053da7d95149mr14483614edb.6.1698932554131;
        Thu, 02 Nov 2023 06:42:34 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id v3-20020a50d583000000b0053e89721d4esm2378618edi.68.2023.11.02.06.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 06:42:33 -0700 (PDT)
Message-ID: <813a0e30-a61d-7fc9-9ca6-11bf9c6fbe52@gmail.com>
Date: Thu, 2 Nov 2023 14:42:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 4/4] drm/rockchip: rk3066_hdmi: Remove unused drm device
 pointer
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
Content-Language: en-US
In-Reply-To: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231102_064236_505194_5A6ADCE0 
X-CRM114-Status: GOOD (  12.62  )
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

The drm_dev field in the rk3066_hdmi struct stores a pointer to the DRM
device but is never used anywhere in the driver. Let's remove it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index f2b1b2faa096..c51520ec58d2 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -38,7 +38,6 @@ struct rk3066_hdmi_i2c {

 struct rk3066_hdmi {
 	struct device *dev;
-	struct drm_device *drm_dev;
 	struct regmap *grf_regmap;
 	int irq;
 	struct clk *hclk;
@@ -734,7 +733,6 @@ static int rk3066_hdmi_bind(struct device *dev, struct device *master,
 		return -ENOMEM;

 	hdmi->dev = dev;
-	hdmi->drm_dev = drm;
 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))
 		return PTR_ERR(hdmi->regs);
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
