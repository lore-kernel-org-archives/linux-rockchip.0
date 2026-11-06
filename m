Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545BE606A326
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 17:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OdHbpPTn;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=uvLDirgr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Acd+zRb6KCeYrkQ7LTScjljJbp7JvODhdlaOJ3Tp8Sg=; b=OdHbpPTnzh6w1oGY6vFWEbrLmO
	fSVBdrYbuvgnQD6hvydjqmMLlBMQyd/5EMoUDmqm+8JeDnO/iUMjCI8AxdxwknE8Jmcp9kEscqPgt
	GjXvPqfuHRQICR3pXm2CPuRWzE0gDodrVHoILupeXbn+tZaOHbj20n5/lZn1ZK3Svu8iWI0tfQ5EZ
	h3YNzmuwo0qCiIBN3d701dfp4znYP9jyi6oCe/TukGpR7FKLsU4J+X/2AjLlqKBMgn/V11rn7sNNT
	UiMh7Ll/3aF0LSoNLU902Nt4AFYJAhNh7FPTLoaun2P1/Diq+NUDSMNWDESCL6ODWjACx8diC/CyC
	W7vLQOdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPO7J-0000000DJ6E-0iHE;
	Fri, 06 Nov 2026 17:52:45 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPO7G-0000000DJ4h-24Tr
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Nov 2026 17:52:44 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-48fd2e38825so608616f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Nov 2026 09:52:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1793987560; x=1794592360; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=sHP2oF/bjdk4Sr2x8S+jhHLHTWdyktVHIEfvBs5hv5Y=;
        b=uvLDirgr4cPRloX0hPzBxk78EzJdZbYyw2+2W9hbi9ovUsXGYX+kWDvfBmi3MVWR2W
         rHzRKdEU+e9C2sRjxORASFdQQx2ccEl6XJmIS0GJzX1SwbP1XmDX9mc7BYUKy0+4eyFm
         BiJxmZUZYJrkqNyn9ZGWA9l/WkM7vCmG4NG4oLK8OMK6B1s7CLv6oeT4gqHVKzyf8XnR
         2HLsKWEH45tBaog66T1FY2T0pJ00cqxj2dDG4cfxj1KiEYYlBgYUJkVwBUPDpDEkKvck
         eT4shi1JZykYhTg6FY7c5vZgiZMZoHcbz2+X8edWv+rwOPpP8kqKKbA2bbUiqVUc9B3o
         MDGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793987560; x=1794592360;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=sHP2oF/bjdk4Sr2x8S+jhHLHTWdyktVHIEfvBs5hv5Y=;
        b=cvGsA2SYEX/B7/R4FL7gCwG0blSfs1Quc6eF6tb7uGCox+D/7ZU2/EF5JRLoUiyNgT
         FRGo4HMzUWPF68arVGSWd1iD5zXHDlscgJoTRn+D058EEg5sp7fQPpvdkPkriQDck96A
         gV4WVbVlvKBuZXDid9eywNhqbx+5d5rn2QFiTXhh0w3G0+41mPe/0rIw9KSnLn1aFeWG
         bOvzH5lnYOLWCbpHkutiWoY1+wvd/QV/XKr3Ytw/1YueR1JNCz5qjOFYsa791c/QOBxK
         1YRQs9RFIKrkO8j4J6VdfP050ezdGDyu9K1cJjN21ZEz/73IwyTdYEoxkfOI9g6KgJj8
         tpqg==
X-Forwarded-Encrypted: i=1; AL+hErHjPCVBs87Tm3+YHsddX/wlW3lxhbcTfyZ3ONEz9rm//nWJCBnTLp0hxRFGM8xIyQ7jxNCWHLsKHeXPUGRt8w==@lists.infradead.org
X-Gm-Message-State: APuU4Z+qhgDBeh/05uUk5B5IeY/OWMQaRpEja6AVikvq1WcfTljM0D93
	wGcQRSsnRZ8MuBD2zoheg+QXVq1rfgi7V7oh9HyIYUX1sewAoC4dh96tElV7YOcby4o=
