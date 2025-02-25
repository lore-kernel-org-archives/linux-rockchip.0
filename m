Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74FFAC021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 12:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y8nm0G9DHgUsTOVtKCVGJ1T78M++/AVAyTbxPqp5M4A=; b=xSHG5Xvi5ni9pZ
	kHzcIAq/8GXLSWp2qPXtFZxJfR8po7D0mSM6P/rgXcrC1FjxjIZ/8iVDkR6V6vo6FSa15mfl/QLfv
	plHWnUYj4Icfd5S/7u+n9Z7icTbQJ9lHYqZgLHqQrsuwOCPpCbMHq3uAFuetZesz3pctRZR3Zx3KI
	AIrB8sIW/pnvZwVAKLN2EG66q2mRtxZ43elxXBwtF6+pfcVDh7JpL74RhK91hUYX2bIXpjTDwHMMx
	0IyJMKRjRrkKV5ol7LVmk4yBh1UbRg1wkMIyOeaDpqVRnXjWFrHjp1fYNpQBoDDIhlOxie42LKMxb
	hrfvfEC7fwVuT6UYqH+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmu5K-0000000HDQy-2IH6;
	Tue, 25 Feb 2025 12:30:50 +0000
Received: from smtp-42ae.mail.infomaniak.ch ([2001:1600:4:17::42ae])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmtVY-0000000H6c3-2PR6
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 11:53:54 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4Z2GGM4jjDzRm0;
	Tue, 25 Feb 2025 12:53:47 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4Z2GGM06hSzC3b;
	Tue, 25 Feb 2025 12:53:46 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v3 0/2] arm64: dts: rockchip: pinmux fixes for PX30
 Ringneck
Date: Tue, 25 Feb 2025 12:53:28 +0100
Message-Id: <20250225-ringneck-dtbos-v3-0-853a9a6dd597@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADivvWcC/2WNwQ6CMBAFf8X0bE27tdh68j+MBygLNCagW2wkh
 H+3wEGix3nJzBtZQPIY2Hk3MsLog+/aBGq/Y67J2xq5LxMzEKCFBMPJt3WL7s7LvugCt0ZkR6O
 s0hpZkh6ElX8vwettZcLnK3X779j40Hc0LKdRzuvaBxC//Si54KCdPVWgjMbs4hokGg4lsjkVY
 avLPx2SrqRworC5ssJu9WmaPp8lAkcAAQAA
X-Change-ID: 20250128-ringneck-dtbos-98064839355e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_035352_755037_16232573 
X-CRM114-Status: UNSURE (   7.29  )
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

This fixes incorrect pinmux on UART0 and UART5 for PX30 Ringneck on
Haikou.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v3:
- removed already merged patches (Device Tree overlays),
- rebased on top of master to avoid conflicts,
- added comment above pinctrl-0 in uart5 to explain we are only adding a
  pinmux and not modifying anything else,
- Link to v2: https://lore.kernel.org/r/20250221-ringneck-dtbos-v2-0-310c0b9a3909@cherry.de

Changes in v2:
- rename uart5_rts_gpio to uart5_rts_pin to stop triggering a false
  positive of the dtschema checker,
- remove PU from uart5_rts_pin,
- Link to v1: https://lore.kernel.org/r/20250220-ringneck-dtbos-v1-0-25c97f2385e6@cherry.de

---
Quentin Schulz (2):
      arm64: dts: rockchip: fix pinmux of UART0 for PX30 Ringneck on Haikou
      arm64: dts: rockchip: fix pinmux of UART5 for PX30 Ringneck on Haikou

 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)
---
base-commit: d082ecbc71e9e0bf49883ee4afd435a77a5101b6
change-id: 20250128-ringneck-dtbos-98064839355e

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
