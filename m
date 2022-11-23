Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB671C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 13:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LNzbGPt6eqIHBIucmZ00SxahO7+UmaiNc9XrIrXDaTw=; b=t8YzVNdpHBWJb0
	94FFwrBlGpXLcs2OCpqNPZSPOVY61kAMdymdIdRL1TbqAGpk+nzgwxiYs9VuHzbBAYYf5tp9Ghe+t
	Xc5TZRqC0Qp3fxoeVryG7bFFcwy7nvNV1VOM8KdjZ9IlsXfiSg5CkIPfSNR4aXpwjXORhX4h3zAcB
	IhhGnM1SDvrCF7OccRr0J3m1k7dtpd/WoWI1TIgWCxYMfhwP96L1Du1NUs6Nr1zYnacGg3wReMYUF
	iDywIwOI5nMjfbq5nWzCl44QONT+q3jL9JjDyk/4+0fsjq8S1B1lWMcS9sMlM7QTsZuYusgxJV2Kp
	ZJOUrECnhL7jLE+3NoqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxq8S-00HMad-2A; Wed, 23 Nov 2022 13:49:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxq8O-00HMZ6-1b; Wed, 23 Nov 2022 13:49:53 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxq8M-0008Jl-Oo; Wed, 23 Nov 2022 14:49:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.2 #1
