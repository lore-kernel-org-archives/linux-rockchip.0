Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2E72EB64DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 06:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=obk9aw/mddclBLQx/JCQyjfYhSCopRhSGiAKZSMRNew=; b=hQM13JyH4P8L2ja3Qoa2rKf/Ev
	x44//MceVbY+SQytHtxlXxnDE27/UCHmGYyG4Z9JbfkAQsm4bLq2nHwI9rBEFqI+bhqypknr4r0z+
	ap2UHvxLwXLoT0vs1x+415DZlCvXknx4aXnqSFV3xO0J51Zb0jLgFHggFksjeKHeuTJUgt1GyRn1L
	HLlzBQ6uPw94WNdIuUv8LestEDEzZibK+Y/g0oDCpEDcJkKHGgmvX0iDgk/GBkMzz7iBwCsrfNDm4
	svBuOKeKM8H7NiQvxQsutQOHGBC4cRkYBLqxF75bZFBpYiGN1Fg8r+rDz+3R8QkCGzCmXv0sbLl3o
	SOA0shSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9c-00AIiU-2Q;
	Tue, 20 Jun 2023 06:47:52 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9R-00AIaQ-0l
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 06:47:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=DWKAFEQyu98IZ9ZgJni/kueEjxYsF0HocTjSZNu5dc0=;
	b=cMGNWwX+FeprtsjEHvLYOSUZ211lLDMzQXxmXdfQhxXIqJbaWseCwlohRjzI8kWuzPVL
	O2VB9JXBKQsD/DbNxiMXMzrmLn03KrwtiWKFhwPTDUONzAcndz3OJxTXiIAK43QzW2FAgE
	ZBRJwv8azP6NtTHPv24FUCskm796yXLRLWHErC/HoPfWA8IK21mKgKU19TUubA+a121BpS
	Ly4qAioPvfhZiYD2EEmJz8Hamf+flxBeMdXw28hgWOzvmHMFcZWbHUgXLCnEGc4DjPpMSt
	uZHz+RNGL0QnNHtiF32vqkQMt/KjyLSk43zlGMXPfeWilVw59ShCanwl9SXr73IA==
Received: by filterdrecv-77869f68cc-wnrh7 with SMTP id filterdrecv-77869f68cc-wnrh7-1-64914B8B-15
        2023-06-20 06:47:39.640836851 +0000 UTC m=+3481899.293266760
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id HGVB4aOXSe-PK4Ce6TiCSw
	Tue, 20 Jun 2023 06:47:39.424 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 4/4] drm/rockchip: vop2: Add missing call to crtc reset helper
Date: Tue, 20 Jun 2023 06:47:39 +0000 (UTC)
Message-ID: <20230620064732.1525594-5-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230620064732.1525594-1-jonas@kwiboo.se>
References: <20230620064732.1525594-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h6Y7pOvDXJbRf1XNu?=
 =?us-ascii?Q?rdBi7Uj4gm=2FqSVvpHVBX1ECIzrzeDP264QZlPK8?=
 =?us-ascii?Q?XVyx2htZ01V+Bv6v+2TFKR+yi8Clec0YVFiObQj?=
 =?us-ascii?Q?cVcrjSTKLgtIPg=2Fz6on3AmvrZ9dWgl0nMs7hQ0m?=
 =?us-ascii?Q?DHCKKH4CtLHNBiHnfIS2pPhliDFmPkc6fWluY8r?=
 =?us-ascii?Q?QZBMqgYql4icV6wlJDsYw=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_234741_350506_0C000441 
X-CRM114-Status: GOOD (  10.33  )
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

Add missing call to crtc reset helper to properly vblank reset.

Also move vop2_crtc_reset and call vop2_crtc_destroy_state to simplify
and remove duplicated code.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 28 ++++++++------------
 1 file changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index f725487d02ef..1be84fe0208f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2080,23 +2080,6 @@ static const struct drm_crtc_helper_funcs vop2_crtc_helper_funcs = {
 	.atomic_disable = vop2_crtc_atomic_disable,
 };
 
-static void vop2_crtc_reset(struct drm_crtc *crtc)
-{
-	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
-
-	if (crtc->state) {
-		__drm_atomic_helper_crtc_destroy_state(crtc->state);
-		kfree(vcstate);
-	}
-
-	vcstate = kzalloc(sizeof(*vcstate), GFP_KERNEL);
-	if (!vcstate)
-		return;
-
-	crtc->state = &vcstate->base;
-	crtc->state->crtc = crtc;
-}
-
 static struct drm_crtc_state *vop2_crtc_duplicate_state(struct drm_crtc *crtc)
 {
 	struct rockchip_crtc_state *vcstate;
@@ -2123,6 +2106,17 @@ static void vop2_crtc_destroy_state(struct drm_crtc *crtc,
 	kfree(vcstate);
 }
 
+static void vop2_crtc_reset(struct drm_crtc *crtc)
+{
+	struct rockchip_crtc_state *vcstate =
+		kzalloc(sizeof(*vcstate), GFP_KERNEL);
+
+	if (crtc->state)
+		vop2_crtc_destroy_state(crtc, crtc->state);
+
+	__drm_atomic_helper_crtc_reset(crtc, &vcstate->base);
+}
+
 static const struct drm_crtc_funcs vop2_crtc_funcs = {
 	.set_config = drm_atomic_helper_set_config,
 	.page_flip = drm_atomic_helper_page_flip,
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
