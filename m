Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21EADC4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 10:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1za7gXgGyH6zKF9/GE5+AHX1/qLywFVegESTqyL8WY=; b=aCq92qaYLoUFN4
	2jGHhq0v7We2BH/2QczQHSqODe8xW6E19bv2c+9bPuXzbW/cBGk0uSx2nkjpTaiWOUimwIf3E2Bzy
	emNe99N8EnMsGBXTV7M5Ark3x89SS3prmk49CFrnKetgrut1JzhW5thVF0AlSzCap+cT0DWLq8K3V
	6qqkFOf7AvnF9khzeQOram0B6lKgnQEQO0CLI8qbCPTQ/ehbR47QysXvNAQ29P30F3Cwbm99+FwdQ
	JhwiOBRrp21R6BYDW9+Ps8K1RPUwUTNrjiO8sMjDZhdZmJ+NoGky1QXUHGrPcG1+C5DR8u4fi9awr
	VGlKlHPlCflp2qIyembg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Cov-00AiEI-2o;
	Sun, 26 Nov 2023 10:57:01 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Cos-00AiCW-1O;
	Sun, 26 Nov 2023 10:56:59 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a02d91ab199so448223466b.0;
        Sun, 26 Nov 2023 02:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700996216; x=1701601016; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ea1jLeAmnQSy9N/+din3DyjLsbvTIXpsAIcN3X7QL+4=;
        b=OMu2oo4KomhEFeQa8kwD9B3wOEbkYsdewd9cP8Cmtc1/zoJVGOQnFaXHgKjf396MAo
         PUfdfM0U15kGIH5GRRa474NUJxrmP/VPZErV+cL35gRjbRFCKcKO0F6zqfwd3YgT7RQT
         dHus3aYzVutR095cBYRp50Ohd8bQdUCzRt5k9TaSbCtgqRVzry12+Wi6+ZldbJW4Nbtf
         N5W8FrHfkHP4JDkknyxlcr9tTwd/BbChKuz2zudV13nnYNxo2YeOCj3GQyjYwzDgkBqX
         VAPLBhnj/p5mVhEzGAU3cneO1Uflp7Dj94fkotW5YF8Yjw0drzpvvHddioE8ekk3gulj
         Um/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700996216; x=1701601016;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ea1jLeAmnQSy9N/+din3DyjLsbvTIXpsAIcN3X7QL+4=;
        b=b0YxZJywvdoUtDgWPtjQs53EWatZ6l8ch3smt0+gKhgwcQ4umUBt7QS3Q9zRzmVXUO
         Iwsu/USWqTyzmAbucYv3X6IWr3uWtNeRgDbv+o22k7pCh0w6Qz77Z3bh2tN/or4cTzfA
         VRgJ+3LG35rpTAqBHMWmt0sA2q3luyeqgnfo896m+Uw9SPHSGnI6Wkaxy9QL2Ew8kjjc
         aNaRw0yu9Aiz+2nEfnB7qAxlJie7y/84yElfiwzgTSQCdggMwUbPRhL/agHk67urSobN
         /RrbVuXttzEXSm4ffcOq+dpgXXl9KGvFLCLQvk++Z/N/TO3WTCq+lG57vPSqXzvUHBQg
         zDSw==
X-Gm-Message-State: AOJu0Yyz/1MipNl0WdZ3eCLhXRYTfw4F/fgNl6QkaoJLMolPTwS9N1xU
	SkrDsvEAVaOB8kAwjFKjZ8M=
X-Google-Smtp-Source: AGHT+IG+GOdWj/VLVzcj/3gp7NPqtTAhePXdP862ib2/pBvG9jdmpQQQJ8+1VOz5rXcM4Gp99vR+SA==
X-Received: by 2002:a17:906:4557:b0:9e6:38f2:8439 with SMTP id s23-20020a170906455700b009e638f28439mr6350967ejq.60.1700996215660;
        Sun, 26 Nov 2023 02:56:55 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id q17-20020a170906145100b00a0949d4f66fsm3083431ejc.54.2023.11.26.02.56.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Nov 2023 02:56:55 -0800 (PST)
Message-ID: <a32406eb-1a3b-f8ce-9b74-1f5f09bb5f1e@gmail.com>
Date: Sun, 26 Nov 2023 11:56:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/3] drm/rockchip: inno_hdmi: Remove unused drm device
 pointer
To: hjc@rock-chips.com, heiko@sntech.de
Cc: airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org
References: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
Content-Language: en-US
In-Reply-To: <2601b669-c570-f39d-8cf9-bff56c939912@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_025658_467618_E2136CC7 
X-CRM114-Status: GOOD (  11.44  )
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

The drm_dev field in the inno_hdmi struct stores a pointer to the DRM
device but is never used anywhere in the driver. Let's remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 535cca30c256..ff7fa11dbc61 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -48,7 +48,6 @@ struct inno_hdmi_i2c {

 struct inno_hdmi {
 	struct device *dev;
-	struct drm_device *drm_dev;

 	int irq;
 	struct clk *pclk;
@@ -821,7 +820,6 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		return -ENOMEM;

 	hdmi->dev = dev;
-	hdmi->drm_dev = drm;

 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
