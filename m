Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 587BEC83F12
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 12:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H1K6trYEudTt9RwQkBgMAmlVVLMOBVNj4NJjs3y1Hnk=; b=eLUGfLmJQ3WiO0
	mv8nOdbFBDwuVet+a6otnbPABTsxVM6WE/i2PunS63eIGVKdD4AZw0gXF62WR0+VsYOkbil3kzTdQ
	K0rh0f9jn8YTdU55GP6hagz1WxslndLthzwPYEpnbL84FcPsT5BLRF6vyEnxANUzO5CjO9irioGaC
	f5aefzkJLvMesVtmarhULXkCJGLP0Eu8ZVLZNYobdFIf2ozK9WuJw/km8NRWpSj7+C5QOF2SA4/iV
	AOA5NdndpMhtb7Mvn1Of+zpsponTWwhTTu9MCzLsO3xgvYxBR4Q6zP9Az0dPF8op9RNlW+jHEdcU8
	sYaAprWDLLtEtKs/jpGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeFE-00000001ubO-13cX;
	Thu, 29 Aug 2024 12:27:20 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeFB-00000001uZl-0pF0
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 12:27:19 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 44A27260979;
	Thu, 29 Aug 2024 14:27:12 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id lECWLwP-5Ldd; Thu, 29 Aug 2024 14:27:10 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 6B4FA260243;
	Thu, 29 Aug 2024 14:27:09 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v6 0/9] FriendlyELEC NanoPC-T6 improvements
Date: Thu, 29 Aug 2024 14:26:51 +0200
Message-Id: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAtp0GYC/43OTW7CMBAF4Ksgr+tobAc7dMU9qi78MwG3wU7tk
 BZQ7l4Di6ZCili+p9H35kIyJo+ZvK4uJOHos4+hBPmyInavww6pdyUTDryGhgNty3lw3Qk7tDT
 oEHtLB0m7IVMAq6RqrDBOkQL0CVv/c8Pf3u854dexbAx/5d7nIabT7YGRXduntkZGGXWacSWsQ
 Ghw+3HM50+P396eKxsPVd+Rqz/yuckWTU6BIjDRGMMAar7tfNApVjHt7pZ43hLFEmhbvdlIYxA
 erHpu8UWrLlaz4RqNRQtWPljruSUXrXWxjBYCndOqZeqfNU3TL+a/rccSAgAA
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, Diederik de Haas <didi.debian@cknow.org>, 
 Dragan Simic <dsimic@manjaro.org>, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_052717_415292_3B944D60 
X-CRM114-Status: UNSURE (   9.97  )
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
- enable IR receiver (tested using ir-keytable)
- enable SPI flash (present on LTS, optional on non-LTS)
- enable Mask Rom button as input device

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

---
Changes in v6:
- split 2nd patch into parts:
  - create common DTSI
  - move non-LTS (2301) parts to rk3588-nanopc-t6.dts
  - add LTS (2310) in rk3588-nanopc-t6-lts.dts
- Link to v5: https://lore.kernel.org/r/20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org

Changes in v5:
- added Reviewed-by to 'add spi flash' patch
- dropped adding SPI M1 pinctl
- changed ir-receiver to have pinctrl like Jonas Karlman suggested
- Link to v4: https://lore.kernel.org/r/20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org

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
Marcin Juszkiewicz (9):
      dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
      arm64: dts: rockchip: prepare NanoPC-T6 for LTS board
      arm64: dts: rockchip: move NanoPC-T6 parts to DTS
      arm64: dts: rockchip: add NanoPC-T6 LTS
      arm64: dts: rockchip: add SPI flash on NanoPC-T6
      arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      arm64: dts: rockchip: enable GPU on NanoPC-T6
      arm64: dts: rockchip: enable USB-C on NanoPC-T6
      arm64: dts: rockchip: add Mask Rom key on NanoPC-T6

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 908 +--------------------
 ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} | 143 +++-
 5 files changed, 189 insertions(+), 930 deletions(-)
---
base-commit: d5d547aa7b51467b15d9caa86b116f8c2507c72a
change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7

Best regards,
-- 
Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
