Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18F39C07545
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Oct 2023 19:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SBwrVGZ59tfq9whgf47gns6q06ZZF4/IhYB5q1BDqx4=; b=KfBJhZXW8xKUB/
	iPO1M05Nunsom3sTQIS0zfCz0qg+AZLtnmIFxYrvMvWv9i4Ma452LSaruKAiOcwuSrHq5q2Zv+K7u
	ld2e7XStu15X/sDxMpj0CMnMpQ3xggQ0sWxD0PYHpiN4D4WfxPdEsGpc4Yva+CL57YVJ/gGDEki36
	A/7/sLFiWthm7+GXc7LHhrCbyf1onZ7/6dAosdFUKUZ/caWKHFiTxFBMNK6jBz+K1fngsUB1/EQDe
	jSqAR8BZLoAzCWG/LBJm/pDSitPTUixBQFH+PLVvJ+T+aGvO60D5CB2y+Ta416GesNP9q6PzEOyy6
	Y7+lAgtLe6ohCA5e0NIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvNJ8-00Alil-2L;
	Tue, 24 Oct 2023 19:43:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvNJ6-00AliJ-1l;
	Tue, 24 Oct 2023 19:43:17 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qvNJ3-0007KN-8B; Tue, 24 Oct 2023 21:43:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.7 #2
Date: Tue, 24 Oct 2023 21:43:12 +0200
Message-ID: <2777623.BEx9A2HvPv@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231024_124316_589118_FD6ED3CA 
X-CRM114-Status: GOOD (  14.96  )
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

after the first pull request there were some stragglers left.
One new SoM was submitted and the DFI driver changes were merged
into the relevant driver tree.

This pull request adds the relevant changes for those.
The commits should be in linux-next since the 19th or 20th of
october, so did get exposure and the changes go on top of the
previous v6.7-rockchip-dts64-1 tag.


So if there is still time please pull!
If not, it's also no problem, I'll move them to 6.8 then.


Thanks a lot
Heiko


The following changes since commit 1e9ac3e8a6a9d4da9efbad2d8e95cc1140e0e23f:

  arm64: dts: rockchip: add support for Powkiddy RGB30 (2023-10-16 22:58:45 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.7-rockchip-dts64-2

for you to fetch changes up to 2806a69f3fef61d7353ea8206add8ffb15064b51:

  arm64: dts: rockchip: Add Turing RK1 SoM support (2023-10-19 20:23:58 +0200)

----------------------------------------------------------------
One new board the Turing RK1 system on module.
Support for DFI (DDR performance monitoring) for rk3588, rk3568 and an
enable-fix for rk3399 as well as some small fixups for the RGB30 handheld
(non-existent uart and better vpll frequency).

----------------------------------------------------------------
Chris Morgan (2):
      arm64: dts: rockchip: Update VPLL Frequency for RGB30
      arm64: dts: rockchip: Remove UART2 from RGB30

Sam Edwards (3):
      dt-bindings: vendor-prefixes: add turing
      dt-bindings: arm: rockchip: Add Turing RK1
      arm64: dts: rockchip: Add Turing RK1 SoM support

Sascha Hauer (3):
      arm64: dts: rockchip: Always enable DFI on rk3399
      arm64: dts: rockchip: Add DFI to rk356x
      arm64: dts: rockchip: Add DFI to rk3588s

 .../devicetree/bindings/arm/rockchip.yaml          |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   1 -
 .../boot/dts/rockchip/rk3566-powkiddy-rgb30.dts    |  11 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |   7 +
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dts |  21 +
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 614 +++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          |  16 +
 9 files changed, 676 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
