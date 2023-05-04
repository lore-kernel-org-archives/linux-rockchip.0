Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A5A9C7EE21
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 21:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pS+R52zFErA5k8EVeIAe5KUZipLm1Piz8YyU8v69Gs=; b=MTQRvkvTYTWZqi
	yI4lw0lYPv6PNNlUUkCm3Bj6PjYbpg1KPe2mbBSG2WBD/vBHX2jOjcy8wcw2WV8E71QSTAKA8U0Fb
	VQ8E/xbIVq4xgBEb0wglOhVAjq4IXy3eE5w3mpxVPHCKCOS26qYK3y5IfGbFwrnyd6wkgEDK0yYWo
	GU7muPHrnv4qIKKkEZXXrHm6QxJOjoAfibC3STSPc0xNbnIR6xOQyL0+5w4+EIlOhDKp+aUB7AU9P
	QUnfANY5jC2KKOTeuYj7A3SVkYE3sZTgpGvaG2ldqlTSce7mI2CtdYuEOCVON45QPcwhoHLJZMBAe
	8xrZ3/qhMUXiAqv9FgkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pugl1-0096OS-1q;
	Thu, 04 May 2023 21:44:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pugky-0096Mt-2i;
	Thu, 04 May 2023 21:44:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=toVkMTh149/Jwq6mpWJv60OzrhcrhRqlcTyTjGTul30=; b=OxL/EJlRUTTtQN4NOQaMUy4RY7
	WMStiZi/VOTN3UVyRbSouowLNFR0eNG52U7HF86y18zqJkoyxIPRX2z/aulrCGgNXVdzk89R2iJVO
	1+Kz5b8AZ/KhT9GeXQoBmxXa3m0EO++jWx+qFAbJMLdImJLveOlgnuATK0muT4n+SltJigYn60RJP
	m1q6bCfrmlAI1XfnXmS7QSO5eu/AC+1GVnTdkPXUlAGQgqmlh/mMCd/btaN3amMlNMS69hfUMn/vx
	VwFL2Dk3O9IR7XmWkSFjbgRljPMlFIzqSA3/H4vJVnqJ62cVQLXenJC1ukcccGjQpRMf5Kw9pnYqS
	Ikd7T/bw==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pufEX-001pl8-2j;
	Thu, 04 May 2023 20:07:23 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9FCAF6605704;
	Thu,  4 May 2023 21:07:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683230840;
	bh=AwLdMI2guFpG/vA2CRiv4Le+UC8eSUAMFfhScPFNJkY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DaHfg5Laf5SSLYlmXIzZS2f4+r3H37WatrEOUsZ1pCFtSD1FX2E00sbD389SjlD6W
	 WrXqiYlFm2xNab0Te++19xgXRzeTDfcsQT464YM6ZdDct9Fp9GL2FKRnmJpLrI2pAa
	 x36YbyILRzPo69Za8Om4Xl1KCDw4UXrZkvg5KukdpzyjL0CVaFOXaYNTMX7am7nEys
	 JxTqbHpaMXayhcpXhxHoblvOSWfth1Ri8YSJZqC1wlC2EMuEe+D1pcDHxS7MGaBk5v
	 9He++Q3njHS2zQpUBiqePbHqMS6+touTJ9jyotgO3HmkvEI/Vd+iaKCn3bQq4r2tcZ
	 wXPU5sAugpgTQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 8/8] arm64: dts: rockchip: Add rk3588 OTP node
Date: Thu,  4 May 2023 23:06:48 +0300
Message-Id: <20230504200648.1119866-9-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_210722_172179_B4A07A76 
X-CRM114-Status: UNSURE (   9.95  )
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

Add DT node for Rockchip RK3588/RK3588S OTP memory.

Co-developed-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Tested-by: Vincent Legoll <vincent.legoll@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 54 +++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 767084a1ec43..d842988af418 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1822,6 +1822,60 @@ spi4: spi@fecb0000 {
 		status = "disabled";
 	};
 
+	otp: efuse@fecc0000 {
+		compatible = "rockchip,rk3588-otp";
+		reg = <0x0 0xfecc0000 0x0 0x400>;
+		clocks = <&cru CLK_OTPC_NS>, <&cru PCLK_OTPC_NS>,
+			 <&cru CLK_OTP_PHY_G>, <&cru CLK_OTPC_ARB>;
+		clock-names = "otp", "apb_pclk", "phy", "arb";
+		resets = <&cru SRST_OTPC_NS>, <&cru SRST_P_OTPC_NS>,
+			 <&cru SRST_OTPC_ARB>;
+		reset-names = "otp", "apb", "arb";
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		cpu_code: cpu-code@2 {
+			reg = <0x02 0x2>;
+		};
+
+		otp_id: id@7 {
+			reg = <0x07 0x10>;
+		};
+
+		otp_cpu_version: cpu-version@1c {
+			reg = <0x1c 0x1>;
+			bits = <3 3>;
+		};
+
+		cpub0_leakage: cpu-leakage@17 {
+			reg = <0x17 0x1>;
+		};
+
+		cpub1_leakage: cpu-leakage@18 {
+			reg = <0x18 0x1>;
+		};
+
+		cpul_leakage: cpu-leakage@19 {
+			reg = <0x19 0x1>;
+		};
+
+		log_leakage: log-leakage@1a {
+			reg = <0x1a 0x1>;
+		};
+
+		gpu_leakage: gpu-leakage@1b {
+			reg = <0x1b 0x1>;
+		};
+
+		npu_leakage: npu-leakage@28 {
+			reg = <0x28 0x1>;
+		};
+
+		codec_leakage: codec-leakage@29 {
+			reg = <0x29 0x1>;
+		};
+	};
+
 	dmac2: dma-controller@fed10000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfed10000 0x0 0x4000>;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
