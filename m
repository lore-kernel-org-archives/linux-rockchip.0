Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C830C88E53
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvaLb8nGn+THa/abe0uGbeyPa2Wwemv9f6MKwrRXChg=; b=RH4HN5ErLiNy2G
	g8nG5DKbWqxLjLBbz7FNTLPXVsdKx/9vIs4luG9hRmydtYjmYgmG7mxWUOQnemohp+v3KiJsJtFo7
	La8ME2jy66qTB+9utOfu+bbOes7HhDozmky2ERdYYw0vz0G33mpwlJJtV8Y9tmLIaa0v52DwSRXUX
	HS1q6SlpNcmNQ9o5k14oRdESXaPH4Cm/dWWpJml6BQPSAADavfLkQJ1ZUvPZU/ZnPsCW+EU4Ah8WO
	FjcdTOvVYif3nQbtttb6Wq4EKsAv3DLB95cfvMk/E7R/szret59eIsSpsoZwqJ81HhD+rFF3z/XP6
	fwqWWrb57/7A2J5aLIZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SGu-00000006UxG-3EjP;
	Tue, 15 Sep 2026 12:28:24 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SGc-00000006UjI-3M4O
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:28:10 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49ccead2aecso13059975e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475285; x=1790080085; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fGVlAiXSUMIP2F6e2acD3g4t6CrjKoFWSLsHsqDHE4o=;
        b=KhCKf/n6ek5AgwTwv+uKpTXtZ66umevkdzqZdgEiyrU5MAo4bHWtrbfLjU4WwGrcPZ
         dqbK7O5+TSDo0m2gjXD8OoFAab1Y060YxEtcqAsGHiFcNaTMDhtEMeyS8dHSXhrN+1qS
         q1Mh7iFY4oRVI/2Y+Iacl8plC+3Z29UkUDfS5kgNiqOIF3wfYsbG0UODRUspH4UdO5Oq
         U4ilmMLT2t7lhfH+yQVsDE3KHEPEm8BfiSRqqPwPRK5ygPq+cc7JvIa/xnJ48gq6QIr0
         FqeTVxd63za8S+KfUFLD0JzTl/k8LggQOOlKHZ9/XQXh9AJL/fAnpzOzYA3dALg3Scer
         jr3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475285; x=1790080085;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fGVlAiXSUMIP2F6e2acD3g4t6CrjKoFWSLsHsqDHE4o=;
        b=tFcJSS0E1jUrdn8gCCHPxyZLEGdHpNfSuGZbTQNLbk7WwVpixr4Or2pHcR+pB8Q1Hy
         yGXpaAlthRa+vbzggrdPH4y4NtWk5Jr7lEgRIVyFbtYGcPTldqb8iYvJATZomsp+RGK4
         zcXHJMWXMqqXr/X7pfXEbXTd+xvMoZ5LgMYthvN9oz2aH6YfU1O7HjyokwTLSJtVeL6n
         wR/vuXcDY41qb4TlojyyygdM1095DpIOadAvquvbKOa14e+JJd5xkxaNviB0CMl30+3i
         131st3GsP1VtPPPM0KoW3G/qTyExLH80RXtEacLIPzX8WZ7Z7ahNF2ILU8Im/Nw+h2xE
         EDrQ==
X-Forwarded-Encrypted: i=1; AKwUvBwNCUS01isQLZBV8uSlmMd937Zw5BxXVWQqs54D3+LhDucKM2ZN0xjrTj1G+ZI4eZWFp01dI54WsepAbrqEKA==@lists.infradead.org
X-Gm-Message-State: AFuF++mr+2EQ6UL7s/itjTT0+kLprVCJ2+SOlMDfDFAcT+HpkTk5TQSu
	9Uy/zgqEEUF9RNw9eZ8Ny/4fg1nQDILDk0F65yvIG/xMrfK3FjeRRFl+
X-Gm-Gg: AYBFou3H9AoFIDdx2xCiVKbAqDlxFAOEjVcPE/HMCz7EzTioYfgDCCxPIaBL5oUoiDj
	O9N5YPXaL8eRqTD5S6VKDyaUxSKtD7dCBdvO/vuVFnejipoDvfVHud/WmXD+OquLzEiumsRhHO5
	MOeGWRBwuFjBDMLIC4rDPFBTP+CsIsRdgLfPYHxjfk4o251/q/AM+hV1QjWK0+ZuezZRVEhfwDx
	uwKj0T14Fj9+kzcfSvVARhuddjgu96SxIe+HkfY1OQLCcSWrEsktKqt6HlQ2GKUqX9IJVfKaUE3
	5eN86c/IV377strKKIJprmUKXlaKgUp/NXJm8OolVu0OcDGh9PNSav2aMM/DkOL8lkBEC3a+KDr
	a7/A5CElqvW1ef7Eq0Id85Sg6P+vKZZpVprO/WgyL69e9SwgbUJFkN6jA/Wu5sQoB4WawYNYWKp
	1IevdAqjNq2PW/xSppOKw4aBVjIF8SMHzpkDfUMBsCnRE3H3dqmBwYKoVjDBVIt+FiYvBSVW0Th
	FexVJJhDNLKSD/mn+sv4FJRr2cs5huuT4ZImTRc2317IQ7gp8OqrlWDuHSRJzwzroA=
