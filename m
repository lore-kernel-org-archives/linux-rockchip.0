Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E560BE74AC4
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Dec 2024 16:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/oBrphle8SLOG6UiVmA3UXE+trCv/E3KZhUd9UIleMk=; b=aB9aNEaF0prVA8
	29KwqK6k7oDGwLViZc3s9l9ebrMNW8LoH3Mf6+GNzBBsazP+4KGYsFmGAUGeO4K5f61xHWWpjxGgm
	5lfOS3qiPtkgIYZZ2K4VwzuKOU7Y45XU6aLrhdkPM98n7iY0I3PCF2tv1cuClurWVEMjv4sFjRUY/
	/xKXQ84W/Q/wo5Qu7e1LcN673N16CSrEzkn8RuRADa4IUXkaY2bi5MhT+NOzUueFiGr/ibOeoorAN
	brddfzlm0smB1LLAThe7e/ljbczr9/jjVBefhde1HA+eH/0uZvV6Nqyk59GcyzPW83kykkIo/kw0T
	Qav4YBC9palCdq6C7kLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIWDm-0000000ABNp-2a7Y;
	Tue, 03 Dec 2024 16:57:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIWBJ-0000000AAqy-46jJ;
	Tue, 03 Dec 2024 16:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=mifr4D877RlkCLVgbGm1cw56zl1YNVNgujNjwJ/u/SA=; b=Y8iWdbpwXnuN/IDru4JY/+TVdx
	uJIZpyxM5FNxvmFlGHx58TXeJx2mxXWLk8FVWNhipUpWsJq4uaRfniRlGar92CK0W9N9ZEq7aPFJS
	oFfiislFpZMrAnwbd4zvnAk1YK9fxsEBVX2vs+1sKO4vow83j1et4xDo6JmQx6NXimzXM+tfeW+Lk
	MeVobA3uQ97sORMgKDxMI7gROxF7UDtPgXCiDcMk3prKR7z6jDcyekkx/w1eI1v/mUX0eDExEPsh4
	8GXG5PilaAr5rPZwBPwaiW3ePoNoyb+1ePUXogA47rAD+ewKUHCtpIHjRnxwCyW4yrpfdq7j2dlv2
	PKO/1+Kg==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tIWAt-0003jl-FF; Tue, 03 Dec 2024 17:54:59 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de
Subject: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2 controller
Date: Tue,  3 Dec 2024 17:54:46 +0100
Message-ID: <20241203165450.1501219-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_085526_017275_F5B4D907 
X-CRM114-Status: GOOD (  16.22  )
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

This series adds a bridge and glue driver for the DSI2 controller found
in the rk3588 soc from Rockchip, that is based on a Synopsis IP block.

As the manual states:
The Display Serial Interface 2 (DSI-2) is part of a group of communication
protocols defined by the MIPI Alliance. The MIPI DSI-2 Host Controller is
a digital core that implements all protocol functions defined in the
MIPI DSI-2 Specification.


While the driver structure is very similar to the previous DSI controller,
the programming model of the core is quite different, with a completely
new register set.

Another notable difference is that the phy interface is variable now too
in its width and some other settings.

changes in v3:
- remove double-empty line in bridge part (Neil)
- add bitfield.h to both bridge and glue for FIELD_PROP
  (reported by kernel test robot)
- add Neil's Reviewed-by to bridge part
- add Rob's Reviewed-by to binding

changes in v2:
- clean up includes (Diederik)
- fix Kconfig description (Diederik)
- constant naming (Diederik)
- binding fixes (paths, sorting, labels) (Rob)
- move to use regmap
- drop custom UPDATE macro and use FIELD_PREP instead
- use dev_err instead of DRM_DEV_ERROR

Heiko Stuebner (3):
  drm/bridge/synopsys: Add MIPI DSI2 host controller bridge
  dt-bindings: display: rockchip: Add schema for RK3588 DW DSI2
    controller
  drm/rockchip: Add MIPI DSI2 glue driver for RK3588

 .../rockchip/rockchip,rk3588-mipi-dsi2.yaml   |  119 ++
 drivers/gpu/drm/bridge/synopsys/Kconfig       |    6 +
 drivers/gpu/drm/bridge/synopsys/Makefile      |    1 +
 .../gpu/drm/bridge/synopsys/dw-mipi-dsi2.c    | 1030 +++++++++++++++++
 drivers/gpu/drm/rockchip/Kconfig              |   10 +
 drivers/gpu/drm/rockchip/Makefile             |    1 +
 .../gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c  |  524 +++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    1 +
 include/drm/bridge/dw_mipi_dsi2.h             |   95 ++
 10 files changed, 1789 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml
 create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi2.c
 create mode 100644 drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
 create mode 100644 include/drm/bridge/dw_mipi_dsi2.h

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
