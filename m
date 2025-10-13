Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 635C0CCD18E
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91+dYAu2MNxONB2upGCXIGD77H2wHqcGx7Q9bPGMjTw=; b=O2ffVQPIr3vGd2
	pWFQ2E62he2PP8YxakJXMhP9JX1hUPRDA73RZJFkI0bttbr0nr5ub/XbPsprP8XYVM10LIGxYfK/B
	RvykSDw19hYMynzcXWuPZ4JBfREROAxcriFKLsGBEvI97kNxlJ66WZfgiZyRYnWg3DakuvOkEe/dH
	Oh6oehKdcsbYrKYHv9eYgJk9WDXZn615m+AhTNHk//UeY4BON3E00XgwHthI12mcfk5wj6tVfm/BQ
	92hUlX5MoMuVUGhDRYmmT/c1G9Pb6N9caw21RWJiGmxYB0kz7d6HyPfJNKpUeiltyuEvaBoe7k0jI
	knPc9aEzJFHp9JVyJ7RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKy-0000000DLzS-1L5C;
	Mon, 13 Oct 2025 14:15:44 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKO-0000000DKtD-1nWf
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:10 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-58d29830058so5245543e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364906; x=1760969706; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7VLNzWiaaayGbLPJ+CR/kQopGEdhcg7BnTJUn+bNJDA=;
        b=EZrrk8Egtio1/eNZItOEff5C5q59fO0WGrXg6jBQnypES2MT8HO03afXEY4V4TIgbn
         L3ucvqtalpV0N3Of8KdQ7BBLCwY+JsfJNctjDf39sBAeK/jUOL7HvEtBo/JZNFi5bANd
         SA8b8KRlsOZGeM2q+6pa4TJ9eSgsPhQqbGO2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364906; x=1760969706;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7VLNzWiaaayGbLPJ+CR/kQopGEdhcg7BnTJUn+bNJDA=;
        b=dU/KDIA8/kWAYSPloBmyYhU6JHx6y9Yha53F1PreuN3o9LprIT1D9V4AZ06+eru3KD
         FGtBA8jwhbC+Jkcb6EXbzPpoB2cDFv94Udbq8yxOmpJeFPuVZxLOYC3bOZj7mWdWBW+T
         oDKzLU8+gwcZkvOfIztf2rDbfYNaYyaw2Nmp/J/AnN1wf8xCRdxLfdy1zoP9CAgWP3SN
         JOweURrmZbwd3foQ0oO7hwUiSjtspCmqzReT3LYqcTSiKK4veIufnalx+qsmPAm1DlLL
         hbKWCL0wQuVdBalsN+278f/Hodwitmqbx/A/oCsq4cHQzq6dCKKYHGaiT6ep4FwnUMDz
         hcxg==
X-Forwarded-Encrypted: i=1; AJvYcCUF6TpFrUsoXrr5oB9WOOdsGzj3XbVxq/46tYXMC7F1iMMSgKYkS4SI0B44SrznYU/+FdwdK9bIfzOxhkxvPA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxVwCLfBTICEk/x0VembEBa2dvBa786iRS2IHq/MkPh6CvcG/N7
	80HcFMrqkEFbVh5pEWrwWCEXBYRK+RVEk56J5y9/wRXEossXoRP6xb2gWNkydp3faw==
X-Gm-Gg: ASbGncuqrSBUnwodKsahwMUwJ2mXWjQz2l7aqCik5VkcmXrRt40a538bWM2W/eM7g9w
	41RD2of5D6R8MhU4jCmie2jhIGgxQuCLUTbpeJ4Y64GJcHCQsqTR7je9T+2XlW9uP6HW3/3irce
	hQoG+fU09uqiGPErys6jCH6dWGjoEu43D6bMhjyqgpRlUDikh3328L04TTktv1qVpwe0jt/ubCM
	KlvqMi5uI0Ph5Fw6WuvyzGUe9Zsn5apoLr3jHNuH2Ym/v74W12NE9f/Kte6KApcdMT5geuEippN
	0dEArZKRFxXb2LE8qhR5cj9rVXuxE4jk9r3P0ErNnVjI9Q3K0QSQxAvWQ/kwv8PWz3447DQ8w8M
	fWfNDGu++C2RWNYdO1ZTE7uxBLQOZWUThS5j1o38gREET/khCRNHByGuOersn6bGMiYkHDEFy08
	+L2Gvi45kcUPSvkJaa4g==
X-Google-Smtp-Source: AGHT+IHgQ/WMhPa6rwn8Aka868vYVRu77lc4adXi44XLWG27weltH/9eVYPP+kQHy8I85fd7fOXyWw==
X-Received: by 2002:a05:6512:3c87:b0:58b:23e:5ec with SMTP id 2adb3069b0e04-5906d8e5b43mr6011775e87.26.1760364906103;
        Mon, 13 Oct 2025 07:15:06 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:05 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:08 +0000
Subject: [PATCH 28/32] media: rkisp1: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-28-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_071508_550046_31C36169 
X-CRM114-Status: GOOD (  12.97  )
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
./platform/rockchip/rkisp1/rkisp1-isp.c:940:3-10: WARNING: Consider using %pe to print PTR_ERR()
./platform/rockchip/rkisp1/rkisp1-csi.c:372:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 4 ++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 841e58c20f7fcb484643138627413425a049d1fa..ddc6182f3e4bdacdd1962c86f6259334b16aa505 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -368,8 +368,8 @@ static int rkisp1_csi_s_stream(struct v4l2_subdev *sd, int enable)
 
 	source_pad = media_entity_remote_source_pad_unique(&sd->entity);
 	if (IS_ERR(source_pad)) {
-		dev_dbg(rkisp1->dev, "Failed to get source for CSI: %ld\n",
-			PTR_ERR(source_pad));
+		dev_dbg(rkisp1->dev, "Failed to get source for CSI: %pe\n",
+			source_pad);
 		return -EPIPE;
 	}
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 8c29a1c9309a846152d212dcb50b7bf991d4f422..147d33eb6ee0d975b257c5df2997b811ba3a62e1 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -936,8 +936,8 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	sink_pad = &isp->pads[RKISP1_ISP_PAD_SINK_VIDEO];
 	source_pad = media_pad_remote_pad_unique(sink_pad);
 	if (IS_ERR(source_pad)) {
-		dev_dbg(rkisp1->dev, "Failed to get source for ISP: %ld\n",
-			PTR_ERR(source_pad));
+		dev_dbg(rkisp1->dev, "Failed to get source for ISP: %pe\n",
+			source_pad);
 		return -EPIPE;
 	}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
