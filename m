Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04CABCCD183
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4r7x46t9KBgKt+PbLzzcAr/vx2FbZAPJLJzJU7mp2Tg=; b=riv+GU2IjyhiSZ
	MPxf/uz511FXy1l31n/MU/s4nIeY7JWvp3twEGRCbo5sCW/ZSDLenE362F3Gv6MMzEXSZbPvs3xqC
	TgXGgNYn5ke//gpJWmR1nIJyVZgpflEgtFhn+CrL/PBqmXxaUosvvyxBJ5zyPJftQmzneFmH1FE1c
	ZQ0dYQ0Wo6tRhmo+mablThvmf4qcr9GxtAYRSwpEpSpoMBL9BgBrndVzEq5+R2K2LqtfZ7HAACKwh
	tMl8EUDIpg7v3lCeQaXV2UA3xp5cC/nXYYSSBFjUZP9N1MZneRrksguoC22zZgda31OxBrkaWkttW
	Yr3U4XSfvkW1eyqvFYiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JL3-0000000DMAL-0FLm;
	Mon, 13 Oct 2025 14:15:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKU-0000000DL6f-2r2o
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=ZVsYamtIjQUiQyb/41UVrEZvV/AHr8CKvvGfsgypkrk=; b=CK0cWiMTtpL1hI/9+nLP32YaEl
	3GWT0SIBEcAo4BB47zHt95BTlu4qnzk5bksCXba6zTUnMub+GXEM4INomMpzLyQ3Z3jd5lavRUO3H
	UuLBEGRjgZ9HesdiaxXUUrR+LdD1HJU22H5E+WuCJdNcBtHZLOFhUtICTg/51RAENR0uHvk2kt+2Q
	CdYNcmVzOsUr0ryUxE5EvK7dEYmXH5oWYaJwI8cVpWNioeeU1xLw4NBoUbtLg38vt3k3YY1mIWu+V
	YUUGc2096jLs3uq6STVRJfGYJ5OrMjMMPy/oAdboZL+zhSApVt7LNaEbhVFYkdMJ0MvTCZvyf9KSp
	jKILOzww==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKQ-00000007W85-0N40
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:13 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-58afb2f42e3so5098522e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364908; x=1760969708; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZVsYamtIjQUiQyb/41UVrEZvV/AHr8CKvvGfsgypkrk=;
        b=KhD1OIuHpp0HNUn/h95tz9dSM7YsN4n0KYOriKsXebzwaXRmxnwta77rrRpgiso1JK
         xyzaLdQO+lCZ73yibmw2qia5Y9liejZhQp78qXcXQBHZgseeO+AOtbEk+k0OpUrS98O9
         nXjZ882a65e/ybKz4HCNejd7U2/gUB/GT6aXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364908; x=1760969708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZVsYamtIjQUiQyb/41UVrEZvV/AHr8CKvvGfsgypkrk=;
        b=RVsG0wXyruE8NnCSCRqxZjeia3JvOlpwHoWND8rIXDDViIdO0DGOAqEpQ/G3GgSIHu
         w2LH8CD7CkhGoT0dHaWZoKpjd4a99SZnBoONzjiQNkn3ENLvJTvHxUnuS/meqBKd+jah
         oP6STeCwFzHj4uV6Pgdh5Cwln0d4IrKPI23T58C67LkGNua46POQQsX6s5kfa4xcSuMM
         CDo3EIJoAqG1/B3f4LC1VPS8TlW9ynjvLYHp78ovHBG1MAi092A9Vu8EGPUBXDJg+WoT
         82fzwE8PBtB21fhu9q8KMZTgqvT5AQBks5j8W2MvDtiFODREeaVUAYKDrXbz1fi1Da0Y
         8q/g==
X-Forwarded-Encrypted: i=1; AJvYcCVSDs6Mh+Ulfgkq7wmmATPtUBZTZb4AZfz+yDLJXza7SyOsx/4wSFfgPFJ8OyUFfodB33OqIKM6prdFC6E6Pw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwVGSZ2nBvPt8mm6cvypySBmEakNbYbnPzzwdlIVJ113zT4Kmze
	b1/U+3psfLL+lIhKRl8YEL6H7x7UoSbkoshsnN83MuOy8xCNvzJPa+Iy3TcLXWqp4Q==
X-Gm-Gg: ASbGnctTiRB+t8I4VJocZm/4fMxfLrCNwXfdC22GIUpRxJS2rDcqr7NHsiURunnleJp
	HgkOyyuBg8nOyT5todCTtyuQS8HyuervCV6QvKBgvZc9IYdw8EyflDRWTcJMfK+l/8Sk8WvWlMk
	2o5JBNC2gNOQhl2r14H8b1HawWSozCc9TRMliQ1HPMd9SQQFWaySnA/p6bCfJFSjYtJ4n8xgoyN
	2n4RgHAnSpxjXJtv8K2/HUYDOnsFp/82b5GKQ4gXxnh7OuWzCDa6/CYR07CRo6pcoOok8WjbFWy
	nTi0K2xMXBl/OxK4UDkvABaXQuar6oME/52kKmeBaU0fCqYMGjPksq8cxGM/8/fljHI1XMEk06o
	rerQrwjFKM/Shj+QA3PJcaKMWQF2vaAAjEARxmW/W1peNyyu+EsHq0J0fysc68YpQX2sASsQCAa
	dCsXXVKbVGQcms4oNtGIGjElRjVsqC
X-Google-Smtp-Source: AGHT+IHnTH3divp7fqt3s0C0bL0Y26kzFRRxIkA6dzGRmTI5xBy5IO/jgX2PIUsKvH8Kkie5THLlbg==
X-Received: by 2002:a05:6512:63d9:b0:590:9a11:9c23 with SMTP id 2adb3069b0e04-5909a119ec4mr1624042e87.55.1760364907731;
        Mon, 13 Oct 2025 07:15:07 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:07 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:11 +0000
Subject: [PATCH 31/32] media: staging: ipu3-imgu: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-31-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151511_374341_1702CF6E 
X-CRM114-Status: GOOD (  11.72  )
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
./ipu3/ipu3.c:534:5-12: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/staging/media/ipu3/ipu3.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3.c b/drivers/staging/media/ipu3/ipu3.c
index e22a9c0921957ef2fbf7b8a11fab28e6d78c60eb..bdf5a457752b24bf35e38491d63fc1e059a1e058 100644
--- a/drivers/staging/media/ipu3/ipu3.c
+++ b/drivers/staging/media/ipu3/ipu3.c
@@ -530,8 +530,7 @@ static irqreturn_t imgu_isr_threaded(int irq, void *imgu_ptr)
 		if (IS_ERR(b)) {
 			if (PTR_ERR(b) != -EBUSY)	/* All done */
 				dev_err(&imgu->pci_dev->dev,
-					"failed to dequeue buffers (%ld)\n",
-					PTR_ERR(b));
+					"failed to dequeue buffers (%pe)\n", b);
 			break;
 		}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
