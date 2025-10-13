Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9239CCD192
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/B0u1Of2jfCEGSDcC1jL9VKkwhVDTyH8Be6x5POn0Yo=; b=nJMmC7sAH+1190
	GhpgPis+8v3/6wFGTGxN2ytRC8H7ifelgUhwgH+wYPO598ot24lR9icUHkaoIi0pox6PfV3mqSH5K
	3jidsPzCLRtkrbDVu+kSMaW+vRkDstc3LEfWhLHSq8jrxL7tmWlQzwel7gRjJYCspmiBJh76UsknU
	zfu93WeQu09BMkN235DktBolxhtbaafTVoYNoeIV9ZJ0Ym8QD1UKGj/jPas7GVsKrtvN6OiGr/XfB
	eMY/me6jnxFzhY0HC7+VDMX5TxOoq9YsU2zxJEo4QQxjodnbaov4dJcGSovEYae8qwjYyRby0NVH4
	GVjM+0CAJR5BHPCqW9eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKk-0000000DLYY-42Lb;
	Mon, 13 Oct 2025 14:15:31 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKJ-0000000DKjh-38EO
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:06 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-36a6a39752bso40631251fa.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364901; x=1760969701; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BSJdC/O4+ZsAqBeRWK64BAxaBhpHQ02dQ2HoRNMjbAI=;
        b=P6eAvc4rdCDffw8foqpg/9Xf8GfqaA3U8QkBNxFy9u5W4RM4t0rt/t9vq+tL9FbzAX
         Kh9JMoz3pDSD6aOTLpGaN46YzPj9tGBu706F91sN3Hq9mi6WHTvKYhpL8hFU7fi2kytH
         nFphAYj941t/ciGa8vaiQ056LKv48oaB8+Euk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364901; x=1760969701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BSJdC/O4+ZsAqBeRWK64BAxaBhpHQ02dQ2HoRNMjbAI=;
        b=ZZbCzYBGrBF5UvNhW0snII+Wz/k1BMeCF4duw7b0GnAMAKtqjuhMS5+RSr+k0N+KW0
         i20S1mIflFJrdfAzOP2/CjVhdyGJ0Ljgv1rFPrXXhr9uAx0yq57rEOVUuvLhcPQfwcV3
         tMxig2nGDO9VD/sDLp5v0LVD4EZ8ywPEVbj8o7Sg7A7bFmETdb40l5/DH1PvhSM3Vl3R
         4IWOP5FcCjQtJxnrBhWnf7aK65zdJhd9S6uuSqReb+8yxGAO23ceJUdJ+FdjlRftEQTA
         fKg0a5KVTAcWtief701YQDx5GgCRW9fFFfvKTWvhKYu2lFqcicSV1boGTp17b5TrAxg9
         bTCw==
X-Forwarded-Encrypted: i=1; AJvYcCX4o1nq4EDWXjf1WrTRtX2iWHPuIHhUj/NEFT3wBk9A3a4owBnkJPveTpVg9n3/GHU53xxpM7en8j1XCrbKUA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwoiHkNt7SScVAnF2J51MTqKJlnqPbeQYAoNew7gI3Tcvdo9Kye
	bTVz1vKiQgnNMWlJkAEz/UmDewMSVLVmzZkMzoI53BI3qnBepap5OODLD/CJOuiudw==
X-Gm-Gg: ASbGncufVn7sZV2LOmjReuWQH3fJzDAhNajhyFMVTxn5huFDsRu1cqRX57qRMrsefl2
	kS3jLK8UM5N3ocu0fLmq/WlEXrzAP5pO5+qK/u5q4sPMgwuGz0jTNnmjSPr1U2J9hcUqDPKXrn0
	qQk4KatzV/WQ5Yw2zkH4p8tQ9hNUczs08q2RBSyrumHzePtBxsVWhAdIlPalw9As74cK4Qhlowb
	X9EQU7J6FFtn0F0m6mJTl+MB6dIvNcp4LWF2S6LAXNE/e9l+6ImQYbbHMcveWfMFPJl0CbHzdpf
	SvxTuxo+8P/CtpfWNu7b3WwX9PNBTIn3wpDUTGquY7S3Tn/l0pU+Zrsokx68+aoEjCpAJqMYm5o
	7FAcG3mNUodmTb5oETdHUgRG3cRItp3d3h9b+FByk+x0TUGaT0RNa/NE1sH8NOXKJWdOWk3piNG
	dzCmt0icbRP0i/MrbNUY7cywZg0JxLxoKJrlbjDp0=
X-Google-Smtp-Source: AGHT+IHaXYtEGcC0lCeqZAPaJ1Eba36sEUnGMYsHL1RWVLLcW4i0NjVadIfSh/QN3FLm+/VJwSwBng==
X-Received: by 2002:a05:651c:3617:b0:36d:501:76d8 with SMTP id 38308e7fff4ca-37609e5e0b9mr54139201fa.31.1760364901230;
        Mon, 13 Oct 2025 07:15:01 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:00 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:00 +0000
Subject: [PATCH 20/32] media: i2c: st-mipid02: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-20-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_071503_843076_A6328BFC 
X-CRM114-Status: GOOD (  12.69  )
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
./i2c/st-mipid02.c:751:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/st-mipid02.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/st-mipid02.c b/drivers/media/i2c/st-mipid02.c
index 41ae25b0911f02517f137d6b5307d13154266e07..4675181af5fb00df837c8b796fc32d50e077a480 100644
--- a/drivers/media/i2c/st-mipid02.c
+++ b/drivers/media/i2c/st-mipid02.c
@@ -747,8 +747,8 @@ static int mipid02_parse_rx_ep(struct mipid02_dev *bridge)
 	of_node_put(ep_node);
 
 	if (IS_ERR(asd)) {
-		dev_err(&client->dev, "fail to register asd to notifier %ld",
-			PTR_ERR(asd));
+		dev_err(&client->dev, "fail to register asd to notifier %pe",
+			asd);
 		return PTR_ERR(asd);
 	}
 	bridge->notifier.ops = &mipid02_notifier_ops;

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
