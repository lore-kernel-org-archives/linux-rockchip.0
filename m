Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAC9ACD4F54
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 May 2026 19:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGUb11CKsE4wE4y+iZm6e7fI+mq1dwCDWFEUlDgLVFk=; b=T2Mt9Gq3liv9z2
	ZnDFy29OkSlCkmlELZ6384ow0mOveKll6EMQJ5vwGK6w7EBcgQk08ye4WJJi1BDq3uwQQuRd/qeZP
	S6UFOhzcmmbPoC8hZw3RhEykWP/dLV7s4LFfTIbiR67ohtzFOxigckJV5BMfr6VgACuLi+HLIyqLN
	24GQo8THmLfGDgarMBsSKRQBm1yH9N5/c233kQWka+5Tgm0l4mN3011HHo7UiVna7GClXZxHsyFdI
	n4T/x5OqvDAjdp9Q2vKlcRH8M9LJr1WNm2fxp7XZh+aEMisR3+hIqEvgJMXDUdEMSQJwDxE8gYXHG
	Rg8Sz6Ov1xJKNR+ZfzVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT2V7-000000089mM-3GOD;
	Fri, 29 May 2026 19:04:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT2V3-000000089jS-1AMB;
	Fri, 29 May 2026 19:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=kVhbNGRA9/1U4zr01JFCIiYUqAzoqbgB2Uy8C1LiRyI=; b=bxYZKY8SMo+pIwlYZmgW92XZET
	AYGEB8rautngNDly4qCmhuXEAsnmu0kAYXJPimYKT2StBKr5gyuAiPEDR5evwqsiv7HItu+QZz3TG
	gfVcU96Y7Nap9jmgmKD2Iiys5ysbd+T3NnAcQyuGj0U5tG2vsKVBEe7okKmMWT+IT9nDSoe4eOuEw
	64jFh3Zw01InOMjANbthjCtCKZE2x+SdwV0AMvkoaimfXC5Qg5HiFBjNJBsK1f3g4HJzHL26UCVtu
	Vh/zD9hqlS9HS+ttlrMT/s60T4qkZYSFNJmURiCSBQuGus2gwEhBasElMII4VUxnp5k+Vj9z+wtIw
	X9QN+AhQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	amadeus@jmu.edu.cn,
	jonas@kwiboo.se
Subject: [PATCH v4 5/5] arm64: dts: rockchip: Enable USB 2.0 ports on NanoPi Zero2
Date: Fri, 29 May 2026 21:03:55 +0200
Message-ID: <20260529190355.4148175-6-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260529190355.4148175-1-heiko@sntech.de>
References: <20260529190355.4148175-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_120405_360881_B3107DEF 
X-CRM114-Status: UNSURE (   9.54  )
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

From: Jonas Karlman <jonas@kwiboo.se>

The NanoPi Zero2 has one USB 2.0 Type-A HOST port and one USB 2.0 Type-C
OTG port.

Add support for using the USB 2.0 ports on NanoPi Zero2.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../boot/dts/rockchip/rk3528-nanopi-zero2.dts | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts b/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
index 9f683033c5f3..97d85124d21b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
@@ -338,3 +338,32 @@ &uart0 {
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
+	extcon = <&usb2phy>;
+	maximum-speed = "high-speed";
+	phys = <&usb2phy_otg>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
+
+&usb2phy {
+	status = "okay";
+};
+
+&usb2phy_host {
+	phy-supply = <&usb2_host_5v>;
+	status = "okay";
+};
+
+&usb2phy_otg {
+	status = "okay";
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
