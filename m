Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AD65C61DB9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2026 11:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yx9QxWfFqKpj6DtyS5pnEKUh0hjw2xhK9sRB88vHmgk=; b=qr9XZBnrBsk7/5
	sGsKCfxqkveub/JosQfN/0vVxYBWAM8FbQTx4efU5kQ0bo5xPeexjqs6pvNH2HmHXwU2z7LJ8iCuu
	3MrqdPcYdB2o0xUmiR3eXW/Oojls9h6NwD24iIjDXIO1oS4RggyiCHOGZY1h2rwvZd7bZ4TqmHipI
	80z3+rUC7/tklvrFL4jvbGK/yhfHazpsUfbxt9OoPbOa5jRZhYopNEAy2X26r9ZtciJvfSJIYDlcp
	FuPH/EMGLkrWKx5JFcOYiiKhWfpniNBYB171NCqP5KnDl+j3XYsdeA3Qtxi+aqtsuYGteGLsBzUpK
	yX+pNz4z1e5wlTwscdSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv2K-00000005fsd-0p23;
	Fri, 28 Aug 2026 11:46:20 +0000
Received: from out-86.mta0.migadu.com ([2001:41d0:1004:224b::56] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv23-00000005fg8-1RZQ
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Aug 2026 11:46:04 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=wmwMhWrF6KGODbRj6xonI0AjvaUS1Sgws1dCNYUbeRc=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1787917561; v=1; x=1788522361;
 b=YD/1b/GtJDqWV6yIst0E6WvjXEm0Z8fs4mNJ0Qnd5JIUvnt0mwChOBOvWyGFzA/jaxWlwdFx
 d4dIGGLFIn3xtO2zkY3cKG0Ib4Av+jR49GqMMHNcY91qJFeKsMztrlyvHC2pX+uzmGaQl69gFOL
 JzzoEjHqF0yx5oSaac3QD/2C3QRExHqYzB4YsuMIABbAmMlpvxLpsFKYIRlAFUhiXj3s65VVqas
 RCkOMNl63ZGAegdXpC3YkRLhC54mokfyne3a1EFsr9DESYVuahRLcEFi+ds9U0qV87pazgZp2JK
 jWcb+CkmkiGuVlOMqMB8arukZPlIGB+bjrJASRQ335i4A==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 0812658b5ce5c458;
	Fri, 28 Aug 2026 11:46:01 +0000
X-Mizu-Trace-ID: 0812658b5ce5c458
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ricardo Pardini <ricardo@pardini.net>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Daniele Briguglio <hello@superkali.me>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH 5/7] arm64: dts: rockchip: Sort usb nodes on NanoPC-T6
Date: Fri, 28 Aug 2026 13:43:05 +0200
Message-ID: <20260828114530.1315798-6-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260828114530.1315798-1-diederik@cknow-tech.com>
References: <20260828114530.1315798-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_044603_522706_70DB6D8B 
X-CRM114-Status: UNSURE (   8.70  )
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

Nodes shall be ordered alpha-numerically by the node name.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   | 72 +++++++++----------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 2c9390d2968c..e42b2a14fc82 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -1164,12 +1164,6 @@ &tsadc {
 	status = "okay";
 };
 
-&uart2 {
-	pinctrl-0 = <&uart2m0_xfer>;
-	pinctrl-names = "default";
-	status = "okay";
-};
-
 &u2phy0 {
 	status = "okay";
 };
@@ -1186,15 +1180,11 @@ &u2phy1_otg {
 	status = "okay";
 };
 
-&u2phy2_host {
-	status = "okay";
-};
-
-&u2phy3_host {
+&u2phy2 {
 	status = "okay";
 };
 
-&u2phy2 {
+&u2phy2_host {
 	status = "okay";
 };
 
@@ -1202,31 +1192,13 @@ &u2phy3 {
 	status = "okay";
 };
 
-&usbdp_phy0 {
-	mode-switch;
-	orientation-switch;
-	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
-	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+&u2phy3_host {
 	status = "okay";
-
-	port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		usbdp_phy0_typec_ss: endpoint@0 {
-			reg = <0>;
-			remote-endpoint = <&usbc0_ss>;
-		};
-
-		usbdp_phy0_typec_sbu: endpoint@1 {
-			reg = <1>;
-			remote-endpoint = <&usbc0_sbu>;
-		};
-	};
 };
 
-&usbdp_phy1 {
-	phy-supply = <&vbus5v0_usb>;
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	pinctrl-names = "default";
 	status = "okay";
 };
 
@@ -1249,16 +1221,44 @@ usb_host0_xhci_drd_sw: endpoint {
 	};
 };
 
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
 &usb_host1_xhci {
 	dr_mode = "host";
 	status = "okay";
 };
 
-&usb_host1_ehci {
+&usbdp_phy0 {
+	mode-switch;
+	orientation-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
 	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_typec_ss: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_ss>;
+		};
+
+		usbdp_phy0_typec_sbu: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&usbc0_sbu>;
+		};
+	};
 };
 
-&usb_host1_ohci {
+&usbdp_phy1 {
+	phy-supply = <&vbus5v0_usb>;
 	status = "okay";
 };
 
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
