Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9450C531D0
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jul 2026 12:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xnaCiytIKn1Iw0tWraUZ/ueEtHML4zpepIu8vAJjgW4=; b=NhE5ZaB0wBSXSw
	n5Fp1w/hr2w6/R34mhHzfKjDgHxIzjg3emx0ZlcfcBpW1xvpVBeWkOpYFj1i8ypBzekkXXvALmzRi
	qu+dsHHO5rmByoYFyQlAqgx56qzl6wN3ZNwnlshLVHd8ijDCAfZliffLZnkSAYgONK9pYsy3qrYih
	Oo1Kp1ecLbmdBH/sIA5U0vB26lIHBFvWE7tTe+4cjskggD+GrJPr3AooCx2cZrayQAATztBUGeg8C
	RLJQK+M8KylVZBIg1AkZQKEOLDL9MdtjlotDv79+GFXWLICplBpCoSRylrfkDm1nT7F3AxTJTZzEg
	/VhTQVfrDIWtbS0KGX9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnb6v-00000000Jwl-3h25;
	Sat, 25 Jul 2026 12:04:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnb6u-00000000JwJ-0J3b;
	Sat, 25 Jul 2026 12:04:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1784981045; bh=RuYx6NjvEw/XsepDvA6VtGRNm2EpiQIrvv2o76b+0y8=;
	h=From:To:Cc:Subject:Date:From;
	b=XP8HrP8zo6UYPtvWCDzf0lk+M5ODcJdqFJp0GMWj/MHc++9ayqJbGanqMS8+Q4gTZ
	 1q+qOe1Or5NdHnbKpTKa0fk3JnoL/16Sy6dHRHZFst/P10WWQJMcWbAcF1YZn/RLXn
	 uagk1E9Q2HAD1N/688PoCWavUa19pDIQ7bFt2c4Q=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
Subject: [PATCH] drm/rockchip: Fix panic on reboot when DRM device fails to bind
Date: Sat, 25 Jul 2026 14:04:01 +0200
Message-ID: <20260725120403.2261569-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260725_050408_263221_CA240599 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
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

From: Ondrej Jirman <megi@xff.cz>

When DRM device is freed, we need to clear the drvdata pointer, because
it now points to invalid memory.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 3099408e9d05..8b9992843162 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -210,6 +210,7 @@ static int rockchip_drm_bind(struct device *dev)
 	component_unbind_all(dev, drm_dev);
 err_free:
 	drm_dev_put(drm_dev);
+	dev_set_drvdata(dev, NULL);
 	return ret;
 }
 
@@ -226,6 +227,7 @@ static void rockchip_drm_unbind(struct device *dev)
 	rockchip_iommu_cleanup(drm_dev);
 
 	drm_dev_put(drm_dev);
+	dev_set_drvdata(dev, NULL);
 }
 
 DEFINE_DRM_GEM_FOPS(rockchip_drm_driver_fops);
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
