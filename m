Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6314D606A31E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 01:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U1Y+Rt5K;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=RpB/zLKG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=USePwvW6duxv4S9cOdnZ+Jsm3dWVI/8141szfyZqBzM=; b=U1Y+Rt5K477hJ0XVqwKqkhqZTk
	v6aalLwN9nwejy5X0l6Aj9IybW0nV17gtbA/Ye0+egpPe6WJY/xgh+oiDgUXs/cPraUCnTN33kXx2
	pKXJ2Ajyv8e2ShYCbKa6Fitx6fyRxxYXCCiqiZMuFkMjWf+8LFZ/A1tKyhyFzPCLRMeUpSAdQpLCR
	+RYhAjJ9vyY5hbH7CaTeY+m1l1mq0cY7Rn5I1DYUm+KfmNZSFWREk7yj0lWR91VvhSAEd/mBrWw9R
	dL3BspeDClNVAC+nxpR+3PqN6m45/xLdrFUl6kSYac8TPM4jylxV6k7aiQ6K/ZgH9ESJOSk2odujn
	wtrNz5mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWO5e-0000000Bm1K-3Rhv;
	Thu, 26 Nov 2026 01:15:58 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWO5M-0000000BlgH-0bOH;
	Thu, 26 Nov 2026 01:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795655734;
	bh=tQK37NTbi9NxpR6L0RzRWeTmpieiVQIIDCqFH3tLBAw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RpB/zLKGQNJ7NeVHSD867oT93MQbS1cucF0Awez365Qh349HNDljUMECZy/Kb4XIn
	 Hh4KXK8Y8jJMh3PbXxXam0DdbQUm4CRqZ+rr4vbtC8rAvYC66QfMOw8acXMERVorbB
	 0tJn6+YCxldzZ1vUIgUMtoh3PEGL7Mj5fRORpXN7EPdut/+K6NaCL66U4Oj3VVlo8n
	 r+af6SVoyxeJ67MUb+dtiSLPZUDvMZf2Qz2zm06YEnzjVJ5+OtGLXk4/ywnn1uVs3x
	 8XA44baW8DQMr3e2CqG9lFxEtxsGZXDlu0jXjYgFp5nwV4FMZvHhUcpddFv2Ne9Ntf
	 /D3WoNjf4IFjw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 612FF17E1296;
	Thu, 26 Nov 2026 02:15:34 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id C583B480038; Thu, 26 Nov 2026 02:15:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 26 Nov 2026 02:14:33 +0100
Subject: [PATCH 05/11] arm64: dts: rockchip: Add USB-C DP AltMode for ROCK
 5B family
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261126-rockchip-usb-c-dp-altmode-v1-5-7991eb5bb426@collabora.com>
References: <20261126-rockchip-usb-c-dp-altmode-v1-0-7991eb5bb426@collabora.com>
In-Reply-To: <20261126-rockchip-usb-c-dp-altmode-v1-0-7991eb5bb426@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Cunhao Lu <1579567540@qq.com>, Chris Morgan <macromorgan@hotmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3056;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=tQK37NTbi9NxpR6L0RzRWeTmpieiVQIIDCqFH3tLBAw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGsHiDX8mRgGkqrhZL9QKcSDLeAbwmyd3758b
 hidu08kuUfgO4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJrB4g1AAoJENju1/PI
 O/qa3UIP/2QzmCq87I6bYrP2kqfZQeRXIMnwYvT/nQpy479HNkhnAYLRf+RMBJ0t1s3BV3q/gcf
 3T4oT0PFwyVd/jeT/CkDARYA//R+ZFdjSnUNzQLsOZ45nPtN750AOqbwyixz81javk3ntY5n8j7
 g3WiG22rJksSSSuYHBwhrzfM8+DlJPpAhIf9c2LogMCbch9CvK5l/DPnzCZ7v5K4e1zM8PNykSV
 Ef6vVJ0Zwc8sFD8kmOFyzWwzL8AWlm/QFPiYaSu6sUcbmQl0dqr5CBdF+8w3x80RFBrVK9KH2Aa
 qUFmuctl1ZPheVVCnAf8cPMs/I0Vky+cUHT4Ho3SDKvOAamEwmzaYMB+8w8+2s/+weqREjoi5tA
 ncGVu4x4A5HQ6IOio8wbC434jPqfeNVlpqffSMmngj3B0djqTn42BearbDTncw3bmADHbrLvmpi
 Dsvu6KGWPEgBCbRy/XoY+S37bOnhVF+K5HppqJz8edolNp7mH0u8YQRNlurDjA+i295HoryIT7+
 e8mzudufNRfiVU0o4NHhwuCELMh08VXyFCNEU86hrV90o77vRuZLyq594GnbrjQy6UQXDBtDISo
 0l0xV1G1WsncFx86NWclvkZPdr5QKggY1+OR2G3iYYDyuvjf7l4L3mmL19G5WJ4Ge0QxrXiHGO1
 NpCBc3tWeMmWKle9HCzU4JA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_171540_372295_245A2C23 
