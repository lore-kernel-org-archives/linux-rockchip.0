Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC37EC25B79
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 23:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vp3P9eIDi31cH5VbyymdZfCDVuQXf00gmFQTIQk/d0k=; b=oiP5rrz/QXvZi2
	igdAdAVoQJ4Lx6x1SAi9r6Nc54nKfBV9ghkx9BwVm0HnkAe2YZbJ0vLXkBJ4rzmIRA1yQ2D+iNmD1
	xMDMFNdughs37HskBrB0CdRu0jQkQKJE9W6uYoXxwto03E8YQZ1YgrqDZPLkt/juS1FDhtXPFRgIR
	Mpnn1TdIG37+QL/zFmT2XfCWbtzbBh8qK0flKv4n+DT4rI6pGQhZ5YvFcOEzk6DZCag5fFsTL5ptx
	CTJEZNFBS+K5XAJJm4LGKN5ls1NLHt7iQ2AdPJ+Vqm29H3Z9zl7LXxUschkh5iTLDtVbOhhu5qwIf
	7HvtWscu0gmfOTWGh75w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBjYa-0000000GYtb-3O2P;
	Mon, 27 May 2024 23:15:08 +0000
Received: from out-182.mta1.migadu.com ([2001:41d0:203:375::b6])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBjYX-0000000GYsM-3qmi
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 23:15:07 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1716851701;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rhKW4Bfr7IbOIo36QDv8YnlYGqdpuvdoz4eoKDgahks=;
	b=tCedHw5U+efuSzlAcKzL3k5UiQmzWU6hA2YKu8o3x7zoQT7f7VMMg8TD5wtYdZTChRamu4
	27AyblLy1CdnsFxC2KAZ8OO6G4F+fc0mbRbArJrmGFVEKYtNEJSwu87QgLSKdHiQr71KHs
	1kBNcX2G1XJmp1DZqyNbkzMD8rk29TZwlNq7xRVN7BnUarZpFtwFhZ9ZR0sswINmTX+SBh
	k9f8py5HHnVCBD/RKIdBi/6/ZERzFEwU+46SfCkb2Mg4p6P0xsVTFZNuWsDowM2N0QX1wy
	rkGtGqsMjqMdRFY/cUbK1pD/eYEuDXgDRKktnMNpl7+otTpaJF5ORBWz1K8Q4A==
X-Envelope-To: val@packett.cool
X-Envelope-To: stable@vger.kernel.org
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Val Packett <val@packett.cool>,
	stable@vger.kernel.org,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] drm/rockchip: vop: enable VOP_FEATURE_INTERNAL_RGB on RK3066
Date: Mon, 27 May 2024 20:14:17 -0300
Message-ID: <20240527231440.24021-1-val@packett.cool>
In-Reply-To: <20240527231202.23365-1-val@packett.cool>
References: <20240527231202.23365-1-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_161506_098645_BDAEC369 
X-CRM114-Status: UNSURE (   7.84  )
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

The RK3066 does have RGB display output, so it should be marked as such.

Fixes: f4a6de8 ("drm: rockchip: vop: add rk3066 vop definitions")
Cc: stable@vger.kernel.org
Signed-off-by: Val Packett <val@packett.cool>
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 9bcb40a64..e2c6ba26f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -515,6 +515,7 @@ static const struct vop_data rk3066_vop = {
 	.output = &rk3066_output,
 	.win = rk3066_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3066_vop_win_data),
+	.feature = VOP_FEATURE_INTERNAL_RGB,
 	.max_output = { 1920, 1080 },
 };
 
-- 
2.45.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
