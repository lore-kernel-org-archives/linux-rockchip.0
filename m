Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4591C25B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MIQfJEvwnxD4J3NQTgPwBWBunpsPF8vWlx/sXEZ+5ic=; b=uDoGIjtdH3F1uz
	7gko/28YiOO0CcYBn+ywv8qxryk7CRPrBfABhh5LBRMBeGEYWf4MaXcn2F3wq2hCrUvRs+wBtMg3B
	mTvCn6u/w2V6+KLmF6VM20kqw7dyYsP0lcZgitwuJeEgflFLSsUe4GMdRPtVMKYQAN7SZCktOeNIC
	PzI1J//aOurLeYCzpMvfRytyyUU74JanTqCOgzt3Y/kX7k7pCZmavXimD86k6kjV8KnEL8xCagq8M
	wyKEJnImHl9I4tljKvYEJKhRGoJSxcMdEMUoCG4iJQLPfBzUD9njeXqOrD0VcOar4rbtVQDxv7m6P
	J2cVViSE5wlEJF9AwjEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wll-000000016m3-47Fb;
	Tue, 21 May 2024 21:11:37 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WlO-000000016SL-11sf
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325866; bh=kTNtUvCVx2BdIKvV4sQmdXataht/4xiayUf/K28AyTQ=;
 b=dB5k1PWbfjrz9a7FZloO8mkx5076Tm+CvGIeClQ1x6RPupHHNPSSoIkLvjGllzY7lc+M2D+53
 KnNcjQeQJbIldjEJ2cQ4N4/tueYNTJgAUxK851H475cb0xwIgwzzT8+Pog69OVM5rKZjOWb1Day
 kn1KS8jAKYp35vTypM1cSbtfyhs8uXETpYPO49EmC7MzVng+LburP+NgQfOCBGVSm6+hIy/iN/L
 bjJBgvedvnavJuF1uEcJA4L+FYlyEdsGQkodPOvGRqL1TRyr1+TXGipS7MTMJ4Hx0gTRhEnZqb7
 h8Ji8wACzo2fE2yBdfhK7jrz7H0ss2SMLLhUfxtp9BYw==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sjoerd Simons <sjoerd@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 07/13] arm64: dts: rockchip: rk3308-rock-pi-s: Add mdio and ethernet-phy nodes
Date: Tue, 21 May 2024 21:10:10 +0000
Message-ID: <20240521211029.1236094-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d0de88b6b0c828344af14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141114_389145_006A1DF1 
X-CRM114-Status: UNSURE (   8.97  )
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

Be explicit about the Ethernet port and define mdio and ethernet-phy
nodes in the device tree for ROCK Pi S.

Fixes: bc3753aed81f ("arm64: dts: rockchip: rock-pi-s add more peripherals")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 26 ++++++++++++++++---
 1 file changed, 23 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index d4cf6026241c..f6fb90e13ad0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -144,11 +144,25 @@ &emmc {
 
 &gmac {
 	clock_in_out = "output";
+	phy-handle = <&rtl8201f>;
 	phy-supply = <&vcc_io>;
-	snps,reset-gpio = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 50000 50000>;
 	status = "okay";
+
+	mdio {
+		compatible = "snps,dwmac-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		rtl8201f: ethernet-phy@1 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <1>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&mac_rst>;
+			reset-assert-us = <20000>;
+			reset-deassert-us = <50000>;
+			reset-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &gpio0 {
@@ -221,6 +235,12 @@ &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
 
+	gmac {
+		mac_rst: mac-rst {
+			rockchip,pins = <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		green_led: green-led {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
