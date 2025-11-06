Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 485B6CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 02:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BJCGolEm470DCXzvf3DPgdnpGSO6atWKcMBRDO7po8o=; b=pnV6I44vACkayZ
	S/BXGGxu10aB/GXePOYaSFQF6Umj9kndyChJPJn/Krnt34iRVDC2q+A3oTrnVnaLvDwh86gAwwf6Y
	tQWKZtjYNSvFvkJVJfDpES1kEM8XkRjOv8RZLtAZKMAOiwschS3FyL9C+lW6pmA4ym2Soo1n3jgbr
	dFJnwhahKhi0AWr8ASln63BUlZ/2oeu/ziT3sMs3y6fkRt7yFK+6rwCRMWrUj49gJzYpl5yKNfm5d
	d+AXqE0rgBAaQoBzttT2DnYcLSKPlD53VUGtRYYKAlYCMZG3CtFe1kKhEqA6UHFv+sI8cboXLvY/Q
	jlB7PjV42vMOn5rONJfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGpPD-0000000EjHt-27mq;
	Thu, 06 Nov 2025 02:07:19 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGpP9-0000000EjGZ-341e;
	Thu, 06 Nov 2025 02:07:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1762394802;
	bh=VVl1Qjus8u0aUj8+6Bj8jBGW/g0TFXzsB/9E8b+TxZM=;
	h=From:To:Subject:Date:Message-Id;
	b=Jz/mSUG81JzjgYqtmrsoGxedEs9qCq/TV7Sc5FRXH49aYam1s9LeQZBgIZnnOflhh
	 qPseJK8+qg1raZmWNV14RTkp5WXetzfinEneBxA7fTGOmK/nbrehIaVYAcDeSaWF5p
	 PibFmGR/Ox+jwiA71qcpDSQ6Gjemx2ntXzwcJ+Eo=
X-QQ-mid: esmtpgz15t1762394799t86ae74a2
X-QQ-Originating-IP: yhNbobLVwNbY5V1jr9iOK5ifgRi7NiwMV1ECYKdCN10=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 10:06:37 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10766765311845532809
From: Chaoyi Chen <kernel@airkyi.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 0/9] drm/rockchip: Introduce Rockchip RK3506 VOP
Date: Thu,  6 Nov 2025 10:06:23 +0800
Message-Id: <20251106020632.92-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MaVe9I53f0M32r5fsRWj//W6nWaUspkMSaTtRW4c2N6Mdvr0+1ipAgD5
	JUlOS2AFXv2TT5iyKkQofrVkr4B6nVpxXL6F80oenAcFfNT6ZYS9VfFPbTdzHbAPbxlLTFr
	u3pn3DnIXAQoG4ecnn0xqL8Eh6kEScNs48pmFXkPacrGEJDKHpi+yv6oU/F8yyzEEWzdHNy
	rUySAbLVGX2lD3J0qtmrKEVQOUKGgisz6cKeY0iB1erxFWa4hODg3J337bFzjADIJX6RiqL
	IkssFhteJj/+JSxld1aapay3kY40f47vb0fRxFpqi3pYxrtg0wVEodRlDsNihgCmcYJKvDA
	IiYCt1v6RpYoQOUB5q9j/A7Xkn+LrNzQQ1KcflGdcH1xIXZ8bAdkxXuJFR90SAGUGvcNBAD
	2nbQf6qZtfHKSbEzEaj4wCg0QlTTm42p5wBkyjgYS6LMolsYav3Q6MYQ8LE/co0LVlFAuL4
	nMVz4KyQwBPKb+dyswWvp/GHlbdYXKo/lwMUvMmjEYbppktIBc6r3UDUW2qh87xsRWzvVmZ
	yrc0RIuEl6MP3dW9bjbSqcRrE4h/u/rOZRFDHEVxAWA2xioLfemSHgun52czZWwv+uKnFzx
	r41bHUFf7TXnn9HsZqNd7C+9n8wtZNa90DhWZpYUOYwCt9L9KTlzg5nzHFxf48tI0oHn3S6
	1K3P0HnVJeCZbZU2aAkEO6GNqUNjXIfvZ2bbkbpvC4qY773Ev1nh680PRo6ktxJ7sZ9s+w7
	Dak34WJKt3Pa7zrKnNozVPoF8dqH7TqtgopT7Y8/mKkd3w9n3uTcDl587GR1yorc1+KF1p5
	cVwFulLw8bk3SRXT2UktX9IVEeM6WLnWx9pAeS1Y1h0h+KDMaEpHiSQ1MspzojlC80Rkhxe
	MAnG3q57lQjueLxu/ciFBE7zyVkCiM6Cu1pY2NoKvPtQnkUhuMW8VdzmsDi6bfB+7Trm0h9
	R1rNpsQQ7Z51SMEVk8NCXUlrnT2Ylt9ZA5lQCCflYxPW4mg==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_180716_286869_807557A2 
X-CRM114-Status: UNSURE (   8.24  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

The VOP on rk3506:
- Support 2 lane MIPI DSI interface, 1.5Gbps/lane.
- Support RGB interface.
- Max output resolution is 1280x1280@60fps.
- WIN1 layer support RGB888/ARGB8888/RGB565.
- Support Gamma LUT.

This series adds basic support for rk3506 VOP. And tested on the
rk3506g-evb1-v10 board with a Wanchanglong W552946AAA DSI panel.

Chaoyi Chen (9):
  dt-bindings: ili9881c: Add compatible string for Wanchanglong
    w552946aaa
  dt-bindings: phy: rockchip-inno-dsidphy: Add compatible for rk3506
  dt-bindings: display: rockchip,dw-mipi-dsi: Add compatible for rk3506
  dt-bindings: display: rockchip,vop: Add compatible for rk3506
  drm/panel: ilitek-ili9881d: Add support for Wanchanglong W552946AAA
    panel
  phy: rockchip: inno-dsidphy: Add support for rk3506
  drm/rockchip: dsi: Add support for rk3506
  drm/rockchip: Drop ROCKCHIP_IOMMU depend for DRM_ROCKCHIP
  drm/rockchip: vop: Add support for rk3506

 .../display/panel/ilitek,ili9881c.yaml        |   1 +
 .../rockchip/rockchip,dw-mipi-dsi.yaml        |   1 +
 .../display/rockchip/rockchip-vop.yaml        |   1 +
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 225 ++++++++++++++++++
 drivers/gpu/drm/rockchip/Kconfig              |   3 +-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  20 ++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |  57 +++++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h   |  14 ++
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  |  91 ++++++-
 10 files changed, 410 insertions(+), 4 deletions(-)

-- 
2.51.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
