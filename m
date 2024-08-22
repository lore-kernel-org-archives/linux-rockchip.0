Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7309AC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 13:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lPzyAKJi9JYDMKi8/zyiEWPpNwDaXR3goAdCmAqUu0o=; b=UrQQJ2qvPwxb49
	DPaLMld4lnjWq9N/T0DTXMwgo9oJ4Ufaat0EHT3not5pBPIaul+GwqoOHKT8coBjgY8jCHSCGeufk
	KM65SLkde8r8TsmG02BWvMwUUNY4PoSQfP1I9psof7AiUEE4xTZ+2fJ/nJRcOjO8fEJ76TbpgMH9G
	/gsiYqtuze3EqLON9tO0CNE4iv4XIHccxuctAIPY1vMh8NRzOy4Y+p4pLaUDr0T9NyXbBPwlBSB3x
	ZNNhWpUlXfKR9qWFwwEpPkUIqMkv6zKXG9mcrI3IR2eBLnMDpd09OOmSTYiSGwoBHYQvajhLwLaRk
	0+FWO08ct5/jGwQ6Qzlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh7xt-0000000CyMn-4AOr;
	Thu, 22 Aug 2024 13:35:02 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh7vO-0000000Cxaq-3TNm
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 13:32:29 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 07F1B2602F0;
	Thu, 22 Aug 2024 15:32:24 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id xmkMRkxh2gQE; Thu, 22 Aug 2024 15:32:21 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id A899726018D;
	Thu, 22 Aug 2024 15:32:20 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v4 0/8] FriendlyELEC NanoPC-T6 improvements
Date: Thu, 22 Aug 2024 15:32:04 +0200
Message-Id: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANQ9x2YC/43OTW7DIBAF4KtErDvWAJbtdJV7VF3AeJzQUnDAc
 f7ku5cki7abKsv3NPreXEXm5DiL19VVJJ5ddjGUUL+sBO1M2DK4vmShUNXYKYShnIfen9kzQTA
 hjgRTA37KgEht03akbd+KAoyJB3e642/vj5x4fygb00+5c3mK6Xx/YJa39qmtWYKE3kjVatKMH
 W8+Dvny6fjo6FJR/KpGL27+rH6b8l9TAQKj1J21ErFWG++CSbGKafuw9POWLpZmGsx63VjL+Md
 aluUbBM8IgnoBAAA=
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_063227_138336_02301963 
X-CRM114-Status: UNSURE (   8.87  )
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

This series updates FriendlyELEC NanoPC-T6 situation. There is non-LTS
(2301) version of a board and LTS (2310) version.

This series creates common DTSI for both boards and then separate
NanoPC-T6 and NanoPC-T6 LTS DTS files. This way T6 gets MiniPCIe section
and T6-LTS gets USB20 section.

Then set of changes for both versions are done:

- enable USB-C port (one orientation only)
- enable Mali GPU
- enable IR receiver (not tested)
- enable SPI flash (present on LTS, optional on non-LTS)
- enable Mask Rom button as input device

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

---
Changes in v4:
- added Acked-by to dt-bindings patch
- create common dtsi for both board versions
- nanopc-t6.dts has minipcie items
- nanopc-t6-lts.dts has usb 2.0 host enablement
- Link to v3: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org

Changes in v3:
- create separate NanoPC-T6 LTS devicetree as suggested
- Link to v2: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org

Changes in v2:
- merged changes into NanoPC-T6 dts file
- add SPI flash pinctl for SPI M1
- enable SPI on NanoPC-T6 LTS
- enable USB-C port (one orientation only)
- enable Mali GPI
- enable IR receiver (not tested)
- Link to v1: https://lore.kernel.org/r/20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl

---
Marcin Juszkiewicz (8):
      arm64: dts: rockchip: define pinctl for SPI M1
      dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
      arm64: dts: rockchip: add NanoPC-T6 LTS
      arm64: dts: rockchip: add SPI flash on NanoPC-T6
      arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      arm64: dts: rockchip: enable GPU on NanoPC-T6
      arm64: dts: rockchip: enable USB-C on NanoPC-T6
      arm64: dts: rockchip: add Mask Rom key on NanoPC-T6

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588-base-pinctrl.dtsi     |  17 +
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 910 +--------------------
 ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} | 136 ++-
 6 files changed, 206 insertions(+), 925 deletions(-)
---
base-commit: 6e4436539ae182dc86d57d13849862bcafaa4709
change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7

Best regards,
-- 
Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
