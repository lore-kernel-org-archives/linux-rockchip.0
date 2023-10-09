Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7668EE95A8E
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 10:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2hZ+Fd/6QbVXtBCRb+zVCGcSp26tmS2858mQopLTSE=; b=Jh1XJ5IFgz6w3r
	LknTBeePrsy17DY94L+J9IEAJu60lLrNvgdXdnQzIPnEPfsKpDkZ+mHm+C2uucXix2EA6Rlmdgiun
	rwRiV+oKbu4GajvmE2kWqQdLkceNujv522/dwO2kerE0VYGihIeidc8pD5nCvANKSsWBMqvkaUbsN
	saJb1Y2s9PN/F4wlegWrK01t0qZBnFa0I06gns1jdwvLRIdsxsUfRn8mZogaGSka9RFZEWtWehUQq
	iDkLXBOumZnNJAqU0WeAMzQA8vWMJFgcy70XjGEBduUc+qoURQ4m8/oPL6/tdnRDeLe/7tdc2iI/y
	NyFIn0To4A13bAPFD7xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpneG-00AGqf-2R;
	Mon, 09 Oct 2023 10:38:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpneD-00AGnS-2c
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Oct 2023 10:38:03 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qpne7-0002vw-5l; Mon, 09 Oct 2023 12:37:55 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: hjc@rock-chips.com,
	heiko@sntech.de
Cc: airlied@gmail.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH] drm/rockchip: vop2: Demote message in mod_supported to drm_dbg_kms
Date: Mon,  9 Oct 2023 12:37:53 +0200
Message-Id: <20231009103753.830458-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_033801_868143_660D5F8E 
X-CRM114-Status: GOOD (  11.42  )
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

Checking if a modifier is supported by a plane is normal behavior. It is
normal that a plane may not support certain modifiers. Failing the check
doesn't justify an error message in the kernel log and may mislead
users.

Demote the error message to drm_dbg_kms to only print the message if the
respective debug messages are enabled. This is similar to the behavior
in rockchip_drm_vop.c.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 583df4d22f7e..003c7c189132 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -469,8 +469,8 @@ static bool rockchip_vop2_mod_supported(struct drm_plane *plane, u32 format,
 		return true;
 
 	if (!rockchip_afbc(plane, modifier)) {
-		drm_err(vop2->drm, "Unsupported format modifier 0x%llx\n",
-			modifier);
+		drm_dbg_kms(vop2->drm, "Unsupported format modifier 0x%llx\n",
+			    modifier);
 
 		return false;
 	}
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
