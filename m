Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9853EB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 22:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ylxxbePCiE8X/AJkmYmkysD3hKY2CCJwwCgUaGIuCmE=; b=Nj6e0LPwb5nCydXPswJz6pilQb
	yRX2D+bXoOVkyDWFDIelFnH/wx0TNNUXMVxiZG5Zr+nzrM0AiBZ8L6eXXxh2+Tx+h2FBgU2b0cuPB
	SmNbxXJtRDQd6AiNQzIFu3bIL6bs0dWUAv1eIgFFvCNhHemEl7x4n1FIhTCkd6tBTbFS/4vbtBbkZ
	8IE93xE1E/GmzLn9Zsc6Z3jDQXOb0+vZvJ203wS8V33zNXbJSeFar8pUWI5eMOmoPKARc7xEhsUUV
	5iFQfOViEWlbTZ9yQcqXQo8gPL7QFfz4U8Xi0QtDyaUogyb+t26NspLnP74wkt7rysz41IVTQ3mj3
	gnhaTCNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6Ob-00FvUN-1U;
	Wed, 21 Jun 2023 22:33:49 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OD-00FvEC-1v
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 22:33:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=v14Q72PruEDwmH4o+T8D3FApv9VBvr48LzkZegCo/u4=;
	b=rBdphp+s6nKgaYVQW7kNM0FgEY82p1wXQvzHlIC5PkiJlWolj396r9VbEcECshqqISme
	K1/Rm9vjIM5834etPzzojd16lF/NBRZp2BaCqg7Ib29s3myOI4lx50490qsayrRlZLWXvP
	dsaZzA04HgTxD3CFwzFXHIAvcVLhImJWFygnSp5/HxQhih5r7U04aCO7JZOIEBZJHfOd4j
	7NfTIYvPAfycoU0VMdh6VtgzIok7APy8agt8yV2/9iWI00Rw9J5qLpRZgTlId6sS74OXJd
	2TWR+V3/4RkVOIhQ2gW42NRU0Vqr4D7+zJyoFw/SUKhcKTmCa2UmxfYZOROn1Zhg==
Received: by filterdrecv-84b96456cb-hq7z7 with SMTP id filterdrecv-84b96456cb-hq7z7-1-64937AB1-C
        2023-06-21 22:33:21.44628361 +0000 UTC m=+3624889.700825056
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-0 (SG)
	with ESMTP
	id vZirRyg8Rfmll8Z_NYscQw
	Wed, 21 Jun 2023 22:33:21.131 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 4/5] drm/rockchip: vop2: Don't crash for invalid
 duplicate_state
Date: Wed, 21 Jun 2023 22:33:21 +0000 (UTC)
Message-ID: <20230621223311.2239547-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230621223311.2239547-1-jonas@kwiboo.se>
References: <20230621223311.2239547-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h32UvfMM=2F7Im2hDMc?=
 =?us-ascii?Q?k0YtrNlBiYhIMIchAeUrU5n0sre8GH0aHkc25Kj?=
 =?us-ascii?Q?c5HCoIUZZ7FARoKQ=2FsE9PLBlsEjGZQs7vTcjzfr?=
 =?us-ascii?Q?29hrXhjC8S9Sso0YHD9EabPjIenPzNkUoHeQR6g?=
 =?us-ascii?Q?8qt=2FAfpEyKd+CmvUnrLklGGawcf6TTxFUpDNA9e?=
 =?us-ascii?Q?iuM0MURnYZDLlz2T351dw=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Andy Yan
	<andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, Sascha Hauer
	<s.hauer@pengutronix.de>
Cc: Mark Yao <markyao0591@gmail.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_153325_781952_E07FD7D5 
X-CRM114-Status: GOOD (  11.50  )
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

It's possible for users to try to duplicate the CRTC state even when the
state doesn't exist. drm_atomic_helper_crtc_duplicate_state() (and other
users of __drm_atomic_helper_crtc_duplicate_state()) already guard this
with a WARN_ON() instead of crashing, so let's do that here too.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---
v2:
- Collect r-b tag

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index ca73b8ccc29f..f725487d02ef 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2099,11 +2099,13 @@ static void vop2_crtc_reset(struct drm_crtc *crtc)
 
 static struct drm_crtc_state *vop2_crtc_duplicate_state(struct drm_crtc *crtc)
 {
-	struct rockchip_crtc_state *vcstate, *old_vcstate;
+	struct rockchip_crtc_state *vcstate;
 
-	old_vcstate = to_rockchip_crtc_state(crtc->state);
+	if (WARN_ON(!crtc->state))
+		return NULL;
 
-	vcstate = kmemdup(old_vcstate, sizeof(*old_vcstate), GFP_KERNEL);
+	vcstate = kmemdup(to_rockchip_crtc_state(crtc->state),
+			  sizeof(*vcstate), GFP_KERNEL);
 	if (!vcstate)
 		return NULL;
 
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
