Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1248BCCD190
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4/Co2996H2U6+Uj1SgswTOTVW7K1GdpMJWkZt8qB+k=; b=ZySkkIuM4ayASR
	KeGtqrHVkGQ68QBwliI8+JkLYVYAOY6CNKEVyrmwlDmucUnmjOLKrrN84pl++eFg16yy2NOX6Dgck
	7iaRKsz2nNRy7SmAnZt3JvNSYoDk4A1FzNo+tQNflOJ8vd0n1azQjQuc5WKJuMiP58eMiZG9Uu1cS
	2MRTjReRLvvpH3tI4v905OPIYnzxIeftlpKZ+5lHP3co5A8ZkRpVPiIlyHC3ob2U1nCiOvOkgBL9E
	MjoWEFhrao62UmpcscH2XqvnKVu9tyQJkyTgMObotNGKDXMauf/hhST8/PR/cS8d3uUepSMLOm5sc
	Ff6Q5b9UHN9BssHhQyXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKs-0000000DLnV-3pef;
	Mon, 13 Oct 2025 14:15:38 +0000
Received: from mail-lf1-f53.google.com ([209.85.167.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JKO-0000000DKsT-029V
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:15:09 +0000
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-57bd04f2e84so4681964e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1760364905; x=1760969705; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eZ1y71tufxgFEEk7Jm6x6zTef8El2vgKtA+3jSIjqY0=;
        b=GijuDPnzb8FcxZMyHV9x219xZYN7Ldn1CpGjrZ9rOAvZaVR00EpHeOK973+2j4f9rD
         uNFBXGl2lRBnmj0D5gktL6Wo8YTSBWFHhz22bsDux1VvJVvxprPkS2RvYvYSEXEEig2n
         mEzSwCQCXH/lIo864rnoI3jKwviV07h7Z54Q8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760364905; x=1760969705;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eZ1y71tufxgFEEk7Jm6x6zTef8El2vgKtA+3jSIjqY0=;
        b=fh14NatzfXVZyXxjtUNvkqZ88PGbaO8Tm/MzzknwFhGcv3Elk9FNs3jFYw4/U+fxt/
         zYQYcE+wgtOCAZTcch3ib7YdK62xLHB5qGDlle4ALlsIBs8TN85FTp6xF74LDm/zuNJ7
         fBz5cS05nznP5w5x4VmM3KTMtaesaqsYG7E7btcQcABipBrbaznaUw3l9nFGBOwR461b
         yalIDpd2aDBEiU1Txg3Ik2fBO1TJdiPh0PJ+G1jLVh51Zk99wof6OppXHoWVn6ZrKTLk
         HtMaiuAH/LMDpTADNc5C4fd1X7u8qVgQkmrYqLSDSw7lmNQFjpqsFcTM64Pft0XOHqOs
         ndyw==
X-Forwarded-Encrypted: i=1; AJvYcCVDxw/kXXIqBMzE1lXeJZNkq7bjxEvNtyGljBoHxS1PxSUfrq9EJAanxf4RIJNEmgpVAnEwQtBh96Jpd2MvAw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9nEVvts/WnsqkvrClMFhY3gGLaJ0wxmXoc3sJKOkjCAp8poWz
	4FgJPmMjz9pz+ARbDWImkCw634GnGlzodNOk/tIY2c2huzulzzZ/seVB04uS3Y4+ZA==
X-Gm-Gg: ASbGncuiTgpYqbCQfKRTDMwPzy4YBUw4fKb2pSpQUthRN4tt0Ymjds14kk/n7yclef7
	az2TmCQ/IgQjIADtvK8RW4iVoHLaDpZosu+1qJ7v1uw7+Th5n/RisQZ5MExdYWXOmyYh/m1d9oS
	M1yYDi12G5dcsDN1SywTRYnISZ9nH6FRGhCuVhOQICwg77QMryP24zYJqjEM0ne4J7uMNHttX91
	tu5E6FLA6+9nel0BuFEoW+l7ClGgbVT16Le8VbuDFDVGLfV90LpgfQKsvygKs95woFPTnEuWdsq
	By0PUA+U5x5mcLqOQuJT7SCvBDtFCoTFd2TqqDKU/q0QwLJZsWZfGdfgEB5PcdojrBarTHSFkVl
	/z6oJbtBazF2e2L8p/vcfbgRUDe//kHvtq8FUtp7eUm7BS4rIV5h7yceyFa4go3DE1f8FMliQn+
	NQYej4QFlXeBB6J1pYlw==
X-Google-Smtp-Source: AGHT+IFBH7uOHCgk463dX9utRYXWTvTjqks9NRSCe1XoUpKorvtzVnjNPhpyhsxKq9EgJCfyUEV3JQ==
X-Received: by 2002:a05:6512:ad0:b0:57b:1ca2:ab60 with SMTP id 2adb3069b0e04-5906de89076mr6151331e87.52.1760364905455;
        Mon, 13 Oct 2025 07:15:05 -0700 (PDT)
Received: from ribalda.c.googlers.com (56.213.88.34.bc.googleusercontent.com. [34.88.213.56])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e58sm4165256e87.25.2025.10.13.07.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 07:15:05 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 13 Oct 2025 14:15:07 +0000
Subject: [PATCH 27/32] media: renesas: vsp1: Use %pe format specifier
MIME-Version: 1.0
Message-Id: <20251013-ptr_err-v1-27-2c5efbd82952@chromium.org>
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
X-CRM114-CacheID: sfid-20251013_071508_090063_22D1F01D 
X-CRM114-Status: GOOD (  12.60  )
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
./platform/renesas/vsp1/vsp1_drv.c:958:4-11: WARNING: Consider using %pe to print PTR_ERR()

Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/media/platform/renesas/vsp1/vsp1_drv.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/platform/renesas/vsp1/vsp1_drv.c b/drivers/media/platform/renesas/vsp1/vsp1_drv.c
index 6c64657fc4f3366f27bb63dea56f535519af20fd..2de515c497eb8557602ec946de527823f07ab11f 100644
--- a/drivers/media/platform/renesas/vsp1/vsp1_drv.c
+++ b/drivers/media/platform/renesas/vsp1/vsp1_drv.c
@@ -954,8 +954,7 @@ static int vsp1_probe(struct platform_device *pdev)
 		vsp1->fcp = rcar_fcp_get(fcp_node);
 		of_node_put(fcp_node);
 		if (IS_ERR(vsp1->fcp)) {
-			dev_dbg(&pdev->dev, "FCP not found (%ld)\n",
-				PTR_ERR(vsp1->fcp));
+			dev_dbg(&pdev->dev, "FCP not found (%pe)\n", vsp1->fcp);
 			return PTR_ERR(vsp1->fcp);
 		}
 

-- 
2.51.0.760.g7b8bcc2412-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