X-Gm-Gg: AYBFou3BdRPe+3AogZI27DWhMvmPT3HfYOD4xpFYj7YVSqIWhceH1Lkpy42OGSMvYO0
	G2Zbo0yfz+G53odf6UXccmHk+iHjU3tU4Bm1jEFJi5aNSH8S/JDa3YUhrWMzJF3llcNWr3EUoYj
	9Bt8FqnbF4wbUschei9leWvCjIdM7KEVI8d9Xl7PuRvnelVYt9n8rUpDKItyYi2Q+9GX9NQmeke
	GYnpZcAzlo5aevvC1Ub0vikeefnfF18YNTntcoTjvNik6m5dSqOvn1kT/RA174K8bHIMZhn60Hs
	WZbr3J5JRj4/Q6wgQJ63vFRm7EiinwT+N3TDN9Dax+8vcml6fSQdev+lUV+UNfqjGrb1STve1EB
	qWo4eO0kHblv5g6fVakrKodogZSYiyzUA2qLInPqk4HsCNDUwVq+wWhYZPbVk4Sk3KMzkkZmPtV
	v6EHI8b8KDkgeDqscdthmJahehJjmFL4wzwzrFqadQfztfbVTN9TUDNPoj2NvEc/xZsyNkEIRSI
	JxF6hRZNo9PJXbedgcLnOTCXm2RlesVm6vw5u219t9XDpGsMCYQdOsw+o3c5ZtUwoNekCQfIo8K
	ls6XbgtXWHQqsrzt6w/DJE/fhTmd5PTGMSKOJoCnVTfFbeoJA0ABYdeJXtXjPmO6FG2CuoQRdxC
	C2T53lPw6vw==
X-Received: by 2002:a05:6000:4b17:b0:48e:4561:8a17 with SMTP id ffacd0b85a97d-49275fe4f50mr6153448f8f.16.1793987560021;
        Fri, 06 Nov 2026 09:52:40 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-492d6d6382dsm4427671f8f.19.2026.11.06.09.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2026 09:52:39 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 06 Nov 2026 21:52:35 +0400
Subject: [PATCH] arm64: dts: rockchip: Describe the Type-C port on RK3576
 EVB1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-rk3576-evb1-husb311-v1-1-99c2f57ea2a5@flipper.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMTQ6CQAxA4auQrm3S8jMQr2JcMGMHqgmaKRATw
 t0ZZfkt3tvAJKkYXIsNkqxq+p4y+FJAGPtpENRHNpRUOmZymF5V0zqU1TOOi/mKGYkkhhjrvqM
 OcvlJEvX7v97up23xTwnzbwX7fgDI0qS2dwAAAA==
X-Change-ID: 20261106-rk3576-evb1-husb311-00efcff4a808
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5103; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Bsdyugnk6OoKTZGf3182OVL5hFUwb7G3DqCpOh/DVH8=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWS9E356PT+1Oc+onVHtN5c/m+fkZfEfbN/o3K4unBac9
 spw9eeVHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oZGOsY4RAxenAEy1piHD/0jlzK8xASsOlqnsPih7Ujw6X1Byvvb29dkyOWdP9cVbqzMynN3n+Cw
 3NoajdvvXrhNybAnxvYlB1670fhav3FKXwf+WBQA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_095242_576732_7CB2C484 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RK3576 EVB1 has its USBDP PHY routed to a Type-C port with a HUSB311 CC
controller and a fixed-voltage VBUS supply.

Describe it in the device tree, including the wiring for both the USB and
the DP side.

This makes the data roles follow the Type-C port's negotiation, so the
port stops being host only. It also leaves the VBUS regulator to be
managed by TCPM instead of being hardwired via the tangentially related
phy-supply on a USB controller. DP lanes are also muxed dynamically by
the USBDP PHY based on the Type-C port's negotiation, so the hacky fixed
lane muxing also goes away.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 150 ++++++++++++++++++++++-
 1 file changed, 147 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index f83d129f96f1..a9b27cdb2dfa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -11,6 +11,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
