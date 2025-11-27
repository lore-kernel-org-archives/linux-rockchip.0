Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E37CCFD2F6
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 14:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ROc/Xc8GiiFPIsUeGZCo6vb8vhpUW/SFw2v7PR1MZGg=; b=n5HThZ8QypoViC
	hoVG1Jqpk5K403K5wruirW267KLtlkabzCH6+21Zh+DFUFfCEbx5S2FZ9bHeRDoAuSVLreCnmrDaW
	f96ffDHhrc7Ua52oHyrceZzgl6GLmzC2zTTK/2Y+UD22LfYV4/2ELDFQnAy2gGHjy82PjFtxmzaNb
	qPUlDSYcFpglOXEhn2ZX4xMGiuBKSaq57lG9Ltbg2gGxFiba+xUIcT6x+CJYs2eaH2EYtY5IKKxs+
	LmHVPRnKHtSnwwODFu3/dokTRsPFMqTs8mFTcFP9aUbox/V8kQryI+eKOwhJ3n/7xalgZfjqB1iyw
	ws/EUnfBwYjzeNrglj8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOd6z-0000000GnFt-0jnF;
	Thu, 27 Nov 2025 14:36:45 +0000
Received: from smtp-8fad.mail.infomaniak.ch ([83.166.143.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOd6v-0000000GnEH-3WYi
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Nov 2025 14:36:43 +0000
Received: from smtp-4-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6c])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4dHJsH6G1Vzvnt;
	Thu, 27 Nov 2025 15:36:35 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4dHJsF74R5z6t6;
	Thu, 27 Nov 2025 15:36:33 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 27 Nov 2025 15:36:19 +0100
Subject: [PATCH] Revert "arm64: dts: rockchip: fix audio-supply for Rock Pi
 4"
MIME-Version: 1.0
Message-Id: <20251127-rock-pi-4-io-domain-apio5-v1-1-9cb92793f734@cherry.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQrCMBBG4auUWTvQDK2KVxEX03SqP8VMSKAUS
 u9ucPkt3juoWoFVenQHFdtQ4akhXDqKH01vY8zNJL2MIciNi8eVM3hgOM/+VSTWDB9ZrlMUXfQ
 uMlDrc7EF+//9fJ3nD1ezjDhrAAAA
X-Change-ID: 20251127-rock-pi-4-io-domain-apio5-26bc2afa8224
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
 stable@vger.kernel.org, Heinrich Schuchardt <xypron.glpk@gmx.de>
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_063642_010986_1AE0AC63 
X-CRM114-Status: GOOD (  13.66  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

This reverts commit 8240e87f16d17a9592c9d67857a3dcdbcb98f10d.

The original commit claimed that APIO5 IO domain (supplied with
audio-supply) is supplied by RK808-D Buck 4 as stated in the schematics.

The linked PDF has two non-schematics pages where APIO5 indeed is said
to be 1.8V. Reading the actual schematics[1][2][3][4][5][6][7][8], this
is actually wrong as APIO5 is supplied VCC_3V0 which is LDO8 from
RK808-D and is 3.0V instead of 1.8V from vcca1v8_codec.

This fixes the console disappearing in U-Boot, where the Device Tree is
imported from the Linux kernel repo, when the IO domain driver is built,
as reported by Heinrich[9]. As to why this breaks the console while the
serial is not exposed on any of the pins on the bank in the APIO5
domain, that is a well-kept secret by the SoC for now.

The issue "fixed" by the original commit will need to be fixed another
way.

[1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1600_schematic.pdf
[2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf
[3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1600_schematic.pdf
[4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf
[5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf
[6] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf
[7] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf
[8] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi4_v13_sch_20181112.pdf
[9] https://lore.kernel.org/u-boot/e7b7b905-4a6c-4342-b1a5-0ad32a5837cf@gmx.de/

Cc: stable@vger.kernel.org
Reported-by: Heinrich Schuchardt <xypron.glpk@gmx.de>
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Note: I do not own any of the Rock Pi 4 variants so I cannot work on
fixing the original issue report by Alex.
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 046dbe3290178..fda7ea87e4efc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -516,7 +516,7 @@ &i2s2 {
 };
 
 &io_domains {
-	audio-supply = <&vcca1v8_codec>;
+	audio-supply = <&vcc_3v0>;
 	bt656-supply = <&vcc_3v0>;
 	gpio1830-supply = <&vcc_3v0>;
 	sdmmc-supply = <&vcc_sdio>;

---
base-commit: 765e56e41a5af2d456ddda6cbd617b9d3295ab4e
change-id: 20251127-rock-pi-4-io-domain-apio5-26bc2afa8224

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
