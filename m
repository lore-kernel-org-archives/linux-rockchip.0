Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAE48D65553
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Nov 2024 20:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HRsOr7Xo2KI8U33QvzEYGEZQapwvm2uhZ+miT/Q+xdQ=; b=S3HkxhakppJ/Ee
	kIGq+skzlUK2fnjbqOXJIChsceXNDMqpXteN6ayWkUau1ODHVPSHQqwNnulDoUkpeMV3Rqmm90lJJ
	NhFLeCEtq/8/pvhACcacjhAS2Blt/BCL9YycXG2VunJg8RfMsJvkmH3MUPjlpmXG8clAQt2SCi/dy
	m6Abh4tj9DN0R+ZQdeQq88TmJAvOUu6MPKTsvy3vPiXN+p9bkwW2fDxlF9HC4v9D+QwxkXMklDKhS
	rwdadUwX1m0xB7cVBWW9314fk9etoN42lFPgc7CmN5MBdcD7NL7+Qva7DN64ji0IAJq7Em9X3VSvg
	zwh7Ztle6nbFJtsxX7IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tG1wa-0000000BcfG-3ppl;
	Tue, 26 Nov 2024 20:13:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tG1vb-0000000BcN5-0QBA;
	Tue, 26 Nov 2024 20:12:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=i8SqavSewzD1TGIVT6OBwxDtJQAOeVswFTfEkI2KfEQ=; b=RR9BpE9dyzlXZVn5bRCplQs7Pu
	I9MpuX+zaOn3ksqFuh4qfwx37eBth1T5mnQW9Gb687ZaDhFKM5goEldB/TxppYhCAw6w90UnPhPoV
	HO+qhIVaBwyeMeuYgKp2UjVtIXARd9xx2RN5K8raPSeQs659Nha4xBt44791XwDCV/GDfWG8w25cl
	fi8ZGoT5gXY9bmlKMFbdeAMSI1kp8BAzUe5/rU1G81/13yRD86bm6xUDu+6naGC21NB5Dw0PQLGUZ
	Z+ANj4Ju2eQRzfBppEpi0Dy2iS7+plve2HupOPafDlT4N3Hh+5XFk7xEUqQ8WB1dUOkHERRgozHch
	TUMv9u6A==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tG1ux-0002yD-VN; Tue, 26 Nov 2024 21:12:16 +0100
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
Subject: [PATCH v2 0/3] drm/rockchip: Add driver for the new DSI2 controller
Date: Tue, 26 Nov 2024 21:12:10 +0100
Message-ID: <20241126201213.522753-1-heiko@sntech.de>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_121255_133324_5424FA66 
X-CRM114-Status: GOOD (  15.20  )
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
 .../gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c  |  523 +++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    1 +
 include/drm/bridge/dw_mipi_dsi2.h             |   95 ++
 10 files changed, 1788 insertions(+)
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
