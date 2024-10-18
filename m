Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CF21D30016
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 15:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nhZ9Mv6/rEpVY7aUyADaGHwNo8b1McKqZPNrbkq2fTU=; b=TgEetyW/E7Ay6y
	fZ72Dz2IFh2n5x5DEI2CIDSSSA5kmY2jk+FA3h8YamWVsvpSG6o7nZIjIm9PAnLm71Hpam/BYVJOQ
	2wcNS1FC2yZJaIfq2qHnCDbm6wKpFf8LV0qhfI0+EWAHBnYtxZQwrJeFZrXIq391XJCa+Qeq5SF96
	23zUWdZjZTyTOPXcxGeKvP48DBOUuGxFqw08Yjpu+rsqJ2h0J65EzpDBzjX+jo0RU41fGd25z9y6H
	Tfyihcoeg8OlgliLnq2ZpeVfWFS5NQoGXGEPnMgOuxBkNH3yW8uc+rioqrgoT5PlKd7oQTbX/J+V5
	/sjJCWfw5bzsHT30O2pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1odv-000000019UE-1UoF;
	Fri, 18 Oct 2024 15:11:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ocR-000000019Kx-3gev;
	Fri, 18 Oct 2024 15:10:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2DBFD5C4D58;
	Fri, 18 Oct 2024 15:10:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05FA7C4CEC3;
	Fri, 18 Oct 2024 15:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729264222;
	bh=1PJEXr3kEPCQZZ5V+Hy5FS8SkVqvabwVcmhCAPX1iOQ=;
	h=From:To:Cc:Subject:Date:From;
	b=QTsLzh6lThzlelfZBn/cIWOm1pUUnVUt4PEgpXo6zcTOjv7CgYPjb979ht52ZkEwY
	 oYEq8dlQK+JvichsF/8JBqw1yXlpH8EngGrGEG2gb0SKoKCHRmGjtBJyd2Mxu5psRj
	 J1hYFJaT41xlRHJH+8Sz3ibTLpBEteYzOXaz3fiIH5fs4PN1pE4XnQgeHft2pQiNkH
	 jcz5w/I8o6EFgpHSBWzoH9wvoPcwNokJxYvYITsksrU3yFhDPiyu8bjKvdlx7oClds
	 GEqxnMcPj5e/Pt7/k/ZlK4qtptReFNQtcQ3WuU0InCF4klTC9nNGerwH2R/8LhDdn4
	 +K6SEWbKYMA0Q==
From: Arnd Bergmann <arnd@kernel.org>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Algea Cao <algea.cao@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: avoid 64-bit division
Date: Fri, 18 Oct 2024 15:10:10 +0000
Message-Id: <20241018151016.3496613-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_081023_989495_C478CD06 
X-CRM114-Status: GOOD (  10.86  )
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

From: Arnd Bergmann <arnd@arndb.de>

Dividing a 64-bit integer prevents building this for 32-bit targets:

ERROR: modpost: "__aeabi_uldivmod" [drivers/gpu/drm/rockchip/rockchipdrm.ko] undefined!

As this function is not performance criticial, just Use the div_u64() helper.

Fixes: 128a9bf8ace2 ("drm/rockchip: Add basic RK3588 HDMI output support")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 9c796ee4c303..c8b362cc2b95 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -82,7 +82,7 @@ static void dw_hdmi_qp_rockchip_encoder_enable(struct drm_encoder *encoder)
 		 * comment in rk_hdptx_phy_power_on() from
 		 * drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
 		 */
-		phy_set_bus_width(hdmi->phy, rate / 100);
+		phy_set_bus_width(hdmi->phy, div_u64(rate, 100));
 	}
 }
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
