Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6310EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 22:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cyAJNdNXszA1OZlkL0CkOWM9wCHN8GQ46mivjAB+j/A=; b=UNs3ujcJQZTwrAaRLNLtTFPuKx
	bsfZ7k2MVNp8lNDEDMWX0pFz5SajD0XCLoCMAaXZg8gDOl8qG/KFDeVvBcFnQIrFed2FbYPDBHE4o
	QX/RnHHxJKcatRBCw2yUtvBksL0ZdETWtjkFT375NMwmYLScRzhmzS/XNKAUnt+56xddFSXQgHpGy
	OQw/AaA/ZdK53ipqFMov5qY+9xMkZ2sw63K5tH+PqM3VGmB1xa7uhU+88uuhCCXq3w4y7N8VMN0T4
	ZPLES9EYuSg6LCzGXWylian3OgSh3ZIdybhM+0x/b8lB20nCD/FZgk3c+/u6n75CjCxk2iC6W97cX
	8uwiLu7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OT-00FvPa-2V;
	Wed, 21 Jun 2023 22:33:41 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OB-00FvBX-1c
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 22:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=N3/rzRG3o23sD+ICspFZR3Hn+pKFLqALOJeNlqnKgj4=;
	b=odo6I7Jt7vJMGUnTiX003h/h8HEQt1HFOUB00tQROehfkL77cpEvY37AZmQGVQkAjjO1
	+vExX5bMazjGKH1Kak0ROyBhP7gG4VQ4mKNf2kOPWts/wX01JJiYLvcURr4p8QRHMzLVYw
	enwvkMPNRdMtVo4za6tO8B/xk8FvH+GsScKALqG3YwK6BTRHLkek1QpTfgR+pADi1KPTW7
	OtcUXI9ClAufLMKUWkoD1BYAoFBYNZogpZL4+Snt4P+unpFxwqsEqTxsbH+ieJc5kc8O09
	H4x4ZykiaZS9cfKtysqt4m0I+DQuF6WWklCLiG9IMOeCUl+TZ4KK4iU2RBcOeFQA==
Received: by filterdrecv-84b96456cb-hq7z7 with SMTP id filterdrecv-84b96456cb-hq7z7-1-64937AAF-22
        2023-06-21 22:33:19.939834959 +0000 UTC m=+3624888.194376328
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-0 (SG)
	with ESMTP
	id ZVQYkneORxuup128izvcVw
	Wed, 21 Jun 2023 22:33:19.491 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 3/5] drm/rockchip: vop: Fix call to crtc reset helper
Date: Wed, 21 Jun 2023 22:33:20 +0000 (UTC)
Message-ID: <20230621223311.2239547-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230621223311.2239547-1-jonas@kwiboo.se>
References: <20230621223311.2239547-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h8LrEgJzY5ktvBu14?=
 =?us-ascii?Q?zmHPK0tdeaF=2FrED9ytrdgA=2FZcc=2FZBkGuBtyyJes?=
 =?us-ascii?Q?jdWC3QvDOV0X9yW1R=2FVKEfNKLQZiqi09BM4YEAP?=
 =?us-ascii?Q?+O8MhuTX8IUJxNQ1hDLN5d06OhhlyKV3DKYYg9A?=
 =?us-ascii?Q?u2l=2FOMSP+tVShDs6Czt8AVcVqfxbTS8zTc+Gt6u?=
 =?us-ascii?Q?LuYIn+3Z8yCSQU=2FNI2Kmw=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Mark Yao <markyao0591@gmail.com>, Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_153323_671853_CA717809 
X-CRM114-Status: GOOD (  11.36  )
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

Allocation of crtc_state may fail in vop_crtc_reset, causing an invalid
pointer to be passed to __drm_atomic_helper_crtc_reset.

Fix this by adding a NULL check of crtc_state, similar to other drivers.

Fixes: 01e2eaf40c9d ("drm/rockchip: Convert to using __drm_atomic_helper_crtc_reset() for reset.")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2:
- New patch

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 25c873d4ff53..23bc79064e78 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1630,7 +1630,10 @@ static void vop_crtc_reset(struct drm_crtc *crtc)
 	if (crtc->state)
 		vop_crtc_destroy_state(crtc, crtc->state);
 
-	__drm_atomic_helper_crtc_reset(crtc, &crtc_state->base);
+	if (crtc_state)
+		__drm_atomic_helper_crtc_reset(crtc, &crtc_state->base);
+	else
+		__drm_atomic_helper_crtc_reset(crtc, NULL);
 }
 
 #ifdef CONFIG_DRM_ANALOGIX_DP
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
