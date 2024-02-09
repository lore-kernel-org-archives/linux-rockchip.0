Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5086AC48297
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Feb 2024 18:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kspZnkb7jRv/5+7or/gPANWn5BJmOssBk0f/VF2KdsM=; b=bXLbGvc4qe5RSZ
	YyYLyrUH3WPOzNiw3dUzIflLjP2hg9okqYIZzdWQYg/gVlfxgqTFmUnIeira9L3z61XzxqASZm+jX
	8nJlNORD/ImvSSkBRsZfxXTcrIOtFGZCaxrS0gf15j7vHOnbpnEb0yht350FuFAXnI4/34wD0+Gw5
	KCSyNd0rDxlOhq7sK/q5So1WbCewVTc5fmt6VdL7guZ94nwx+B1gJftnmJESipXO9ORVNyHhzpJwo
	rfkYClaFqLCkeDbWBLMZOifa9h2myTgjwKKYuG24DBD2UF8wMswYHYdUPC9kTDcs4RB7BpgSFyQZd
	f8T+6ibwy2pIvpb8MTCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVST-00000000Dkr-1IWs;
	Fri, 09 Feb 2024 18:18:41 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVSO-00000000Dh6-3rzy;
	Fri, 09 Feb 2024 18:18:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707502713;
	bh=M3InQbAecp+TY2BOUEnYIx3BHcZ4RcX54rgYLrXzsfM=;
	h=From:To:Cc:Subject:Date:From;
	b=MKszrpYtlVYY7v/zzvGY01LIu8VvHC2+2EXYhAo74BBptZ86N15u50WPBoWZNDTO+
	 2yBi7igqi7z9znLiTLVlql669AaYtIhIRL7C2ejItuHh6+92oWsBIxq0W6BeO7B0hA
	 HBasMi+ili1PESExAdszGIzqb+F3v/6p95WJ5EY8eCJXUhXnPwk6FwMpNEmFdudiaU
	 upIhEPGv5UM3XMMQ8VKrjSv1S/LeH9eWP/05kAzX7ebjlYY/5l1MXAMFP117np/Z3N
	 u9JHH+XJsJSBoYJYnnOhipnvSRkiqAs739WVRVMhpfaAXEtuur3Mi8gyFl5Kl5taDE
	 79Wsi93onWF1g==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id ECB7F37813FD;
	Fri,  9 Feb 2024 18:18:32 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8CC2B4800CE; Fri,  9 Feb 2024 19:18:32 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 00/10] RK3588 USBDP support
Date: Fri,  9 Feb 2024 19:17:16 +0100
Message-ID: <20240209181831.104687-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_101837_296518_730277CE 
X-CRM114-Status: GOOD (  15.27  )
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

Hi,

This adds Rockchip RK3588 USBDP PHY support, which is used for two of the three
USB3 controllers in the RK3588 (the third one uses a different PHY, which is
already supported). The USBDP PHY offers USB3 dual-role and DisplayPort. The
driver and bindings being upstreamed contains the DP parts, but only USB3 has
been tested by me (upstream does not yet have a DRM DP bridge driver for this
platform).

What has been tested by me:
 - USB3 Type A ports on Rock 5A, Rock 5B, EVB1
 - USB Type C port on EVB1 in Host mode

I did not yet include a patch to enable the Type-C from the Rock 5B, since that
requires enabling proper support for the fusb302. Since the system is usually
supplied via USB-C and without any battery backup, this easily results in
system reset when the power-delivery negotiation happens. As this issue is
independent from the USBDP PHY, I skipped enabling that port on Rock 5B for
now.

You can find a branch with these patches here:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-usbdp

The binding updates introduces one DT warning, for vo1 grf, which is already
upstream and does not describe its clock. Fixing that requires this series,
which adds the necessary clock ID for vo1:

https://lore.kernel.org/linux-rockchip/20240126182919.48402-1-sebastian.reichel@collabora.com/T/#mbc27d87270f7f182fb85bf1ceaf03b902688cbb8

-- Sebastian

Sebastian Reichel (10):
  dt-bindings: soc: rockchip: add clock to RK3588 VO grf
  dt-bindings: soc: rockchip: add rk3588 USB3 syscon
  dt-bindings: phy: add rockchip usbdp combo phy document
  phy: rockchip: add usbdp combo phy driver
  arm64: defconfig: enable Rockchip Samsung USBDP PHY
  arm64: dts: rockchip: add USBDP phys on rk3588
  arm64: dts: rockchip: add USB3 DRD controllers on rk3588
  arm64: dts: rockchip: add USB3 to rk3588-evb1
  arm64: dts: rockchip: add upper USB3 port to rock-5a
  arm64: dts: rockchip: add lower USB3 port to rock-5b

 .../bindings/phy/phy-rockchip-usbdp.yaml      |  166 ++
 .../devicetree/bindings/soc/rockchip/grf.yaml |   21 +
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  151 ++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   21 +
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      |   82 +
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   22 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |   95 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/phy/rockchip/Kconfig                  |   12 +
 drivers/phy/rockchip/Makefile                 |    1 +
 drivers/phy/rockchip/phy-rockchip-usbdp.c     | 1641 +++++++++++++++++
 11 files changed, 2213 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-usbdp.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