X-Received: by 2002:a05:600c:4f87:b0:49d:93c:d903 with SMTP id 5b1f17b1804b1-49e7a66ac24mr76568825e9.20.1789475284877;
        Tue, 15 Sep 2026 05:28:04 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d6bf4desm83105075e9.15.2026.09.15.05.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:28:04 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 14:27:58 +0200
Subject: [PATCH 3/3] arm64: dts: rockchip: add vicap node to rk3576
MIME-Version: 1.0
Message-Id: <20260915-vicap-rk3576-v1-3-d3f5eb58a0b5@gmail.com>
References: <20260915-vicap-rk3576-v1-0-d3f5eb58a0b5@gmail.com>
In-Reply-To: <20260915-vicap-rk3576-v1-0-d3f5eb58a0b5@gmail.com>
To: Mehdi Djait <mehdi.djait@linux.intel.com>, 
 Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789475280; l=3278;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=ts6YghVyA/zyzel5doEzGL1L/0VfbhJhUqB26M/V22k=;
 b=0fgklDILhS6+qpSp5w+qn6nL6tcjMbDA8a1JI/kKqs5AIOzSjV0gLt0i/KY3bs2HtZsfvqwtT
 u37tMDJ/EqVClUfq89iDRaOQ1FHFpJdy2qmzB5sbxVb9dE217e1xVcs
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_052807_667136_9D5C3DC6 
X-CRM114-Status: GOOD (  11.61  )
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

Add the device tree node for the Video Capture (VICAP) unit of the
RK3576 and its IOMMU, and connect the VICAP to the two MIPI CSI-2
receivers that are usable with the MIPI D-PHYs in full mode.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 83 ++++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index cbf8b70cc15a..0c46accf5657 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1323,6 +1323,81 @@ vdec_mmu: iommu@27b00800 {
 			rockchip,disable-mmu-reset;
 			#iommu-cells = <0>;
 		};
+		vicap: video-capture@27c10000 {
+			compatible = "rockchip,rk3576-vicap";
+			reg = <0x0 0x27c10000 0x0 0x800>;
+			interrupts = <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru ACLK_VICAP>, <&cru HCLK_VICAP>,
+				 <&cru DCLK_VICAP>,
+				 <&cru CLK_VICAP_I0CLK>, <&cru CLK_VICAP_I1CLK>,
+				 <&cru CLK_VICAP_I2CLK>, <&cru CLK_VICAP_I3CLK>,
+				 <&cru CLK_VICAP_I4CLK>;
+			clock-names = "aclk", "hclk", "dclk",
+				      "iclk", "iclk1", "iclk2", "iclk3", "iclk4";
+			iommus = <&vicap_mmu>;
+			power-domains = <&power RK3576_PD_VI>;
+			resets = <&cru SRST_A_VICAP>, <&cru SRST_H_VICAP>,
+				 <&cru SRST_D_VICAP>,
+				 <&cru SRST_VICAP_I0CLK>, <&cru SRST_VICAP_I1CLK>,
+				 <&cru SRST_VICAP_I2CLK>, <&cru SRST_VICAP_I3CLK>,
+				 <&cru SRST_VICAP_I4CLK>;
+			reset-names = "arst", "hrst", "drst",
+				      "irst0", "irst1", "irst2", "irst3", "irst4";
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				vicap_dvp: port@0 {
+					reg = <0x0>;
+				};
+
+				vicap_mipi0: port@1 {
+					reg = <0x1>;
+				};
+
+				vicap_mipi1: port@2 {
+					reg = <0x2>;
+
+					vicap_mipi1_input: endpoint {
+						remote-endpoint = <&csi1_output>;
+					};
+				};
+
+				vicap_mipi2: port@3 {
+					reg = <0x3>;
+				};
+
+				vicap_mipi3: port@4 {
+					reg = <0x4>;
+
+					vicap_mipi3_input: endpoint {
+						remote-endpoint = <&csi3_output>;
+					};
+				};
+
+				vicap_mipi4: port@5 {
+					reg = <0x5>;
+				};
+
+				vicap_toisp0: port@10 {
+					reg = <0x10>;
+				};
+			};
+		};
+
+		vicap_mmu: iommu@27c10800 {
+			compatible = "rockchip,rk3576-iommu", "rockchip,rk3568-iommu";
+			reg = <0x0 0x27c10800 0x0 0x100>;
+			interrupts = <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru ACLK_VICAP>, <&cru HCLK_VICAP>;
+			clock-names = "aclk", "iface";
+			power-domains = <&power RK3576_PD_VI>;
+			rockchip,disable-mmu-reset;
+			#iommu-cells = <0>;
+			status = "disabled";
+		};
 
 		csi1: csi@27c90000 {
 			compatible = "rockchip,rk3576-mipi-csi2", "rockchip,rk3568-mipi-csi2";
@@ -1346,6 +1421,10 @@ csi1_in: port@0 {
 
 				csi1_out: port@1 {
 					reg = <1>;
+
+					csi1_output: endpoint {
+						remote-endpoint = <&vicap_mipi1_input>;
+					};
 				};
 			};
 		};
@@ -1372,6 +1451,10 @@ csi3_in: port@0 {
 
 				csi3_out: port@1 {
 					reg = <1>;
+
+					csi3_output: endpoint {
+						remote-endpoint = <&vicap_mipi3_input>;
+					};
 				};
 			};
 		};

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
