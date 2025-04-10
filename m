Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81830C3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 16:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mImuoVGpPTg2P4qqRA9NH8XGTNzC9FeHb0EVgU1rCNg=; b=OfD73KnzjeRBrI
	/MTDytjExyt7F8hi/j6y7HXL5LxMYZwGGrxTRPQMQtXe28MFy0bPMFHsXQsD8y9Y4CSCYvkt4GXvm
	H752dVxxZFEroYtLaAhXrTOwKV3o7NjcTnmK/WIpJG7QRt7zRWlWmGQ91vKcJxrQYUSAYzFiY3q2s
	u6t3scM84soJ4GZ9rTJMEy9oCS8HgQwX7WT39cUyiw54x3Hisk6urJK3ob9S3+ArM7xR5fu2959L0
	lYB40n0J0omz3kaJj+8TZzhnoI2kpUufhNM4hPgmPF6WwOGq7q/V3TvbKeePiseWZnkYHIPfDNMmY
	x2MSfMy9gt/BE3MPqChA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2vCo-0000000BHg3-0W5B;
	Thu, 10 Apr 2025 16:56:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2u89-0000000B50E-3G7g;
	Thu, 10 Apr 2025 15:47:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 114C844527;
	Thu, 10 Apr 2025 15:47:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80D35C4CEEB;
	Thu, 10 Apr 2025 15:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744300071;
	bh=zdpdwCUxt4/JGxD9zT4n5tnKqmSCQRjKtGwRibbyTKY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Tp2pgYbwXQf4eNwmKaH2Y9ewJRXbwjukqmEfd7gasC1BhxcwjreBEF/j1FACoOJ3n
	 fKdwiHbTde/95llhHDX8LEPLU4Q4kNtch6X4Gtag9EjN2DFSU8oWDvoTpT/y2sS1Pn
	 YmTtSWsXG0o9T5Sg1Jk0GmoLLj5liyC4MKb2I4in0MtWDSMgjb7jQH7P54PdHi0Fge
	 /tyeSwBW8Wh77LfjdWWAOh6WEV2iDOQG5FKK3zDdiLTqnwsmbzSybdW8BOIUXAcbdX
	 0UJ7W6RDn1M45MgKlVI+3jHU6otRqGgsNJieEZO0dRqPBzL4/hTBj9ujca+//zyDCU
	 vOQslelhGs3xw==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Thu, 10 Apr 2025 10:47:25 -0500
Subject: [PATCH v2 04/17] arm64: dts: qcom: qdu1000: Fix qcom,freq-domain
MIME-Version: 1.0
Message-Id: <20250410-dt-cpu-schema-v2-4-63d7dc9ddd0a@kernel.org>
References: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
In-Reply-To: <20250410-dt-cpu-schema-v2-0-63d7dc9ddd0a@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Conor Dooley <conor@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, Andy Gross <agross@kernel.org>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Stephen Boyd <sboyd@kernel.org>, zhouyanjie@wanyeetech.com, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, 
 linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, linux-mips@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_084753_877942_D08A705B 
X-CRM114-Status: UNSURE (   9.60  )
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

The correct property name is 'qcom,freq-domain', not
'qcom,freq-domains'.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qdu1000.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qdu1000.dtsi b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
index f973aa8f7477..7c8d78fd7ebf 100644
--- a/arch/arm64/boot/dts/qcom/qdu1000.dtsi
+++ b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
@@ -47,7 +47,7 @@ cpu0: cpu@0 {
 			enable-method = "psci";
 			power-domains = <&cpu_pd0>;
 			power-domain-names = "psci";
-			qcom,freq-domains = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 			next-level-cache = <&l2_0>;
 			l2_0: l2-cache {
 				compatible = "cache";
@@ -70,7 +70,7 @@ cpu1: cpu@100 {
 			enable-method = "psci";
 			power-domains = <&cpu_pd1>;
 			power-domain-names = "psci";
-			qcom,freq-domains = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 			next-level-cache = <&l2_100>;
 			l2_100: l2-cache {
 				compatible = "cache";
@@ -88,7 +88,7 @@ cpu2: cpu@200 {
 			enable-method = "psci";
 			power-domains = <&cpu_pd2>;
 			power-domain-names = "psci";
-			qcom,freq-domains = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 			next-level-cache = <&l2_200>;
 			l2_200: l2-cache {
 				compatible = "cache";
@@ -106,7 +106,7 @@ cpu3: cpu@300 {
 			enable-method = "psci";
 			power-domains = <&cpu_pd3>;
 			power-domain-names = "psci";
-			qcom,freq-domains = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 			next-level-cache = <&l2_300>;
 			l2_300: l2-cache {
 				compatible = "cache";

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
