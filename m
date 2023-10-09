Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03528CD612C
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 19:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/BDg8AXmMgwymSoww5IfpN7Ww/dSywE6gqawJ/5tPiA=; b=NE6p/KbVuIW3V2
	mRTK4eTi4lwJZ8X6suH++p7KSM4qCSZclo9XRSSuPAYpM6esKEDkQhNjnr3dswma/7WT7smqSZQs9
	A/NJWOXX1YEu1MmWMYMSdwZ5FoxrMrYrcTlFym3GY+Nb6HljewkK8YFHj6d1ljQKJOybuR1lGUstm
	nCfSRk1eZSyiHQDjGRMZkvDI00YRjnlmyRLXbwIoCZ9vXl4hwQWAIk5QUE0/Hn47719wL8TnxTPBU
	5gUfQdQkHieu4xy7xusy3sIbnbk4m+sv4p6XmBoXCflWzVRUnj6EUrbCRjtHNnFSsZPVt8zcVkcGw
	TuknvnzJYxieioZ/992A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpvvL-00BUWs-27;
	Mon, 09 Oct 2023 19:28:15 +0000
Received: from forward102a.mail.yandex.net ([2a02:6b8:c0e:500:1:45:d181:d102])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpvvH-00BUUk-1x;
	Mon, 09 Oct 2023 19:28:13 +0000
Received: from mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net [IPv6:2a02:6b8:c1d:3e8e:0:640:2b73:0])
	by forward102a.mail.yandex.net (Yandex) with ESMTP id 7CEA060A61;
	Mon,  9 Oct 2023 22:28:05 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id cRi0fk6DeCg0-72eaB0Mk;
	Mon, 09 Oct 2023 22:28:04 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1696879684; bh=EiHT1C8QrX27oUj5cpV2mvGmOdyC7mSlb+5R7cBzlW4=;
	h=Message-ID:Date:Cc:Subject:To:From;
	b=H/HkkSpB69Y5/mZaLBUdbspIYy+xXWdcOnsWdvU++wcoPV2uXI8Hz3kwO8mQraq37
	 bx+wtDAzZCIalKTfy7xtvQpvUC0XVInwKShuCPiQVMSYMtIgl0AYpXEUI/8jBBlp90
	 bNzV10e7wNaC31DL8LRxuLekx5DlpbEfh/G93QxI=
Authentication-Results: mail-nwsmtp-smtp-production-main-51.vla.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	megi@xff.cz,
	d-gole@ti.com,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH v4 0/3] Add Support for Orange Pi 5
Date: Mon,  9 Oct 2023 22:27:24 +0300
Message-ID: <cover.1696878787.git.efectn@6tel.net>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_122811_868561_4C28E092 
X-CRM114-Status: GOOD (  10.98  )
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

These series add initial support for Orange Pi 5 and SFC node for RK3588S.

Changes in v4:
* Update SFC patch commit description.
* Add Reviewed-by tags from Dhruva Gole <d-gole@ti.com>.

Changes in v3:
* Remove cap-mmc-highspeed property from sdmmc.
* Make vcc_1v1_nldo_s3 an alias of dcdc-reg6 and add regulator-max-microvolt, regulator-min-microvolt properties.
* Make press-threshold-microvolt 1800 for recovery button.
* Remove assigned-clocks from sfc node.
* Drop some properties from sfc node in orangepi5 devicetree.
* Move snps reset properties to rgmii_phy1.

Changes in v2:
* Fix CHECK_DTBS warnings and add dtb to makefile.
* Remove assigned-clock-rates from sfc node and fix wrong interrupts property.
* Remove non-existent adc buttons and add button-recovery instead.
* Remove backlight_1, backlight, vcc12v_dcin, vcc5v0_usbdcin, vcc5v0_usb, combophy_avdd0v85, combophy_avdd1v8, sata0, u2phy0, u2phy0_otg nodes.
* Rename vcc3v3_pcie2x1l2 to vcc3v3_pcie20, vbus5v0_typec to vbus_typec.
* Remove regulator-always-on property from vcc_3v3_sd_s0 and vcc3v3_pcie20.

Muhammed Efe Cetin (3):
  dt-bindings: arm: rockchip: Add Orange Pi 5 board
  arm64: dts: rockchip: Add sfc node to rk3588s
  arm64: dts: rockchip: Add Orange Pi 5

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 673 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  11 +
 4 files changed, 690 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
