Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50444EB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 22:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OWPOtyJvIWNkqngV89iI2yzSd5yxXhS2TV2T+uWjYlk=; b=3DrWK7fi+tgeC+/MKsHlWcaA0h
	TU2h/nolIKG+o8Imn1LuK/osnusHy/BcoyZ3Xdbowff26UpGRPTiZ+sDh9Npry06EsICQ8I3oRijU
	45Q8ieQSuLxpamQu4c+KgDs8SrlwqFPex8gViGNUF9uRw3zmsdrjIAkiiwWiAJoPhfOyN/OZ/9hL6
	Fig2rCJM2FKEokKjpFokHdiBMhLTJGSI94lvTCpbYGCHZyQJ5RjrCDpxFpE6f75gEQsgIuAWOAKGA
	MkOP8aD/o8sWdkIRMdFZzuqkkIKlCOrNP5f5Wv5Nj13+16SBMKLM9H7+wcjAf0NrLoY9lFvU760kT
	q2ovDtMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6Oc-00FvUy-1C;
	Wed, 21 Jun 2023 22:33:50 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OE-00FvFD-1q
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 22:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=gpt4shW9Az8HQBaGBESfhw3ZJgloP+jLONDW/keDorI=;
	b=A8qHE49+Rg910ao7nsxF5wejLhadp5zf4H3oduW0IvhB6JgcqzK642zeQKPYN3xd6Kz+
	bZnriW/wigqdWrwPerUr09sTPqBJt1oeH+WKLmj6f4fuLH+uXvBViFsnAkB5KmwqIV7FXf
	DOJdKVGEcwKWyiwnz5XFki6bDwuRZxiFpFMO2mdKfZ8kK5OZkZaaqS7RiotSwKZ7ZHQP5W
	QiOanLgQtVB5gyhNfl4RX6hS3/sHP8wvXV1jWLkCu4lJ3rLePPLxPizm/1ir69yz97MbZC
	umfuwRmM0t1fB2ftWFwruJmeMlIXXqNMVbpPcCJ3qaB0IA3OcRvKyEfhubPU/Mcw==
Received: by filterdrecv-65f68489c8-k2rl8 with SMTP id filterdrecv-65f68489c8-k2rl8-1-64937AB2-32
        2023-06-21 22:33:23.019043275 +0000 UTC m=+1463598.288798320
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-0 (SG)
	with ESMTP
	id W7fz8D3QRnife75m7ND9CA
	Wed, 21 Jun 2023 22:33:22.815 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 5/5] drm/rockchip: vop2: Add missing call to crtc reset
 helper
Date: Wed, 21 Jun 2023 22:33:23 +0000 (UTC)
Message-ID: <20230621223311.2239547-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230621223311.2239547-1-jonas@kwiboo.se>
References: <20230621223311.2239547-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hz78e=2FvfUnHx3mUyD?=
 =?us-ascii?Q?KgumjHDaRQIPiL31NJ2du6oz01DwPK8KoRoBpmL?=
 =?us-ascii?Q?Yyy0WPk79Cbsu101l84dCjvPY43LcPCZ0102sxy?=
 =?us-ascii?Q?BVTJAlRnTwVHK5FGXLdIfbRXkZ0cE8gE=2FUO2Zao?=
 =?us-ascii?Q?9MlDedQBLQ58pY8P2QjpvLmZzZNXwKkWlodowJt?=
 =?us-ascii?Q?TUAGwS3HSdapCdxi83VsA=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sascha Hauer <s.hauer@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>,
	Rob Herring <robh@kernel.org>
Cc: Mark Yao <markyao0591@gmail.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_153326_726471_E4017B51 
X-CRM114-Status: GOOD (  10.50  )
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
v2:
- Add check for allocation failure (Sascha)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 31 +++++++++-----------
 1 file changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index f725487d02ef..5ba83121a1b9 100644
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
@@ -2123,6 +2106,20 @@ static void vop2_crtc_destroy_state(struct drm_crtc *crtc,
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
+	if (vcstate)
+		__drm_atomic_helper_crtc_reset(crtc, &vcstate->base);
+	else
+		__drm_atomic_helper_crtc_reset(crtc, NULL);
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