X-CRM114-Status: GOOD (  11.33  )
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

Enable support for USB-C DP AltMode to the ROCK 5B/5B+/5T.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi   | 82 +++++++++++++++++++---
 1 file changed, 71 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index 0cf6da8d8f1c..aa0de092626c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -178,6 +178,22 @@ &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
 
+&dp0 {
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp2: endpoint {
+		remote-endpoint = <&vp2_out_dp0>;
+	};
+};
+
+&dp0_out {
+	dp0_out_con: endpoint {
+		remote-endpoint = <&usbdp_phy0_dp_in>;
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu_s0>;
 	status = "okay";
@@ -359,21 +375,21 @@ ports {
 				port@0 {
 					reg = <0>;
 					usbc0_hs: endpoint {
-						remote-endpoint = <&usb_host0_xhci_to_usbc0>;
+						remote-endpoint = <&usb_host0_xhci_hs>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
 					usbc0_ss: endpoint {
-						remote-endpoint = <&usbdp_phy0_ss>;
+						remote-endpoint = <&usbdp_phy0_ss_out>;
 					};
 				};
 
 				port@2 {
 					reg = <2>;
 					usbc0_sbu: endpoint {
-						remote-endpoint = <&usbdp_phy0_sbu>;
+						remote-endpoint = <&usbdp_phy0_dp_out>;
 					};
 				};
 			};
@@ -1033,18 +1049,40 @@ &usbdp_phy0 {
 	orientation-switch;
 	status = "okay";
 
-	port {
+	ports {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		usbdp_phy0_ss: endpoint@0 {
+		port@0 {
 			reg = <0>;
-			remote-endpoint = <&usbc0_ss>;
+
+			usbdp_phy0_ss_out: endpoint {
+				remote-endpoint = <&usbc0_ss>;
+			};
 		};
 
-		usbdp_phy0_sbu: endpoint@1 {
+		port@1 {
 			reg = <1>;
-			remote-endpoint = <&usbc0_sbu>;
+
+			usbdp_phy0_ss_in: endpoint {
+				remote-endpoint = <&usb_host0_xhci_ss>;
+			};
+		};
+
+		port@2 {
+			reg = <2>;
+
+			usbdp_phy0_dp_in: endpoint {
+				remote-endpoint = <&dp0_out_con>;
+			};
+		};
+
+		port@3 {
+			reg = <3>;
+
+			usbdp_phy0_dp_out: endpoint {
+				remote-endpoint = <&usbc0_sbu>;
+			};
 		};
 	};
 };
@@ -1065,9 +1103,24 @@ &usb_host0_xhci {
 	usb-role-switch;
 	status = "okay";
 
-	port {
-		usb_host0_xhci_to_usbc0: endpoint {
-			remote-endpoint = <&usbc0_hs>;
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+
+			usb_host0_xhci_hs: endpoint {
+				remote-endpoint = <&usbc0_hs>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			usb_host0_xhci_ss: endpoint {
+				remote-endpoint = <&usbdp_phy0_ss_in>;
+			};
 		};
 	};
 };
@@ -1106,3 +1159,10 @@ vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
 		remote-endpoint = <&hdmi1_in_vp1>;
 	};
 };
+
+&vp2 {
+	vp2_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp2>;
+	};
+};

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
