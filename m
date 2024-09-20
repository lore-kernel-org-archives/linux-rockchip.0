Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD5D9CF58E5
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 08:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGonr5nsKgC0Z1qsU52eRyAHNAONaST32vdQ/y/GT24=; b=EQrf63WTpdWCzs
	CE0B3SWuefClXr64MySIa/WFwNYGc0j+mURuSE+G8UZd0zr2x9yFVCzLu35iCrK9lj7J9wnm+HaG0
	icw+DkuvQ0UdK14HHmu9bgPWUJBkuu19OdixIaD3iO2nmdv+58iws/uNQTMqTkwH3WyUP5qukzPre
	Y2UvfkUpBvSE3Rw+Vuv1sbOk5ZY8MIodAKV4I/vZNR8pskh3a3yo0KWnYb8LmBFqqK2UQg+K8xE7P
	7c23uCFY6GG0CEJ7z3mNomS7c0uO3ACzfPV3WlMh0lxjtKqcdKXS00z8eR+cvuMJnVlKaUT6iQF3c
	aMTFtU/hhF8vq7bB4O9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srYzc-0000000BlbL-2Tt1;
	Fri, 20 Sep 2024 08:27:56 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srYpi-0000000BisC-2RMy;
	Fri, 20 Sep 2024 08:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=BEGbI
	sQTh+g3JWARPrbSM2LwRVGpbQaDzPpAvAWnYdQ=; b=ozpUVoE1zCGAMAElO+FjF
	7W546U8aTZ/CJ5ZAnPWfvtDwxgN/J3QY97pwAlZ+/hDFquX3CvAfBKQUSublpUf+
	HPVqUAhC3AsArLTLL79QLl3Ta+KV8siJ3WOnAPpRxvGU/jRxiiNMCoD/8L1LcDlM
	i/1mUFLODpYvVFW0pUtzHg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g2-1 (Coremail) with SMTP id _____wDnr2yIL+1mqL21Gw--.53445S2;
	Fri, 20 Sep 2024 16:17:16 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	minhuadotchen@gmail.com,
	detlev.casanova@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 00/15] VOP Support for rk3576
Date: Fri, 20 Sep 2024 16:17:10 +0800
Message-ID: <20240920081711.6493-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <.patch/rk3576_vop_upstream_v3/0002-drm-rockchip-Set-dma-mask-to-64-bit.patch>
References: <.patch/rk3576_vop_upstream_v3/0002-drm-rockchip-Set-dma-mask-to-64-bit.patch>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnr2yIL+1mqL21Gw--.53445S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxuF1fXF4UAF4UGF13uw4UArb_yoW5Xr15p3
	98CryrXrZ7CFyjqrn7Gw4UCrWSqwnayay7Ww4fG3ZrA3WSyFnrKr9xuFn8ZrZIq3WxZF4U
	Crs7X34UGF4IvFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UtWrAUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqR5gXmVODBG+xwABsH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_011742_948146_567D07D4 
X-CRM114-Status: GOOD (  14.03  )
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

From: Andy Yan <andy.yan@rock-chips.com>


Thanks for the basic work from Collabora, I can bringup a HDMI
display out on rk3576.

PATCH 1 is a carryover from the working when add support for rk3588,
        is very usefull when some people want me help debug some issue
        online, so I really hope it can be merged at this round.
PATCH 2~5 are bugfix of rk3588 alpha blending which report and test by
         Derek
PATCH 6~13 are preparations for rk3576 support
PATCH 14~15 are real support for rk376

The hdmi depends on WIP patch from Cristian[1]
I test it with a 1080P/4K HDMI output with modetest and weston output.

If there are some one want to have a try, I have a tree here[2]

[0] https://patchwork.kernel.org/project/linux-rockchip/cover/20231211115547.1784587-1-andyshrk@163.com/
[1] https://lore.kernel.org/lkml/20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com/
[2] https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v3

Changes in v3:
- Add comments for why we should treat rk3566 with special care.
- Add hardware version check
- Add description for newly added interrupt
- Share the alpha setup function with rk3568
- recoder the code block by soc

Changes in v2:
- split it from main patch add support for rk3576
- Add platform specific callback
- Introduce vop hardware version
- Add dt bindings
- Add platform specific callback

Andy Yan (15):
  drm/rockchip: vop2: Add debugfs support
  drm/rockchip: Set dma mask to 64 bit
  drm/rockchip: vop2: Fix cluster windows alpha ctrl regsiters offset
  drm/rockchip: vop2: Fix the mixer alpha setup for layer 0
  drm/rockchip: vop2: Fix the windows switch between different layers
  drm/rockchip: vop2: include rockchip_drm_drv.h
  drm/rockchip: vop2: Support 32x8 superblock afbc
  drm/rockchip: vop2: Add platform specific callback
  drm/rockchip: vop2: Support for different layer selet configuration
    between VPs
  drm/rockchip: vop2: Introduce vop hardware version
  drm/rockchip: vop2: Register the primary plane and overlay plane
    separately
  drm/rockchip: vop2: Set plane possible crtcs by possible vp mask
  drm/rockchip: vop2: Add uv swap for cluster window
  dt-bindings: display: vop2: Add rk3576 support
  drm/rockchip: vop2: Add support for rk3576

 .../display/rockchip/rockchip-vop2.yaml       |   13 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    4 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1572 ++++---------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  274 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1948 ++++++++++++++++-
 5 files changed, 2683 insertions(+), 1128 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
