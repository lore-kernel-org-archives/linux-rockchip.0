Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AC35C61D99
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 15:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inEqEo/HyJVbRwLPtxIK114p6PjUzcR88xAt+OOZ1iE=; b=BjHeTARNgyZsXR
	AEG/9s2+tqHG8mqAY6/paoRAcQQQczGagvdh50w0NigjSloJzjYqLkaeCj5JJvLmreSS7+nCU1O5c
	SLpyIF3osasRycTM8DyVnzSizd7qUHbCkwzYXhJSzn2kBAFC+gZcarBWZpixT7hhAl8g88nCW+wMh
	TKXcHlMiaH3GERF34bSLfAU/iJo5VBfhclGhOYmUcYH3TPtqSXY7eSpZEpwP9UKHbEEzMPUA9Zjkl
	t40aGzQXlk57BgeKmpatgiSNs+qIbENUCbC3wO3Osn2oVnFwhO7wXzI3bMtA3pz2Q5HFAPqTomVnC
	B5JBfGmAoIhhXlw/PZOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pUs-002LOT-1u;
	Wed, 22 Nov 2023 15:50:38 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5pUl-002LKp-0R;
	Wed, 22 Nov 2023 15:50:32 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9789B29A;
	Wed, 22 Nov 2023 16:49:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1700668198;
	bh=u1nisTy6lw7HXt2aKNr+FUe0wDrA0s3HuQr4p3ZdaGM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=aRXmXmYTEkWFcC1ogtFroAntPMVyK3vncwqShJhK0UOwVNtgmc60ohECc7/RfsO4R
	 CrFManNjmqDjxTvLHdqDvnbT3zblBujpCD6FKX8kxDzFaPNUgPS/ydsnFYaIrk9T7C
	 Xs9FkajPO0Buh4SdjgOvTcVs7oyCZG3y0tTqINt0=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 22 Nov 2023 17:50:07 +0200
Subject: [PATCH v2 1/2] media: rkisp1: Fix media device memory leak
MIME-Version: 1.0
Message-Id: <20231122-rkisp-fixes-v2-1-78bfb63cdcf8@ideasonboard.com>
References: <20231122-rkisp-fixes-v2-0-78bfb63cdcf8@ideasonboard.com>
In-Reply-To: <20231122-rkisp-fixes-v2-0-78bfb63cdcf8@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Jacob Chen <jacob2.chen@rock-chips.com>, 
 Yichong Zhong <zyc@rock-chips.com>, Shunqian Zheng <zhengsq@rock-chips.com>, 
 Paul Elder <paul.elder@ideasonboard.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Eddie Cai <eddie.cai.linux@gmail.com>, 
 Allon Huang <allon.huang@rock-chips.com>, 
 Jeffy Chen <jeffy.chen@rock-chips.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Tommaso Merciai <tomm.merciai@gmail.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1636;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=u1nisTy6lw7HXt2aKNr+FUe0wDrA0s3HuQr4p3ZdaGM=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlXiNCG8tyCSxKN3kyVGSnoK8GAQjKKgxHRo/sI
 Np+AchtdlqJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZV4jQgAKCRD6PaqMvJYe
 9dqFEACSftGXAoVevIBDnb3q0rTlPZny91bXjdXDxnV9fVeZSi4YjSd4M269UlGDO5i+ixpsa6Y
 4GK/dI8d/oc5ocdLH+XM/6QqXmK2EhkZ/cJZ+teRHe+Mmc1p33f/mPgO2Fl1j5vksBF1y75bQzh
 wbxEnPdVF04szYRoz3E2UZ3i5DPdb1YXHPryCgcjpx6U8bJvyGnskYtfUIY+Je8f12h8O2urV6i
 LCMphQMCO8kNGuLOdLpLjMwJIcjgMwdqhYGN46G5d137Xb6PFXbSREDoRPh8ewH5V1xoJENa1JI
 gUc1bZevj56dvoN2HG9yBs5x6GXuK1pnVL44ByKTeJKnY3R8oadV98xQjTBR8rGdbXVz/b5QqLj
 tTq8bocqAMc7Dno+DMwRuL8tZi4mvQFMSo2ApyfbyRbjAAPrWOGMeUQIzyT4RJZNRpK/aXWKVIv
 rXWwCeij9caoOFmeAQbGMv3jSTuWMI2MChbdzJ0VsScBpNS6eENKIWay1rbxpMIB1SbWrh14/kR
 6SoT7Kd5+8tc18lATCWrVV6ckXFMdDUEne30zG4PthOOU+f0YfBarw2cMbsXdd7kjllYogFoJ00
 3qLinFquurDAno7UTC2phhfx+CSXYfMSl991Im27Bz/WB8Q3cGNDsjJyIZn3tICxDUB0ukEbmmU
 Sq5b+kzGzk7/lfg==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_075031_315593_616FA9DD 
X-CRM114-Status: GOOD (  11.10  )
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

Add missing calls to media_device_cleanup() to fix memory leak.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Tommaso Merciai <tomm.merciai@gmail.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index c41abd2833f1..894d5afaff4e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -582,7 +582,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 
 	ret = v4l2_device_register(rkisp1->dev, &rkisp1->v4l2_dev);
 	if (ret)
-		goto err_pm_runtime_disable;
+		goto err_media_dev_cleanup;
 
 	ret = media_device_register(&rkisp1->media_dev);
 	if (ret) {
@@ -617,6 +617,8 @@ static int rkisp1_probe(struct platform_device *pdev)
 	media_device_unregister(&rkisp1->media_dev);
 err_unreg_v4l2_dev:
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
+err_media_dev_cleanup:
+	media_device_cleanup(&rkisp1->media_dev);
 err_pm_runtime_disable:
 	pm_runtime_disable(&pdev->dev);
 	return ret;
@@ -637,6 +639,8 @@ static void rkisp1_remove(struct platform_device *pdev)
 	media_device_unregister(&rkisp1->media_dev);
 	v4l2_device_unregister(&rkisp1->v4l2_dev);
 
+	media_device_cleanup(&rkisp1->media_dev);
+
 	pm_runtime_disable(&pdev->dev);
 }
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
