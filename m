Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7870D43343
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 20:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30NPTLwijgnn5vUcH6f5pdVaiNs1PhjVgsXPF9ageZA=; b=jASIQ6BIK4X0Dk
	zUJIGvmSGIFC3WtqiVEBgk3Jppl7AgQuUpQ1BZQwnWd1tBvH/5hclA7zINtX8ZPkgG6zbXvv/d1Eb
	2lYr123kDsMgYXiLEbuz8TFfbKHr6NIyHUjdd9sxCja+ZhXS5FmhAPTTSPL95fM/VGfxCMBU7qg+U
	gxsid3jV95VVhdZ4KysLXGeerFx+1Os6J+YUTgXZaJmER0UxAmTdngG0SK2QFG+nFGX12ZNCahZzN
	tm/5z/PEHv0kM6ssFmVvZyN+/3o3vA8/i3embq5Ar5rcrnjxqhLwfA15t0OugiA9SKXxC5vlp6PYz
	hExsYV6eXAMTjZlNg4zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnTX-0000000HG8k-3D1t;
	Thu, 11 Dec 2025 20:41:23 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnTU-0000000HG4o-1YmL;
	Thu, 11 Dec 2025 20:41:21 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765485665; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CVjuaOpiZmFd839DhOl+cDzAiQpexFn18TyuR8/CukHEh3wQVZUbjE5NByDijZobaa8ziAhVvwRFZ+Uru45zpPv7yDOuxfvIci4kNYQUSniZNWojK+MJKgWictjPK26XSWgHMv6rmQp6Ojf5TqdyM50tNQaFy6GPBSUeEFJKeh8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765485665; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Yix2VtVAthNOkhvZWCl2bJyUJbLX6oYb/22YOA7QIzE=; 
	b=Bqjznx+qlJqbkI0aOagFx15awVy6F52xRGC/v5nMD1ZMfdrsRa6PdlpuYh6TfgBomjI8PVhPjMVp/8Dl/JvYpzDDfu0MKxG3UlrjonKjcKXBcmWrq4Jaz6nsdYCrUqehwYqs9/Pbp0TPcU6LyycCqZEAau6dst75q/jj21eutCc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765485665;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=Yix2VtVAthNOkhvZWCl2bJyUJbLX6oYb/22YOA7QIzE=;
	b=f/DxjadVpk4/dn1DwIbPhjvwYul9oCf4soLnLmuLbm0VPdefCl+pFJcuqdSXeY04
	ZlE3Cpe118iOdlGhos8fFvq47oMY/mt4s/9Qwen+LaApkzIidA6/9wCHUcFJ+OyadBE
	qyt8ZXf6wyneVrH7jYjiGDaOSCKAr6KD5vLgHwQY=
Received: by mx.zohomail.com with SMTPS id 176548566344593.21823898905768;
	Thu, 11 Dec 2025 12:41:03 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 11 Dec 2025 21:40:33 +0100
Subject: [PATCH v4 3/8] drm/rockchip: vop2: Fix Esmart test condition
MIME-Version: 1.0
Message-Id: <20251211-vop2-atomic-fixups-v4-3-5d50eda26bf8@collabora.com>
References: <20251211-vop2-atomic-fixups-v4-0-5d50eda26bf8@collabora.com>
In-Reply-To: <20251211-vop2-atomic-fixups-v4-0-5d50eda26bf8@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Daniel Stone <daniels@collabora.com>, kernel@collabora.com, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_124120_454319_498A4AC3 
X-CRM114-Status: GOOD (  10.76  )
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

If we want to find out if a window is Esmart or not, test for not being
a cluster window, rather than AFBDC presence.

No functional effect as only cluster windows support AFBC decode.

Signed-off-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 81b3eba07095..9d715d7659af 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1230,12 +1230,10 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 	 * This is workaround solution for IC design:
 	 * esmart can't support scale down when src_w % 16 == 1.
 	 */
-	if (!(win->data->feature & WIN_FEATURE_AFBDC)) {
-		if (src_w > dsp_w && (src_w & 0xf) == 1) {
-			drm_dbg_kms(vop2->drm, "vp%d %s act_w[%d] MODE 16 == 1\n",
-				    vp->id, win->data->name, src_w);
-			src_w -= 1;
-		}
+	if (!vop2_cluster_window(win) && src_w > dsp_w && (src_w & 1)) {
+		drm_dbg_kms(vop2->drm, "vp%d %s act_w[%d] MODE 16 == 1\n",
+			    vp->id, win->data->name, src_w);
+		src_w -= 1;
 	}
 
 	if (afbc_en && src_w % 4) {

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
