Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5595FC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 10:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7mITd9ijXOwE+uybCpoBDfHddc5W3fLS3Kgv8OrSR4=; b=X/G+eqIEaUXzM+
	Zj17ErnKegNj921c0vqHye2TfxQwN6Wi9Mtkwk21MUJwIT1zhd/GHG5IgB8S+Lu506dpy1VMyAuSP
	80+REJjjJF4dFJWR7yg0qSiM5NKabEsvRDP/blE2vYqZU/kvWgK+UIU543R2gy07imemxa+mDGIgE
	y8iRb/4bRygxtMRHNzpfiHzBdFevDpBjCwxWY5N4yI79sHgbpvzK03yBktuneRUt8w2ScVcG0dXVo
	fOlTA3P5K25RoxhRgv9S0hlti040WDgojo/2DLlYtqdP6ZYbk60UXheLq/RE7Hz8J+yYctc/nWFcw
	p3qWf/Z5lt9kBgA+Hrmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAp2G-009imj-2Q;
	Wed, 06 Dec 2023 10:21:44 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAp2D-009ikn-1W;
	Wed, 06 Dec 2023 10:21:42 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D3FFB14DC;
	Wed,  6 Dec 2023 11:12:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701857531;
	bh=FsHDUhUOSdmxO1qno4l01PDWe1nNLgupoeHmIzcStq0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=LwVWe7fYRMeptio1qhiK7QyUSytVlcl8HZexC+03MTX0Ai/LY/NOYTIgzk4IKyDCF
	 W7ZO/hV36GBLi7DOq4B09njNrCAS8B4U+YWNJTTixxl9lakF1PDaLopc0ycamnzhUg
	 nvvPYthYsZEirxkRwvlYA1LW5091IxL7VHuTIQQk=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 06 Dec 2023 12:12:28 +0200
Subject: [PATCH v2 1/4] media: rkisp1: Drop IRQF_SHARED
MIME-Version: 1.0
Message-Id: <20231206-rkisp-irq-fix-v2-1-6ba4185eeb1f@ideasonboard.com>
References: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
In-Reply-To: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, 
 kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com, 
 aford173@gmail.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1223;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=FsHDUhUOSdmxO1qno4l01PDWe1nNLgupoeHmIzcStq0=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlcEkg4oQWDIpxgRjng5riAxA98dypRcWlQusOt
 gHRf/zsXYaJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZXBJIAAKCRD6PaqMvJYe
 9Qt2D/9VM6a4+9d6s6OGE5LzaUWHgDu2WoXfUkyZ+cD9Zb65uEiK6uQxQJRa7OEfRqn7Us0XlG9
 O56i09/y211GvZiwC4Q/CJlN7slXeGor51/DQsMvaEjmdeTwupE8XJ4Kp5Xb8IfkigKd8DcD6Ok
 oH/GFRJ6YA95YwQDnd7s3fVxawUE9t/z6jYCtF56e7cRJ9Tpzf/dXM5ebb8Ymiku0K4RCZpjuUr
 K8mTjmTacegvUqPofVSc6DJyoaqUucYfEpbTdYAilz7fqpLaLL0djdjytER7y4RGkv7CiuB46Dx
 lZdu9KXd1YHMrYJ02un7ETntsbO6Y9lg1lf4tFsyw2rU+lGtZlqBjeEFUbfFn1KkcXKkn3ubv5A
 7SCe1udyuRXV3tinIZ+oAGG9p1hLrBn1OwwHNLhxvYx0eDcKLMrwleRG7EhWe9WL1TNe6V/Ir9V
 iaJkQv919QYja1YKjjM7gnIZUZXM8qclZYVAb7P7XFfvPKOUTU8NH1Pa7Z0cahSvXmKdx3ZoK/A
 2WU0EK8+c4IVeJskD0I/oFzL/BUJMEl8LmyH4UpItj15RKAFzX5kjALNkC4fEm8bnskkmpVojT7
 J6zMWDC8ZpYY23v8iqK3Qv6JpJY8z89dKvPDVGpSA+aIyOqUZfm8AJMPLZYujbVVAombu0D4zQl
 qFV4XmjbLpJIIoQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_022141_648272_B7BD1BEF 
X-CRM114-Status: GOOD (  12.55  )
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

In all known platforms the ISP has dedicated IRQ lines, but for some
reason the driver uses IRQF_SHARED.

Supporting IRQF_SHARED properly requires handling interrupts even when
our device is disabled, and the driver does not handle this. To avoid
adding such code, and to be sure the driver won't accidentally be used
in a platform with shared interrupts, let's drop the IRQF_SHARED flag.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 2b9886fd0800..d4950294b7b9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -573,7 +573,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 		if (irq < 0)
 			return irq;
 
-		ret = devm_request_irq(dev, irq, info->isrs[i].isr, IRQF_SHARED,
+		ret = devm_request_irq(dev, irq, info->isrs[i].isr, 0,
 				       dev_driver_string(dev), dev);
 		if (ret) {
 			dev_err(dev, "request irq failed: %d\n", ret);

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