Date: Wed, 23 Nov 2022 14:49:49 +0100
Message-ID: <4716610.aeNJFYEL58@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_054952_248609_57BB88E4 
X-CRM114-Status: GOOD (  17.65  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Arnd, Kevin, Olof,

please find below and in subsequent pull-request
Rockchip changes for for 6.2

As always the 64bit DTS part is the big one, while
I realized too late that the 32bit actually only consists
of one commit this time.


Please pull!

Thanks
Heiko

The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:

  Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git ta=
gs/v6.2-rockchip-dts64-1

for you to fetch changes up to 848343c0b4d64821aec19b2cff47b58f77362d38:

  arm64: dts: rockchip: update cache properties for rk3308 and rk3328 (2022=
-11-22 23:28:44 +0100)

----------------------------------------------------------------
New boards:
- Model A and blade baseboards for the SOQuartz (rk3568) SoM,
- Anberic RG351M, RG353V, RG353VS; Odroid Go Super, Advance gaming devices
- Odroid M1
- Theobroma px30 SoM with baseboard
- Rockchip's own rk3566 demo board

Some core support for per SoC specifics:
- crypto support for rk3399 and rk3328
- second I2S controller for rk3568
- Cache properties for follow the binding for rk3308 and rk3328

Bigger device support updates for:
- SOQuartz: PCIe2, video output, gpu, HDMI sound
- Rock 3A: eth regulator, eth clock input, Wifi+Bt, I2S, PCIe3

As well as some minor extensions for Rock960 (hdmi supplies),
rk3566-roc-pc (PCIe2), Rock 4C+ (thermal support), Pinephone Pro (Wifi+Bt)

----------------------------------------------------------------
Anand Moon (2):
      arm64: dts: rockchip: Add support of external clock to ethernet node =
on Rock 3A SBC
      arm64: dts: rockchip: Add support of regulator for ethernet node on R=
ock 3A SBC

Andrew Powers-Holmes (2):
      arm64: dts: rockchip: Add SOQuartz blade board
      arm64: dts: rockchip: Add SOQuartz Model A baseboard

Andy Yan (2):
      dt-bindings: rockchip: Add Rockchip rk3566 box demo board
      arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board

Aurelien Jarno (11):
      arm64: dts: rockchip: add thermal support to ODROID-M1
      arm64: dts: rockchip: Add NOR flash to ODROID-M1
      arm64: dts: rockchip: Add analog audio on ODROID-M1
      arm64: dts: rockchip: Enable vop2 and hdmi tx on ODROID-M1
      arm64: dts: rockchip: Enable HDMI audio on ODROID-M1.
      arm64: dts: rockchip: Enable the GPU on ODROID-M1
      arm64: dts: rockchip: Enable the USB 2.0 ports on ODROID-M1
      arm64: dts: rockchip: Enable the USB 3.0 ports on ODROID-M1
      arm64: dts: rockchip: Add SATA support to ODROID-M1
      arm64: dts: rockchip: Add PCIEe v3 nodes to ODROID-M1
      arm64: dts: rockchip: Add IR receiver node to ODROID-M1

Chris Morgan (5):
      dt-bindings: arm: rockchip: Add Anbernic RG353V and RG353VS
      arm64: dts: rockchip: add Anbernic RG353V and RG353VS
      arm64: dts: rockchip: add rk817 chg to RG353P and RG503
      arm64: dts: rockchip: add poll-interval to RGxx3 devices
      arm64: dts: rockchip: Update joystick to polled for OG2

Chukun Pan (2):
      arm64: dts: rockchip: Add regulator suffix to rock-3a
      arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a

Corentin Labbe (3):
      clk: rockchip: use proper crypto0 name on rk3399
      arm64: dts: rockchip: add rk3328 crypto node
      arm64: dts: rockchip: rk3399: add crypto node

Dongjin Kim (2):
      dt-bindings: rockchip: Add Hardkernel ODROID-M1 board
      arm64: dts: rockchip: Add Hardkernel ODROID-M1 board

FUKAUMI Naoki (1):
      arm64: dts: rockchip: enable tsadc for ROCK 4C+

Furkan Kardame (1):
      arm64: dts: rockchip: enable pcie2 on rk3566-roc-pc

Heiko Stuebner (2):
      Merge branch 'v6.2-shared/clockids' into v6.2-armsoc/dts64
      arm64: dts: rockchip: fix spdif@fe460000 ordering on rk356x

Maya Matuszczyk (5):
      arm64: dts: rockchip: Move most of Odroid Go Advance DTS into a DTSI
      dt-bindings: arm: rockchip: Add more RK3326 devices
      arm64: dts: rockchip: Add Odroid Go Advance Black Edition
      arm64: dts: rockchip: Add Odroid Go Super
      arm64: dts: rockchip: Add Anbernic RG351M

Nicolas Frattaroli (6):
      arm64: dts: rockchip: Enable GPU on SOQuartz CM4
      arm64: dts: rockchip: Enable video output and HDMI on SOQuartz
      arm64: dts: rockchip: Enable HDMI sound on SOQuartz
      arm64: dts: rockchip: Enable PCIe 2 on SOQuartz CM4IO
      dt-bindings: arm: rockchip: Add SOQuartz Blade
      dt-bindings: arm: rockchip: Add SOQuartz Model A

Peter Robinson (1):
      arm64: dts: rockchip: Add HDMI supplies on Rock960

Pierre Gondois (1):
      arm64: dts: rockchip: update cache properties for rk3308 and rk3328

Quentin Schulz (2):
      arm64: dts: rockchip: add PX30-=B5Q7 (Ringneck) SoM with Haikou baseb=
oard
      dt-bindings: arm: rockchip: add Theobroma Systems PX30-=B5Q7 (Ringnec=
k) with Haikou

Shengyu Qu (3):
      arm64: dts: rockchip: RK356x: Add I2S2 device node
      arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
      arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules=
 to Radxa Rock 3A

Tom Fitzhenry (1):
      arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro

 .../devicetree/bindings/arm/rockchip.yaml          |  42 ++
 arch/arm64/boot/dts/rockchip/Makefile              |  10 +
 .../boot/dts/rockchip/px30-ringneck-haikou.dts     | 232 +++++++
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi    | 382 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |   1 +
 .../boot/dts/rockchip/rk3326-anbernic-rg351m.dts   |  33 +
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi | 600 +++++++++++++++++
 .../boot/dts/rockchip/rk3326-odroid-go2-v11.dts    | 156 +++++
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 620 +----------------
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts | 185 +++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  12 +
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     |  76 +++
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts      |   6 +
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |   2 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  20 +
 .../boot/dts/rockchip/rk3566-anbernic-rg353p.dts   | 109 +--
 .../boot/dts/rockchip/rk3566-anbernic-rg353v.dts   | 114 ++++
 .../boot/dts/rockchip/rk3566-anbernic-rg353vs.dts  |  87 +++
 .../boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi  |  60 ++
 .../boot/dts/rockchip/rk3566-anbernic-rg503.dts    |  79 +++
 .../boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  47 +-
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts   | 503 ++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts     |  34 +
 .../boot/dts/rockchip/rk3566-soquartz-blade.dts    | 194 ++++++
 .../boot/dts/rockchip/rk3566-soquartz-cm4.dts      |  11 +
 .../boot/dts/rockchip/rk3566-soquartz-model-a.dts  | 232 +++++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi  |  75 +++
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts  | 744 +++++++++++++++++=
++++
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts    | 146 +++-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |  50 +-
 include/dt-bindings/clock/rk3399-cru.h             |   6 +-
 31 files changed, 4146 insertions(+), 722 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2-v11.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-odroid-go3.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
