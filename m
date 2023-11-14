Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70161C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 11:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a5OUaEU6mIjKV6Z8hcbDhD0dXuyiBin3rQB965B6uJE=; b=LE1CaV3aF17dlq
	QF6H0G7GbZYbZAegT0tgxCGizbT8arm2PzbO7AOs2kGuUGUiiIFqd9wKIVVJ03P8EJxgVTRu2ObxG
	FPQ1++UNsL2tua3S+Nc5Z/382SZY+dMleVnX+B8509sTJKAvtLHqANSpvy+wD24uLsTMjXCE/4cvi
	Q/YokHfuwB8NvHmw/T+P93AvkJoK3rKzWI8e4yXInQfWFXswOfLDVJqaJLuZP1j3BYW8sWZEqN6r5
	3vtYOKBI9FSXl2TvrsqJJxlMzCkg4AGs074C85IboYPmsFstI3Js4SGcv1lI7HUUAfZ3YPZNVF5xi
	Fwkpi0fGgGf6uQeNRqSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rYa-00Ff8i-19;
	Tue, 14 Nov 2023 11:26:12 +0000
Received: from m12.mail.163.com ([220.181.12.196])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rYX-00Ff6U-0h
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 11:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=QlSOJ
	R6xuGhJSA43BYYZBSnfhPce6GEiq7oGmKa3t6U=; b=WapDRQvSV8eRGx7nYfanf
	+2LRdt4egd9/gsC2jYDc5y2WlWYI5SkNvMxbE5XjQ+v1Dy8y0tNxn5Dkxr67NcLh
	D5x/XwI0Ouyrk0CYg0UwyFELv3C9acnF1Vgq2d9MZu9Mv+grgrbK8/uorxIIyB+w
	NBK6prOpkSIlM5nK10wQfk=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wDXn0AvWVNlhu50DA--.57639S2;
	Tue, 14 Nov 2023 19:25:39 +0800 (CST)
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
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 00/11] Add VOP2 support on rk3588
Date: Tue, 14 Nov 2023 19:25:34 +0800
Message-Id: <20231114112534.1770731-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDXn0AvWVNlhu50DA--.57639S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCrW7tr4UArW3uryDAF4rGrg_yoW5GrWkpa
	n8Cry5ZrWxCFW2qrn3Kwn5CrWft3ZrAayfKwn3G3ZFq3WSkF1UKwnxW3Z5Z39xXw17ZFy2
	kr43J347Gr42qr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jolksUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiTBYoXmI0cP1yEAAAsV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_032609_623540_5ADE76B8 
X-CRM114-Status: GOOD (  10.83  )
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

A branch based on linux-6.7 rc1 containing all the series and
HDMI driver(not compatible with rk3568) picked from downstream bsp kernel
is available [0].

[0]https://github.com/andyshrk/linux/tree/rk3588-vop2-hdmi-upstream-linux-6.7-rc1-2023-11-14


Andy Yan (11):
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
  drm/rockchip: vop2: Add support for rk3588
  drm/rockchip: vop2: Add debugfs support
  arm64: dts: rockchip: Add vop on rk3588

 .../display/rockchip/rockchip-vop2.yaml       |  25 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |   2 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  96 +++
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/cdn-dp-core.c        |   1 -
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |   1 -
 drivers/gpu/drm/rockchip/inno_hdmi.c          |   1 -
 drivers/gpu/drm/rockchip/rk3066_hdmi.c        |   1 -
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |  18 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |  12 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 790 +++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  73 +-
 drivers/gpu/drm/rockchip/rockchip_lvds.c      |   1 -
 drivers/gpu/drm/rockchip/rockchip_rgb.c       |   1 -
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 215 +++++
 include/dt-bindings/soc/rockchip,vop2.h       |   4 +
 17 files changed, 1185 insertions(+), 58 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
