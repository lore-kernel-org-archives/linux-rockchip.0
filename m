Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A75E8C44500
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jul 2026 16:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzDudduki4wLewhdqzW4ZQM8DhBDNssZtThHuVwyt9k=; b=sK5CvTf+UQAPbg
	JxyqQnwGOx60EcCaSAwz9hXJM12SFEgz/xp0ODsRf58C+I7tYy3lhckZn1B9UpHO5ot/H8qZEKc73
	SeuPIH3FpMgzrc0c2qD4/mNr2CffnuBo52DX3bVBqob1fLQkL5Nc57NN+UcccuEEfOwIv6sPslK3F
	AxRpeMttSorhkJjUSLHFkmrg617yWFf+dJ36BVooVtWcHLWfLMLnWVJSkvAT70jR4LTtlJh3exKNb
	vv7izUd3aLRTsN6LRqtAXXBGP2s/fdS8D6fnxGRfjsCKaLHvLviY0R25lEiLRURhwh4PJwZ3ey+sU
	nc96yqFwoIffFRibVOlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgPpD-00000009U6I-2XQ7;
	Sun, 05 Jul 2026 16:36:11 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgPp8-00000009U1u-0pBo
	for linux-rockchip@lists.infradead.org;
	Sun, 05 Jul 2026 16:36:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=SzJ1pamq9XarUrPJoVrKJ+o1LJpxGt0oCpOFUrS2n2o=; b=XZuDf1
	d4KCxB0e97FE9UKI27Tj70vpA/yW8GO+Tmg25PjClrmDJ2oBDi2/eBlXj7EkBm2N
	Oxj9+pKCySI4rAzvGDSiST/lkQkpRLGC0PXKJSCWDT5F8J5oPyKcl0xRJC2nHg+c
	0QUQFxUBjINve80z3B13cnCpHp20E3Psk8gxXIKolk7Epr57POSeP5SPuEr91oB2
	4+PEvjiMOzT3GIw4O7N6VjY/1In1FWhr+Zrg986Zr5LSRDOYffNNeYqw+6DmEcaN
	dsyx6XbnbjDtELXOjwFxbLZRjbQBI4C3P0x5/w9/QldN7HdS6EerOA1tSl8n9wkY
	2zf+gG3Qd0iPFLSQ==
Received: (qmail 2287514 invoked from network); 5 Jul 2026 18:36:02 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 5 Jul 2026 18:36:02 +0200
X-UD-Smtp-Session: l3s3148p1@BFbiwN9VHlRtKjFj
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-kernel@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 3/3] drm/rockchip: remove unneeded 'fast_io' parameter in regmap_config
Date: Sun,  5 Jul 2026 18:35:38 +0200
Message-ID: <20260705163536.1850-8-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260705163536.1850-5-wsa+renesas@sang-engineering.com>
References: <20260705163536.1850-5-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_093606_525639_E43A253B 
X-CRM114-Status: UNSURE (   9.83  )
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

When using MMIO with regmap, fast_io is implied. No need to set it
again.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
No dependencies, can be applied directly to the subsystem tree. Buildbot is
happy, too.

 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
index d2e76d36d724..aa8642e5b621 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
@@ -368,7 +368,6 @@ static const struct regmap_config dw_mipi_dsi2_rockchip_regmap_config = {
 	.reg_bits = 32,
 	.val_bits = 32,
 	.reg_stride = 4,
-	.fast_io = true,
 };
 
 static int dw_mipi_dsi2_rockchip_probe(struct platform_device *pdev)
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
