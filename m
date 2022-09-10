Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF907C6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 01:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4dvHFo7nOL21PylA5E5HMf+esaG6CcXk/EDKbxACCAg=; b=F3TNpc5uHD83MD
	0UFHOvNMiIU4KzjZeUoyPFP4scUX8MuNxuDivx493JfyGgdIiGx2J07/LZq1kLdkz885Vo5fKr9ri
	dHUQzMKQUnDDKioOtClmN56YRn5vuJno/lrtaMJ366IefkVcITDsdZDK7Tl8u/iaFOb9ahr5Hoy3J
	XTewWYA6eHfMzEfcRMCfcbYRgwyYgWZu5ReRIPfOmdlM8YepDGboeub2ThdgEBO9xyTR5eFBCZMe3
	kztocrM1msDxN406K+i4YW2HW2Tzm37HOalIfmnzWg5ZX/6OugcvcPVaitT7VbZSLBpH72oLzMgRD
	xXWm1A3mQ8v7DlVi9EQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWp9z-004gWR-Ee; Sat, 10 Sep 2022 01:19:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWp9x-004gUS-8u; Sat, 10 Sep 2022 01:19:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWp9l-00018O-6y; Sat, 10 Sep 2022 03:19:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.0
Date: Sat, 10 Sep 2022 03:19:36 +0200
Message-ID: <2645885.mvXUDI8C0e@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_181949_343066_F7803256 
X-CRM114-Status: UNSURE (   9.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The following changes since commit 1c23f9e627a7b412978b4e852793c5e3c3efc555:

  Linux 6.0-rc2 (2022-08-21 17:32:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.0-rockchip-dtsfixes1

for you to fetch changes up to ea89926d9690f055fd8da929f6621a760e8e0f14:

  arm64: dts: rockchip: Remove 'enable-active-low' from rk3566-quartz64-a (2022-09-05 12:18:20 +0200)

----------------------------------------------------------------
Drop some not-specified properties, fix phy-supply properties,
fix edp clock on Gru, fix usb port on BPI-R2-Pro, fix license typo,
fix wlan-wake-pin on Gru-Bob and lower the sd-card speed on Quartz64-B

----------------------------------------------------------------
Brian Norris (1):
      arm64: dts: rockchip: Pull up wlan wake# on Gru-Bob

Fabio Estevam (2):
      arm64: dts: rockchip: Remove 'enable-active-low' from rk3399-puma
      arm64: dts: rockchip: Remove 'enable-active-low' from rk3566-quartz64-a

Frank Wunderlich (1):
      arm64: dts: rockchip: fix upper usb port on BPI-R2-Pro

Jagan Teki (1):
      arm64: dts: rockchip: Fix typo in lisense text for PX30.Core

Michael Riesch (2):
      arm64: dts: rockchip: fix property for usb2 phy supply on rock-3a
      arm64: dts: rockchip: fix property for usb2 phy supply on rk3568-evb1-v10

Nicolas Frattaroli (1):
      arm64: dts: rockchip: Lower sd speed on quartz64-b

zain wang (1):
      arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz

 arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts          | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi  | 9 +++++++++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi            | 1 -
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts       | 1 -
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts       | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts          | 2 +-
 9 files changed, 20 insertions(+), 8 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
