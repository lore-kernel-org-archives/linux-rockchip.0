Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93CD4C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRXxW+KKE1spnRw8SP/lbbdYAE092J6qVjfxAusy+Vo=; b=4KDydN/hCTSZME
	E/dU4ipm5YY/2we6lM85I6lx1/tOL1dtOIn08PIXTfSRq6VgE8Lv9UOBUHcC6nTiNCJGgTTuj+vlk
	tmiobqXikZH9vBpKYlK9Hqsc2fOQMSxcYEaqwOdBkWO4C1Mb/pBEO0gNSIsPDi5y/Zfr0K/fx/Mk8
	MGYq8aysL1fjDVy4W0cD8iPOUpmrW5TyniYd5Uq2vyK7l6ExJR6kz4KtN4VWi4JsWzz8RBwuuGbkK
	rqlpZUFWX+n8Kggjg5zdzEymlpEVJhcW4pWDN0on8LYz8Nn4RnxnWXdVbrnGwfaAy5Zt0dDvu8lhT
	3Ugw6c+AHMK4or4Ja2iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBiM-00000000Uur-3BXa;
	Fri, 29 Mar 2024 12:52:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBgr-00000000UEl-3a23;
	Fri, 29 Mar 2024 12:50:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ft6vr8RW3d5rU/sTLkFA2N7wgeQ/yFugnfcXb9z8mlM=; b=UXQcy2C8Ked7YVAVYo2O5obEge
	agkXElHHEhNMtOq8Ave8WTCpf/7lZGMOahu4+SIUCeSf/jQEVJQBRvm/LSh3QMtTB9W6PKfetEd5i
	1A65NV3rBDdlBNZckSpDvHwDcDo9uTrGQ/3S7fUmMitgdzHIGAU4HauVmVSvNiamig/46Jt4OYuNN
	ldfk6/7324MKgKihSSaYD2wD1e1MHwAZmJ/ntjozq5urG5HWPRP/fbyJ+Gt6az8JxagK5BVtAH1p9
	lnCwh7HosGEKFybxO2MTFlcatVOHIuBG1yjtEySibDbs89ivBq+S7VBMF04yppw5XEgYXmpF1Gqg+
	CsAIAvWw==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBgn-00000001Zt6-2CUd;
	Fri, 29 Mar 2024 12:50:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3E2E1CE2F83;
	Fri, 29 Mar 2024 12:50:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCE4FC43390;
	Fri, 29 Mar 2024 12:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716626;
	bh=V52EbVAy2r4mrqffOnFZrJCyqX/WHbQWIBaOCzvqbNw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DaeP8Qh2xnhH45nxVOp+16uplwcutAShEC7W8ShKrnLOZSMule26Z8gsMs8znoOHz
	 KAiN4kmZGS79U31EZSUFdrmDUSc1Z1U+3cWS908mxspMzz5hB5TGkGr5YlS6W0na5Y
	 8ua/QBpSE2XGW2L7n+wGG2C0Kq7PTAjqemo6X+7DUcsKg7ozQTCevWwXhhy+QFVr5G
	 QF7lI1zIsqkPggp+M8EMhHvc61nUp3vTzh8dNzbaxXaCAM7ehufftqvPwdmCyk5HIj
	 6cGqNKVV0l5L5GprVnGU4CLFFKPNurHV6QpYTZ3tK7phOe3l3875UIoJK2IwX1N5D+
	 myCE9QCFY7o6A==
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
	rick.wertenbroek@gmail.com,
	knaerzche@gmail.com,
	quentin.schulz@theobroma-systems.com,
	chris.obbard@collabora.com,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 09/23] arm64: dts: rockchip: fix rk3399 hdmi ports node
Date: Fri, 29 Mar 2024 08:49:42 -0400
Message-ID: <20240329125009.3093845-9-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329125009.3093845-1-sashal@kernel.org>
References: <20240329125009.3093845-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.273
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_125033_954434_301FF1D5 
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
index 4496f7e1c68f8..e5a25bc7d7997 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1743,6 +1743,7 @@ simple-audio-card,codec {
 	hdmi: hdmi@ff940000 {
 		compatible = "rockchip,rk3399-dw-hdmi";
 		reg = <0x0 0xff940000 0x0 0x20000>;
+		reg-io-width = <4>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru PCLK_HDMI_CTRL>,
 			 <&cru SCLK_HDMI_SFR>,
@@ -1751,13 +1752,16 @@ hdmi: hdmi@ff940000 {
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
 
@@ -1770,6 +1774,10 @@ hdmi_in_vopl: endpoint@1 {
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
