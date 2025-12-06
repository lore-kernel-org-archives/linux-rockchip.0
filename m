Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B391D3B7DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Dec 2025 20:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0AFOkZXP+pTEpxUSzWWKONicc+8mb4NxLxLwJkaAllQ=; b=sOzKvMBXjJ8RuT
	T4GmES47MOKMOWA4KrRV+4aZS+RK6WrzqAyktC2uwIvaddqzotOde5v6b7dL1StfLVE2tySu0zy1J
	A5k5wku8dUZ0lA4Qtcfl1N4djMxpsyW9bTlUVdraNIZn5mzfQoFI2hqmz1LFjT9ewEYmJ3MD4xzIh
	FanaMUoa2GM6HR14sLMc1Ok76UI1H7F/K2AuUiVVyPC5HXMw0t4aDbSAqNAxfxnk+ws0BWlz3+yDZ
	ynoe0Q+pFlWW/rbTBbKbcT8nfRWXEmvtpzzOIAfQo1EEKZBLzzh99HN78hPqaFWTsob1vJdbWj2Ur
	aCzhzTvxKw2oklQSRLXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRzAZ-0000000BDOW-3wB2;
	Sat, 06 Dec 2025 20:46:19 +0000
Received: from sender3-pp-f112.zoho.com ([136.143.184.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRzAX-0000000BDLE-171m;
	Sat, 06 Dec 2025 20:46:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765053962; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GpWmrRd5Efr8zcWpSIYQruDSqir+/VHWi9mm8apLf6rE6wpN2o1rl6XBxGIPdWV0W/9jGNHN5CNeGnbAKDHuchrs4bWXhwYyuQ8qw6IEBi2VXDuqg6NY84avUv8rgvtdlX9dTxbFgXyUmgIKHhrTj3nSGhGizg+bRql/zYWUVck=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765053962; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+DJMiovkGJ+i2ggvzErlRLV4kZ5tOdhjMfzzT/pSZtU=; 
	b=L8Oj+sH4vHQrpSHhflEmomHTyF141CrXFxKcV1RYG/uK3QMvlD0rPMSs01GCoagoqPznMR+G5Dy2swxPJjXKJAs4PEzog3tXITqhLSPLEzQAic6GKNl09Y0a365uchuzQ8PIHt3CfWJE4Tr/V/Ern6tEXMDPnlBMSQvSO2ONqAY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765053962;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=+DJMiovkGJ+i2ggvzErlRLV4kZ5tOdhjMfzzT/pSZtU=;
	b=XHTmfXLBsCKzVLzM5D4p01Z7J2S+7ucqnmu5TwIBsxifzpgo7qUOXvovkKsCcI1B
	cTfIvv8AO6nBxSY2j61gJKdSLeuGIZWz47bbJxl7X5GVJ8OHX54DmI9aU2+9SNiVZzu
	9gVqkGCVEKrdMWc7QIidsJjCAwS5mcwOT3VnsTRg=
Received: by mx.zohomail.com with SMTPS id 1765053962055216.10515253280266;
	Sat, 6 Dec 2025 12:46:02 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Sat, 06 Dec 2025 21:45:17 +0100
Subject: [PATCH v2 7/8] drm/rockchip: vop2: Use drm_is_afbc helper function
MIME-Version: 1.0
Message-Id: <20251206-vop2-atomic-fixups-v2-7-7fb45bbfbebd@collabora.com>
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
X-CRM114-CacheID: sfid-20251206_124617_362973_8D688A0F 
X-CRM114-Status: UNSURE (   9.41  )
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

We don't need to do a long open-coded walk here; we can simply check the
modifier value.

Signed-off-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 2a308cc31632..8e0727c3523f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1207,7 +1207,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		return;
 	}
 
-	afbc_en = rockchip_afbc(plane, fb->modifier);
+	afbc_en = drm_is_afbc(fb->modifier);
 
 	offset = (src->x1 >> 16) * fb->format->cpp[0];
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
