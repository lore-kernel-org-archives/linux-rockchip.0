Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12D3DCCD18D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4csIbgI9IhxfKdtm/InHqYEf/sNJvT+nWP21ENVcgHQ=; b=ckjtZ0GZkwVCii
	EwI9XbKFuc87ipPbUFH2VBUKjpx0QTMVXjxOrg/1m/BU27DvRyNnb6xLdzS37CebrYx59BHmQys5z
	jF1XRMmGdFVWGGR7fjaAorAGijY0KZMWLMkqxxkG3G1lg5Faao5qTSJF3XcRycMc0UDP3DTauOKUB
	WPAMxC9Mk0QfPqfgAVEPWZEMZsTzyapGjOuhdJ0uOsEQSIuxS9PHWpOCzcVAYitH1OpnF+B8d9qcV
	55XxLTYpccmidQiNveahJk14Km+FlEDOzTeKaqCS3L9sZEHXhki9TQovWGsl6govhP5jGJJeCs61W
	PE33JBpojiv9NY8Q4eFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKf-0000000DLPD-2zBr;
	Mon, 13 Oct 2025 14:15:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKJ-0000000DKl5-2ulg
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=h/KkfbsbDFUpgpWR/Q+1n2e+SsZd/m2BbfBCG6Meudo=; b=obF0VfkXWQ+4pOebNYpxoN8p/C
	muQzgcUJx8Qk1tms14W/B6OzJ2drx3AMatJIr1leCQMNLOMCH9zJ5n18d+tw8pvCbvVwvJQM2/9R2
	k0BoOhhb+7eeuEWNX1v+nmJatfwJO8zJIUpAEQe5zhDoFssHK7kTuLWBacwHLVaCL3kzl2IbGmkAq
	xniUWfB0zA6U4I5TN26BZtTTGru9uOA1RuLwsIrdyJ3jMoyr2vKytS0aEWNPqrS9IY0kAhUmx0q6p
	EMWTv1YJMXqSbmEvNmL45NBI0RUY7gCNBpdutyylx6JMDtzwj6WSArW9mW7FocytqeiWG6gvL7gEY
	uUN4WjSA==;
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKF-00000004N4a-1LIP
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:02 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-57bb7ee3142so4896087e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364898; x=1760969698; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h/KkfbsbDFUpgpWR/Q+1n2e+SsZd/m2BbfBCG6Meudo=;
        b=TICadt2oWZCctfjIVpFklv8dN/0YsPp8l/sxdfICLj3ZYAv7/dfoG+l8YFST8EMA23
         HLAjqkJCEIP7WAd/oUE6xwqegwmdLPzhfiY8c0LKqhQLRBoOyw+qt0eEj5ZqWl/Akuye
         2uO1spjCAvdeMD80QDHSg1a3M/si7D92A55fw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364898; x=1760969698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h/KkfbsbDFUpgpWR/Q+1n2e+SsZd/m2BbfBCG6Meudo=;
        b=UWR+velwWXTw++mfF0DdCaT7fKrUosPZ5+bqWMLeYyPO6SdKCnFETsag9H4I9HP45s
         3StwvnnykaMtSeyBGYaOr6YMKqiw3RkTRy+141pvzYK4AhlZe+7QY6lBSziiRhAFbPyg
         JU6vi/EYhHDB4jtZUGz6t3FNwmi2ybrA4QW+fnQiuc4g6Qk90pkTSCToK1U8Z0fVBDM1
         /WPH8KERAkSTl3aedM1eOEzWqaCsSF3vYuUlk76Fxw/RvLn5s+l38yu0uuF8LDonUgZI
         fHOEJkiDkPZXZvGYRltAa7PF92ad+kUlZZlHmMAX89tm0nwKcKewkez+PqjMxyLBICeP
         IBbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq9iM+WVDcOO1q5ASQjkjx0fVgyKrHX9jB7HiKAAXi9vjSTePFYxpcOmWVUtN6yXCpZnfE62iOblmEExZ42g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIdDjlhTgRguSsZO5hlsB5abRoXlqNvgyKRyadU5D73N9dP53/
	qqgGD/RDvTmYIjTIeUWr9SmeCoTYP01uEA6O6Q+4T/cD/Rv0OKLkcEduIZSodWE9Qw==
