Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4DC1C77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Aug 2023 16:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aYUmalUJqtC7YU6nmZ5YVet1aUOU5lXCIPuXZ/Hqpec=; b=0o6a6XELtyWqVO
	gklOeeRS7D5xQVBuokf/lBYEFd6IIfRammSYEkeTF5COm/4Hv6InW1XlldjyChaixru/AejVrarH8
	IB5taSjqP0oqcKho8SgbT6PknNl4fIy6tvj5VrTEIXjV8FnG4yVyPvfyt3Lw45GH8mgGov7UWTqvF
	YmOHYXkw4zoBUcUnEnWWA6b6NhNA/7PdsfBwbeZ13/VagJtoSfqDa7UT4jBbofRbHvvZqk02eoaty
	Qwg896FWNdAoWpCXOkYwZcyessuqbAc9mB6nTjEXs16k3wwjZwpLkXzHEu96IZqtJK1k5v+AzmdJf
	+Nm1azd2hGIX+NlSgVVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qX1zo-009dVU-1A;
	Fri, 18 Aug 2023 16:06:44 +0000
Received: from forward101c.mail.yandex.net ([2a02:6b8:c03:500:1:45:d181:d101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qX1za-009dPc-31;
	Fri, 18 Aug 2023 16:06:32 +0000
Received: from mail-nwsmtp-smtp-production-main-60.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-60.sas.yp-c.yandex.net [IPv6:2a02:6b8:c14:150a:0:640:1aa5:0])
	by forward101c.mail.yandex.net (Yandex) with ESMTP id 1AE346004C;
	Fri, 18 Aug 2023 19:06:20 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-60.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id A6lUUeCWp4Y0-jg6h8aLA;
	Fri, 18 Aug 2023 19:06:18 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail; t=1692374779;
	bh=rnraiTdpoybkBjqWdLC31dG14hD9xpbVadxDMSoBAPU=;
	h=Message-ID:Date:Cc:Subject:To:From;
	b=Sf5T2rKemdu0lYVcL/iI4C6Q+QRnKajhtSwCrnB5Q+q2mo3fieLOFjTqFtIwVR/Tr
	 8Maf+UlDyDmNA/85GHcgysuN/mZMovOEIp9QQNfjllubfWlWrdlurPHmF6davv2VSh
	 U8EthaBJkwyTBrvaDEoduxXkWVIsQsR73p9W7wPY=
Authentication-Results: mail-nwsmtp-smtp-production-main-60.sas.yp-c.yandex.net; dkim=pass header.i=@6tel.net
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
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH v2 0/3] Add Support for Orange Pi 5
Date: Fri, 18 Aug 2023 19:05:48 +0300
Message-ID: <cover.1692372351.git.efectn@6tel.net>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_090631_182502_7BFF6497 
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

Hi,

These series add initial support for Orange Pi 5 and SFC node for RK3588S.

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
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 687 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  12 +
 4 files changed, 705 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
