Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 014ACC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTBUM0nF7pv8WOv92i+cP6FgC1AT9dLKdGj9cNuPyfI=; b=Ej+avxmXP3hxaw
	pMAMKUg5CUC+cB1rNiMulysfpDF+CcVIrUotuQXtDtu86q85TAKrhxABvmfx2OCsZmsxN0jix3kFq
	gv1MXL4PNjYdREEDYH3t4v021BoP8/+2IpZpFsYf5oIftRk+0INyQ6ckxI5h7Hafq4hqFxhFKptIm
	M5HOhvkAsHohv3McU9CXfMnYkNkXJLsIXk30rMCMRkYzRpbHs/f/eX9F2xYfZ6fOtllgCjHta+4j3
	EBuMRDXMgtiLM/R0ZL2pplNOjEdXXCo6bNEjzclVQ+RLo6Pcjdug6cqkybfiULGgc6r0idMUDgsFa
	5C/eEGQptiCouxGS7nmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBTs-00000000PG2-0Wsq;
	Fri, 29 Mar 2024 12:37:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBSS-00000000OXX-36lh;
	Fri, 29 Mar 2024 12:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=N3vBUb2eL/RlXQ5/bemFCOk31a3HZfsZzcPcAJf95tI=; b=DTz+dGx5smH4ueYiM6x7Ruz/HO
	+e63sr4xdxpeMZQstDGsm2VvUK1qVmpUEwMESe4S6YHgo75GkDt7LFG/WxaS9IoyYw1mkcjw4Cszr
	gP62LxTqWJtBaqvhKB8j1au2SgLLP2uMDGsIqJ1VSG9riB1xbRwO7rIoIHqwmlvri/zcaB5vFV+Rq
	oHDFd3Q28e8I1/JmGTdvYFCwx/wIsUQG0v8JU2Re5IfrV1uAiYpgPKYfLs2AysqfbDamtLvgzJl4l
	NdMY46VVZ04ZW0PLUNu1gKzP15S1oo+55rbC4ZMzul569umWO01UUukmzsLcFvw5LANjMfW2dRqEM
	6yN2YBXQ==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBSO-00000001Yio-02Kc;
	Fri, 29 Mar 2024 12:35:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0C545CE2F56;
	Fri, 29 Mar 2024 12:35:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C90A9C43390;
	Fri, 29 Mar 2024 12:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715729;
	bh=deZd//LGlzfXbOoyIuC9pT3KxFatDQLnTJxA7SS8whk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LI07LB8CAQjywQAPSud8B0z9trx80U4Ex73HaAbYg2jCHez/Ic+d6FHbgNDdnDN3s
	 ZI3dQcpI+tEDrKNy+J4WlqxKUWNEcRGzIoNCQdTVlZKGcnq6Q+Dh89UD7IW/9fde+y
	 imZ7HhU3hkml154a6JycF5NRArc0htOI1WWg9iuLZRkOPTpleoU7UghmURoIR81jqk
	 xI8mAsmiWTB0C9No3CpzmmEzpkiGPymERLwZeKoCb4DdBz/XErDBP1B0IKMd+K8B+k
	 cEeQ0XlCT95wfx3n2D6gIQDHIgXiJE4ArdmrkwpLAvp0GAzv9GZX41EOCIiafzMAcm
	 P/232lwNdi5xQ==
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
	lukasz.luba@arm.com,
	rick.wertenbroek@gmail.com,
	chris.obbard@collabora.com,
	s.hauer@pengutronix.de,
	knaerzche@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.19 04/11] arm64: dts: rockchip: fix rk3399 hdmi ports node
Date: Fri, 29 Mar 2024 08:35:10 -0400
Message-ID: <20240329123522.3086878-4-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329123522.3086878-1-sashal@kernel.org>
References: <20240329123522.3086878-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_123541_599478_5331B116 
X-CRM114-Status: UNSURE (   9.65  )
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
index 5a60faa8e9998..f19d43021a4e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1683,6 +1683,7 @@ simple-audio-card,codec {
 	hdmi: hdmi@ff940000 {
 		compatible = "rockchip,rk3399-dw-hdmi";
 		reg = <0x0 0xff940000 0x0 0x20000>;
+		reg-io-width = <4>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru PCLK_HDMI_CTRL>,
 			 <&cru SCLK_HDMI_SFR>,
@@ -1691,13 +1692,16 @@ hdmi: hdmi@ff940000 {
 			 <&cru PLL_VPLL>;
 		clock-names = "iahb", "isfr", "cec", "grf", "vpll";
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
 
@@ -1710,6 +1714,10 @@ hdmi_in_vopl: endpoint@1 {
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
