Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 320A2D3B7EA
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 11:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNUxr9exX4B7tVK5ZutHWiRAkzxI0K9poI51B0em/xI=; b=Gju5lCZJz1jYsO
	QXhXzvsvXyErF4wU4GiQVHkGecSuDLkBMwVbhdAV5QIUz7qTFl4f8eg7oYPx6psuHWVQQK5c86Q59
	4C2+RGL15or/q0poURIEUygux4O0ajf0WxfdNvhxP0k6F57/LZEkeb564FnPaYdngYcXKqquz+7oE
	7EWbSBL0a6SYhgLR4Fer63FYifLAbphKP0RplcCntqmNZMgb/pP3fz5P4inlyp5K5KhgiZ1ce47s9
	7urQZ8VhQAWrQQwBW6ub9pFWXKfHUDheXp8rMf3mfmhQqhUWHHY1Aid7cVbse4ynjKLuYRF/F73Tf
	YSIbpXpzt1xHxh0eVYOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSvgz-0000000EA4U-0JyV;
	Tue, 09 Dec 2025 11:15:41 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSvgx-0000000EA2D-0z35;
	Tue, 09 Dec 2025 11:15:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765278906; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=hmQ+WDrlK20PAVuSXqU9VsKpW6ennsTdRbnnsMaTnj7l3Qgjj5wGuvPQqyUjkrIJGJVkspCW5ZZN2zDGQU4cr+aT8kjDXGo2WM4L7TZKC58tSJOduuT/3MPPeIasUbLM0AeILL3iUpx+3wxZlTdpV6pBU5VMQD4Byzvp4palFr4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765278906; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=JBSVTApRGFO6ipPPb6rgBGPYE/Z13lbAZXToGPqvWnU=; 
	b=PomfXWwZPYsN+7d0YF77fIqkQX4nUzNNJ4PnRRJgJPOjcVrVTHeMWmH+vcpt9nojm9/+r995FK1MWrGwVYU0LzqTHgt6izYW86LjLESsVo/pWEE/7jpn4yTaqosflYABrx8s4LM11lbEAryJWvmqCv8brlit+Bv7OGfb9T7leow=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765278906;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=JBSVTApRGFO6ipPPb6rgBGPYE/Z13lbAZXToGPqvWnU=;
	b=B2tU8ffukWTB0ZZ5SJzDsUxs01CxzlPgG9k6FYC4sLl3eFBAh7v7CE3hhM4iGqbD
	WgUinyR+1HsIBtJ7wLcX9kZjRi5713GFNS7YUprWOIxOQ/0vNb21Gvuz67SBz07pLbf
	gDApTE/8G/prcPq38o6IBGB2PdmjYgC3k/zi9xRk=
Received: by mx.zohomail.com with SMTPS id 1765278905191300.842301852009;
	Tue, 9 Dec 2025 03:15:05 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 09 Dec 2025 12:14:17 +0100
Subject: [PATCH v3 4/8] drm/rockchip: vop2: Enforce scaling workaround in
 plane_check
MIME-Version: 1.0
Message-Id: <20251209-vop2-atomic-fixups-v3-4-07c48f0f1f0d@collabora.com>
References: <20251209-vop2-atomic-fixups-v3-0-07c48f0f1f0d@collabora.com>
In-Reply-To: <20251209-vop2-atomic-fixups-v3-0-07c48f0f1f0d@collabora.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: Daniel Stone <daniels@collabora.com>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_031539_327204_6F9088D3 
X-CRM114-Status: GOOD (  11.26  )
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

From: Daniel Stone <daniels@collabora.com>

It seems only cluster windows are capable of applying downscaling when
the source region has an odd width. Instead of applying a workaround
inside atomic_update, fail the plane check if this is requested.

Signed-off-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 9d715d7659af..6d4f22872e67 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -998,6 +998,7 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
 	struct drm_crtc *crtc = pstate->crtc;
 	struct drm_crtc_state *cstate;
 	struct vop2_video_port *vp;
+	struct vop2_win *win = to_vop2_win(plane);
 	struct vop2 *vop2;
 	const struct vop2_data *vop2_data;
 	struct drm_rect *dest = &pstate->dst;
@@ -1065,6 +1066,16 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
 		return -EINVAL;
 	}
 
+	/*
+	 * This is workaround solution for IC design:
+	 * esmart can't support scale down when src_w % 16 == 1.
+	 */
+	if (!vop2_cluster_window(win) && src_w > dest_w && (src_w & 1)) {
+		drm_dbg_kms(vop2->drm,
+			    "Esmart windows cannot downscale odd-width source regions\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
@@ -1226,16 +1237,6 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 	WARN_ON(src_w < 4);
 	WARN_ON(src_h < 4);
 
-	/*
-	 * This is workaround solution for IC design:
-	 * esmart can't support scale down when src_w % 16 == 1.
-	 */
-	if (!vop2_cluster_window(win) && src_w > dsp_w && (src_w & 1)) {
-		drm_dbg_kms(vop2->drm, "vp%d %s act_w[%d] MODE 16 == 1\n",
-			    vp->id, win->data->name, src_w);
-		src_w -= 1;
-	}
-
 	if (afbc_en && src_w % 4) {
 		drm_dbg_kms(vop2->drm, "vp%d %s src_w[%d] not 4 pixel aligned\n",
 			    vp->id, win->data->name, src_w);

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
