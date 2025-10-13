Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20CDBCCD18E
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWHLC56f+2dufcaGux8K3BcCrigSGdahqqGF7pi4K40=; b=aJMXeK9ZhLJnDP
	nocWC6xhlWTZ2Kvvt9WqQC6Mnubda47oV6xPN2vwD01rxAsbmthqkXVgK3Zrznk9CoD+kMLJJbPZT
	UA5q783EHeXxBsV8v4WdkSzd7Qc4XjvIxQP3jh3t9tOEAoNutZDb/gbP4sC4c+qShHxnsKGmrqHzs
	flb2X+b7pCgHETL9pqYcIHymTbH/zHvEmqXPc+/NER7a6YIgpvPPMnGEPqJxKJzlMGw/swDpDuc9A
	CQOsXrVlT24wkVfSgPZeOgPaNXUsVEZKEOmJoqFx8M5nR2VVsaW8OALyieer1HvScFVzbSSQcv5JW
	YXcinNle49CW5IpIn4aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKf-0000000DLO8-0NQG;
	Mon, 13 Oct 2025 14:15:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKI-0000000DKjA-2RDX
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=d45bLyS6OUqH7RU6UEzRVYwiTiUKaQxVUhJVNzyYRQY=; b=HISsDvdUh49AKw3aDC5SLbW5HQ
	ZIv+DhIclsW7ktLa1uMkRjo/ZfhhI1XS8nhKFroaeNOyyGUpkLlXUwrricmD7l4WxhiN8X0j8HbTM
	5hJ51ZPRaaXD8+wy4cdnt2YhfEuCdkbQeO0AzXn0xdeLcd0b3Hdhd4SiQoGrsrg3joBv3l819mf81
	AAGn0ZuX+0nGNWr4vbya9npeG6DCK/bCVED795hY9hbRHln0kIp7YiaBkCLDUIYMNje7m6FMWaggg
	Qh27zsXnmGrAGjZdlWe9htPx6PZ7dPFMmXd2O/kCijDjNrl/6Km1VmdmxOpvUwKPUkWgII5KFBB0k
	y0Pa60RA==;
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKD-00000004N2e-0fH1
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:01 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-57a292a3a4bso5390191e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364895; x=1760969695; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d45bLyS6OUqH7RU6UEzRVYwiTiUKaQxVUhJVNzyYRQY=;
        b=JuW0222IyCqr69FxVM8O81pPta9Y75Tma4AlVeKZH5H4d02EB8ogloEM5pxI960ojL
         y4H/R/tO6pMy7TqEDZSuqHhTGeNYkomrPaFoT5ZhHJFhAJd61+G/F+2C9dXEQejyJBY4
         /FPWo29mYfu7+kOWUEQm6xC+T4StFbVV/aIC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364895; x=1760969695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d45bLyS6OUqH7RU6UEzRVYwiTiUKaQxVUhJVNzyYRQY=;
        b=DwTUEBWMkuUSh/7e023IuOKdPMGS3RiLtjXhWyMvT26lIbMsp17zWowUzYNpiKDRJk
         lbFAD9bdXAyhxiKzF9da6YIT2++Rqs0qCyhrN6cjWwA1K2d0TKDkJQoUMcs0JrUKE8vl
         jD1WgBaxHiZjLtFQdRThGWYE//HT/YoLofJt4bIJGMpE9mC3lTrba8XlvqKDCnypoZAD
         j7dAlsHjeKhkitbxq4dafTSD08bYW6RtZ4YegSZ0vaD+ZMcxQyR7mEQEwOf2fYvngQjk
         1QONJ8skUJF08/mBR565AH1rKhhLwkG+3fheERIie57avMS+ouJvVrJJuvsoMspYtw0c
         0gWw==
X-Forwarded-Encrypted: i=1; AJvYcCWCZlJZa9XapKrFeY93dCp9YMxExo5wRzJET+XIzODUW1JyzxeYJtgnck5QRrLesZ96TGXCSDZhWC4hX/9JNg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwyHZFwJGcf+pI3Xq6FC+lTWtSpRvoWvAwpFVxyyZzfhMI2dIMf
	6CUwea2aOGW48Va+MWxfpzhKadZexV4ockAHn6O+xMbcZCWQWUMtdHW79BfGBLu1zw==
X-Gm-Gg: ASbGncv0z1JxGCaWJ3TV/mWNkDxTDW+W+RXf+krDQZ+nzGRC7CQK0g1Tf1iXNgBJK6h
	lfH+SeKVFh8alssAWsE3kG6DZvc4ArNBbMDpwwtgmxNeV+EA3o1Tp8iw5/VjHNgXgPYsHvIUxM7
	EV7LDdCYlMTUiFoIU2M7xlpQFI6bnDvtoc0z+LaTIbcIJHIMgSTgjWciyCDC7hD3BnEdQYyomi0
	Mp5ypUCBs7soUkM2uhgQ9h3dP/U21f7ekmvIb+TzaJRAdGf2u3yfITw16uRVwaqYNu3ZDHIwMlP
	DLQmlEMLBfBrQz9n47RCEHZwgmqJi7d9Qep8H6Olj6YhjlM6qDwmn8X9YmtpKSBLnpzb8dZIzE+
	C75BGN0SeLvBmHmUPQXbaCO38BU2G+e9zIChES3JNQZXI7sTpZ62VF5G3uxhNv2PQ6WrQnHocWw
	tVTHcA8Ou2X2Uu9mUGdfwCTWrt8fSM
X-Google-Smtp-Source: AGHT+IHgHmnkM5LbjRZWE+rax/DE80YYaaKxmy85wL7to7vxyhdrC5Nac5EP5ziTh632ueTTsgzZbQ==
X-Received: by 2002:a05:6512:2388:b0:57a:6d7d:dd7b with SMTP id 2adb3069b0e04-5906d773bedmr6253929e87.8.1760364895143;
        Mon, 13 Oct 2025 07:14:55 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:54 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:49 +0000
Subject: [PATCH 09/32] media: i2c: imx274: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-9-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151457_382961_3251DC36 
X-CRM114-Status: GOOD (  11.71  )
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
./i2c/imx274.c:2038:32-39: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/imx274.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/i2c/imx274.c b/drivers/media/i2c/imx274.c
index d86d08c29174584b26e109a7858542313219c19a..8ec78b60bea6d47d2088b8251b679224e0d34980 100644
--- a/drivers/media/i2c/imx274.c
+++ b/drivers/media/i2c/imx274.c
@@ -2034,8 +2034,7 @@ static int imx274_probe(struct i2c_client *client)
 	/* initialize regmap */
 	imx274->regmap = devm_regmap_init_i2c(client, &imx274_regmap_config);
 	if (IS_ERR(imx274->regmap)) {
-		dev_err(dev,
-			"regmap init failed: %ld\n", PTR_ERR(imx274->regmap));
+		dev_err(dev, "regmap init failed: %pe\n", imx274->regmap);
 		ret = -ENODEV;
 		goto err_regmap;
 	}

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
