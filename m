Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDEC5C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 22:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d3bpe95KyqoJ19hMgOMDn1mf8JoKq/T4NveHqfQP0FA=; b=rkjN7yoLORAqn0
	DqfcurNPWnyCP+U8N4llU2A/gbPd+iM9RTfIdO8V82dLZkXbr3PTOwCR2zblU4fCTokfikrlvcbEY
	eyXiFUGyNgksZhyy8YmQAL2lfxYG65kwyWHsXRn1BiXTrEDjpey9+3JuJAneN4nSzyEencSRVtdwq
	8F57WRrO17sJus2XZ8baMODZOMVe15OQ88JvY53AUMc0Voh5rH1lPW2hETcn2PXhN3+RCHPn0Tkym
	YbUVzyXdyJdGcq2QN16mxlbzFqxkO782satOl/rIrhejGF0blCgIJxJc0nFw7HQLg+k/84MGlJf7h
	oPKpNUPYTnGfNFi8C52Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfPa6-00000005cKM-0UEw;
	Thu, 02 Jul 2026 22:08:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfPa4-00000005cHF-2C2g;
	Thu, 02 Jul 2026 22:08:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E258143774;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC375C19425;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783030103;
	bh=S9/U4jv4gvyrJg2Cinwm8MkLhzvYyCrQEPUiugRE58Y=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=Vy7ms8h/zKRkFR7UL6A+GM3ukT8IRGhvdObS6CxVTO/TixntHbwp5n5kzZiknymus
	 z89bUR/L7KOV46Yuf9gEqQPEPQMVQC/9Nh7o8MhjLJfhpGsws94VDXHlHdxAPzLvY/
	 1/IxEhOwiNLqBUtAeyWtwSOe44SXomooGnfRKu6aQRfQa7pTz6y4E5KwBnC+3NirsW
	 ekpec1O4QDvhJq/C5ciKbT2+onKSUZPVgH/AFojFatKCMjOA9oKmGiILDOWWFia6vq
	 HDKKf6OGpMUrA4Is8FrUDc81oNLPgQBQhz5y52negna9+dwmq4n9k2vFEUsywpgwRE
	 XLGKow9s4CcHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A9AC43458;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Subject: [PATCH 00/12] arm64: dts: rockchip: Add NanoPi M6 board
Date: Fri, 03 Jul 2026 00:07:15 +0200
Message-Id: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQqAIBBA4avErBNMSKGrRIt+ZmqCNLQiEO+e1
 fKDx4sQ0DMGaIoIHi8O7GxGVRYwLr2dUfCUDUoqLY2shO2t21lsWhAhklG1oslA7nePxPf3arv
 f4RxWHI93ACk9ub5yKG0AAAA=
X-Change-ID: 20260701-nanopi-m6-ffeef7252fd7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783030102; l=2357;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=S9/U4jv4gvyrJg2Cinwm8MkLhzvYyCrQEPUiugRE58Y=;
 b=vtoeVDnJWvf8aZzWUjPvlsU8NjaCcMgHBFAWCklOLE5bdWPrZJYzxUK7uC8hf7GB0eCgapn8u
 lxQ+md2WllmBo40xCbkPB5QK8q0s4nMZw/FZ79rcKvIETXFYu+abhl/
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch series add support for the NanoPi M6. This board is very
similar to the NanoPi R6C and R6S boards which are already supported.

Main differences:
* M.2 M-key slot with PCIe (Also present on R6C)
* M.2 E-key slot with PCIe and USB (from hub)
* 1 additional USB 2.0 port from an on-board USB hub
* RT5616 audio CODEC

Patch 2 and 3 moves a bit code around. Please let me know if those two
should be squashed together.
Next few patches adds some missing bits the common nanopi dtsi file.
While the final patch adds support for NanoPi M6.

All changes have been verified using the schematics for M6, R6C and R6S.
Only M6 have been boot and runtime tested. Tester for R6x are welcome.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
Joachim Eastwood (12):
      dt-bindings: arm: rockchip: add FriendlyElec NanoPi M6
      arm64: dts: rockchip: refactor rk3588s-nanopi* to support M6
      arm64: dts: rockchip: move NanoPi R6 code into common dtsi
      arm64: dts: rockchip: rk3588s-nanopi: add missing sdmmc cd pinctrl
      arm64: dts: rockchip: rk3588s-nanopi: remove pull up on rtc int pin
      arm64: dts: rockchip: rk3588s-nanopi: add missing pcie rst pinctrl
      arm64: dts: rockchip: rk3588s-nanopi: pcie2x1l2: add clkreq
      arm64: dts: rockchip: rk3588s-nanopi: remove always-on from vdd_npu_s0 reg
      arm64: dts: rockchip: rk3588s-nanopi: remove useless vcc_3v3_pcie20
      arm64: dts: rockchip: rk3588s-nanopi: add gmac1 add phy-supply
      arm64: dts: rockchip: rk3588s-nanopi: remove bogus vcc5v0_usb regulator
      arm64: dts: rockchip: add support for NanoPi M6 board

 .../devicetree/bindings/arm/rockchip.yaml          |   3 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts | 200 ++++++
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 792 --------------------
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts |   1 +
 .../arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi   | 800 +++++++++++++++++++++
 7 files changed, 1005 insertions(+), 793 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260701-nanopi-m6-ffeef7252fd7

Best regards,
--  
Joachim Eastwood <joachim.eastwood@gmail.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
