Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7B4DEB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 06:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yr32UsUXC3vXYhUC85TGAFIzGNAhwQsocddyJCkWtxw=; b=aOVmdES2rL40MEWAgWfgmz9dGd
	Q3Z99w6oukdKzVNqlNo1TZT93c2SBmC7guy0m89LTytXOGQ2b5HQdYzZ/NW+ye2WeRsQQIEFxcCPX
	9dq13lgHPgikOhxeUQOOmO958UP+iU0N4gTxIbsAk4xGGZ9khjZf2M0oWkG+j+kvK1jDafBXS43oE
	SFdC4uTWj2cTvTiGRaEXiv0naU9awY7NtUHYDqjDb/OntayKnuZL1RnyhHejNtwY5lgcjrSXxXr2P
	MSOnVrR8Nu94Tg0wGU+yRhz9RKGwWWwL6VKYjfCcm9zjG5rn6GwY2I+DO0BdEYrPL+WIEzcX3XSLT
	yGKT0lhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9a-00AIgY-2b;
	Tue, 20 Jun 2023 06:47:50 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9Q-00AIZV-1G
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 06:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=WIftQBIpIy4TYM/w/l437zYjnaja+iEv9fSTQdcIaxc=;
	b=DD8iiQ3BAznRD1abNxYFKd9FHfceipbNMrV1hgdm7Tior8YDCBRjEgOXsTiSHl10CIFg
	c9EJnBeSFAU/kN1aAyQld2KFKR61y8VXWQExNua3TYlYNv4v7sbgDt3wWlCID2MvbIQE1H
	TKK/Qm0UXcDm3Wbp/tFsqOISysV8dMJjAdgjo0t4IooRVDydt9d1Sp7IVsCIGMQflMGMTJ
	QkvgEoQ9zQGRA4IeTiwzwWvVEv7GPpNdgtH6MrSUu1t6qaUsB4GRZfBWqXkHNnWPtd6gVS
	2kmfOP2nxBtMo+eVPQndktCzKStTkBNpLQgqSMCyGoIucG8Rk+d99MUwSt+NIiDA==
Received: by filterdrecv-84b96456cb-rsmc4 with SMTP id filterdrecv-84b96456cb-rsmc4-1-64914B89-1E
        2023-06-20 06:47:37.498149536 +0000 UTC m=+3481757.706840986
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id ZMjEKrw4Qmu6N8KSTS7lHQ
	Tue, 20 Jun 2023 06:47:37.177 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/4] drm/rockchip: vop: Use cleanup helper directly as destroy
 funcs
Date: Tue, 20 Jun 2023 06:47:37 +0000 (UTC)
Message-ID: <20230620064732.1525594-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230620064732.1525594-1-jonas@kwiboo.se>
References: <20230620064732.1525594-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h+3K61RI4BbEH1Wyo?=
 =?us-ascii?Q?vFH13WxQgrm+3EFl7eTAtcTWehbd5CjXWBfBMem?=
 =?us-ascii?Q?cOLPT8tHF4GvEfty=2FJ9+9b1lO9STEgArffL3tM9?=
 =?us-ascii?Q?doL3YygCvl15zgZ5dHuvbfpVEivoEqrBAPBzafY?=
 =?us-ascii?Q?zaHSv5iNyxVzm9JYLsU3lNl5pbVgB3nyNKCtL3K?=
 =?us-ascii?Q?n14bRH1J01cAZVF8pBd6w=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Mark Yao <markyao0591@gmail.com>, Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_234740_554255_7961D5CC 
X-CRM114-Status: UNSURE (   9.84  )
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

vop_plane_destroy and vop_crtc_destroy are plain wrappers around
drm_plane_cleanup and drm_crtc_cleanup. Use them directly as plane and
crtc funcs to closer match VOP2 driver.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
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
