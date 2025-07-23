Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CA0CC83F1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TUWHMrOq+dTAdsyqTvkpyYtDKz/Fp6N8DSLRII58DI=; b=WzclqXpC6mKj7g
	bVYOo2hFHqGHxWd4tqmiPY6mmUIpGQqzgDO9neA5mevfLUCFGhylcIq1S7WUQwY2l28q8e6YAVg+n
	55cS23/hlu7hBb9wQyxpYhcMcI/EwHLWwKDlWSnlG8AwzNdvye2jOEjwPbJ2IA6hpfXgj/NRh631e
	5yiyBZu24/np7/qzoy24jRZ4z9tEjOcNEWo1IL6PSpDHNU+0Iczd2Tk+NNMRaVa1QBSSegBaUiFqa
	Z9J2/jBYV0KYYpCAEsgA0Jyc5NvIWGIF6cAq3ZM2H/FhyIgSUu8ajh7VZVMv1f74BTs7kSVAI4fms
	Z1yvNcA60xEdJHBNyFPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYrS-00000004wLv-1Qsp;
	Wed, 23 Jul 2025 12:46:18 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYW6-00000004twa-0bGq
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 12:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273453; bh=C3Sf3TjZd+mvtKJHnbLP2Cb4CrvYDvInYr+aLRUdZlM=;
 b=dTFVf6xGxEY4stKGUKk5l9owMxs7dalF8oC3X8oy4LhfVnIsUGC/uBXoyBzmm6zsDQD3HJbQN
 h/k0EzN5CLFmbFDKrvEXTKDQSSSuyrR2BfWZyJYZV30YOgbY/z984YoXxhSeL8l7+hpLcg7m+DE
 r+HM03VF3X+32BGKB5iu4kqvaTQNEP9W/wp+Ad8nZPHd8MR3k9LZiaI6A6r6pXOWwD9//ZleBbJ
 cU2zX64z8+t9AuaW2BC8PCaueg3eqK3raMyuTpoGfToIgRnxUBJxiXIhSlUF9dDxYnGrgkTPBRi
 9k3ygrq2rQqcTDk6Tb4Zh9fjMezTOXJrs03tI5vYyGYw==
X-Forward-Email-ID: 6880d469cb0ee86f9731a11f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
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
Subject: [PATCH 09/11] arm64: dts: rockchip: Enable USB 2.0 ports on Radxa ROCK 2A/2F
Date: Wed, 23 Jul 2025 12:23:07 +0000
Message-ID: <20250723122323.2344916-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_052414_218860_EFC83884 
X-CRM114-Status: UNSURE (   9.12  )
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

The ROCK 2A has three USB 2.0 Type-A HOST ports behind an onboard
USB hub, and one USB 3.0 Type-A port.

And the ROCK 2F has two USB 2.0 Type-A HOST ports behind an onboard
USB hub, and one USB 2.0 Type-C OTG port.

Add support for using the USB 2.0 ports on Radxa ROCK 2A/2F.

The onboard USB hub handles OHCI so only the EHCI controller is enabled.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts | 12 ++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi b/arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
index aedc7ee9ee46..aeced80f1ef2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
@@ -286,8 +286,21 @@ &sdmmc {
 	status = "okay";
 };
 
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	phy-supply = <&vcc5v0_usb20>;
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
diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts b/arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts
index 3e2b9b685cb2..a517dfe9930e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts
@@ -8,3 +8,15 @@ / {
 	model = "Radxa ROCK 2F";
 	compatible = "radxa,rock-2f", "rockchip,rk3528";
 };
+
+&u2phy_otg {
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
