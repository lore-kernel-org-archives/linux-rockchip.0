Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C314C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 10:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gNuclWnhgo42qQFfMHsocZmihl8IFUTvpRY1gJ5P0n0=; b=13khneSU/3MedD
	UxYayBM1eki13anJAww4JU0KUSVnxX+RAQOaafM93KmFJcBwwB/+7xQM9fye+a6kwOZRQ1GOSq0eO
	TCyG1uiiRu4n9toFpodzYd6jeOC6EzUOLSIS2dgBjPmz+eJuKR8H/EoTXT93X+ZdJcEVYbl+TvVmu
	JSgL8xz8lLob6jQzbKn0QsqoUpPuXH4kdRZIo7JrNczvbUm+jb+cDyDvm27EcHf3/yDE3C0XMV/zo
	G4AfWmcGbaT1jLveh1+DKYXYdgHCHHOdAPp1B63aKseCkHYS5HKTIW0mnUipS6Fob20NvrvppoHFh
	hufb2EQvtP2KPsLia88A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiXy-00000008PH3-2tnZ;
	Wed, 21 Aug 2024 10:26:34 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiXv-00000008PFg-3wsm
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 10:26:33 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 473C62619C2;
	Wed, 21 Aug 2024 12:26:30 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id 096dQYK6RGNs; Wed, 21 Aug 2024 12:26:28 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 9C73426018E;
	Wed, 21 Aug 2024 12:26:27 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: [PATCH v3 0/7] FriendlyELEC NanoPC-T6 improvements
Date: Wed, 21 Aug 2024 12:26:10 +0200
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMLAxWYC/42OwQ6CMBBEf8X07JJtS4R48j8MByirrtYWW0TR8
 O9WPejJeHyTyZu5i0iBKYrl7C4CDRzZuwR6PhNmV7stAbeJhUKVY6kQNqnuWjuSJQOudr4z0C/
 A9hEQTbEoSqObthBJ0AXa8PUlX1dvDnQ6p43+E+449j6MrwODfKZ/bQ0SJLS1VIU2mrCk1f4cb
 wemC5tbZvwx66x4+gf17ZQ/nQoQCKUum0Yi5mpl2dXBZz5sRTVN0wOJ8EWiLgEAAA==
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_032632_160623_81CA19E5 
X-CRM114-Status: UNSURE (   9.53  )
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

This series creates separate DTS for NanoPC-T6 LTS (on top of non-LTS
one) and enables USB 2.0 ports on it.

Then set of changes for both versions are done:

- enable USB-C port (one orientation only)
- enable Mali GPU
- enable IR receiver (not tested)
- enable SPI flash (present on LTS, optional on non-LTS)

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

---
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
Marcin Juszkiewicz (7):
      dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
      arm64: dts: rockchip: add NanoPC-T6 LTS
      arm64: dts: rockchip: define pinctl for SPI M1
      arm64: dts: rockchip: add SPI flash on NanoPC-T6
      arm64: dts: rockchip: add IR-receiver to NanoPC-T6
      arm64: dts: rockchip: enable GPU on NanoPC-T6
      arm64: dts: rockchip: enable USB-C on NanoPC-T6

 .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588-base-pinctrl.dtsi     |  17 ++++
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 105 ++++++++++++++++++++-
 5 files changed, 187 insertions(+), 3 deletions(-)
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
