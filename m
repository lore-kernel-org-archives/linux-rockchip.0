Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75E38C982EA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 07:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vss6ppwWkGkl0j8Paxe1GsX5a1buhNVmsN6gor5WlVQ=; b=jAdl19fnbuUI4P
	CBuaG7k5KjcPo3UXw16l10IQjEjiZrybX6llHMHjsmyDc42TzcpOOgQtZztYedGOUlc0oKDpDXXbG
	S8QgtrW2QRQ0cQ0E3AoXFCeL3lU/Ee4is2sutjIN1qW4EkV8RAGO/pYdXk6xcZmNG2Ot/o1XIOHKq
	b99nrvNKlozBjPUw3NCgsJJ7dJ+ba2WdWKqiW+oPcp5hBwQugTYOHB28Tlb47lG6/MuQsF+DIiCy6
	n2+aK5T7Hhf2kFIOciBLnYn3XtN9OqotF+LFSI9ogSsmPymadL3eOkpsxAmqYPB3kBAG43h5Qcm81
	uJjjI935gL/ICtt/vzeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9H9D-00000007MRL-0Y7F;
	Wed, 23 Sep 2026 07:12:07 +0000
Received: from mail-m128234.netease.com ([103.209.128.234])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9H9A-00000007MOf-2TsE;
	Wed, 23 Sep 2026 07:12:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ed74ab35;
	Wed, 23 Sep 2026 15:11:51 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/4] Clean up invalid MMC properties in Rockchip board DTs
Date: Wed, 23 Sep 2026 15:11:34 +0800
Message-Id: <1790147498-47766-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0cd1b430603a4kunm59cf9035478c1f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQktPQlZPGUpLSx4ZQh
	hCSExWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SgFBcDH/dYVsOd4TkLbs7+VgBMgEfeBc+slcgvUMQ8CW3cUXMtP4EWDauB41j8yb44OcJc6p0iegK8fv9FVVkUWJEEJin/BTEuvIQj2949EkWdTjc7PaR9Mi8lbRBuNnsnn98IU/UBO9Kj3/9F1REa1NvH5EtJwVT95ZGRFWVjI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=4nm9aNnFh/KA1p3wHZ396jhnJjifpB4ydWp1PXWb+ho=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_001204_845566_541B1CA6 
X-CRM114-Status: UNSURE (   7.16  )
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


The MMC nodes in both arch/arm64/boot/dts/rockchip and
arch/arm/boot/dts/rockchip contain a few properties that
contradict the card type the node actually describes.



Shawn Lin (4):
  arm64: dts: rockchip: Remove broken-cd on Rock 5 ITX SDIO
  arm64: dts: rockchip: Remove cap-sd-highspeed on Rock Pi S eMMC
  arm64: dts: rockchip: Remove cap-mmc-highspeed from SD-only slots
  ARM: dts: rockchip: Remove cap-mmc-highspeed from Omega4 sdmmc0

 arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi               | 1 -
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts            | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts              | 1 -
 arch/arm64/boot/dts/rockchip/rk3562-evb2-v10.dts             | 1 -
 arch/arm64/boot/dts/rockchip/rk3566-nanopi-r3s.dts           | 1 -
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts       | 1 -
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts           | 1 -
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi          | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5-io.dts        | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts         | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts             | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts            | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts          | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-roc-pc.dts               | 1 -
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts              | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts         | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dts            | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi          | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi    | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-lubancat-5io.dts         | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi           | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts             | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts           | 2 --
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi      | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-vicharak-axon.dts        | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-vicharak-vaaman2.dts     | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-youyeetoo-yy3588.dts     | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts           | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts            | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts       | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts     | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts          | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts             | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts             | 1 -
 35 files changed, 37 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
