Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1618B10706F2
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Mar 2026 18:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FcvSPFyVKpgGAtPB/fh4gb6fvWaHMVnCpf+N18Ja7Fs=; b=FlsLbxLTWKFq4z
	BTEg8ITPBBxQVZi/fe/Vsq1/ElNB29fG8n8rubxEOP48XPfKxodl0GoZu6qz1N6qqnSJCvI+ODCU/
	OExbTkRHqv+KJdCWMPeRehVzHgbdZJyk7AW1CBFS4NsX9vbnnVKgmEMkUB3QfslbxNckV+YsOedL0
	aNbq/MgLMxpYThj5sF3+1pqQrKTsYCjreEAvgO/pEeduWf9zA85RoAb/GgM5oFEPWtQrptMIuDQe4
	1c3un8dtDgVoJpkIGI8TtuYXPedFwxQorSY0L1mjDRdjcLb9wc95PpnNqIZSK/AElg0cRTzNHyluF
	y13zQ6j3tPJri107eWDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1TzW-000000025NO-3GKm;
	Sat, 14 Mar 2026 18:45:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1TzU-000000025Mv-2DlM;
	Sat, 14 Mar 2026 18:45:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=kE6rooa9lpNkvv+MRXc7iLpUu314ODoCUYLjOHYbKho=; b=Jj9xgp1gGQy3wARyMmNTlprcun
	k6xqBSey9NBlP2aQ06vcaBmY1CWnZuXhMRA+qtsKB95C+KvME0ASEnOgk3IekAWWJtoJu9nx0rSM+
	vw7NpNUsi5+2FiKvvDFGnwioEu9kDsYFB0jykcyt95AjShSbl7g0/Gj9nfYTlY0At4f79uVy3/GJ4
	vSfGsJd6VGFJfzB/NSnJS+BsE557O8omCzTAayx6p6LsTVmdXQb6rA9deEKSjviTmN4bpieve2XdY
	QDknAC0EymnX6y9lyoA48jchIeiR8Jd+HVfcq9TBOoSa0/nHg57umw4e6G6wY5GoREh6tuUho/CS3
	jvvcQ5xQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 7.1 #1
Date: Sat, 14 Mar 2026 19:45:34 +0100
Message-ID: <13966995.uLZWGnKmhe@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260314_114536_572587_6963107B 
X-CRM114-Status: GOOD (  12.90  )
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

please find below Rockchip DT changes for the merge-window for 7.1 .

So far only arm64 changes :-)


Please pull.
Thanks
Heiko


The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:

  Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.1-rockchip-dts64-1

for you to fetch changes up to d7787a77cf8b129304f590233032556dec10dfc6:

  arm64: dts: rockchip: enable vicap dvp on wolfvision pf5 io expander (2026-03-13 21:39:34 +0100)

----------------------------------------------------------------
New boards: RK3576-EVB2, OneThing Edge Cube
New soc-peripherals: DisplayPort on RK3576
New overlays: TSx33 device-revisions, HD702E display/touchscreen on
NanoPC-T4

And as always a number of per-board changes for added or enabled
peripherals, added supplies, things moved to more fitting positions.

----------------------------------------------------------------
Alexey Charkov (1):
      arm64: dts: rockchip: Add analog audio switches to RK3576 EVB1

Andy Yan (1):
      arm64: dts: rockchip: Add DisplayPort dt node for rk3576

Chaoyi Chen (4):
      dt-bindings: arm: rockchip: Add rk3576 evb2 board
      arm64: dts: rockchip: Add rk3576 evb2 board
      arm64: dts: rockchip: Fix sdmmc pwren pinctrl for rk3576-evb2
      arm64: dts: rockchip: Enable displayport for rk3576 evb2

Chris Morgan (1):
      arm64: dts: rockchip: add Awinic aw87391 amplifiers for Anbernic RG-DS

Heiko Stuebner (8):
      arm64: dts: rockchip: Add port subnodes to RK356x SATA controllers
      arm64: dts: rockchip: add overlay for qnap-ts433 device revision
      arm64: dts: rockchip: add overlay for qnap-ts233 device revision
      arm64: dts: rockchip: add overlay for qnap-ts133 device revision
      arm64: dts: rockchip: use gated-fixed-clock for pcie-refclk on rk3588-jaguar
      arm64: dts: rockchip: use gated-fixed-clock for pcie-refclk on rk3588-tiger
      arm64: dts: rockchip: add pinctrl for clk-generator GPIO on rk3588-tiger
      arm64: dts: rockchip: Make Jaguar PCIe-refclk pin use pull-up config

Hugh Cole-Baker (1):
      arm64: dts: rockchip: add pwm-fan for NanoPC-T6

Jun Yan (3):
      dt-bindings: vendor-prefixes: Add Shenzhen OneThing Technologies Co., Ltd.
      dt-bindings: arm: rockchip: Add OneThing Edge Cube series
      arm64: dts: rockchip: Add OneThing Edge Cube series

Michael Riesch (1):
      arm64: dts: rockchip: enable vicap dvp on wolfvision pf5 io expander

Robin Murphy (4):
      arm64: dts: rockchip: Move RK3399 eDP pinctrl to boards
      arm64: dts: rockchip: Add overlay for FriendlyElec HD702E
      arm64: dts: rockchip: Clean up NanoPi-R2S Plus gmac2io
      arm64: dts: rockchip: Describe HDMI supplies for nanopi4 boards

Samuel Holland (2):
      arm64: dts: rockchip: Add battery and charger on rk3566-pinenote
      arm64: dts: rockchip: Enable GPU on rk3566-pinenote

Shawn Lin (2):
      arm64: dts: rockchip: add node name for RK3588_PD_RKVDEC0/1 and RK3588_PD_VENC0/1
      arm64: dts: rockchip: Add supply for pd_rkvdec and pd_venc on rk3388-evbs

 .../devicetree/bindings/arm/rockchip.yaml          |    9 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 arch/arm64/boot/dts/rockchip/Makefile              |   22 +
 .../boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts   |   17 -
 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi      |    3 +-
 .../boot/dts/rockchip/rk3399-gru-chromebook.dtsi   |    2 +
 .../boot/dts/rockchip/rk3399-nanopc-t4-hd702e.dtso |   96 ++
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |    2 +
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |    2 -
 .../dts/rockchip/rk3399-sapphire-excavator.dts     |    2 +
 .../dts/rockchip/rk3566-onething-edge-cube.dts     |  342 +++++++
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  |   31 +
 .../dts/rockchip/rk3566-qnap-ts133-pcb-13.dtso     |   64 ++
 .../boot/dts/rockchip/rk3568-anbernic-rg-ds.dts    |   44 +-
 .../dts/rockchip/rk3568-qnap-ts233-pcb-12-11.dtso  |   93 ++
 .../dts/rockchip/rk3568-qnap-ts433-pcb-12-10.dtso  |  151 +++
 .../rk3568-wolfvision-pf5-io-expander.dtso         |   20 +
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi      |   27 +-
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts   |    1 +
 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts   | 1071 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           |   28 +
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |    8 +-
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |   16 +
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     |   21 +-
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi |   39 +
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi     |   27 +-
 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts  |   16 +
 27 files changed, 2093 insertions(+), 63 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4-hd702e.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-edge-cube.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-qnap-ts133-pcb-13.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts233-pcb-12-11.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433-pcb-12-10.dtso
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-evb2-v10.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
