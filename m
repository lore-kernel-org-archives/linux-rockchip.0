Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FEAC19F4E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 19:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KcE9o3CHLAOOQObmdGIHAP3f/adshl7BDwlNA+LxuOc=; b=kX5DSyMq221dgK
	8GXJ4JOmYf2TmbXCmn5qYBx2dIngo2O0ZCfGGXfl6wy6G4pDyKn15CtzAbqOHMmliX7z9hXEQstq0
	vc43ywHqBpO5EeyL4v6UjTT8uvEa9Sg6n0jJWmo1ow+CQLawgtwZhe3c2qKEe9aUMM0Kut1qanTk4
	OviSnKFcA/BP2RkvtzZd+GJ8Gf6UKj5xa7EQTVhidc3Q9X0nSoGd3BCpaaCV73JpvJOjy+UIx43/m
	qWkc7wjB5fZfoB54AzqhyjlSQ0CB5i9bJjuz4jvD5Yp9u6/UDlbMrHvzO7uPFo1mt9SLq1zTyR3ua
	8oLSOIi7cl9RGJtSfncw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s05C4-00000009wun-3Nqt;
	Thu, 25 Apr 2024 19:55:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s05Bp-00000009wik-38xY;
	Thu, 25 Apr 2024 19:55:31 +0000
Received: from i53875b01.versanet.de ([83.135.91.1] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s05BX-0005vK-6p; Thu, 25 Apr 2024 21:55:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] drm/rockchip: vop2: two fixes from working on DSI enablement
Date: Thu, 25 Apr 2024 21:55:04 +0200
Message-Id: <20240425195506.2935955-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_125529_819758_1B540574 
X-CRM114-Status: GOOD (  12.30  )
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

While working on enabling DSI support on rk3588 I stumbled across the issue
of the display staying black while both the vop2 and dsi drivers were
claiming to be running just fine.

After a bit of checking I found that I got DSI output on VP3 when HDMI
on VP0 was at least associated in the DTS, but not without.

Andy's patch [0] helped and is definitly necessary, but did not fix the
problem completely. The missing thing was that VP3 is rk3588-specific
(rk3568 only has 3 video-ports, not 4 like rk3588) and the layers of
VP3 never got configured.

Patch2 fixes this.


[0] https://lore.kernel.org/dri-devel/20240422101905.32703-2-andyshrk@163.com/

Heiko Stuebner (2):
  drm/rockchip: vop2: fix rk3588 dp+dsi maxclk verification
  drm/rockchip: vop2: configure layers for vp3 on rk3588

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 16 ++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  1 +
 2 files changed, 15 insertions(+), 2 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
