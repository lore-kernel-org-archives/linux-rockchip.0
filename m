Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90E49C54E76
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+Yzb1QsUWDhMbOQljuMN+H2FxcDonmEQOZe6xdCYCs=; b=Qd4Xb1YMRHuLlT
	Y3lrwZnRtEirgXyRUywpnxCX5kD1LWLVG5lHijAu91TDOBkoAD73xXmsvcKMG9qUiLEat4C6wNilM
	tATL/OTcqETIPJ4kGwZjRy8tMr5oMpDxfmEqAxzCMwcxh3274yKw3qOUje2N/JxAAUA1LLzm9di7J
	8PQiU+fuEQxSKiG/rigisex8zps30yUFtQGn7N642Z/MjyiMHyph5P/g4xQd2B17t68JKfqN/7xVf
	VY+WqbIl8pj31ueqnOc2/sSTc69rsgqaPQaJj4bY0pJTseqRnfUR3yWuRG6tVbNuClvm/5+g3Pk9S
	wAwikv5/KAncXwJ6GXeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r53Q9-00C084-2v;
	Mon, 20 Nov 2023 12:30:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53Q5-00C06a-0X;
	Mon, 20 Nov 2023 12:30:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=50pOZ0w3lX1kQsHW7UY2rCQqOF5d6MobisARI6xgQR0=; b=ACqlkRtcbc2kfifxQ4MJfd8Zpx
	k6xnB5yiUv3J6ve0OehLp5VwyLYOllFSpNwVGMZGsPoyvcfcG5iAch4GPd34J1RZkdcPodML4Q448
	rgKLO3g7IDON+rSgQylg/a9OGXbl/TWEfqeG4WrOOOt/5qpPbP7z2QYZ+8UuwTfHX5Fbg7+mwfwBK
	Kckxvee3oKMYHRf9VsqX04Gkuo+1TL0l/ahK5JVxUfT239hyQOeJ1PemQcdbclPTuUnE1PLX5YBDT
	NSlBPH7ZsyVpOViEUztyvovvF5oYCJz3m8x155oZph4h3zMlCujroyPUK9sbmYNiEr0y3r7S7ag7B
	TGzUf3CQ==;
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53Pw-00AxAL-23;
	Mon, 20 Nov 2023 12:30:27 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id ACC3CFF811;
	Mon, 20 Nov 2023 12:30:10 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Sandy Huang <hjc@rock-chips.com>,
	=?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Mark Yao <markyao0591@gmail.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [PATCH v2 2/2] drm/rockchip: lvds: do not print scary message when
  probing defer
Date: Mon, 20 Nov 2023 13:29:49 +0100
Message-ID: <20231120-rk-lvds-defer-msg-v2-2-9c59a5779cf9@theobroma-systems.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231120-rk-lvds-defer-msg-v2-0-9c59a5779cf9@theobroma-systems.com>
References: <20231120-rk-lvds-defer-msg-v2-0-9c59a5779cf9@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-GND-Sasl: foss@0leil.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_123020_985125_042B90F6 
X-CRM114-Status: UNSURE (   9.56  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

This scary message can misled the user into thinking something bad has
happened and needs to be fixed, however it could simply be part of a
normal boot process where EPROBE_DEFER is taken into account. Therefore,
let's use dev_err_probe so that this message doesn't get shown (by
default) when the return code is EPROBE_DEFER.

Fixes: 34cc0aa25456 ("drm/rockchip: Add support for Rockchip Soc LVDS")
Cc: Quentin Schulz <foss+kernel@0leil.net>
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 17d8fc797151..f2831d304e7b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -577,7 +577,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 		ret = -EINVAL;
 		goto err_put_port;
 	} else if (ret) {
-		DRM_DEV_ERROR(dev, "failed to find panel and bridge node\n");
+		dev_err_probe(dev, ret, "failed to find panel and bridge node\n");
 		goto err_put_port;
 	}
 	if (lvds->panel)

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
