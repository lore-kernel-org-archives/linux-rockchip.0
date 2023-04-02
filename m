Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1C70C76196
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4QnVycJ6E+D1fqY46fs29n8/eV6Jy4pkqaKRI6o7ng=; b=th+rIsGg1XSPdQ
	M39HVI7oWIqA6yjOKqBamSfEQU/TRFYaQgXqC87gB+35H6CRkS7y6pO0T8mRhS6GISE83upDeGQsP
	mmk63v3Z1sHkjUVtqLXrBxwbGBSnj5oO9/27UweMuXYtdsUgepCEc82W2bOZc3u6ILF90hyMVR2Db
	cBajN7wmf7n39kI5BUJLz8YDSeYhX1/N89oPJxuRGzzsEnUWKv/6lJrk7RezlrgavzKlb4LM8XXOI
	jFT7mMpbMNX1nzNJauh9aR4MHz9pgNoYBVtePzmdSKMBjcxP6erNBinHlippOTCzx4j41InASYN2P
	e/JKr3CSIQtR9Dtto2jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuMf-00CBtt-2g;
	Sun, 02 Apr 2023 09:51:09 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuMb-00CBrC-1t;
	Sun, 02 Apr 2023 09:51:06 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CF83D660312D;
	Sun,  2 Apr 2023 10:51:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680429063;
	bh=SvocWMiVjKrI7HollcLDxvyJtaFIB6bgp0o82PWqs70=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QIo9uK7+AH7ROGJvnguRB1/dtbxQviEQzGpzG1Y6HUMwCYqSyeiMJr8qk5c3+sT64
	 M/8o4CFuIfXFDXhARCPHDoGq9beaSCPe55liYqH7R5NuZ5iebo+DJvvvawDU4qqHK4
	 7/wiPV/7IIeX3f0vX8dggrqWSZarwAejtu03J2ouqKjPnoMMr/rYcAhgPiEXzuD4Hm
	 Yy26n7XIWbt/jLt7GsGyPiBJpoHqjgn58zyXUIcBTI2GKU/8qmUxwvc00iT7QY7g5E
	 2W11StE3PCPPTHsMeWc3IVukwpgaZosXovx0aHLeoPoZv0CNtYN5neJ0epyoJut/RJ
	 kAuLb0Sbcrqfg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v4 1/5] arm64: dts: rockchip: rk3588s: Fix SCMI assigned clocks
Date: Sun,  2 Apr 2023 12:50:50 +0300
Message-Id: <20230402095054.384739-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
References: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_025105_772908_8DA94762 
X-CRM114-Status: GOOD (  10.82  )
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

Because adding the missing properties to firmware/arm,scmi.yaml binding
document was not an acceptable solution, move SCMI_CLK_CPUB01 and
SCMI_CLK_CPUB23 assigned clocks to the related CPU nodes and also add
the missing SCMI_CLK_CPUL.

Additionally, adjust frequency to 816 MHz for all the above mentioned
assigned clocks, in order to match the firmware defaults.

Suggested-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 7840767dfcd8..028dc62f63ce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -60,6 +60,8 @@ cpu_l0: cpu@0 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <530>;
 			clocks = <&scmi_clk SCMI_CLK_CPUL>;
+			assigned-clocks = <&scmi_clk SCMI_CLK_CPUL>;
+			assigned-clock-rates = <816000000>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <32768>;
 			i-cache-line-size = <64>;
@@ -136,6 +138,8 @@ cpu_b0: cpu@400 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_CLK_CPUB01>;
+			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>;
+			assigned-clock-rates = <816000000>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -174,6 +178,8 @@ cpu_b2: cpu@600 {
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&scmi_clk SCMI_CLK_CPUB23>;
+			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB23>;
+			assigned-clock-rates = <816000000>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			i-cache-size = <65536>;
 			i-cache-line-size = <64>;
@@ -313,10 +319,6 @@ scmi: scmi {
 
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
