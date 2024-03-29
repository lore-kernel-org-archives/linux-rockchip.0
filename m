Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03E82C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rl6T/dcc9NqlpH64fEObtO8ycV7Zg3f+6Cmk/iA80os=; b=DBlePq8aiX294r
	yEfNtY0FYxsFC4gqLNFfKwocQ1KThyqTHKP9EarZJjV4IzOqNHTJ1cl1Eb/6xVhs7vdDn+CmyeSI5
	c/TQsxJW1Jqods1xpzD3qtqw9fy3J/h6XeG0Fkk8ej0znxhcoXaMWiIbPlPW0OYQmnXpvl3jSg9JH
	HmH9W2LPTFh++OKDzcVihMbQv/7sBXEvJ2AGzb8TJupX6iGxnfvT1kQNJvYaOez+26xxVMgPUaQpE
	RaBffgOXcBRrdSMbDd6bbajoX2a2BLUQek2Yxkac4fiqyslGxpCdt3nDpChfCUJi7NP53743hWAKi
	edJv25rX7LeHIhAJYBwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBLD-00000000Kqy-2Glh;
	Fri, 29 Mar 2024 12:28:15 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBKl-00000000KaL-0lyA;
	Fri, 29 Mar 2024 12:27:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 771BACE2F3F;
	Fri, 29 Mar 2024 12:27:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEFF2C433C7;
	Fri, 29 Mar 2024 12:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715264;
	bh=tNgVZZ23GL7cxLSstlIYWPEaGhHltk9cHQPge91hHpY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QyqOWVAiPjOegD1g4LvfsZfuHCI3D/DPMmI1Li1j8nnv3r0E6gK8AhMpBfj0KtHfg
	 01fiC5AEJcbS4zCEuqinkb3tNbJm2PTKudNf2bVTOByMbpvVJ/qfzQLoB4DruYHmJL
	 QzSS5z7qXk0reFVzhsDsPXOpjWS+Y7PB+nOfuOvvDp52lGuQ+T04Tpr1Z4q1Th+Btz
	 kWE9b1qQ9QptzNuNHzeFU44R7/+IDNi5qjf1Rz1rCvh7KEtjjjsaxrrrzMqG4I1P0O
	 onwWiLU4drrG0hf2/5UtAR1Gxv5LrB0hdS5VBeKv9WsTQn2K9Wxl5UJEIO6jElaMdG
	 aipU3h794wIUA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	kmcopper@danwin1210.me,
	rick.wertenbroek@gmail.com,
	chris.obbard@collabora.com,
	quentin.schulz@theobroma-systems.com,
	s.hauer@pengutronix.de,
	knaerzche@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.8 27/68] arm64: dts: rockchip: fix rk3399 hdmi ports node
Date: Fri, 29 Mar 2024 08:25:23 -0400
Message-ID: <20240329122652.3082296-27-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329122652.3082296-1-sashal@kernel.org>
References: <20240329122652.3082296-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_052747_680355_6B5DDE12 
X-CRM114-Status: UNSURE (   9.61  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit f051b6ace7ffcc48d6d1017191f167c0a85799f6 ]

Fix rk3399 hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/a6ab6f75-3b80-40b1-bd30-3113e14becdd@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 6e12c5a920cab..fe818a2700aa7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1956,6 +1956,7 @@ simple-audio-card,codec {
 	hdmi: hdmi@ff940000 {
 		compatible = "rockchip,rk3399-dw-hdmi";
 		reg = <0x0 0xff940000 0x0 0x20000>;
+		reg-io-width = <4>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru PCLK_HDMI_CTRL>,
 			 <&cru SCLK_HDMI_SFR>,
@@ -1964,13 +1965,16 @@ hdmi: hdmi@ff940000 {
 			 <&cru PLL_VPLL>;
 		clock-names = "iahb", "isfr", "cec", "grf", "ref";
 		power-domains = <&power RK3399_PD_HDCP>;
-		reg-io-width = <4>;
 		rockchip,grf = <&grf>;
 		#sound-dai-cells = <0>;
 		status = "disabled";
 
 		ports {
-			hdmi_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 
@@ -1983,6 +1987,10 @@ hdmi_in_vopl: endpoint@1 {
 					remote-endpoint = <&vopl_out_hdmi>;
 				};
 			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
