Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56DB8C61D97
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYDoBPR6/wG/xXZiaG8UNUbY0gGfHslVt0eB7geacfA=; b=mESk/BbGx+4OCy
	y96CHBJl7lVeOyRrcJtqE8v59kjI1x3Z1x3rnmsn5PkhsuzngVJB4gc3p/btaYx+9FFLRTFv/lnYM
	ZbiTpiwE9J8VD0A3AckKFb+2DwinswPxsQmzAx5kWqUQyRZ65NSldb9vUIHsFN1UxGTGA25YK6Mkm
	AWgQpvwZAbuWDsJmWef99KR25cUAXIcl0y51awVEe0YTAqnsVhA68U1Z+sQxPVo+hXsaCuzqWcsEK
	RyYhA0H1fa+A8nmtiCBlk2mIgBEVZMLfSpNrpfgoj6pfXfADcFNE/U+VScxq0Re4zNgI6eQQiLHq4
	iMIjX9e6VqEwf4rUgTpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mjt-001ryB-1b;
	Wed, 22 Nov 2023 12:53:57 +0000
Received: from m12.mail.163.com ([220.181.12.215])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mjq-001rwy-0M
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 12:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ilNby
	/QAqRj73jJ/nJZxXwIxgE03/s4paCuCwX+Dnos=; b=LTLhlE9ReggCMZFRPUHJu
	V194d46IlMwgwtO3gaDGksxSAQb2E1+uVdNa1Hj6voML6fE+BDI2pRRx/3AHyjls
	X3tzBZv2YZQkgcCLd3aRqYYpj0I0QNXEU21odHVhdQ9PQOra/6KDuAXI1Hzbskgd
	s5IncOYQ1SW8ec0GNHndM0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-0 (Coremail) with SMTP id _____wDXXym9+V1lS1OxCA--.53034S2;
	Wed, 22 Nov 2023 20:53:23 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 00/12] Add VOP2 support on rk3588
Date: Wed, 22 Nov 2023 20:53:16 +0800
Message-Id: <20231122125316.3454268-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDXXym9+V1lS1OxCA--.53034S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCrW7tr4UArW3uryDCrWxJFb_yoW5CrWkpw
	s5Cry5ZrWxCFW2qrn3twn5CrWft3ZrAayfKws3GasIv3WfKF1UKwnxW3Z5Z3sxWw17ZFy2
	kr4UJ347Gr42vr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jrcTPUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiEAYwXl8YMqat1gAAsQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_045354_514539_D88860B0 
X-CRM114-Status: GOOD (  12.82  )
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

This patch sets aims at enable the VOP2 support on rk3588.

Main feature of VOP2 on rk3588:
Four video ports:
VP0 Max 4096x2160
VP1 Max 4096x2160
VP2 Max 4096x2160
VP3 Max 2048x1080

4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
4 4K Esmart windows with line RGB/YUV support

The current version support all the 8 windows with all the suppported
plane format.

And we don't have a upstreamed encoder/connector(HDMI/DP) for rk3588
yet, Cristian from collabora is working on adding upstream support for
HDMI on rk3588.

My current test is runing with a HDMI driver pick from downstream bsp kernel.

A branch based on linux-6.7 rc2 containing all the series and
HDMI driver(not compatible with mainline rk3568 hdmi) picked from downstream bsp kernel
is available [0].

[0]https://github.com/andyshrk/linux/tree/rk3588-vop2-upstream-linux-6.7-rc2-2023-11-22

Changes in v2:
- fix errors when running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
- split dt-bindings form vop driver patch
- add rk3588_ prefix for functions which are rk3588 only
- make some calculation as fixed value and keep calculation formula as
  comment
- check return value for some cru calculation functions.
- check return value for syscon_regmap_lookup_by_phandle
- add NV20/NV30 for esmart plane

Andy Yan (12):
  drm/rockchip: move output interface related definition to
    rockchip_drm_drv.h
  Revert "drm/rockchip: vop2: Use regcache_sync() to fix suspend/resume"
  drm/rockchip: vop2: set half_block_en bit in all mode
  drm/rockchip: vop2: clear afbc en and transform bit for cluster window
    at linear mode
  drm/rockchip: vop2: Set YUV/RGB overlay mode
  drm/rockchip: vop2: rename grf to sys_grf
  dt-bindings: soc: rockchip: add rk3588 vop/vo syscon
  dt-bindings: display: vop2: Add rk3588 support
  dt-bindings: soc: vop2: Add more endpoint definition
  drm/rockchip: vop2: Add support for rk3588
  drm/rockchip: vop2: Add debugfs support
  arm64: dts: rockchip: Add vop on rk3588

 .../display/rockchip/rockchip-vop2.yaml       |  27 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  96 ++
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/cdn-dp-core.c        |   1 -
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/inno_hdmi.c          |   1 -
 drivers/gpu/drm/rockchip/rk3066_hdmi.c        |   1 -
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |  18 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |  12 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 845 +++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  82 +-
 drivers/gpu/drm/rockchip/rockchip_lvds.c      |   1 -
 drivers/gpu/drm/rockchip/rockchip_rgb.c       |   1 -
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 221 +++++
 include/dt-bindings/soc/rockchip,vop2.h       |   4 +
 17 files changed, 1257 insertions(+), 58 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
