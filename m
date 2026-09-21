Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A678FC982E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 21:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PqDe7zdeB3TNmTBUp9DrseXxunaeP+zwbflZWShoseM=; b=MMxM5DferIrSYb
	fAQE8HOuA7TkjEIEcygvDNB4IMirwH0zAO0Iq7IvPeQBgSi+5fJxWXSJ41Qn9A/IlnFdEIfa1YfsJ
	AzOo8BeXUnZZmx3zKjWc2NG6H+/Qlv2oIyFvTthNHZLMhKARA3V8nqU8Ssu8xaer3jMuJR/Ud1sCe
	LplkukyHVMTQBYbPPIwBKIxH/dBaS5/LT7fu/Z6iIu4qk3l6icgnntGsOHqx80I/U1djDAWSMnCNZ
	X/AqLFtwB+KoDLGQB3xDVwcc5SKij6ckrZKOp2LaRHhsmoa2ByW4OlC5ay67+ATeuccH02/YwGAj0
	g16Wiye+uuuZK+UaOxKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8loa-00000003Ull-1t5n;
	Mon, 21 Sep 2026 21:44:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8loY-00000003UlS-410D;
	Mon, 21 Sep 2026 21:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=5d8cZcq00OBRMbOBW9FZW3L7ElhwWqksD0+jNdj5kXA=; b=KEik4rJ9Fc2LXvNjiOjBgiiPNm
	MwQDJsbfP6kL8xmlPQSa7R2GRNTgLyEZoPschwElYjzcjiAvXUx1eewNJ2jbI8uFxbG2+gOgEPCgP
	/hjgckImpNvDt8t1uaEJR4EFYMcjdctjgQuwPWcnwGgZEQDXd6eA4VKyPhamemdaDdNfUL44QOK7P
	6mEVpsbYwWYMDbY7oXzS87XOO8e9zPkMRMuURTvBenrBL79LtpLYrdy0g34CSeYvNil4kzaf5I/33
	mcpzzEuSTwWF+nvZVNman88SFTbAIV+pIdeVnLBOvvinzXkze0uKNjODkuFsxzvoFwkJCF+7mG+9l
	KM1ovY6Q==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8loV-00000005eDk-2297;
	Mon, 21 Sep 2026 21:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=5d8cZcq00OBRMbOBW9FZW3L7ElhwWqksD0+jNdj5kXA=; b=gkkASxzzZBHosD6yqAXh6sYMMZ
	Idb8SH7+3w4ayXMngQSuX9OU1HO4snKVv5+8fJW9oYhXCcJSF/U30f/JMyt491M99/GNQGMi/hjHh
	dH5UTLnnCK5fEaDhzO5b/Y8LADjcOpGvlQY64VKUHhANuQoKMub4OphyFbs4BdYmfdsolCSKEt/Wm
	QJyQkjIvL8Gxz7keP9OVqiPJkpJUMfGg5Q/7m/Vp7ni4FGuBidcqqGbUrhBLSnBp2HIghiH9Ou/CK
	wR4llBydAXU3O8X/qcPWHx+TqSEjmEeqjs/1fN/vL+7bCEcC7jbMHvpylDPpYshhgsIBFvFJNhgi8
	QVXFdg/Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 7.4 #1
Date: Mon, 21 Sep 2026 23:44:31 +0200
Message-ID: <1940582.atdPhlSkOF@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_224439_636721_2A46CA28 
X-CRM114-Status: GOOD (  10.58  )
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

Hi soc maintainers,

please find below some initial Rockchip DT64 changes for the merge-window
for 7.4 .


Please pull.
Thanks
Heiko


The following changes since commit cee9395acd8043be0644b25c34bfa86623f2b935:

  Linux 7.3-rc1 (2026-08-30 13:34:40 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.4-rockchip-dts64-1

for you to fetch changes up to 7aa165b62ccaf340da22c517074e7c6853db55cd:

  arm64: dts: rockchip: support CAN1-CAN2-UART4 adapter for RK3588 Jaguar (2026-09-02 13:07:56 +0200)

----------------------------------------------------------------
New board: LubanCat 5IO

Support for the CAN controllers on RK3588 and enabling them on some
boards.

And a number of board-specific smaller changes/fixes.

----------------------------------------------------------------
Amin Gattout (1):
      arm64: dts: rockchip: correct rk3576 SDGMAC GRF reg size

Chris Morgan (1):
      arm64: dts: rockchip: Correct Device Orientation on Gameforce Ace

Cunhao Lu (3):
      arm64: dts: rockchip: add CAN-FD nodes for RK3588
      dt-bindings: arm: rockchip: Add LubanCat 5IO board
      arm64: dts: rockchip: Add LubanCat 5IO board

Diederik de Haas (7):
      arm64: dts: rockchip: Remove unneeded vcc_3v3_pcie20 on NanoPC-T6
      arm64: dts: rockchip: Fix PCIe 2 pinctrl names and sorting on NanoPC-T6
      arm64: dts: rockchip: Fix hym8563 pinctrl name and sorting on NanoPC-T6
      arm64: dts: rockchip: Don't pull up rtc int pin on NanoPC-T6
      arm64: dts: rockchip: Sort usb nodes on NanoPC-T6
      arm64: dts: rockchip: Improve sound config on NanoPC-T6
      arm64: dts: rockchip: Drop duplicate USB nodes on NanoPC-T6 LTS

Heiko Stuebner (1):
      arm64: dts: rockchip: Enable CAN controller on RK3588-Tiger-Haikou

Jiaxing Hu (1):
      arm64: dts: rockchip: fix an error and a typo in the CM5-IO comment

Quentin Schulz (2):
      arm64: dts: rockchip: enable CAN0 on RK3588 Jaguar
      arm64: dts: rockchip: support CAN1-CAN2-UART4 adapter for RK3588 Jaguar

Rudi Heitbaum (1):
      arm64: dts: rockchip: add i2c2 scl timing to rk3399pro-vmarc-som

 .../devicetree/bindings/arm/rockchip.yaml          |    7 +
 arch/arm64/boot/dts/rockchip/Makefile              |    6 +
 .../boot/dts/rockchip/rk3399pro-vmarc-som.dtsi     |    2 +
 .../boot/dts/rockchip/rk3576-armsom-cm5-io.dts     |    4 +-
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           |    2 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |   39 +
 .../rockchip/rk3588-jaguar-can1-can2-uart4.dtso    |   26 +
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     |   16 +
 .../boot/dts/rockchip/rk3588-lubancat-5-btb.dtsi   |  534 ++++++++++
 .../boot/dts/rockchip/rk3588-lubancat-5io.dts      | 1032 ++++++++++++++++++++
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |   17 -
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi |  165 ++--
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts      |    4 +
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi     |    5 +
 .../boot/dts/rockchip/rk3588s-gameforce-ace.dts    |    7 +-
 15 files changed, 1748 insertions(+), 118 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-jaguar-can1-can2-uart4.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-lubancat-5-btb.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-lubancat-5io.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
