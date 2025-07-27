Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A107C87FCE
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Jul 2025 15:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZ9f1Lzfhp3Cb178tRhMW487nDMl4iUgIn9lXU2Vl1w=; b=P5JTO8w3IWRb/Z
	qP+ModfTG5A886G60kC4/siPlW+9G089IEgDiAMq9cLOx0+kcVd/mj88oT1g2ahuZnM7hRwGt7u1Z
	deiWojH6UaAN1y3zX9hYw92mzKR7GSZhc2BrJvDUSHQYQrMo31ZTVG7haBve9huvXjTy60M/10aK6
	rvfeAWGP6WZJnH7oVq1sArp98dk96V7b0h+vfY51vT0ei4kH9zi0bPvZXTXwkCIMiRppJaLRQ6KR8
	hJn7wooLl9eEisD294bne5wW3E0XtVzpJohYruk1qHVgZnqWvWodENoYomyBz0giBgeOcume0zC6N
	gqWgrUWbdOy9kGTsbggA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug2tC-0000000Coqi-0YZV;
	Sun, 27 Jul 2025 15:02:14 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ug2bv-0000000Cn7d-13Oi
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Jul 2025 14:44:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753627462; bh=3ETGr9nGI2JrVhT/rXZdTDhtjuBKP4m13iSkZEx+nqA=;
 b=tDrLTID3o2FTuhtEQ/otmm53YgIPq6gL/pYVY9ViOVe6wbs6FkVtJKcYuOaDdc5kGW9MQ44zj
 MfjXzTwE4VBUE9ukwUK9QzhBTiguBv4GwJ9nNhBAvfnQZyWnbuhq1uifwkrr+VHKCxVQbFZYTSP
 p4e/Otc4ER0uAV8eMOPf+pB4GYunQ9MTtC2zmYo9f39Bs/VH0iFUhtqhONYP5B3FL/T8Gws3gt7
 cVUsy+HRSlRvt6AVToseur9fcy7RzkdpfXZvzMsHIloTacgwSWuoNtuxiW49LHnrB6Y6Ii212Lf
 7O5QKcGoTHYwwJPOLai9OAXu/yKJoAGU34Ch84ewL7Lw==
X-Forward-Email-ID: 68863b43c752737c6c097874
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 1/3] arm64: dts: rockchip: Add SFC node for RK3528
Date: Sun, 27 Jul 2025 14:44:01 +0000
Message-ID: <20250727144409.327740-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250727144409.327740-1-jonas@kwiboo.se>
References: <20250727144409.327740-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250727_074423_383474_7C163517 
X-CRM114-Status: UNSURE (   9.15  )
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

The Flexible Serial Flash Interface (FSPI) controller in Rockchip RK3528
is similar to the one included in e.g. RK3568 and RK3588.

Add device tree node for the Flexible Serial Flash Interface (FSPI)
controller in RK3528.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3528.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
index 3e51a3f51e05..49886a4b58f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
@@ -1077,6 +1077,18 @@ sdhci: mmc@ffbf0000 {
 			status = "disabled";
 		};
 
+		sfc: spi@ffc00000 {
+			compatible = "rockchip,sfc";
+			reg = <0x0 0xffc00000 0x0 0x4000>;
+			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+			clock-names = "clk_sfc", "hclk_sfc";
+			power-domains = <&power RK3528_PD_VPU>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		sdio0: mmc@ffc10000 {
 			compatible = "rockchip,rk3528-dw-mshc",
 				     "rockchip,rk3288-dw-mshc";
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
