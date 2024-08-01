Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD2F8C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 02:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iNP0lLMAXYRRN8kc9DepWJsS2PStzEexw+rnHJ3ZD4I=; b=GJfQQBgnSJAzf/
	NenCc3qYhau2GHDMYkVbWBJiIh4VJS4u99FSm9AoYaXTdyjJ25suHKvCQRWK8/GtWSv5LNN9D/AVQ
	z5hlVvPUm9HTgro+dzz9lAk64PziGG0Lc+mREluhmntce4WdbogN4TxBDMutOdXKp6ql5yd2py6H1
	bxGO7aull0YO0AYOaW8ipThdxJ4Y+nomEue7uiwqrFpCgzxPgjfNhvNdE+OJfzAn7MAkz/10ijcxK
	Aa98OR7Y2y5lcVG0zOVPCEiynqlVKECj8o+9hy5l+xf9gj5JrHa/Sc7eC1PNMLU+hsBJg90905qqE
	IQQIAww/MUmXu4YwCR6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZLYU-00000003SKK-18Un;
	Thu, 01 Aug 2024 02:28:38 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZLWN-00000003RQd-2oRp;
	Thu, 01 Aug 2024 02:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722479182;
	bh=4+/1vCHzYGuuIZrE8fcrAyUNAlf8hKtpZPh/Qde0tTI=;
	h=From:Subject:Date:To:Cc:From;
	b=Pua+Ax2DxVqTVrir7AFQYxwvtLC8My94SMow8knXwnfFxN0cygVduwKyrekvkPWoZ
	 di31QmR2Ef9jp5eaPydXrgzrCund1HDEDqeZw90LXVRr7eBwEFFBdNSNhXwv07+W6+
	 cunck5o8KX3zQsYxKrEk+QRBDtf5ZUCo5ck1j2a9SNfBFKu6kBOyfpVlQp1c5tCRin
	 2P+aXfvSbCLVstE10YuwcjpmEAqqTtfdKCjBItf2zzdijPCqpSKHQZwXBB5XAGwj1p
	 T/vPLkYxs9maNXgAcy65s8/BBukhKy3Vwgvm0GAzcaM9SV8pdlnd9wYAdA6fnHqjjE
	 GeMbBw+8w39MQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1ACF237812FA;
	Thu,  1 Aug 2024 02:26:22 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/3] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
Date: Thu, 01 Aug 2024 05:25:51 +0300
Message-Id: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC/yqmYC/42NTQ6CMBCFr0Jm7Zh2yl9ceQ/Doi2tNAIlUyQaw
 t2tnsDl917e93ZIjoNLcCl2YLeFFOKcgU4F2EHPd4ehzwwkqBS1kGhK5Ieq2hYNhz73zyWt7PS
 EmhqjvZem9RbyfmHnw+vnvnWZh5DWyO/f1Sa/6T/WTaJAX5NQTaVIkbnaOI7aRNZnGyfojuP4A
 OcpqAnGAAAA
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_192627_912505_5020CFBA 
X-CRM114-Status: GOOD (  19.47  )
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

The Rockchip RK3588 SoC family integrates the Synopsys DesignWare HDMI
2.1 Quad-Pixel (QP) TX controller [4], which is a new IP block, quite
different from those used in the previous generations of Rockchip SoCs.

This is the last component that needs to be supported in order to enable
the HDMI output functionality on the RK3588 based SBCs, such as the
RADXA Rock 5B. The other components are the Video Output Processor
(VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for which basic
support has been already made available via [1] and [2], respectively.

Please note this is a reworked version of the original series, which
relied on a commonized dw-hdmi approach.  Since the general consensus
was to handle it as an entirely new IP, I dropped all patches related to
the old dw-hdmi and Rockchip glue code - a few of them might still make
sense as general improvements and will be submitted separately.

Additionally, as suggested by Neil, I've sent the reworked bridge driver
as a separate patchset [4], hence this series handles now just the new
Rockchip QP platform driver.

It's worth mentioning the HDMI output support is currently limited to
RGB output up to 4K@60Hz, without audio, CEC or any of the HDMI 2.1
specific features.  Moreover, the VOP2 driver is not able to properly
handle all display modes supported by the connected screens, e.g. it
doesn't cope with non-integer refresh rates.

A possible workaround consists of enabling the display controller to
make use of the clock provided by the HDMI PHY PLL. This is still work
in progress and will be submitted later, as well as the required DTS
updates.

To facilitate testing and experimentation, all HDMI output related
patches, including those part of this series, as well as the bridge
driver, are available at [3].

So far I could only verify this on the RADXA Rock 5B board.

Thanks,
Cristian

[1]: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
[2]: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
[3]: https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-hdmi-bridge-v6.11-rc1
[4]: https://lore.kernel.org/lkml/20240801-dw-hdmi-qp-tx-v1-0-148f542de5fd@collabora.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v2:
- Reworked the glue code for RK3588 into a new Rockchip platform driver
- Moved bridge driver patches to a separate series [4]
- Dropped all the patches touching to the old dw-hdmi and RK platform
  drivers
- Added connector creation to ensure the HDMI QP bridge driver does only
  support DRM_BRIDGE_ATTACH_NO_CONNECTOR
- Link to v1: https://lore.kernel.org/r/20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com

---
Cristian Ciocaltea (3):
      dt-bindings: display: rockchip: Add schema for RK3588 HDMI TX Controller
      drm/rockchip: Explicitly include bits header
      drm/rockchip: Add basic RK3588 HDMI output support

 .../display/rockchip/rockchip,dw-hdmi-qp.yaml      | 188 +++++++++
 drivers/gpu/drm/rockchip/Kconfig                   |   8 +
 drivers/gpu/drm/rockchip/Makefile                  |   1 +
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 430 +++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |   4 +-
 6 files changed, 632 insertions(+), 1 deletion(-)
---
base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
change-id: 20240601-b4-rk3588-bridge-upstream-a27baff1b8fc


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
