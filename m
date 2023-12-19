Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7105FC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lzHgfo751gluf4y00Wy9hykKXnq29EiP8b/bylE78s=; b=uXUrBlWoWGJDLd
	pA6tuYRbQ/L8Or3sAuINlBuKtGsXhtR5g/iZ6P05qYWS6wCs+SE3HEmmI2Mx6R3XeKOf9GELVYbqL
	apyNmAwgQlhbZSpnEEPhE1NwiJf5AKY5YBI605Ejs7MEOuz/Cwf6YC7cuXzSPg74/rypC9PrmNYwf
	So1djdW4c4ZCixdruYn3SeZYNN5DJk1WlGJI/j9tC8GKwS2qLtzNXgIf0Z9Bka6+tbfKVVnlvyono
	hihRdj8KaF+QN/BlkPzw/m1DA4aiJKuVw73d/SY8eGlr75sekzak6NOaEm8/BJSjIzOrQJdxQDl7R
	QuQb44iKSFYiueqjXvvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdUI-00EpQQ-2f;
	Tue, 19 Dec 2023 17:02:34 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdTA-00EoB8-2B;
	Tue, 19 Dec 2023 17:01:27 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40d2376db79so9388585e9.0;
        Tue, 19 Dec 2023 09:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703005283; x=1703610083; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0WseMEHOavtmxykYRA2JtvMxiK/FtoaZXXQqi1uMlW0=;
        b=iodhWeKMQXQ/FCfmnzaG2VGlmaUIKHQgAve5CSvHG5CVaNEiSmKxI4YIE2A0Q6+hXW
         CWNOV5tRXzEpU6WltfSZtEB2MgSs6mIpyUBHDNH3ZxarFfKVepH+5nJXvq3fre+NL/Sh
         M941na5QtkuVsq1yfmmTWZlg+TwxciQ3LiQAmzY5JYErsXY5DLWIxTrJisshBBWNFYmc
         CVozfkHcNIHgCqGSQjcr0HIWqIED6YnkqP8g3ghT0tAPbC6YZS50v7DapxBzou6iOzuJ
         6Sd9ay+UkRWsCdymYGr4FoclIskmIhX7RMgnjSRyZp/HXWrDGtRA+MM/ieZ7g6ErEGN/
         6AYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703005283; x=1703610083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0WseMEHOavtmxykYRA2JtvMxiK/FtoaZXXQqi1uMlW0=;
        b=THkRcbmOmQj78clqhIKbLrEOEgQieEqoE0pz5zVsWSBkCBQqgdiFAFBBfz+5Bt/raw
         jIUuFq8rAMtFmUOmDrRjSLJQH8Rf31Pm3CGmBQqbkp1RGmAe3zkaT1vvWFI5wbtnX94F
         nZdBIgngZEJw3mPPnN7s3AL3G5jeX9d1WVLRcupGZx4x6quv0y4lmLUuYSZB0t5XOmQu
         O1RLENsa8xyBeaHhMkWRWIj4Obv2kFylzr1goHMPBEsrOsgQr1WmBU1hF+WHeEGdJgq3
         HLwcSe26PK+XnnhWNqDN/pNo3T0T+AKXVlR8zAqwB7T5+S2wvbZODgJczjzA09K7x0FU
         lPCw==
X-Gm-Message-State: AOJu0YwcipldWkFz0A6pus6/bIXUUoCPBNyIBeTXSiSQTWoQnI7RJB80
	2Ktp+z8iWjIFzvzzXydHHw==
X-Google-Smtp-Source: AGHT+IGOZJZnOnuHfdIdouJRryXsfventVWMJzlbA9qGEmVPHmZahIRRyc0+LTqlmnQmmG0gfJFPiw==
X-Received: by 2002:a05:600c:1d10:b0:40c:50c:9f3f with SMTP id l16-20020a05600c1d1000b0040c050c9f3fmr10565023wms.95.1703005282571;
        Tue, 19 Dec 2023 09:01:22 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7ae5:3e:d1c6:a138])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3225878wmq.48.2023.12.19.09.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 09:01:22 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 17/29] drm/rockchip: inno_hdmi: Drop irq struct member
Date: Tue, 19 Dec 2023 18:00:47 +0100
Message-ID: <20231219170100.188800-18-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231219170100.188800-1-knaerzche@gmail.com>
References: <20231219170100.188800-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_090124_767064_2322150D 
X-CRM114-Status: GOOD (  10.68  )
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

The struct member irq isn't used anywhere. Drop it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
changes in v2:
 - new patch

changes in v3:
 - collect RB

 drivers/gpu/drm/rockchip/inno_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 51c1a69dfcc0..138cd4287dea 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -45,7 +45,6 @@ struct inno_hdmi_i2c {
 struct inno_hdmi {
 	struct device *dev;
 
-	int irq;
 	struct clk *pclk;
 	void __iomem *regs;
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
