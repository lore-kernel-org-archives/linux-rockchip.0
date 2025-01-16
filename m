Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A985C02188
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MQHZuskX8RzAKC+oqGG29f9Jldf6AeJFMPoFUkdwtOw=; b=Z9lzJLg8iSB9aw
	xNSvr7rn0f7LboN3sx1hfWIpnRr7sBAp8nvwgCiRqHTBumpxsgx45f93GHC1lPpnUtrwwjgZwIr3v
	iXew3lfgD/aC16vZJ95773MWSjk/nwiyb0otZgUnm9l7T6zOQI5K2FZnnM2Uu/7K7iUlXH7xuNaN3
	FVGH52/zeagU2UVDOPEAf9OTY6QzTgssbEN6QRowIqOAneC0rnHzSx9Hoi9LaH8HYbU4Mm9IrS3X/
	kcvmdtHgUPMksKdCe/NJXDfKGMmFjWd72UmiWy2FoCJZRmRGnhYoUYxomT1qnj2N/GNBHzhmafpiX
	v7zyNbXr3A/0PeeYxtwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYRAK-0000000FDz9-16bl;
	Thu, 16 Jan 2025 14:48:12 +0000
Received: from smtp-8fac.mail.infomaniak.ch ([83.166.143.172])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYRA8-0000000FDs9-2bbh
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jan 2025 14:48:02 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YYm1j07dDz91y;
	Thu, 16 Jan 2025 15:47:53 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4YYm1h1Vhdzbd9;
	Thu, 16 Jan 2025 15:47:52 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v2 0/3] arm64: dts: rockchip: minimal support for Pre-ICT
 tester adapter for RK3588 Jaguar + add overlay tests
Date: Thu, 16 Jan 2025 15:47:09 +0100
Message-Id: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO0biWcC/3WMOw6DMBAFr4K2zka2hYCkyj0QhT9r7BQQrYkVh
 Hz3OPQpZ57eHJCIIyW4Nwcw5ZjiulRQlwZs0MtMGF1lUEK1UokOX1yV3fCp57dmNDfhtScajBu
 gnurs4+cMjlPlENO28n72s/zZv6ksUWLvu04Y15pe2IcNxLxfHcFUSvkC+Q2A5qwAAAA=
X-Change-ID: 20241206-pre-ict-jaguar-b90fafee8bd8
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_064800_806346_CD986A8B 
X-CRM114-Status: GOOD (  11.82  )
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

Additionally, this adds build-time overlay application tests for (some)
Rockchip overlays to try to avoid future regressions.

Notably, the Device Trees from Wolfvision PF5 aren't migrated (but
should) as I do not own the device and couldn't figure out from the
introducing commit logs what the possible valid combinations are.
+Cc Michael Riesch for awareness

I'm wondering if we shouldn't backport patches 1 and 2 to stable? In
which case, it would make sense to try to have the Wolfvision PF5
overlay tests merged before the addition of the Pre-ICT tester adapter
support for RK3588 Jaguar as that one won't be backported to stable and
backporting the Wolfvision overlay test would incur an unnecessary
(though not difficult) git conflict to resolve.

I also do not know what kind of tests we should have when overlay
combinations are possible (let's say there are A, B and C overlays that
can all be applied, should we have base + A, base + B, base + C,
base + A + B, base + A + C, base + B + C and base + A + B + C tests?
maybe even base + B + A, base + C + B, base A + C + B, base + B + A + C,
base + B + C + A, base + C + B + A and base + C + A + B tests?).

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v2:
- add overlay application tests for Edgeble NCM6A WiFi and Rock 5B PCIe
  Endpoint+SNRS
- add overlay application test for RK3588 Jaguar + Pre-ICT tester
  adapter,
- Link to v1: https://lore.kernel.org/r/20241206-pre-ict-jaguar-v1-1-7f660bd4b70c@cherry.de

---
Quentin Schulz (3):
      arm64: dts: rockchip: add overlay test for Edgeble NCM6A
      arm64: dts: rockchip: add overlay tests for Rock 5B PCIe overlays
      arm64: dts: rockchip: minimal support for Pre-ICT tester adapter for RK3588 Jaguar

 arch/arm64/boot/dts/rockchip/Makefile              |  14 +-
 .../dts/rockchip/rk3588-jaguar-pre-ict-tester.dtso | 171 +++++++++++++++++++++
 2 files changed, 182 insertions(+), 3 deletions(-)
---
base-commit: 619f0b6fad524f08d493a98d55bac9ab8895e3a6
change-id: 20241206-pre-ict-jaguar-b90fafee8bd8

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
