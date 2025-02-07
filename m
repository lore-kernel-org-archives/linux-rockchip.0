Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53690C0219C
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 15:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jVltExDbvdcEo24HBNa5IHkqw6BxQRD7g8WOwiJe8iU=; b=QFtt3CzPNWOuh0
	GZVitavYSA4CFacGa5gZ6bN4Yea+1UyaWHG1zXn4S2N2U3S4uP9R6h/twTOmjxlLlgqOAAVx/SuPc
	kLFzGPvMnN3E5Evw0CDAFfsjxjJMG/3ATkLHqYB3sFP8wjoC+hr+j940yL8VS4lCC0i6CAtuqoaNm
	aaewN084A0kNKg0/ptnWJb3hxqLRuWzxUrYoDvQovz5Dzmoo0PqqUIZA4xEqctxPLopAlLqBQg19H
	abqL0CMj8Uxa6A3MkgQG+vukc8P/4U+2zKdecJU3BA43B8FcoNfbUbv7sbbYzXcTdmtPgWJ5Yqboy
	3fXbfvPEPVaAR8l7sdIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQG4-0000000A4As-13Uh;
	Fri, 07 Feb 2025 15:27:08 +0000
Received: from smtp-8fab.mail.infomaniak.ch ([83.166.143.171])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgQ9P-0000000A2IP-1k2s
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Feb 2025 15:20:17 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10:40ca:feff:fe05:0])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YqHhp4Lr8zPPm;
	Fri,  7 Feb 2025 16:20:10 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YqHhm54lLzpyq;
	Fri,  7 Feb 2025 16:20:08 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v5 0/4] arm64: dts: rockchip: minimal support for Pre-ICT
 tester adapter for RK3588 Jaguar + add overlay tests
Date: Fri, 07 Feb 2025 16:19:57 +0100
Message-Id: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ0kpmcC/3XMTWrDMBCG4asEraswM5ItKaveI3Shn1GsLpIgu
 yYh+O5VAgFT0+U3w/M+xMi18CgOu4eoPJexXM5tdB87EQd/PrEsqW1BQBoJenmt7RQn+e1PP77
 K4CD7zGxDsqKh9s7l9goev9oeyjhd6v3Vn/F5/Tc1o0Rpct9DSDoYiJ9x4Frv+8TimZrpzTtA3
 HKSILEzSaED0HnD1YqT3XDVuAlMGVxSDvxfrldc4YbrxqMzyGQ7YpvWfFmWX6yiN49pAQAA
X-Change-ID: 20241206-pre-ict-jaguar-b90fafee8bd8
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Jonas Karlman <jonas@kwiboo.se>, Dragan Simic <dsimic@manjaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_072015_597014_428E679E 
X-CRM114-Status: UNSURE (   8.26  )
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

This adds minimal support for the Pre-ICT tester adapter for RK3588
Jaguar.
GPIO3A3, GPIO3A4, GPIO3B2 and GPIO3D2 to GPIO3D5 are all routed to power
rails and can only be used as input and their bias are important to be
able to properly detect soldering issues.

Additionally, this adds build-time overlay application tests for all
Rockchip overlays to try to avoid future regressions.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v5:
- re-add dtb-$(CONFIG_ARCH_ROCKCHIP) += *.dtbo so that an explicit rule
  exists and we don't rely on the overlay tests to generate the dtbo,
- reword comment on overlay tests by making it explicit that we require
  both an overlay test and an explicit build target for the dtbo,
- Link to v4: https://lore.kernel.org/r/20250131-pre-ict-jaguar-v4-0-c971e2852e8d@cherry.de

Changes in v4:
- fix typos in WolfVision patch,
- added Rb on WolfVision patch,
- Link to v3: https://lore.kernel.org/r/20250128-pre-ict-jaguar-v3-0-7be2f09d390a@cherry.de

Changes in v3:
- removed Fixes tag and intent to send to stable as this patch almost
  doubles the size of the main DTB. Let's not potentially break users of
  stable releases,
- added Wolfvision PF5 overlay tests, thanks Michael,
- added comment on how to add new overlays (via tests), and the side
  effects,
- grouped the overlay application test target with the definition of its
  dependencies (DTB + DTBO(s)),
- added trailers,
- Link to v2: https://lore.kernel.org/r/20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de

Changes in v2:
- add overlay application tests for Edgeble NCM6A WiFi and Rock 5B PCIe
  Endpoint+SNRS
- add overlay application test for RK3588 Jaguar + Pre-ICT tester
  adapter,
- Link to v1: https://lore.kernel.org/r/20241206-pre-ict-jaguar-v1-1-7f660bd4b70c@cherry.de

---
Quentin Schulz (4):
      arm64: dts: rockchip: add overlay test for WolfVision PF5
      arm64: dts: rockchip: add overlay test for Edgeble NCM6A
      arm64: dts: rockchip: add overlay tests for Rock 5B PCIe overlays
      arm64: dts: rockchip: minimal support for Pre-ICT tester adapter for RK3588 Jaguar

 arch/arm64/boot/dts/rockchip/Makefile              |  39 +++++
 .../dts/rockchip/rk3588-jaguar-pre-ict-tester.dtso | 171 +++++++++++++++++++++
 2 files changed, 210 insertions(+)
---
base-commit: bb066fe812d6fb3a9d01c073d9f1e2fd5a63403b
change-id: 20241206-pre-ict-jaguar-b90fafee8bd8

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
