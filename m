Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBB77C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Rv6dntkN53UrJOscOSVJbIVloxaVu1ZAg0mJw8Jr8c=; b=Ni40EjBbXBXiOU
	STRs8tQ/mOONLn5znjRfAVciwecXUvasw2ul1KO6CELTMp2DiEFtbKcARjTBndbc5g8VldqVuNvUJ
	LZTGF4mmVvW18pQp8XaA950E1DDxRM38kIxI/ua+I3D0z5ma2ErK/0gx9Wtjw5oACeNS0RZz2lhxT
	ggybyo+b65oLDFB2Fe5/I9YNhBQgokHNwzlvOT23wWR8eKuI2m8aTiAtXvPNl4EGZzyfNpGHy13Rq
	+RypMvQjnhydysbwg3zjaxY/GzBaUA3oL5Ze1w4aoQSoYfxKE4KWUKlKVeOCcIU5anwgRk5MKuAGA
	OPowRRdopeAR9Xiz5HUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBKg-00000000KXs-3pzA;
	Fri, 29 Mar 2024 12:27:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBKc-00000000KV4-0cdf;
	Fri, 29 Mar 2024 12:27:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9FF3E61927;
	Fri, 29 Mar 2024 12:27:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42F70C433F1;
	Fri, 29 Mar 2024 12:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715257;
	bh=4RMOa72KKzmhh+jE1nxP1CER4E3Wa2YBrXuinwX99So=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lPjUdAmEriM855Ul0btdSvZ2q4ZRtaPt9u96eKiJzO1w84loRrMfdSBSJ9HMiBqCf
	 kqOoXOJrZjiJybBcMXt7CiLNBgwkCpVmV1NbptAFkNvTxgDiV44vCY3lDEQgGYcagg
	 iDTFogYifSfY2JQt3aafHInm0YaB61qwRioGsZ0ieu2D9aUAGQnjjGZh8pWwyFpRqn
	 3JbiTdUfiOquQY1XLh7ujP0MCh5S5dhEhmFTZ6ZMP+4xr6EsT7OawF3YFdFqMJ5oBn
	 IuCEPGfrNn2rT4H2oo3xcEgdsTrx03dxdziy67+Sqg4H51wR/iU7om/iuC21vEsz9D
	 yhT7jlXToaKRA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.8 24/68] ARM: dts: rockchip: fix rk3288 hdmi ports node
Date: Fri, 29 Mar 2024 08:25:20 -0400
Message-ID: <20240329122652.3082296-24-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329122652.3082296-1-sashal@kernel.org>
References: <20240329122652.3082296-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_052738_252136_F397DB3A 
X-CRM114-Status: UNSURE (   9.87  )
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

[ Upstream commit 585e4dc07100a6465b3da8d24e46188064c1c925 ]

Fix rk3288 hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding with some reordering
to align with the (new) documentation about
property ordering.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/cc3a9b4f-076d-4660-b464-615003b6a066@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index ead343dc3df10..3f1d640afafae 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -1240,27 +1240,37 @@ hdmi: hdmi@ff980000 {
 		compatible = "rockchip,rk3288-dw-hdmi";
 		reg = <0x0 0xff980000 0x0 0x20000>;
 		reg-io-width = <4>;
-		#sound-dai-cells = <0>;
-		rockchip,grf = <&grf>;
 		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>, <&cru SCLK_HDMI_CEC>;
 		clock-names = "iahb", "isfr", "cec";
 		power-domains = <&power RK3288_PD_VIO>;
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
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
+
 				hdmi_in_vopb: endpoint@0 {
 					reg = <0>;
 					remote-endpoint = <&vopb_out_hdmi>;
 				};
+
 				hdmi_in_vopl: endpoint@1 {
 					reg = <1>;
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
