Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C332EB64DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 22:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GAg6cSglgmq09Ax05EWbbtnLQu4dLaZ8J45KiFP9RNM=; b=obrAS0fbj1838h+95OFj7wcBsc
	Nt7CI0UxmDHpHXqNen2CLuDPK/EFZZtd0wJMAip0N54T+uLvOKedw66CJtr39Vga2hKuNObOly/lX
	88OilfkbTYK/8ToeNduVhvbYZ+AyDqHNDThg7x/Pb2ysUXCWvWSqAK81ALozlfYAeR5za41hKfqDG
	iZ5vxulxIoeXqkDui6x2Oxle85u5x4DeaJ9k/4Yv8IuACa2n3pvYpARp6O8UCiPAa3sOlES/HLa7h
	Kiien/3KWLG+LWcllW67SzzgRaPNRz86xBzVyR7WG68RVXtzciaHzW5UYAGBhGPtzXBPxERXxxgN7
	3vokfSrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OC-00FvE0-2f;
	Wed, 21 Jun 2023 22:33:24 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6O8-00FvA5-26
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 22:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=EBeEmyxPHZsV8uwK86Vd5rWpL+TZ9Rlo5l7W7Yh2uhw=;
	b=aMHyRWqwoobd2f1d7rESpCk+lcJj5Z9C/apkwSupwwykIXNOJP/NLA+9jeCE1UEXhTcC
	qnOqSRtq7pT6VYAlN7+GV+nQmVthZwMzFxpuWcGUh7fHsaROlYE21qNesmJYShwqF6J1P8
	y8eoe9MvDB8jfrZsWvy1QOPxjzLErndwQHhP8UXcbWLXdcDiaN1osR0cFiOfKB+ZtWKDp1
	8nsc0PVm8QsGmfsf7fIdeyoyDdmVfOsbbm4EAxAnLkZSM16po4xEc6BAVg8nBz7qlk323j
	AacmXij6fSU1hOKpMp5Nd73t5H3RvphjtczNKwKYrqnKzT3mDwyxmQhIJsMhYv8w==
Received: by filterdrecv-65f68489c8-k2rl8 with SMTP id filterdrecv-65f68489c8-k2rl8-1-64937AAE-5
        2023-06-21 22:33:18.193802383 +0000 UTC m=+1463593.463557322
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-0 (SG)
	with ESMTP
	id -sFQmpmXTsaEvCoAmpELPQ
	Wed, 21 Jun 2023 22:33:17.910 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 2/5] drm/rockchip: vop: Use cleanup helper directly as
 destroy funcs
Date: Wed, 21 Jun 2023 22:33:18 +0000 (UTC)
Message-ID: <20230621223311.2239547-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230621223311.2239547-1-jonas@kwiboo.se>
References: <20230621223311.2239547-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hx33UZE3akeZPDZ+m?=
 =?us-ascii?Q?Bfd1ZvpDkt9enAwukw495j=2FN8pAF5a9hBPnC8XN?=
 =?us-ascii?Q?JBaYIDCfuUuuWEK4B0qxGqt4f05EEKcXNP3wOak?=
 =?us-ascii?Q?N7M=2F9NS4t6FkuZpoiazBiF5oXJc2AyrbqMOJg10?=
 =?us-ascii?Q?kAAZlFoIl=2FcdaVg9qEsnalBLLeYFtxV4Xs8bqeo?=
 =?us-ascii?Q?Wiufg3akSzJC=2F7n+Tt+dA=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Mark Yao <markyao0591@gmail.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_153321_401073_7F49AC85 
X-CRM114-Status: GOOD (  10.19  )
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

vop_plane_destroy and vop_crtc_destroy are plain wrappers around
drm_plane_cleanup and drm_crtc_cleanup. Use them directly as plane and
crtc funcs to closer match VOP2 driver.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---
v2:
- Collect r-b tag

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 60b23636a3fe..25c873d4ff53 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -766,11 +766,6 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 	}
 }
 
-static void vop_plane_destroy(struct drm_plane *plane)
-{
-	drm_plane_cleanup(plane);
-}
-
 static inline bool rockchip_afbc(u64 modifier)
 {
 	return modifier == ROCKCHIP_AFBC_MOD;
@@ -1131,7 +1126,7 @@ static const struct drm_plane_helper_funcs plane_helper_funcs = {
 static const struct drm_plane_funcs vop_plane_funcs = {
 	.update_plane	= drm_atomic_helper_update_plane,
 	.disable_plane	= drm_atomic_helper_disable_plane,
-	.destroy = vop_plane_destroy,
+	.destroy = drm_plane_cleanup,
 	.reset = drm_atomic_helper_plane_reset,
 	.atomic_duplicate_state = drm_atomic_helper_plane_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_plane_destroy_state,
@@ -1602,11 +1597,6 @@ static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
 	.atomic_disable = vop_crtc_atomic_disable,
 };
 
-static void vop_crtc_destroy(struct drm_crtc *crtc)
-{
-	drm_crtc_cleanup(crtc);
-}
-
 static struct drm_crtc_state *vop_crtc_duplicate_state(struct drm_crtc *crtc)
 {
 	struct rockchip_crtc_state *rockchip_state;
@@ -1711,7 +1701,7 @@ vop_crtc_verify_crc_source(struct drm_crtc *crtc, const char *source_name,
 static const struct drm_crtc_funcs vop_crtc_funcs = {
 	.set_config = drm_atomic_helper_set_config,
 	.page_flip = drm_atomic_helper_page_flip,
-	.destroy = vop_crtc_destroy,
+	.destroy = drm_crtc_cleanup,
 	.reset = vop_crtc_reset,
 	.atomic_duplicate_state = vop_crtc_duplicate_state,
 	.atomic_destroy_state = vop_crtc_destroy_state,
@@ -1962,7 +1952,7 @@ static void vop_destroy_crtc(struct vop *vop)
 	 */
 	list_for_each_entry_safe(plane, tmp, &drm_dev->mode_config.plane_list,
 				 head)
-		vop_plane_destroy(plane);
+		drm_plane_cleanup(plane);
 
 	/*
 	 * Destroy CRTC after vop_plane_destroy() since vop_disable_plane()
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
