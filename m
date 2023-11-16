Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94CA5C072A2
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 00:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNAUDC3FsnHABj5jvSVGWZHK3mKE62LGku3Z0p4Arvk=; b=QR+Jkcw9uiXEeD
	mQg3vxumzFeiWMK/FCcBmVVv15WEyO8dXk9qPGbVo/9h0XFX0BSo1Mtlu9xFHcyjFmab2vYjd06kg
	LurMCZEmI28BrfMQld79wwH0rVgjdfR73RdLLp8NhlGAVShGUkYwLIKkWxsoYaUIvsZKMDR7sabFy
	giBwH4CCDpxk5ohj+q+xLx/NhiGF1DULWTo7DCceyG24wuKDQpwktJ5REU6jBNbwIGI6jDjPo2VAP
	k3roh9Ubnm9eqM5CReQ63wOYdxLHLrhs4xNUelLaMl3Zpm1VUIHsMXmWWRBnrynIz8LM7HEYVhBcs
	yLSTJGDjBjXMIHYYhKHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4x-0023bz-0M;
	Thu, 16 Nov 2023 00:17:55 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4s-0023Yk-23
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 00:17:52 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6d2fedd836fso133573a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Nov 2023 16:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093869; x=1700698669; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5axKZ3rBh2546l575rzKo4AVUrOHl6dJO+NCLZTqdmQ=;
        b=DXVM7CLjawCUjY9b4w+J7hI5qmdwQPde2rFmjYc1qalhNtRq9sY8VYCRZy8dhMtQAY
         w2lN9Zy02Q6OpHrmvxtQZF9ALXHDLRYBt97o7dmfVvwYi7Xw//LI3bU3Hl+H+zT7p0NU
         z6HavMZ6O9DSvBRmzV3Gzs3Wnpt9iYRcc9gmqlsusdKIBCGXdwTTzo+C0+i1YAl6/Zuz
         yR2MW7yK+PvsJjBkIDj5PmF7FDsfAE1Q2eqxyvyzmRvp1dHSYox0TSbb3rqb4IviRcA7
         nbQgO/KepLFeoM057sqpW/yXfwQtSuhqyWtWjbETfNL1ttmxfTIOzMB/BbvX08ywpYyA
         nv0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093869; x=1700698669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5axKZ3rBh2546l575rzKo4AVUrOHl6dJO+NCLZTqdmQ=;
        b=Hoo9UY4ih3zBNYDOSgeW7TiIX73AIE6UwiVZ05pJ2P91Z+F6LMYzeD1VXuXlYBnwIQ
         SruYl8r8DU10cZHg3A1BIQOARawo+oh7IkBSMbg+p6hj9wuckvSmgL0xn8iDVUBZvV22
         kFCjPHW3yRjSYVwNQ1Mv7XWu3uTIolnznrO8ETkZwbNhK+ag675cP/81ZVUAfIucCZQC
         rW90umzqFcRznhk7J0SjpE0OGSuKrtSSok3oaIIK0bNc+bzB/eiO8TiB+Tv/lONcSly5
         xvO9VOSZNnmAte191ll5Qc3hrDQFcSaO6xhNmcG5ZcogdWgQAM32l/ptfo3+P2YW47k9
         aMJg==
X-Gm-Message-State: AOJu0YzWxVtjNHywRtFi0gUJSlb8wDTuA4WxuJyYRGbtusqllzpGxwyd
	oE6MoArr0m2xDMRQh1XQ6FMDOZW3qps=
X-Google-Smtp-Source: AGHT+IFDBddG1lVi868AvwqXMsbhb/xjnNXZ9npqgsEGmKHtLPeO2U8aBbM2Pm0KhfnvhakZQEzH6g==
X-Received: by 2002:a05:6870:b155:b0:1ef:62fc:d51c with SMTP id a21-20020a056870b15500b001ef62fcd51cmr16441458oal.51.1700093869189;
        Wed, 15 Nov 2023 16:17:49 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:48 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/6] drm/panel: nv3051d: Hold panel in reset for unprepare
Date: Wed, 15 Nov 2023 18:17:38 -0600
Message-Id: <20231116001742.2340646-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116001742.2340646-1-macroalpha82@gmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_161750_669931_4705B179 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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

From: Chris Morgan <macromorgan@hotmail.com>

Improve the panel's ability to restore from suspend by holding the
panel in suspend after unprepare.

Fixes: b1d39f0f4264 ("drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
index 79de6c886292..c44c6945662f 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
@@ -261,6 +261,8 @@ static int panel_nv3051d_unprepare(struct drm_panel *panel)
 
 	usleep_range(10000, 15000);
 
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+
 	regulator_disable(ctx->vdd);
 
 	return 0;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
