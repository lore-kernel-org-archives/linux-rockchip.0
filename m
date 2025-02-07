Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1221BC02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 18:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wwica3EzrVh/bjhosB1f/h8KIm1ZNY4dqkI1H3aRWJw=; b=XYdL9uIGCZdy4K
	kQP8IGGWlaOAvs1dsqwmIbX3I96BJ7DJ7aYof8ky0WPjulSd6+njRjceCf0YPnpPASfsLRNHLFEN2
	m4JBjqisu627pcPALWT6msnxRqZeQNQTPvdFVMsQtg3uyYtb7jlScFwcpdnaX0r+7rxVP31dN3u8B
	J81WW/QEV5DiXLAb+61nsWsDVXVnl1v5CgBqDkOOWETmu1iEZwNBjVVP0DEGZhjPio5OvuSlHX4Uq
	q0EOnHMN2ozNbz7cqP6bh/9Yjbs5vMaqh/D004OT7tIX71tgEoVY0rj4jGdgmSKoSieBhe+II32WO
	sciL7DgUu0j842130gBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgT30-0000000AgxK-4BxE;
	Fri, 07 Feb 2025 18:25:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgT0F-0000000AgC1-3iO2
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 18:23:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1tgT05-0006i3-Ft; Fri, 07 Feb 2025 19:22:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1tgT03-00418A-2d;
	Fri, 07 Feb 2025 19:22:47 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Damon Ding <damon.ding@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	patchwork-lst@pengutronix.de
Subject: [PATCH 1/2] drm/rockchip: vop: remove redundant condition check
Date: Fri,  7 Feb 2025 19:22:46 +0100
Message-Id: <20250207182247.215537-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_102259_924360_C18E7E84 
X-CRM114-Status: UNSURE (   8.75  )
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

Instead of checking the same thing twice in a row, fold the second
condition into the first clause.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 57747f1cff26..7f5fbea34951 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -733,11 +733,10 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	WARN_ON(vop->event);
 
-	if (crtc->state->self_refresh_active)
+	if (crtc->state->self_refresh_active) {
 		rockchip_drm_set_win_enabled(crtc, false);
-
-	if (crtc->state->self_refresh_active)
 		goto out;
+	}
 
 	mutex_lock(&vop->vop_lock);
 

base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
