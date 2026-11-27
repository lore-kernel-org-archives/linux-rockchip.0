Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE32F606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 10:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1XLcQejV;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=nAtZtks1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ntiBirwT0Qg3PETy2l3i1lKvmaxfFBQPo9vF0V/kQOY=; b=1XLcQejVNQ+tHwpggEXJyL+Yka
	4bxEH8nJLoEXew7M1n/Bar/GNfeEoeuL1naQAet5nKk0Zy6F3wP7A09x99Uhlw50XRpY0nOLy12Zg
	erCIYYDjUKWTwpKqjopnINFCuJdoxMXwSlsswbcN7nwOTU0/hB2NKjLD1PYVMnr3ARnSGgD+WQrIb
	MhHwixRFU6kO7b8r4NBk1viOg7GA6lIqOXAwjM3Wy16HhclasYYF/5tijndTQjQVihntWwTIBQPr6
	i6wKMnpsHmYPhViX/rvZIrXweUikS6hJLTKBMUqx/j4zpEXR+LnN5pgQGO9ymtfs9Ab0YUV7n7kFO
	5g0feawQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtZ4-0000000Fgrm-3SjS;
	Fri, 27 Nov 2026 10:52:26 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtYY-0000000FgSi-14QT;
	Fri, 27 Nov 2026 10:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795776708;
	bh=TReSjAabIH0w5Lp+llK+KbrOfk2KHaTLEr6xiB4QYtw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=nAtZtks14Tig29zzrdPMoTSclHymXU8DCkvjQxc3cboij1Ba9p/fRm69+ntLr3QeL
	 b0s2p53P/aDGpBMroYk5xzvavodqkG14jTY66ebsMRPK1fLgDzg61Owwe8NmnglhjA
	 3yvKgW6Rpx45a7KbeNKmT4wG4tPsnYLNg3JBet6z3thdw8udv0tXS1fsCH0UuvNlYO
	 eVcsk1gIJaU5jCO3gaxZBH/KIPgoowWB1vBN8horf0rt3fTiif+0wREJbcv6MRHMzp
	 amFiCUt/n3+mUV2NzrJn2QRetMNopbTP8MGyPow5b+ElUnqR/UljPEbe1a/cg9yd3q
	 fJnu2IBZBBgUA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A14E317E090C;
	Fri, 27 Nov 2026 11:51:48 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 12F60480041; Fri, 27 Nov 2026 11:51:48 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 27 Nov 2026 11:51:45 +0100
Subject: [PATCH v2 08/11] arm64: dts: rockchip: Add USB-C DP AltMode for
 RG-Vita-Pro
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-rockchip-usb-c-dp-altmode-v2-8-77ee78869307@collabora.com>
References: <20261127-rockchip-usb-c-dp-altmode-v2-0-77ee78869307@collabora.com>
In-Reply-To: <20261127-rockchip-usb-c-dp-altmode-v2-0-77ee78869307@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Cunhao Lu <1579567540@qq.com>, Chris Morgan <macromorgan@hotmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3047;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=TReSjAabIH0w5Lp+llK+KbrOfk2KHaTLEr6xiB4QYtw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGsJYMOa7mgy4eeLXkB9lcTJ8436MtVZSIPde
 IxQXkciURPtkYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJrCWDDAAoJENju1/PI
 O/qa9PQQAINZ7gBjhyGZyfY79H1PS4aNDXVunM6ZYZAzbFtiC868jmReX5kSwn6EAj6/nfsntMK
 fUEfPpYa5p2rsDRa9vl40cOMXMbw91rKtf6L6CiNj1Yt0RnwWct45vGFCatcjMCv8oqFct/qSQy
 WqmsVDf200Rr7pQnC410SDA9KZkk05fVRdh2x45zJl/0Bh8eW5Cqci/j1P42ceQLygUUZuk//W1
 +2G1sG5lJqDTxLJje7+5L2S281Lcnc3codLqpLq0+zJ2PYEJyQHNKY8KuvRm+lOL+tCAkMVWB4X
 +4XAUJFeII9QUVHzn1K4Ky8OReXVNDadlvwZz3RKUXw5uxkDUlM2dokpQToCmsKoBITvTSCPM24
 X45oQf7PXOqqs4hTEmMQqox313Swd7rDSYjVtHatG1Xs2V8gnrvRlD0mbqwZv7L65+ANKXO14Bw
 tt1rW8ZFf/LkDb4d+331si8MilMitwnKAgZ+mGfXvRZEvDDEt4HtU8EqkcdCmMTkb/xVO9tZZVO
 26xqmDH1pxRblRmnMLsc0ckWxaOASwRe7hQLQV8XQmkKoHdMcz2McvgspFMYs89q9txncoTv8Mf
 lvP0z7bVng4MHfz8apAM+vxJ1je3gYg0mQJ2GnSjmYwqq/XdOX+71Jl9pl6JRsVsBtbyumTioKu
 JtRrhVdSt5bTaSm1kKmkw6Q==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_025154_464945_3F0A5366 
X-CRM114-Status: GOOD (  10.63  )
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

Properly describe the USB-C setup incl. DP AltMode support, which also
fixes the USBDP PHY ports description for the RG-Vita-Pro, so that it
follows the documented ABI.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../dts/rockchip/rk3576-anbernic-rg-vita-pro.dts   | 78 +++++++++++++++++++---
 1 file changed, 68 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
index 85576a437f7b..5da90f3792a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
@@ -469,6 +469,22 @@ mipi_out_panel: endpoint {
 	};
 };
 
+&dp {
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
+		remote-endpoint = <&usbdp_phy_dp_in>;
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu_s0>;
 	status = "okay";
@@ -932,22 +948,25 @@ ports {
 
 				port@0 {
 					reg = <0>;
-					usbc0_hs_ep: endpoint {
+					usbc0_hs: endpoint {
 						remote-endpoint = <&usb_drd0_hs_ep>;
 					};
 				};
+
 				port@1 {
 					reg = <1>;
-					usbc0_ss_ep: endpoint {
-						remote-endpoint = <&usb_drd0_ss_ep>;
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy_ss_out>;
 					};
 				};
+
 				port@2 {
 					reg = <2>;
-					usbc0_dp_ep: endpoint {
-						remote-endpoint = <&usbdp_phy_ep>;
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_out>;
 					};
 				};
+
 			};
 		};
 	};
@@ -1221,6 +1240,13 @@ vp1_out_dsi: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
 	};
 };
 
+&vp2 {
+	vp2_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp2>;
+	};
+};
+
 &u2phy0 {
 	status = "okay";
 };
@@ -1258,9 +1284,40 @@ &usbdp_phy {
 	sbu2-dc-gpios = <&gpio4 RK_PB7 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 
-	port {
-		usbdp_phy_ep: endpoint {
-			remote-endpoint = <&usbc0_dp_ep>;
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
+			usbdp_phy0_dp_out: endpoint {
+				remote-endpoint = <&usbc0_sbu>;
+			};
 		};
 	};
 };
@@ -1277,15 +1334,16 @@ ports {
 		port@0 {
 			reg = <0>;
 			usb_drd0_hs_ep: endpoint {
-				remote-endpoint = <&usbc0_hs_ep>;
+				remote-endpoint = <&usbc0_hs>;
 			};
 		};
 
 		port@1 {
 			reg = <1>;
 			usb_drd0_ss_ep: endpoint {
-				remote-endpoint = <&usbc0_ss_ep>;
+				remote-endpoint = <&usbdp_phy_ss_in>;
 			};
 		};
 	};
+
 };

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