X-Gm-Gg: ASbGncuSC/0glYR8utwzYDmgysSMTSfzg+h/5xpHVGOsjrnTVWbfcQB1XSwB9H0TsB3
	yrlXBsmqvK481+UEUMH5+bFRy4PTtBzIxvONU0XK2euDgLZ1rCWeqKHBTc9qAYlwe/irbJyWwuS
	MJGuxzXykqmhTf8hR7+HwZxAuyuqTvtUFjtXftQqMTDDSZINsPDo1nICN11jb01a4oLnbSJqaME
	SJvBRdqZWVjgVAE8Xy/ymRftTyHIQPSy9x/ltrUhrzg0Qe/DuX5djV9tFFcDmNgrBB+PZfyU7d1
	sxN+N9OBBMxDvLgpdtkYYV1YJzoY3XgKBd2RPEWBlU0B7AhC2SVTKL2yFRU9I4AJzETyn+pbSxM
	iagy9nYPWtV98YYa/SzCuaFvZkZE77AE1kVFzooR64OLffxTfFtOxkYdeUCQiR7b7UkvOspD9FD
	Xxr89ElR9veo7p4EQ8ZDMI2q4BDjZw
X-Google-Smtp-Source: AGHT+IHydw0CVPv6HxiK0rxt7/F7rhhFXqFXXsY7vFrPuGUIbADwLidmgxRKInXX5MSWX37dI8vbkg==
X-Received: by 2002:a05:6512:3d17:b0:57d:9f0b:fd4b with SMTP id 2adb3069b0e04-5906db0ccd1mr6079921e87.6.1760364897595;
        Mon, 13 Oct 2025 07:14:57 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:57 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:53 +0000
Subject: [PATCH 13/32] media: i2c: max96717: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-13-2c5efbd82952@chromium.org>
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
In-Reply-To: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Hans Verkuil <hverkuil@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 =?utf-8?q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Leon Luo <leonl@leopardimaging.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Jacopo Mondi <jacopo+renesas@jmondi.org>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Julien Massot <julien.massot@collabora.com>, 
 Jacopo Mondi <jacopo@jmondi.org>, Daniel Scally <djrscally@gmail.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
 Sylvain Petinot <sylvain.petinot@foss.st.com>, 
 Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, 
 Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Tiffany Lin <tiffany.lin@mediatek.com>, 
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Yunfei Dong <yunfei.dong@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rui Miguel Silva <rmfrfs@gmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, imx@lists.linux.dev, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev, 
 Ricardo Ribalda <ribalda@chromium.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_151459_599678_1D71F4C0 
X-CRM114-Status: GOOD (  12.79  )
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

The %pe format specifier is designed to print error pointers. It prints
a symbolic error name (eg. -EINVAL) and it makes the code simpler by
omitting PTR_ERR().

This patch fixes this cocci report:
./i2c/max96717.c:653:44-51: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/max96717.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/i2c/max96717.c b/drivers/media/i2c/max96717.c
index c8ae7890d9fa87a78084df1f3be631004acbf57b..71ec4fdb8e3d96dddc23ab090a63b23b1d093fd4 100644
--- a/drivers/media/i2c/max96717.c
+++ b/drivers/media/i2c/max96717.c
@@ -650,7 +650,7 @@ static int max96717_v4l2_notifier_register(struct max96717_priv *priv)
 	fwnode_handle_put(ep_fwnode);
 
 	if (IS_ERR(asd)) {
-		dev_err(dev, "Failed to add subdev: %ld", PTR_ERR(asd));
+		dev_err(dev, "Failed to add subdev: %pe", asd);
 		v4l2_async_nf_cleanup(&priv->notifier);
 		return PTR_ERR(asd);
 	}

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
