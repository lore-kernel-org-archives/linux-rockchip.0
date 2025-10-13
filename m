Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2281CCD183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pauQirzaBQB9GGtGfKD4sE4zeqVVgqCtXGwmn1Aj19M=; b=Ke4OywhKrVTad7
	KKnK/SnQ3DLBgcIDxUr/wU6FEvsHub0FvloRgtPi9aFshPk2tSpgD+lk07e6aNanpWUSrTEIA7Uxq
	4d3FOEsSvn2ReIk724IkkH/Sce7rRTMd/wapQytQABuM/bg4A3R5fMF0KjvVOj+BbHctP70ctbfBH
	+FMgXLSbmBjfB3t2w486HlCJ8zQfpcTTiv6KiWP3AnRS+l8+QqIpmRIczXnotCfzM10Lb6Me0y0RT
	CAzva5N8b8x6ZVSwMb/brlyU4tBj7Qnh+DlAwytE8jYYol3qQHUZBaEUC+JSIOr7LO5pl/xDQ6ewA
	KfByixI6eJThjj2kG9aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKt-0000000DLoJ-119d;
	Mon, 13 Oct 2025 14:15:39 +0000
Received: from mail-lf1-f41.google.com ([209.85.167.41])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKN-0000000DKrT-1fhW
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:08 +0000
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-57a59124323so4619852e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364905; x=1760969705; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MPyzKdSQgEFTOs6vrnV72MjIpSFJDGoFOT83Au3htUM=;
        b=arVJPm+v8vPxAOoU4jNSMpceJwIcZR2yAnqUSBw2bpU2s+DxnXnDniNga6FDYm7Jrt
         NGnvFrnFYwlK26kq/wKAiZ44UvIyhdSNONFwm0YVkfqDm+GfmCTKbmwpvlZRCsH9J3Mx
         NshT3/YinoSahaK1G9X8djVipUIUkZXRXmy9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364905; x=1760969705;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MPyzKdSQgEFTOs6vrnV72MjIpSFJDGoFOT83Au3htUM=;
        b=bZLteFbe0gxiTD/XtbaUX6G1FyIr2ZzgLO8GfQLZG1kBCp3KWo+GgLSvRSHGkYr/Ww
         1lsepgx8FxFK7G/6quDWhHyumBrYJ02TpeAXof3x0D2vfsrrPOCCdQBY5Tc1f/9vjJhM
         oZMFRvRo9Eecg/ppt1blNVRWcTjThjpsStg2qFt2NhRH3PCu1KHM9ifW1VIUZOKlVNCb
         S8r7YJoC+of72Dvtv6B+znvr6MKzx+jmIAJ8TxM9mBu0jbnx5udvBYzv91F7N71nGejX
         uz+/xcWzyueOLkHtqjmGzQB3Fm6RRkQd65qdUZURUVwKiqVuADeGjxkrLcVz3zxq51tz
         +zDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzqQzX64+N3L0s1Z7qeK+MIQE8MYXJeHsbow2fgR6CPi+xZ7F+C0nNm6h+t+rFlrMwnxedH5rd2wuh+2njhw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHGGraurwi/FSwR9vF6eKZUS9EFZ8AC038iTYqFzOAtAtOUGGC
	ct/mu4FJmeUdQEcSweOcHbiMpXHl11Cg0O69E97iSmZ1R/2I8Mtg8MwjaZDNkjxoBA==
X-Gm-Gg: ASbGnctXJPcx596QZab970DokIbJsPUzYAm0u2rW1TjmXcIlUPMxr7SpwXm+OgqeGuG
	CQbqOUTRiSDj0rLaQ3BfsmFBUhTspHm+qrguvM/5MTNt4crj1Z32G4ZSsQa6w2dKBDqqwPo6a3z
	/Hdgsy8PuNgnXUmTUw+fjJfQsTu1CnR90wCPkE6y+clesyuUaPj1mbKPNc9ytaf3lJzXTLvT7eG
	eLQs1g8fpPUjfuIRRTYPRaGkOuyxKSXkZkCLsH1h9xOJmLMlWb+hxEk8Lw2BF3/m5ALnaUkXr00
	x+aYiRrhEKHJfJyuYECQFWqnq/T3EhSXiIMBO+qAF00WZUIN/lDL2Mg7mOFjhQE0evJ0lARSGrD
	K7QkxSrJQf6NaN6na3QhPBfD9fy0Fkxhad/JpbVy3PVmD1ztvAAZSsmH0WjqTU+5T1dcnSsNCyW
	M7ZrJmBH9VqeVhvg2A9o4PJmHCYfLg
X-Google-Smtp-Source: AGHT+IHCybNyNMb0drsyz0aREmcwI4Uni6luvsP458rJiLZIzoW/QcUDGoAA5wmoQMp1unUYu7EgCQ==
X-Received: by 2002:a05:6512:2c06:b0:58a:92cc:581d with SMTP id 2adb3069b0e04-5906dafd171mr5060480e87.50.1760364904884;
        Mon, 13 Oct 2025 07:15:04 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:04 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:06 +0000
Subject: [PATCH 26/32] media: platform: rzg2l-cru: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-26-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_071507_510658_730B164F 
X-CRM114-Status: GOOD (  11.35  )
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
./platform/renesas/rzg2l-cru/rzg2l-csi2.c:307:30-37: WARNING: Consider using %pe to print PTR_ERR()
./platform/renesas/rzg2l-cru/rzg2l-csi2.c:726:30-37: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/renesas/rzg2l-cru/rzg2l-csi2.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/renesas/rzg2l-cru/rzg2l-csi2.c b/drivers/media/platform/renesas/rzg2l-cru/rzg2l-csi2.c
index 1520211e74185fea3bca85f36239254f6b4651db..0fbdae280fdc49f963269a4bdaea38ff2e51884e 100644
--- a/drivers/media/platform/renesas/rzg2l-cru/rzg2l-csi2.c
+++ b/drivers/media/platform/renesas/rzg2l-cru/rzg2l-csi2.c
@@ -303,8 +303,8 @@ static int rzg2l_csi2_calc_mbps(struct rzg2l_csi2 *csi2)
 
 	remote_pad = media_pad_remote_pad_unique(&csi2->pads[RZG2L_CSI2_SINK]);
 	if (IS_ERR(remote_pad)) {
-		dev_err(csi2->dev, "can't get source pad of %s (%ld)\n",
-			csi2->remote_source->name, PTR_ERR(remote_pad));
+		dev_err(csi2->dev, "can't get source pad of %s (%pe)\n",
+			csi2->remote_source->name, remote_pad);
 		return PTR_ERR(remote_pad);
 	}
 
@@ -722,8 +722,8 @@ static int rzg2l_csi2_get_frame_desc(struct v4l2_subdev *sd, unsigned int pad,
 
 	remote_pad = media_pad_remote_pad_unique(&csi2->pads[RZG2L_CSI2_SINK]);
 	if (IS_ERR(remote_pad)) {
-		dev_err(csi2->dev, "can't get source pad of %s (%ld)\n",
-			csi2->remote_source->name, PTR_ERR(remote_pad));
+		dev_err(csi2->dev, "can't get source pad of %s (%pe)\n",
+			csi2->remote_source->name, remote_pad);
 		return PTR_ERR(remote_pad);
 	}
 	return v4l2_subdev_call(csi2->remote_source, pad, get_frame_desc,

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
