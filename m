Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22B0AC27C75
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 20:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dcXwRq+pKgfU2SvbOYJ4NXymijXr3LGqfoHFplcxYU=; b=qVS6ZY0qe56pzm
	ltBkJOcb9vDL2+TvAJ/n79pR1Ff5Php8QZtwrOhqOQcWXcyhnyxPv4z/EZTVLt/KVZNVtai98sM2l
	Jub1clhkm1R/ccDHKos6yQ/jjSbmLEPcSttOAUS8/0jtZxiskAJHcXsVS3vOhkygbtv5T9yzTpY1S
	HNFctTB396sXnub2FusxR5LUqFWyQChxVAekNvL/egKQ2GG1mRYExTkLji4RQjLJ/Htz5K5AuQWD/
	70ZQg2R/Q2MLvPTu5YaDIPlYPJQdQvj+Z9Xn6EZJ0S6BXM0Jj63OYjhMN+lIE7sfDbVdonqJmozxD
	3b9mn1u/Kl/RqWqLtQ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHUzX-0000000E6QV-0TQv;
	Wed, 12 Jun 2024 20:54:47 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHUzE-0000000E6DV-21Nm;
	Wed, 12 Jun 2024 20:54:29 +0000
Received: from shout02.mail.de (unknown [10.0.120.222])
	by shout12.mail.de (Postfix) with ESMTPS id 6B134241947;
	Wed, 12 Jun 2024 22:54:20 +0200 (CEST)
Received: from postfix03.mail.de (postfix03.bt.mail.de [10.0.121.127])
	by shout02.mail.de (Postfix) with ESMTP id 542CB240B18;
	Wed, 12 Jun 2024 22:54:20 +0200 (CEST)
Received: from smtp01.mail.de (smtp01.bt.mail.de [10.0.121.211])
	by postfix03.mail.de (Postfix) with ESMTP id 3320480192;
	Wed, 12 Jun 2024 22:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718225660;
	bh=BvUjBepg9rtChkeT/pdj72DFwlLCiHqhtDRbHO1RpT8=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=Xv3IXYUrqafsca3VME6fWD8IiJ3nt1og0+DXjskBitKFPJxsDC965JFd4S7ChlpY7
	 0ixR5w1dnZsZb9xt4ZFM9+G39Ql+/aTSKPhwF9HXtRkP0QLG7R62ZxTOgCd3HvB93X
	 RXQx6uwFVWSvNdvjctYGeKrYT+hLvmW36YF29tSPzyv8LTwAouwLYRBcwzPbNMYWR7
	 maFfFrhl/Sdqi6YJbE//Qh14egbjgfA3qwe0GkafI2e470eBMyrL0WTBabuNO0X0eH
	 g0hJIH+j0Iwj6HflJY7VBgaWpR55FTwUxmJuULy6QJy7CuwHKqnMQNzFkWBTa8vRf9
	 anOXKckBUeLdw==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 251F52400C1;
	Wed, 12 Jun 2024 22:54:19 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: rockchip: Enable lower USB3 port on NanoPi R6C/R6S
Date: Wed, 12 Jun 2024 22:48:13 +0200
Message-ID: <20240612205056.397204-5-seb-dev@mail.de>
In-Reply-To: <20240612205056.397204-1-seb-dev@mail.de>
References: <20240612205056.397204-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1458
X-purgate-ID: 154282::1718225659-FE5BF670-EFB7948E/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_135428_729328_11BE8A10 
X-CRM114-Status: UNSURE (   7.97  )
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

Enable support for the lower USB 3.0 Type-A port on the NanoPi R6C and
NanoPi R6S. The upper USB 2.0 Type-A port is already supported.

Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
---
 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 69d0f1f2349b..9676e7194451 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -740,6 +740,17 @@ &tsadc {
 	status = "okay";
 };
 
+/* USB2 PHY for USB 3.0 Type-A (lower port)*/
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	phy-supply = <&vcc5v0_usb_otg0>;
+	status = "okay";
+};
+
+/* USB2 PHY for USB 2.0 Type-A (upper port)*/
 &u2phy2 {
 	status = "okay";
 };
@@ -755,10 +766,27 @@ &uart2 {
 	status = "okay";
 };
 
+/* USB 2.0 Type-A (upper port) */
+/* PHY: <&u2phy2_host> */
 &usb_host0_ehci {
 	status = "okay";
 };
 
+/* USB 2.0 Type-A (upper port) */
+/* PHY: <&u2phy2_host> */
 &usb_host0_ohci {
 	status = "okay";
 };
+
+/* USB 3.0 Type-A (lower port) */
+/* PHYs: <&u2phy0_otg>, <&usbdp_phy0> */
+&usb_host0_xhci {
+	dr_mode = "host";
+	extcon = <&u2phy0>;
+	status = "okay";
+};
+
+/* USB3 PHY for USB 3.0 Type-A (lower port)*/
+&usbdp_phy0 {
+	status = "okay";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
