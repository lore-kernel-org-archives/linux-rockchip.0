Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C4A5D3B7F3
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 11:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/HrwO7XuqZU7UKqCEdxEZIVtnZ/Cn8kHvlEg4u1sug=; b=1/aA9fPLxmyrXF
	+4W/5Lyf/pNlRz+5eo6n07iqgni6NDkSypOsf6ZSt3lHaEkhdP2ihIWV6EuTguNDtNwJuhtPltDQa
	pwSF2Z7B/FBWWtOykhawUDpFcMv0And50o79HkXk+KsL4VCHAeI4fuQueGh3ZFFs13X+Cz13QjP0o
	J59oEf2zT4CUJGXELAe/93c1RQJc1eWPWSLTVwjiSQPCKuUJf9+MQSUMDNPVu359kl7LfZQ6uVpbV
	mope6UiJsHPi18GEY4irzNLoUK0c0do4m3CoaL+Zwyxv32sIOl2ZX1ugBO+MrTkc+kJJED9AqDO4b
	EFaU5NDq5+jalWBlGN/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSvh9-0000000EAHc-1Xgd;
	Tue, 09 Dec 2025 11:15:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSvh2-0000000EA8J-056k;
	Tue, 09 Dec 2025 11:15:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765278918; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=M/O43k2hYGpfnvnTH3+QLd+z/1WOPyPdc8xtPcABXMwiYkaq1g9SqQEaquGczbpdeL2uKrjarGrx4MAU1Pavo7YZ48dj6GcLyP652BVHlS1Nl4PZz8/UHfHQQwYl/b58Qy2Dz20KgbfEUDaBLytPOW8kGtT6lT1Q9skhmuC8yOg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765278918; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=CS0QxKNP3vOnv8q3yaF11BPDVZZzculrxSbgljutXxk=; 
	b=YbVx0fTb121vjUNWXOPU4JAHzUqTS51aW2mXln7st6qrYiOQwaHcNqwSXyZfJXrovZFW4qIagRZ9KRKY38S+fRIh/cNrcKsQ+y0NV3EchdfLYHJgADAct4HKQHywG95QUBtHdJyn7qBjL7lkr/1oCbK9iaR5SBbCiHiz2Akq1Fs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765278918;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=CS0QxKNP3vOnv8q3yaF11BPDVZZzculrxSbgljutXxk=;
	b=jSBSe9/bwG0kWjdRrLCBGvuWjTMaTDv9/2AGOnZiW6rT7zcKnH217cm32MPYKOdO
	4AsftTnRt1S4CaVYdm8ZYe0DiUUtuuQb/n/LIuQlwCYfNmgd4bfE/mdvH1cQx70JD/7
	M3QrWRPqliYlyc5eH5xt3VUvpPA13/gZ3N0mfjQg=
Received: by mx.zohomail.com with SMTPS id 1765278917298884.6425701616823;
	Tue, 9 Dec 2025 03:15:17 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 09 Dec 2025 12:14:20 +0100
Subject: [PATCH v3 7/8] drm/rockchip: vop2: Use drm_is_afbc helper function
MIME-Version: 1.0
Message-Id: <20251209-vop2-atomic-fixups-v3-7-07c48f0f1f0d@collabora.com>
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
X-CRM114-CacheID: sfid-20251209_031544_202444_A5922584 
X-CRM114-Status: UNSURE (   9.86  )
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
index 337b01ed29a6..ea84aa5c625e 100644
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
