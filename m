Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D62D43346
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 20:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQ5NR8OpKxnNlNw8E/hdtg4iCq/7qFDp2aee3xccL94=; b=2X2I9SAYGMUPtJ
	EWBTtOXYEuyG2Gs0akH2OK8K18gao+5myFk8yd1g2hLDMi2ASO6ypWgxLx4uEGoPyF5v37gA7iZvP
	HeyvbZOOkbndRfRS6d2qALn4ctOyNyox26fjuHdmHjPPOn84tP4spJ9F6VKL4fp//fDPmPMMpQYgt
	/ehnDGfyIKZHEfImYl91YrDTshig15W4I9RoVpGlxZ8nJ/lxp+g2UjSLLK2yFLs6UKipDuGPzsNtK
	m4vDwBzErmYqY0TLqOSz6yBIBWe8a0TIH6gET1ClWe0GApy5vaFa4Udx232hLcMXZBDbtRzvnWgrd
	N+LTWlOK2XVx69HZ3mqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnTh-0000000HGK3-0pMu;
	Thu, 11 Dec 2025 20:41:33 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnTb-0000000HGCj-3Uew;
	Thu, 11 Dec 2025 20:41:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765485675; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SM93lxQiW4LcweqKqMcty4X7vhp0z4V6JTB0K1qbtUwf8malv2yqlGimsFCq5fSA3yHXNNgjI5iirnwc5xdFbuHgTpkI53+PtxApQRzvFSpAhL8x1WhpNzGAUbajNU+SC6Va+EwcImmUgyQCZjrWfq2fbw3BTSk3I+g8xmiRYnc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765485675; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=QIQN7Mfe3rRMl2qTWZlCtYbXq8tihpYciZ+DDNnUGgk=; 
	b=hpRkuwh8oY1JK3u1Zj7txor7wTP1w8pqgSHCXm59req2dAtNGsCUQv5Q1grx+1r08tTD3O0u2XMXMukh6npFhgghvx+mHEqed0RfNq6eRtX6wK0w1TVUpA1zU91l+crIplgjTSGna9Xy6kUNnDZMp/l9R3eg986I1ab0iW/cfM8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765485675;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=QIQN7Mfe3rRMl2qTWZlCtYbXq8tihpYciZ+DDNnUGgk=;
	b=dc67R15qE7h2gQIpnZwnHae5HPmeY5B/Njm0VtEpXLpHj76mnk7+JJB7kVUMFc1G
	2aX4oBNOTshoRinmrRmvIKu4ryhXMdeBSUHbK64ViluTt1EQ5CF80h9iBOAhVHDgOaI
	gZSuNbrQwYffi7jdSG9k1rxkfdV2MfQ2wD0X7EMk=
Received: by mx.zohomail.com with SMTPS id 1765485675086720.2234025840241;
	Thu, 11 Dec 2025 12:41:15 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 11 Dec 2025 21:40:36 +0100
Subject: [PATCH v4 6/8] drm/rockchip: vop2: Enforce AFBC transform stride
 align in plane_check
MIME-Version: 1.0
Message-Id: <20251211-vop2-atomic-fixups-v4-6-5d50eda26bf8@collabora.com>
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
X-CRM114-CacheID: sfid-20251211_124127_930679_DFD671DB 
X-CRM114-Status: GOOD (  10.39  )
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

Make sure we can't break the hardware by requesting an unsupported
configuration.

Signed-off-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index a029ed73dda7..1d12e00ec49f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1083,6 +1083,15 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
 		return -EINVAL;
 	}
 
+	if (drm_is_afbc(fb->modifier) &&
+	    pstate->rotation &
+		(DRM_MODE_REFLECT_X | DRM_MODE_ROTATE_90 | DRM_MODE_ROTATE_270) &&
+	    (fb->pitches[0] << 3) / vop2_get_bpp(fb->format) % 64) {
+		drm_dbg_kms(vop2->drm,
+			    "AFBC buffers must be 64-pixel aligned for horizontal rotation or mirroring\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
@@ -1290,9 +1299,6 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		 * with WIN_VIR_STRIDE.
 		 */
 		stride = (fb->pitches[0] << 3) / bpp;
-		if ((stride & 0x3f) && (xmirror || rotate_90 || rotate_270))
-			drm_dbg_kms(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligned\n",
-				    vp->id, win->data->name, stride);
 
 		 /* It's for head stride, each head size is 16 byte */
 		stride = ALIGN(stride, block_w) / block_w * 16;

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