+#include <dt-bindings/usb/pd.h>
 #include "rk3576.dtsi"
 
 / {
@@ -334,6 +335,22 @@ &combphy1_psu {
 	status = "okay";
 };
 
+&dp {
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_dp>;
+	};
+};
+
+&dp0_out {
+	dp0_out_con: endpoint {
+		remote-endpoint = <&usbdp_phy_dp_in>;
+	};
+};
+
 &gmac0 {
 	clock_in_out = "output";
 	phy-mode = "rgmii-rxid";
@@ -772,6 +789,58 @@ regulator-state-mem {
 &i2c2 {
 	status = "okay";
 
+	usbc0: typec-portc@4e {
+		compatible = "hynetek,husb311", "richtek,rt1711h";
+		reg = <0x4e>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus5v0_typec>;
+
+		connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			data-role = "dual";
+			power-role = "source";
+			source-pdos = <PDO_FIXED(5000, 2000,
+						 PDO_FIXED_USB_COMM | PDO_FIXED_DATA_SWAP)>;
+
+			altmodes {
+				displayport {
+					svid = /bits/ 16 <0xff01>;
+					vdo = <0x00001c46>;
+				};
+			};
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_drd0_hs_ep>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy_ss_out>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy_dp_out>;
+					};
+				};
+			};
+		};
+	};
+
 	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
@@ -944,6 +1013,14 @@ usb_otg0_pwren: usb-otg0-pwren {
 		usbc0_int: usbc0-int {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
+
+		usbc0_sbu1: usbc0-sbu1 {
+			rockchip,pins = <2 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		usbc0_sbu2: usbc0-sbu2 {
+			rockchip,pins = <2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	wifi {
@@ -1008,7 +1085,6 @@ &u2phy0 {
 };
 
 &u2phy0_otg {
-	phy-supply = <&vbus5v0_typec>;
 	status = "okay";
 };
 
@@ -1051,13 +1127,74 @@ &ufshc {
 };
 
 &usbdp_phy {
-	rockchip,dp-lane-mux = <2 3>;
+	mode-switch;
+	orientation-switch;
+	pinctrl-names = "default";
+	pinctrl-0 = <&usbc0_sbu1 &usbc0_sbu2>;
+	sbu1-dc-gpios = <&gpio2 RK_PA6 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio2 RK_PA7 GPIO_ACTIVE_HIGH>;
 	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+
+			usbdp_phy_ss_out: endpoint {
+				remote-endpoint = <&usbc0_ss>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			usbdp_phy_ss_in: endpoint {
+				remote-endpoint = <&usb_drd0_ss_ep>;
+			};
+		};
+
+		port@2 {
+			reg = <2>;
+
+			usbdp_phy_dp_in: endpoint {
+				remote-endpoint = <&dp0_out_con>;
+			};
+		};
+
+		port@3 {
+			reg = <3>;
+
+			usbdp_phy_dp_out: endpoint {
+				remote-endpoint = <&usbc0_sbu>;
+			};
+		};
+	};
 };
 
 &usb_drd0_dwc3 {
-	dr_mode = "host";
+	usb-role-switch;
 	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			usb_drd0_hs_ep: endpoint {
+				remote-endpoint = <&usbc0_hs>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			usb_drd0_ss_ep: endpoint {
+				remote-endpoint = <&usbdp_phy_ss_in>;
+			};
+		};
+	};
 };
 
 &usb_drd1_dwc3 {
@@ -1079,3 +1216,10 @@ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_dp: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp1>;
+	};
+};

---
base-commit: ddfe51b0a0f5dc9e415cc2c8ad8db17532dd426b
change-id: 20261106-rk3576-evb1-husb311-00efcff4a808

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
