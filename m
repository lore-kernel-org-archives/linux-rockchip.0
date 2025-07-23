Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3998C83F17
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jul 2025 12:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JjF1mZ+r5dd2X9MiDh2sncI5o0CMQZhWdEN3GRTol4=; b=z/h74jY0LWuFkM
	+LEifEe9iw9xzxUEncB9KkcaCuqlhSELvXDWv/77GQo6pSS+c5q7YEWtbqafivs7mVcVv9eO35LyQ
	lwfErBN5jtoDx+QWp3zZlRV4JFE5BBFGnlv/qDhZMqj/u3aaaDio8fR1LoENzhZW+NVBwACFIzyKv
	YShLhS7jxv2uBJJSFpZADVD4pM71iNvTwaGbr1cfvSzdwiuxmBZDRzTyLHGdY2nhA95p9x9iXJgdD
	fw6obuZLHna5fA5dwqut7xmweUzoFZBmLSwCl1qw49pRPNLasJrYim3PqBaKn3nArXBfvMKh/MpGv
	TW4Nb+8ta/gna4U01Rfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYrc-00000004wOO-4BUg;
	Wed, 23 Jul 2025 12:46:28 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueYWB-00000004tym-07BA
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Jul 2025 12:24:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273458; bh=paq99is5Qpo1XMY5/kQFG7Fqw0m5oXKo6BQg0A6slJo=;
 b=WukgApJEYB2cZYUT11hYKLm/kIHa5tGC44btjhds/JGjaslyKHW/OcxEE/2OYIoR24ecbQ//D
 KDotXMl2pq8JlIjvLN3dP4lguFg6w6ZEMn9QTFIWjILfK2bNssN31ll1jQGwHZInt1ub8/wpI2Y
 GSk1vSsoIA48+4j+vU8rWeGWX4s1QbBpEqzPqvDVfNrYzCyGevlVqWq/HjEshTpUDtS7LkrbWUD
 O3lMecfdJnf9xpgRjv+QuVoGWZdthkStB1Gi+LfppKcFV39SJEUJ+meiwj/RApBgmOcccvfiVtV
 O+TXQvkns6LL43e0W23sIDxVS0IQ9UReOzH+hN90ZaLA==
X-Forward-Email-ID: 6880d46dcb0ee86f9731a134
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
Subject: [PATCH 10/11] arm64: dts: rockchip: Enable USB 2.0 ports on ArmSoM Sige1
Date: Wed, 23 Jul 2025 12:23:08 +0000
Message-ID: <20250723122323.2344916-11-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_052419_110306_B2E06D06 
X-CRM114-Status: UNSURE (   8.90  )
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

The ArmSoM Sige1 has two USB 2.0 Type-A HOST ports behind an onboard
USB hub, and one USB 2.0 Type-C OTG port.

Add support for using the USB 2.0 ports on ArmSoM Sige1.

The onboard USB hub handles OHCI so only the EHCI controller is enabled.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3528-armsom-sige1.dts | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
index 6e21579365a5..d981c07a0a77 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
@@ -434,6 +434,18 @@ &sdmmc {
 	status = "okay";
 };
 
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
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
@@ -462,3 +474,15 @@ bluetooth {
 		vddio-supply = <&vcc_1v8>;
 	};
 };
+
+&usb_host0_ehci {
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
