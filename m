Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D6C1D3B7E2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 20:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gz5xHosbRWK0vq9rrkmAd/c/AwgRgIebt88OSPMQdYw=; b=MoM1FJ8wB5vGrK
	Ber7FDt2EJb0QC/IY/lGfQFGwJjUhElD78/6pKEzmU64p6TkdgqLFC4xSvktu3z603snHP/g44uPr
	XNsMBJzdKU89zX2r0cfyms/CZ7OXS729Iqt4Jwa6M48OMxeVxW82NUcH6AzgCbWc5PkNhokNe9Tih
	D+RwTJoP4HW26kuvvoRDzW5PPd+C/yktCTAtrMWjpxoiFb06C157v0IbzMk/Bi7brxPqnpyUedrtP
	LYqlJRETyZfeUOp+xBm65DeY2KUZ47aVQERcwePNbsWehkpjLUKaogzixlHg20I+f60VzXEsbyofX
	iCXXND9RI6GOOX5+ZMQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRzAL-0000000BDAG-2RzC;
	Sat, 06 Dec 2025 20:46:05 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRzAH-0000000BD8O-00zv;
	Sat, 06 Dec 2025 20:46:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765053946; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bD5fcC8ts8h5ZfA5QkIjEJ/ChgPMTTwuY8euU3wHhgQzmxWgJRUXyca9KpJ/xKjpeHEdonL7T72utxsc9SE5oY53ShCD9IoanfEzF48BXVERH5bnLUAPxe5+sSQxDzLYLRzRdn2nEeycWZORJBDB/+o6zbZmo+Hh32e52m1DOHM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765053946; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=p8rzuw22G5hQ+PO+mu50soCKPQPRHc3OuYqSu+o6ifI=; 
	b=NgalSxS3pnR66klEJJjZgdrSIU5Fe4lzj4nfVNpCSthkotUS35SlQDXIPXyq2omXPt1DVoO9j7+i6+2PAo7UoUM3v1L6uT6IhfbeNlkmf9cyCjVJDX1L1nb0Rm0vFIxT/LcYyiYyJ8aazBreKDkJQGvcg9jGhQZWa+a6nskS0wU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765053946;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=p8rzuw22G5hQ+PO+mu50soCKPQPRHc3OuYqSu+o6ifI=;
	b=V8c8JVchdq4FF8QQWXkF5WbinnsMUXxbxqBuYuzqzTZ53V1qDwii6UI8i/nIs38R
	tQ440YkyxyJfAUb5tbZLhJFbK3M46N4Qqxh2hhd45vOSBd2ATBzdL7Ra/rGYNsBYYBP
	RR9une20Lr/kxlh7x84KuP9VqFuw3Ui19TaT82IQ=
Received: by mx.zohomail.com with SMTPS id 1765053945136258.821617888442;
	Sat, 6 Dec 2025 12:45:45 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sat, 06 Dec 2025 21:45:12 +0100
Subject: [PATCH v2 2/8] drm/rockchip: vop2: Switch impossible pos
 conditional to WARN_ON
MIME-Version: 1.0
Message-Id: <20251206-vop2-atomic-fixups-v2-2-7fb45bbfbebd@collabora.com>
References: <20251206-vop2-atomic-fixups-v2-0-7fb45bbfbebd@collabora.com>
In-Reply-To: <20251206-vop2-atomic-fixups-v2-0-7fb45bbfbebd@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_124601_131948_4A1BDBAD 
X-CRM114-Status: UNSURE (   9.73  )
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

From: Daniel Stone <daniels@collabora.com>

We already clip the plane to the display bounds in atomic_check, and
ensure that it is sufficiently sized. Instead of trying to catch this
and adjust for it in atomic_update, just assert that atomic_check has
done its job.

Signed-off-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 29 +++++++++-------------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 20b49209ddcd..81b3eba07095 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1214,28 +1214,17 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 	src_w = drm_rect_width(src) >> 16;
 	src_h = drm_rect_height(src) >> 16;
 	dsp_w = drm_rect_width(dest);
-
-	if (dest->x1 + dsp_w > adjusted_mode->hdisplay) {
-		drm_dbg_kms(vop2->drm,
-			    "vp%d %s dest->x1[%d] + dsp_w[%d] exceed mode hdisplay[%d]\n",
-			    vp->id, win->data->name, dest->x1, dsp_w, adjusted_mode->hdisplay);
-		dsp_w = adjusted_mode->hdisplay - dest->x1;
-		if (dsp_w < 4)
-			dsp_w = 4;
-		src_w = dsp_w * src_w / drm_rect_width(dest);
-	}
-
 	dsp_h = drm_rect_height(dest);
 
-	if (dest->y1 + dsp_h > adjusted_mode->vdisplay) {
-		drm_dbg_kms(vop2->drm,
-			    "vp%d %s dest->y1[%d] + dsp_h[%d] exceed mode vdisplay[%d]\n",
-			    vp->id, win->data->name, dest->y1, dsp_h, adjusted_mode->vdisplay);
-		dsp_h = adjusted_mode->vdisplay - dest->y1;
-		if (dsp_h < 4)
-			dsp_h = 4;
-		src_h = dsp_h * src_h / drm_rect_height(dest);
-	}
+	/* drm_atomic_helper_check_plane_state calls drm_rect_clip_scaled for
+	 * us, which keeps our planes bounded within the CRTC active area
+	 */
+	WARN_ON(dest->x1 + dsp_w > adjusted_mode->hdisplay);
+	WARN_ON(dest->y1 + dsp_h > adjusted_mode->vdisplay);
+	WARN_ON(dsp_w < 4);
+	WARN_ON(dsp_h < 4);
+	WARN_ON(src_w < 4);
+	WARN_ON(src_h < 4);
 
 	/*
 	 * This is workaround solution for IC design:

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
