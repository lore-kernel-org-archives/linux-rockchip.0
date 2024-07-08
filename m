Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87239C3DA42
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 15:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FQ2HHa3xUZU7DXeyhO90aONoivmy7uiYgNA8YbkyBCY=; b=Eh0/0IaJVczRBj
	cfBLJXmSM6muRDST/iTRe9LPV46Ak+Ttc82c8q1dDngeUIfzcHpby4/rUD/x/lJKFUta7mrROV6n2
	3M4Xiypq+WmWDcwFBYFtbCTtbno0cRZGEVl1woyQty6pfJEQJr4y5I8VEOBR6eitTYwgPGnIBtRZ4
	0JPMSvaYf2CWOpFZIUeC+jZZq6B/K1qAjzem+99QwWQfCYd52FbadYqQGmxkaaLc9fDXcJ0boye7o
	jGumQSMJanKXmv0pVxViAKVREWAQArLOx8+u0Gob3YJjfKoJmEC36k/LeyOBRiIGHzGOWyBs8EdW8
	PvBAAMwPIBGCbV2Wum6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQqKx-00000004EFU-0ywr;
	Mon, 08 Jul 2024 15:31:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQqKv-00000004EE9-0I43;
	Mon, 08 Jul 2024 15:31:30 +0000
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sQqKo-00020I-3P; Mon, 08 Jul 2024 17:31:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.11 #2
Date: Mon, 08 Jul 2024 17:31:21 +0200
Message-ID: <1998182.CrzyxZ31qj@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_083129_145976_9148B4F0 
X-CRM114-Status: GOOD (  13.80  )
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

Hi Arnd, Kevin, Olof,

please find below and in a subsequent pull-request
some more Rockchip changes for for 6.11 .

One new (and exciting) board and some more changes.

If it's not too late yet, please pull!

Thanks
Heiko


The following changes since commit 9417909e253ffa57f014822a79cca9b1f2b25492:

  arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro (2024-06-28 14:02:39 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.11-rockchip-dts64-2

for you to fetch changes up to 31390eb8ffbf2b6be7d789708ec08b635d7a3eb8:

  arm64: dts: rockchip: add ROCK 5 ITX board (2024-07-08 16:25:35 +0200)

----------------------------------------------------------------
One new board, the pretty interesting Rock 5 ITX, some improvements
for the Lunzn Fastrhino R6xS boards, allowing dma on uarts connected
to bluetooth modules and an update for the gpu operating points on
rk356x. As well as some minor fixes for missing power-dmains and
ethernet phy binding adherence.

----------------------------------------------------------------
Chukun Pan (6):
      arm64: dts: rockchip: fix regulator name for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: fix usb regulator for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: fix pmu_io supply for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: remove unused usb2 nodes for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: disable display subsystem for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: fixes PHY reset for Lunzn Fastrhino R68S

Cristian Ciocaltea (1):
      arm64: dts: rockchip: Add missing power-domains for rk356x vop_mmu

Diederik de Haas (3):
      arm64: dts: rockchip: Add dma-names to uart1 on quartz64-b
      arm64: dts: rockchip: Add avdd supplies to hdmi on rock64
      arm64: dts: rockchip: Add dma-names to uart1 on Pine64 rk3566 devices

Dragan Simic (2):
      arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC dtsi
      arm64: dts: rockchip: Update GPU OPP voltages in RK356x SoC dtsi

Heiko Stuebner (2):
      dt-bindings: arm: rockchip: Add ROCK 5 ITX board
      arm64: dts: rockchip: add ROCK 5 ITX board

Marek Vasut (1):
      arm64: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on all RK3588 boards

 .../devicetree/bindings/arm/rockchip.yaml          |    5 +
 arch/arm64/boot/dts/rockchip/Makefile              |    1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |    2 +
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  |    1 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts |    1 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts |    1 +
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi  |    1 +
 .../boot/dts/rockchip/rk3568-fastrhino-r66s.dts    |    4 +
 .../boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi   |   48 +-
 .../boot/dts/rockchip/rk3568-fastrhino-r68s.dts    |   16 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |   13 +-
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts   |    6 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 1177 ++++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi |    3 +-
 14 files changed, 1227 insertions(+), 52 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
