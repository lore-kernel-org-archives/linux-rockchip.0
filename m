Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4862CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jun 2022 15:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1ItGGlEZFCn/Qbm4cwB9hOKypVUwDMpTrQRHqalLVTI=; b=By8kkELX+98iGel3OFfa2HKZyJ
	tkFFLjCW44DZ1AKJAsAgWUHXk7VqOTaf/ysh5spSyZTKXx69+/HzInNUXc9fNRmN/5PXW3AC4qItH
	QsYLVOPtXzvurLLcD2ayemgyCmH50znKYSGIZBfqLFmy98hIfMqPwWpKy5D3ibeHi6Zl7SsJ0g1uJ
	3twibcPlTW47zcr7ePy682D2lN0g3adzp2wTJt1AQpYLvN2xLaDHst1HuIJO5ALV/olc+1cO8pcnE
	2EgbVa0hgWdR2EvnR91wxr+nAYOD+kfywyG2iphzHiVJSB/DdeIJfCoVORbbl/o9VTuczv6m5PrfG
	+S32LYfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxs0z-00EjoL-Cz; Sun, 05 Jun 2022 15:18:05 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxs0v-00Ejla-At
	for linux-rockchip@lists.infradead.org; Sun, 05 Jun 2022 15:18:04 +0000
Message-ID: <eb266429-71f3-6d73-7e6a-5be83b6ce048@manjaro.org>
Date: Sun, 5 Jun 2022 17:17:46 +0200
MIME-Version: 1.0
Subject: Re: [GIT PULL] Rockchip dts64 changes for 5.19 #1
Content-Language: da-DK
To: linux-rockchip@lists.infradead.org
References: <7748558.DvuYhMxLoT@phil>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <7748558.DvuYhMxLoT@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_081801_739110_D6CA3045 
X-CRM114-Status: GOOD (  21.13  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Just curious. I don't see this bunch of dts64 changes in the linux.git 
tree yet, while the dt-bindings for them and the number 2 has been 
merged into it.

Is this an oversight?

Den 12.05.2022 kl. 01.41 skrev Heiko Stuebner:
> Hi Arnd, Kevin, Olof,
>
> please find below and in subsequent pull-requests
> Rockchip changes for for 5.19 .
>
> As always the 64bit DTS part is the big one.
>
> Please pull!
>
> Thanks
> Heiko
>
>
> The following changes since commit 3123109284176b1532874591f7c81f3837bbdc17:
>
>    Linux 5.18-rc1 (2022-04-03 14:08:21 -0700)
>
> are available in the Git repository at:
>
>    git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-dts64-1
>
> for you to fetch changes up to bc405bb3eeee4b711830ab569e7f3811b92196ab:
>
>    arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x (2022-05-11 06:09:55 +0200)
>
> ----------------------------------------------------------------
> New peripherals supported on rk356x: sfc, usb3, sata and
> the video-decoder on rk3328.
> RK3399 received some improvements and nodes for the memory controller.
> Additional peripherals for PineNote, Gru and BananaPi-R2-Pro.
> New boards are the Firefly Station M2, Pine64 SoQuartz SOM and
> Quartz64 model B as well as the Radxa Rock3 model A.
>
> ----------------------------------------------------------------
> Caleb Connolly (1):
>        arm64: dts: rockchip: add an input enable pinconf to rk3399
>
> Christopher Obbard (2):
>        arm64: dts: rockchip: Rename vdec_mmu node for RK3328
>        arm64: dts: rockchip: Add vdec support for RK3328
>
> Frank Wunderlich (3):
>        arm64: dts: rockchip: Add sata nodes to rk356x
>        arm64: dts: rockchip: Add USB nodes for BPI-R2-Pro
>        arm64: dts: rockchip: Add SATA support to BPI-R2-Pro
>
> Furkan Kardame (1):
>        arm64: dts: rockchip: add dts for Firefly Station M2 rk3566
>
> Heiko Stuebner (1):
>        arm64: dts: rockchip: fix Makefile sorting for BananaPi R2 Pro
>
> Johan Jonker (2):
>        arm64: dts: rockchip: use generic node name for pmucru on rk3399
>        arm64: dts: rockchip: add clocks property to cru nodes rk3399
>
> Krzysztof Kozlowski (1):
>        arm64: dts: rockchip: correct interrupt flags on rk3399 boards
>
> Lin Huang (2):
>        arm64: dts: rockchip: Add dfi and dmc nodes to rk3399
>        arm64: dts: rockchip: Enable dmc and dfi nodes on gru
>
> Michael Riesch (6):
>        dt-bindings: arm: rockchip: add radxa rock3 model a
>        arm64: dts: rockchip: add basic dts for the radxa rock3 model a
>        arm64: dts: rockchip: add usb3 support to rk3568-evb1-v10
>        arm64: dts: rockchip: add usb3 support to the radxa rock3 model a
>        arm64: dts: rockchip: enable usb hub on the radxa rock3 model a
>        arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x
>
> Peter Geis (8):
>        arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
>        arm64: dts: rockchip: enable dwc3 on quartz64-a
>        arm64: dts: rockchip: add rk356x sfc support
>        dt-bindings: arm: rockchip: Add Pine64 Quartz64 Model B
>        dt-bindings: arm: rockchip: Add Pine64 SoQuartz SoM
>        dt-bindings: arm: rockchip: Add Firefly Station M2
>        arm64: dts: rockchip: add Pine64 Quartz64-B device tree
>        arm64: dts: rockchip: add SoQuartz CM4IO dts
>
> Robin Murphy (1):
>        arm64: dts: rockchip: Add some pins for NanoPi4
>
> Samuel Holland (2):
>        arm64: dts: rockchip: Add accelerometer to rk3566-pinenote
>        arm64: dts: rockchip: Add USB and TCPC to rk3566-pinenote
>
> Sascha Hauer (1):
>        arm64: dts: rockchip: rename HDMI ref clock to 'ref' on rk3399
>
> Shawn Lin (1):
>        arm64: dts: rockchip: Move drive-impedance-ohm to emmc phy on rk3399
>
>   .../devicetree/bindings/arm/rockchip.yaml          |  23 +-
>   arch/arm64/boot/dts/rockchip/Makefile              |   6 +-
>   arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  22 +-
>   arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |   3 +-
>   .../boot/dts/rockchip/rk3399-gru-chromebook.dtsi   |   7 +
>   .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi      |  12 +
>   arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |  28 +
>   arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |   3 +-
>   .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      |   3 +-
>   arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts  |   3 +-
>   arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |   2 +-
>   arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi   |  25 +
>   arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   |   3 +-
>   arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts |   2 +-
>   arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts |   2 +-
>   arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |   3 +-
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  45 +-
>   arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  |  80 +++
>   arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts |  37 ++
>   arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 615 ++++++++++++++++++++
>   arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts     | 579 +++++++++++++++++++
>   .../boot/dts/rockchip/rk3566-soquartz-cm4.dts      | 177 ++++++
>   arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi  | 616 +++++++++++++++++++++
>   arch/arm64/boot/dts/rockchip/rk3566.dtsi           |  11 +
>   arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 102 ++++
>   arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts   |  46 ++
>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts    | 562 +++++++++++++++++++
>   arch/arm64/boot/dts/rockchip/rk3568.dtsi           |  23 +
>   arch/arm64/boot/dts/rockchip/rk356x.dtsi           |  74 ++-
>   29 files changed, 3096 insertions(+), 18 deletions(-)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
