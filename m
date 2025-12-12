Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4C60D59F44
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 22:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R2P/K6khhorWwuhZ6uuMUD61L2frZVAHY8F82wYL3QY=; b=e8S99IY2hOFWIv
	Yh1ffaxCl+EeBGMj7sZ/Ayzj4ozw9RmQila2nkUvNa8XfwGZF0TKURzxtrXhA2f+ypcyfxZchhOQ1
	HcnvhZ1qQws2dFypYh4xMWOEXFb8yOt2JLPm6nRpjgBvavchpXtoiC0EvjcNvASh1LyS0w+DFA21N
	O5ZthybBhYDoswg436d1IxndEguu86VIxYwoM5EFU1OX0kZEqBBeqXjMMJnZKxcCMEMhtIkw0XXbs
	411IbmJfy5zo8TAYYd26pKQ2GPI071Z709BQBngerXzTBsQhWlnWCnrXZQvxcjztBhUZjpS+kLBsJ
	TgVWDoqOEPKGeN/Bla9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUBDb-000000018TA-1gIp;
	Fri, 12 Dec 2025 22:02:31 +0000
Received: from mout01.posteo.de ([185.67.36.65])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vUBDY-000000018SJ-3qvd
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Dec 2025 22:02:30 +0000
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 7EA96240028
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Dec 2025 23:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1765576945; bh=750ln4d5IZ+5twsG5klcrtotTQHvrYbgJe5RP9Qdpfk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:From;
	b=OOCVLMyJ27bdtBJOhWq2K+khLTGgFuAebQ7Fp0HIbBinl5PGTt/vFBZam9hbHF51g
	 Vr8yeRC1bCTdksm1E9fbSXhHfnnAmxmcp33vDVYUZ9YoVnnfcbQTHwsEJp8UD+NeFs
	 yh03FKdeXvlpPbrVN+Q8Tun1jgq9SXpdPlt2Wi56NeEjC5dZ5xolfM/jFlB9hzGZmW
	 /us2e1ohgO13JcncZ0A01CKHZW6MemwTiCOtBWLXKO21OIsCpcvFYn1u4XimQcWdJg
	 PCij4Ng3xcihBMT3nzOOPbk7BLM1UjW9X/ysGTovU92ZdugRqoz2ZO19ZGQ+9mfALO
	 9DppwCkQ1BT+Q==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4dSk2l69Nsz9rxL;
	Fri, 12 Dec 2025 23:02:23 +0100 (CET)
From: Adrian Kossmann <adrian.kossmann@posteo.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Adrian Kossmann <adrian.kossmann@posteo.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Adjust RGMII TXD/RXD delays for the Rock Pi E
Date: Fri, 12 Dec 2025 22:02:24 +0000
Message-ID: <20251212220151.574860-1-adrian.kossmann@posteo.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_140229_086680_6A7531CF 
X-CRM114-Status: UNSURE (   8.62  )
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

Current RGMII TXD/RXD delay results in link instability
under load, with throughput eventually dropping to zero.
Adjust the RGMII TXD/RXD delay values for stable link
under load and stable Gigabit throughput

Signed-off-by: Adrian Kossmann <adrian.kossmann@posteo.de>
---
Changes in v2:
- Changed the patch subject as the last one contained
  incorrect changes
- Drop incorrect PHY compatible string change from v1
- Adjustments to RGMII RX/TX delay values
- Link to v1: https://lore.kernel.org/linux-rockchip/20251209210658.458506-2-adrian.kossmann@posteo.de/

 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index a4bdd87d0729..29ff0b8b8f18 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -153,8 +153,8 @@ &gmac2io {
 	phy-supply = <&vcc_io>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmiim1_pins>;
-	tx_delay = <0x26>;
-	rx_delay = <0x11>;
+	tx_delay = <0x1a>;
+	rx_delay = <0x14>;
 	status = "okay";
 
 	mdio {
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
