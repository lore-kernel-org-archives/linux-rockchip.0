Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1EA3CCD18E
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLGaBjx4sj6mlNWu91E/1HxSOksHs4PVr1xAwcZu9zQ=; b=OGqQGbLS9FRmgA
	ZPPpExa86lNzXOCW+WZ+eHSIpI/N9DiFXfJz1w9EwPAm9gbzEbsTd4Ndc5Bv3dJ331JfPpXdeJAKc
	n7keiV43sYPsvRvji4viVebBtFlvRP0eLald6CaUkHRKU03Ap4q5RvaMjaFhD+AG+ZAV00w7ZoEgk
	LCek4LYJ608BGMYnMUrhfYYfg+5K/5IWZt2qvfY6253VEx08M4zpzIfkek26Z0hiZs56uLVkHSUZ2
	DOMraNT8lJgxn8ivT/hfw5apywlato3Qk4bFQEYoK6cQaEm7PDAivHY2jWiILTSduOzSOqk6ocT7G
	el6U/r6ZWgDi0Ei8TwhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKh-0000000DLRv-1idc;
	Mon, 13 Oct 2025 14:15:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKK-0000000DKmN-0i3G
	for linux-rockchip@bombadil.infradead.org;
	Mon, 13 Oct 2025 14:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=weMrn1P2Dmx5cKyBfIFsmXsJRg2imt8oYjxSbIy2C0c=; b=p2ddkK/rJO/YxP93NGEJYl2KAF
	luhDVIehDxEdDDIfyh7bIlPXcxX5WrPIMfGebTjGRtoa7EpWNoS93/KMajoJdHlx5ex7IcU2bnfei
	D2RdGIUfmDuDlDoPP7heR6W3HjIVZFfcl8xacmASduNrloQG6uNFWvAUkr0OpOyRYNfteCCW2Of6L
	13tQD0q0lIeS7tHjTFSOno/Y2piL0KFLc/x1YpVkBdG0FKYop78F3OWGzQBn0SBL1hi5BKjhaosk6
	S2OmzJt2avDHiOe0R3q/vfNKNbcshVbohLlVMXykKMDP+Oa1fJ4RnFl9pts+mvQZ258GO9U8LAlgC
	H6hbTOCQ==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKE-00000004N4Y-3EER
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:02 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-578ecc56235so3649629e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364897; x=1760969697; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=weMrn1P2Dmx5cKyBfIFsmXsJRg2imt8oYjxSbIy2C0c=;
        b=CuIv+5XKvC0hnwFf/pwkzUmOgjXxu6zFnvjj1Z5hz7/yUq8t1tq3NeQDB8rBz3SFmw
         Myojhel5F5zM/WgkMGtUZ68lSRUvYgV1Y2eD4pDbMWt1VdJlEaPKRWSvLmlxEbGE1Nyd
         j8dBfyTWlFekcDHr3/j+j84hm8XuUxsVkZdlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364897; x=1760969697;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=weMrn1P2Dmx5cKyBfIFsmXsJRg2imt8oYjxSbIy2C0c=;
        b=byNnKFK86nvGxewIrVhbgumyhtlFVPzptyVOmWHBOd4Jhlu0Mn1970UbfHCcGVB1ci
         TtRS6Lf3Pb3dlvGvfntvO1T2sOmbGEVL7cZ/sPrXsbJPw2qx5qqqmgiio/H940tG8HXc
         5lCeAKG5ppnIecZ3JQe4lJySzl1shWwf+VD6J7MhD327IzpWbcBzbDpuCYS0TT4Dwt0U
         7Iasj//qVWzmFk6XtXQMDTshUI6pZOrW+TH4mjVL4x36IzX39bwD0omsWy+OuLadO+i8
         hoS781KakwOT0I2UAKG50aOV5lo7DLneMYbgdFyhEtuKIXVtrbgQrguQXLIFRg/q6V1v
         JlGg==
X-Forwarded-Encrypted: i=1; AJvYcCXxA4ATF1APEObe32uzC9ZvV4ZQ4Tv/zuktbf8L0zu4qBNwE66N1PuGCotGYqOUCXdyQGNzJlMwtAwWjCUx/g==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz1DAKDCcGzExAFsnX2j4t6C20SqZqiC++k3d5K9dxwXiP6kBg
	MHiepVBaub22Tvvi9tt/cHhYnAh00Gm+KQQpMi/T7mcSHF297d5fBD55nrRA876Qjw==
X-Gm-Gg: ASbGncvUTtYwFsJ3HwHxcS4sp8MhXb3E3WActlQ2F30mVRw5vhyKAjXp4dpWFiSdZXr
	uwstUXN1oSBrhvJWjlKdRgQnJLCzxa17shjDd4m8UinkuQaEuNG/Ry8GQnBTecEBJCoCs9AHJZS
	hZD1ioX5UTrH6Dj1AzHRH8Sx3rQGCmSC+PgguhTpoS1qw4ml1opAS7Db48o8nVicGfiKrmnNrGT
	+fzW5HGcBjnCn4IPuSSGB3MlNmz3VygIDcDB5iF2BjNmkU6yMHJIy6N7BgZkSc7zYzU6XNb6RtI
	MMvcvr6REdHcyYpE1LbNxNqkNSsl0zH+f/ocI4NZUskeHzJezpoXE3eBtyIt21IV+ZAyl+Uhltm
	U/7yDvzRdY2bZtAkhs9g7iRNWiQGlRtqh+u0Jl9MxNmUbztSwDKE3rQYkHdiDdyQqNObaE89EsF
	sT0FpUKPK8q2KQr7sdAQ==
X-Google-Smtp-Source: AGHT+IHVv3VTrmCgUzT/cTkypfMtCAEj51jzL57PRvYw0rG8gIadeWnRbBvldcFvBGl05DoGVFZcMA==
X-Received: by 2002:ac2:4e0a:0:b0:55f:503c:d328 with SMTP id 2adb3069b0e04-5906d8edab9mr6287769e87.36.1760364897004;
        Mon, 13 Oct 2025 07:14:57 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:14:56 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:14:52 +0000
Subject: [PATCH 12/32] media: i2c: max9286: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-12-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_151459_987994_105173CC 
X-CRM114-Status: GOOD (  13.05  )
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
./i2c/max9286.c:755:7-14: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/i2c/max9286.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/max9286.c b/drivers/media/i2c/max9286.c
index 7c0961688d6173843f3ae846253d4a8669ae762b..e6e214f8294b83105be02f29966e1d3ed72f8dbe 100644
--- a/drivers/media/i2c/max9286.c
+++ b/drivers/media/i2c/max9286.c
@@ -751,8 +751,8 @@ static int max9286_v4l2_notifier_register(struct max9286_priv *priv)
 		mas = v4l2_async_nf_add_fwnode(&priv->notifier, source->fwnode,
 					       struct max9286_asd);
 		if (IS_ERR(mas)) {
-			dev_err(dev, "Failed to add subdev for source %u: %ld",
-				i, PTR_ERR(mas));
+			dev_err(dev, "Failed to add subdev for source %u: %pe",
+				i, mas);
 			v4l2_async_nf_cleanup(&priv->notifier);
 			return PTR_ERR(mas);
 		}

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
