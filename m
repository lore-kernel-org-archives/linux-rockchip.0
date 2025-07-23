Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01FFAC83F17
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 12:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17YPTgPoXztxC4t0cSfzj15RMVeGT1SiCnPhRredIzU=; b=PmgaES+4ueSuZq
	HcFb10nCWOFrWPSiKUzJHht6Z9gQVzb/e1XPvyVcHF2tC5Wbo7U8HLjkk6ow3gLYNmCvdmVB+PeZt
	I0Ktj4bDYQlEtCb0EMp6gRM5vZ2aIgU1OjDD3g3SaMxgqJXvQiCBbOGpSvssYG6v9rQWB2+vlLMTM
	wfpLQCr32hTNnbFHOM2CB7ahvSpEj3+LvxCfEeqf7bfaHIw6IsheR9XkxhteR99ktcNGsaB9oRBTS
	cgwoXP80jQC3t+ZP+KkF+BXJjKQzXJhA7n1j4jxmCZAazrf60GyWm9L8pd0jnBxk2pfaeGaAaDKeN
	abMoGJ4Hlv0jkmioa08A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYrn-00000004wQg-1Wel;
	Wed, 23 Jul 2025 12:46:39 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYWB-00000004typ-0bjk
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 12:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273458; bh=weO9qVUiN6tEUR9RLEUl6LP42sZYtMP9t4YbYxPbAIE=;
 b=Rvj+1LnILap724zOIebm6aMyz3vXHXo6JsWeOUmC9RCRTtnN6EUIaQcgKR7C65HSo+mriIXil
 7JSwgAISDD9BROkfa9ICsJm6y57Rg1rEzdtNptxJ8O4jQNllr4StzBytfx425soOFUNi9yY9HW1
 ca167BkyMJJiFx703e23URjjwF9gxKfguonaURsDMc1hIfo7dvk++ZqxHUXBR7DDZSjIT60Jnip
 nASsa4L4mqmaOdZp2uyXY0KzbxiikFN0vRO/aPfqa9JYTReCwdAV1Fpa6NC2YhHfg6j/4OfcnD8
 8sUQ27fKXz/Yxi2cIPOsBjuqfo1msTLbXMaeyJxMtMtA==
X-Forward-Email-ID: 6880d471cb0ee86f9731a149
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 11/11] arm64: dts: rockchip: Enable USB 2.0 ports on NanoPi Zero2
Date: Wed, 23 Jul 2025 12:23:09 +0000
Message-ID: <20250723122323.2344916-12-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_052419_270418_92BB9FA0 
X-CRM114-Status: UNSURE (   7.87  )
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

The NanoPi Zero2 has one USB 2.0 Type-A HOST port and one USB 2.0 Type-C
OTG port.

Add support for using the USB 2.0 ports on NanoPi Zero2.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3528-nanopi-zero2.dts | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts b/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
index 9f683033c5f3..38a73ff05b7c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
@@ -333,8 +333,37 @@ &sdmmc {
 	status = "okay";
 };
 
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	phy-supply = <&usb2_host_5v>;
+	status = "okay";
+};
+
+&u2phy_otg {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0m0_xfer>;
 	status = "okay";
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	extcon = <&u2phy>;
+	maximum-speed = "high-speed";
+	phys = <&u2phy_otg>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
