Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF597CCD18D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFsnyXSCAxWLjhb2zxr5K1XLetIghMMF0VMXxcXbqq8=; b=bubMGRKgsQjbcX
	wNoZa8xGPNf7PuXdCn1fxS6DMhcU/jKzD7ZAVWeiNGRQYCI9H/HqCyK7Wyqn6zZfoMC1LnSEOYwge
	yNcBCjJScv43LgGsvToSDvueot6M/Ua5p/SfiZUGBgs296a5661nCRhhnqKXERIhEOd0OVLer7DUL
	qzeUdmjt1Whs86aexJAybFqsVTwUgIPJ/YypKXGP9L4LxP9DpuXJ1ciIEUJ/smzNLmdgTZnfmmCCO
	qWiPFpKp/chylfHBU9oSObAY50mKYZfULZayLfAVtxM4dGGnGWhexW1YNwkFuOn5EEzpdnipo1Qey
	R6K/jV531/ezhpHGd2uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKo-0000000DLfH-1bYZ;
	Mon, 13 Oct 2025 14:15:34 +0000
Received: from mail-lf1-f42.google.com ([209.85.167.42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKM-0000000DKqJ-17gP
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:07 +0000
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-59093864727so2839383e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364904; x=1760969704; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PvGrgXxce3b673ZvWJmL2O2P/vGZxGBn/PkoM5SNlqE=;
        b=J04TcAxcOw7gQKsd0lZ8h2AkoARxU+O77vsUHAwiAxa9EaNVUwbptZcabmuj5zkBaf
         nxQ3qDNZUCL1KtzordOBNE78xgymG6ikzCdM5Keodo6AURaoMVg6f+iCmFBtJnM320Tw
         1hK5pnvG+3GFAZ5o8cL0lrfb6kdYhX+dqdVd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364904; x=1760969704;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PvGrgXxce3b673ZvWJmL2O2P/vGZxGBn/PkoM5SNlqE=;
        b=iruVK/P8J2wPZuT56f4AigXQ+G0GKlVVisb2KImYm6z+FBFmYKRWEpWBAnsOP4X1SE
         QSMmwjk2ipxdEGLL1Pz8p0yqqHS+oBq0wncLd9k5oQkST3Ef9j/qfLpbj0oIsIoeOpb7
         Yn6J84liqP/otQ03C+KP6hZKQZAjIqfm/849rYPmVgxExIhqYe59pBzEIAkDKuvaLa9t
         HwXedxuDKpUkDnbDH+0MnVYGUxLeiEKRsxgWjN5lI5HdD7K5hvd0eFaLYPNunTJO4Up/
         HD1l5Do178LRJysgGzNJKp540OvA63kL8KN93oJzVYeJnmJNQM6B3C4rIS+JDhssVCuA
         VwXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfMXAmZlPs7AC+YbBeXDbcZL3E7bPDla6Jtdl9v/NT9wzfFZ74bcsj1f64wPEJdcqbWsth8w06JOPIasyhog==@lists.infradead.org
X-Gm-Message-State: AOJu0YzuVXOA59QHLY17zDUiYA/l5DWcpqAn372O80YmB0DTmCbX9tUt
	jAtvuhS4ppbckgcXk5Qe7lF0I4lzNQ7Xa5D1J68ACAFAKX1GUfc8Jq5uMZvAwS9CHA==
X-Gm-Gg: ASbGnculWKmB+Viqghvwhb32ssArg4numJT6vKeMaE6UYSpMPWqickjwbZgrqEkboxY
	i+RRjTNCFb4F6+2iZ9nZIrzOwX0lcXdf+6Av/PlFHmatzgZ6hkTDyoQwq/+u0Rn0cnatBITTaDx
	1jpW6GPd+pYKS11WZOueCx/5hB/ziz0CbPhV5gx5Ik/Rq8JeHEWBnu1ju9LiEnkmmbyKZNV5u6e
	K6HoXi91d9Cdn/bo3frZ9Vie1TyPtOJrdlkUjhXzth7lDaWGhjw5Lj0qI9OhdtZVrPdBxuJBI1M
	Va/S71mnkDIX3L7v2k+tNZ85sOp1h/vS40Dour6c0jviapVbhjAeELOqHa+Li8B88hpRv1VVsVz
	RzrcztnCIhnEW3v8keIAPflgXE0O3el8kVpObAgcrtpcVznfkA1UViOndRjB3ylOYnBxXJBaGsn
	NkqD67j/p4JBQCrqF9XusYsa8c/hXu
X-Google-Smtp-Source: AGHT+IGGd6j7B+8NL75y4mrJN6TXhWVlixXUpX+LgX1rgjlDHLsFmo3oZTEn3Lq8AvVEZR1xSQXSLQ==
X-Received: by 2002:a05:6512:3b12:b0:576:d217:3f79 with SMTP id 2adb3069b0e04-5906d8b179emr5620261e87.15.1760364903769;
        Mon, 13 Oct 2025 07:15:03 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:03 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:04 +0000
Subject: [PATCH 24/32] media: mediatek: vcodec: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-24-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_071506_360503_E5BD2C71 
X-CRM114-Status: GOOD (  12.12  )
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
./platform/mediatek/vcodec/common/mtk_vcodec_dbgfs.c:187:3-10: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/mediatek/vcodec/common/mtk_vcodec_dbgfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mediatek/vcodec/common/mtk_vcodec_dbgfs.c b/drivers/media/platform/mediatek/vcodec/common/mtk_vcodec_dbgfs.c
index 5ad3797836db15bb62744d6699cdd2d6f05ad01b..643d6fff088b22dd58c0b05d5699432ccd0bc582 100644
--- a/drivers/media/platform/mediatek/vcodec/common/mtk_vcodec_dbgfs.c
+++ b/drivers/media/platform/mediatek/vcodec/common/mtk_vcodec_dbgfs.c
@@ -183,8 +183,8 @@ static void mtk_vcodec_dbgfs_vdec_init(struct mtk_vcodec_dec_dev *vcodec_dev)
 
 	vcodec_dev->dbgfs.vcodec_root = debugfs_create_dir("vcodec-dec", NULL);
 	if (IS_ERR(vcodec_dev->dbgfs.vcodec_root))
-		dev_err(&vcodec_dev->plat_dev->dev, "create vcodec dir err:%ld\n",
-			PTR_ERR(vcodec_dev->dbgfs.vcodec_root));
+		dev_err(&vcodec_dev->plat_dev->dev, "create vcodec dir err:%pe\n",
+			vcodec_dev->dbgfs.vcodec_root);
 
 	vcodec_root = vcodec_dev->dbgfs.vcodec_root;
 	debugfs_create_x32("mtk_v4l2_dbg_level", 0644, vcodec_root, &mtk_v4l2_dbg_level);

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
