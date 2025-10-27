Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E238CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 00:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Rw+ahgXTXbbJn4WFZVtO02npkFmRPdvulMwDbB5AiE=; b=q1UAECkuNPc54V
	yYfZOACAQOFuqn4UcRYul5je/EiKqU2PxhX3Q/5Yenc2UZRjBNJSCcA/M02tIPejf76bYuRFBVGqD
	ih3RepjCahuAIay2P1ON5VekOO49xKDwBZiz+XYU+IAdDza/E9k1p4AIRkyJathH0dZ+AGGbMO031
	lTKjAWRDix+dNp647urNUPlJsDGZXpuiJhulFkDRppvz1EDLYogFQ/s1tj38OFULPHbIVGIz4mGYu
	cET+TIPgTZUptKBXkg577bwfb2digyZ4nHs6iaKf1R5iQvRl3aY50LCIvmhjJk0qEKK/Iy8LLR+h8
	OJhmhf3HhfY3gDySqKqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDBUr-0000000CupN-3OmF;
	Mon, 27 Oct 2025 00:54:05 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDBUo-0000000CuoY-0tau
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 00:54:04 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59R0rbfd030125;
	Mon, 27 Oct 2025 09:53:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
Date: Mon, 27 Oct 2025 00:52:20 +0000
Message-ID: <20251027005220.22298-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_175402_491349_263B0999 
X-CRM114-Status: UNSURE (   9.44  )
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

This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
audio-supply for Rock Pi 4").

Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
[3][4][5].

This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
and the garbled serial console output on Linux.

The ES8316 headphone and microphone are confirmed to work correctly
after this fix.

[1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf p.14
[2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf p.14
[3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf p.14
[4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf p.14
[5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf p.14

[6]
=> led blue:status off
=> sf probe
SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
=> led blue:status on
=> sf probe
jedec_spi_nor flash@0: unrecognized JEDEC id bytes: ff, ff, ff
Failed to initialize SPI flash at 1:0 (error -2)

Fixes: 7ebfd4f6b52a6 ("arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+")
Fixes: 8240e87f16d17 ("arm64: dts: rockchip: fix audio-supply for Rock Pi 4")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
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
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
