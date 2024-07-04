Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 699D6C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 15:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D4NEwXRGKCH2Wh82GSb8k0TNvW+i/AffqOLc7T85vzQ=; b=oESmaDRV+UgPJm
	Fj9eCeneMRLkgozGII6XG2kXhypyy4Y1CG05PVflyx/qAOFArU0RFZU9Zrt4tJCwxNAKdikRCbqdp
	zkW+uU8AiKQeIbDmlZvdMzbTvv+WVhQnornsiIAgH8lrSq5CmdE3YObmwm8BiFA1uTiougUOYRI5o
	9Zf4tRgqlTElOW/2nU14bWBGxCSui0vz+RKEfbaq7EY8CoKh2axc81N5vdH7TXY9BB6tvx/091NMX
	jBo2rJ7dHdX/VtrRjqnBHIsRpUOYr3nPIKq//mWYlYlwAMtYVxDLk11C6KcfRuOnQNJJP/Jxr4ZO3
	Ddv3Pw8+DWTzG9vPWjwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOXo-0000000Dj57-1jk0;
	Thu, 04 Jul 2024 15:38:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOXP-0000000Dixi-2a1i;
	Thu, 04 Jul 2024 15:38:25 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPOXM-0002hy-9F; Thu, 04 Jul 2024 17:38:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dsimic@manjaro.org
Subject: [PATCH v3 0/2] ROCK 5 ITX devicetree
Date: Thu,  4 Jul 2024 17:38:13 +0200
Message-Id: <20240704153815.837392-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_083823_677920_255A2598 
X-CRM114-Status: GOOD (  13.73  )
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

Add a basic support for the Rock 5 ITX board.

After struggling a bit with the pcie3 ports, thankfully they seem to run
pretty nice now thanks to me finding the property for the shared-rx-clk
for the pcie3 phy.

changes in v3:
- better sorting (Diederik)
- fix usb supply (vcc5v0_usb is not a supply of the usb3 hub) (Alex)
- drop type-c sink elements, type-c cannot power the board (sigmaris)
- add links to schematics (Dragan)

changes in v2:
- update naming to include a space/dash between 5 and ITX. As Dragan wrote
    "the name of this board deviates from the standard Radxa naming scheme,
     which is something like "ROCK <number><letter>" thus, "rock-5a" is
     fine, but it should be "rock-5-itx", simply because there's a space
     between "5" and "ITX" in "ROCK 5 ITX"
- spelling fixes (Dragan)
- removed status from adc-keys (Krzysztof)
- added Krzysztof's binding Ack, after asking on IRC about the
  added "-"
- updated copyright statement to something correct

Heiko Stuebner (2):
  dt-bindings: arm: rockchip: Add ROCK 5 ITX board
  arm64: dts: rockchip: add ROCK 5 ITX board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3588-rock-5-itx.dts   | 1178 +++++++++++++++++
 3 files changed, 1184 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
