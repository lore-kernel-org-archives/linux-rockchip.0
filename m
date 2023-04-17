Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AC9DC77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IDAqEOQaVECow9pj3LAaSklyYRjFtBi0fEvk9bg95ZM=; b=ROwf66UyHAcILA
	pvzuODw9jK5AIBdUc5amNyG7YI0bd1OmAn3X58EwtR+/mACdN3ZHN2rl7PwxV86413aFMMXSg4mZc
	eSapWdTP2EdhdknpQSijqWq+Sd4RJjVidi3+YNBBxWv3babhafgvXTGhAqaMqudArUnJxFCVPNxm/
	6IUU+pEy/HQ569fDXVq3Vq3g/OzlYyPkYREls3gtLekhfk04OaMFlkp0mfKdR4CohmDSx1QUZUOcr
	eq7KmGENRpp2JOOZVHrNDzmK4TmBPOrmfBT7ge4JfteFA0HxYMtT6dIOZRNPuQsWRRaVp9NdZ+4BK
	9pCKizpMzQj0g7izsBaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poLNd-00Fc5x-0U;
	Mon, 17 Apr 2023 09:42:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poLNa-00Fc54-1r
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 09:42:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poLNS-0005ME-3r; Mon, 17 Apr 2023 11:42:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1poLNN-00BqNa-LE; Mon, 17 Apr 2023 11:42:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1poLNM-008b6M-Sb; Mon, 17 Apr 2023 11:42:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	Chris Morgan <macroalpha82@gmail.com>,
	=?UTF-8?q?K=C3=B6ry=20Maincent?= <kory.maincent@bootlin.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	stable@vger.kernel.org
Subject: [PATCH] drm/rockchip: vop2: fix suspend/resume
Date: Mon, 17 Apr 2023 11:42:15 +0200
Message-Id: <20230417094215.2049231-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_024234_617669_74360148 
X-CRM114-Status: GOOD (  10.02  )
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

During a suspend/resume cycle the VO power domain will be disabled and
the VOP2 registers will reset to their default values. After that the
cached register values will be out of sync and the read/modify/write
operations we do on the window registers will result in bogus values
written. Fix this by marking the regcache as dirty each time we disable
the VOP2 and call regcache_sync() each time we enable it again. With
this the VOP2 will show a picture after a suspend/resume cycle whereas
without this the screen stays dark.

Fixes: 604be85547ce4 ("drm/rockchip: Add VOP2 driver")
Cc: stable@vger.kernel.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Changes since v1:
- Use regcache_mark_dirty()/regcache_sync() instead of regmap_reinit_cache()

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index ba3b817895091..293c228a83f90 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -839,6 +839,8 @@ static void vop2_enable(struct vop2 *vop2)
 		return;
 	}
 
+	regcache_sync(vop2->map);
+
 	if (vop2->data->soc_id == 3566)
 		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
 
@@ -867,6 +869,8 @@ static void vop2_disable(struct vop2 *vop2)
 
 	pm_runtime_put_sync(vop2->dev);
 
+	regcache_mark_dirty(vop2->map);
+
 	clk_disable_unprepare(vop2->aclk);
 	clk_disable_unprepare(vop2->hclk);
 }
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
