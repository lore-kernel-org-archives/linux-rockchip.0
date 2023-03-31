Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A23C2C76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 08:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xalv1yZjEr04wMCjmH0gfKw8WaGQlLcNMMwJdaNbvg8=; b=ylKF23x1YfbNri
	cpbLIdRLV1pK2t671HShH06XSS+IGzu99DvdmAYKH3+1UMpx9x9kP0EBlQ7CEybmkzr5lCeTINGfV
	/pgQEQhCeKbEXLXVHVlivSKWjbO9Q3yemOeCaLN5l9vvciGWK/QriT6CQ6wJXeUVw/6BUT8ran+jH
	TnY68PMCEQk5Y1wmiQ4tDF8hZIKO0coOFN/2HpHE9vr/syycoUeFxmebzz2r5kwc052NA6PPwb1Rl
	7Lh4/+1cC4dbgVpjck8eobJBqyX0YAmayw+N9SzPkH2fKYqmey+9O+AcdejW1do2TYSomDY885aEE
	6ZTtRocTyyLK8KPSXF4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9sS-006Iwo-0d;
	Fri, 31 Mar 2023 08:12:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9sC-006IqL-1A;
	Fri, 31 Mar 2023 08:12:37 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9C9A36603191;
	Fri, 31 Mar 2023 09:12:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680250353;
	bh=qfVvQcXAO2HebpYt7+zwdYr5k3ab1Li3DgzzFWiv4VM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KWf9g+JgheC2xho72MM5Mm4Azpat1L+1T48KYtxwxHrfKU/PhZOz1lDvJIkMVZOuk
	 w7jzDWvJhZyv4xIFv3IA4qmHhxS35+x0uY5fMo2FvcPJ2vjP8/6rcVOCIYVaaQ8xdV
	 Kwc5KiCj76MhrY+29tBy8V3woRgT5TGVmzq0317nKLdY84XKlZVNOdkW9vexfwlgdV
	 V+YrkPmIS1lOJ91h+d7Vsswo8mPl3bcYnM/Hf1kAyzEVJcs2W2hDGh/hxuvuCoXwxX
	 tA3F0iuDmpkK0CbwkeuvWm/VE4u8r19QBNqDFUSdVbLSt9QO2lfKdyP6Pxy/62p3Qr
	 3rnP2+cuougLw==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v3 1/4] arm64: dts: rockchip: rk3588s: Move assigned-clocks/assigned-clock-rates out of scmi
Date: Fri, 31 Mar 2023 11:12:23 +0300
Message-Id: <20230331081226.245881-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230331081226.245881-1-cristian.ciocaltea@collabora.com>
References: <20230331081226.245881-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_011236_602251_B030A207 
X-CRM114-Status: GOOD (  10.61  )
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

Since commit df4fdd0db475 ("dt-bindings: firmware: arm,scmi: Restrict
protocol child node properties") the following dtbs_check warning is
shown:

  rk3588-rock-5b.dtb: scmi: protocol@14: Unevaluated properties are not
  allowed ('assigned-clock-rates', 'assigned-clocks' were unexpected)

Since adding the missing properties to
Documentation/devicetree/bindings/firmware/arm,scmi.yaml was not an
acceptable solution, move them from scmi to cpu nodes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 7840767dfcd8..14615d1df03c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -136,6 +136,8 @@ cpu_b0: cpu@400 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_CLK_CPUB01>;
+			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>;
+			assigned-clock-rates = <1200000000>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -174,6 +176,8 @@ cpu_b2: cpu@600 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_CLK_CPUB23>;
+			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB23>;
+			assigned-clock-rates = <1200000000>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -313,10 +317,6 @@ scmi: scmi {
 
 			scmi_clk: protocol@14 {
 				reg = <0x14>;
-				assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>,
-						  <&scmi_clk SCMI_CLK_CPUB23>;
-				assigned-clock-rates = <1200000000>,
-						       <1200000000>;
 				#clock-cells = <1>;
 			};
 
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
