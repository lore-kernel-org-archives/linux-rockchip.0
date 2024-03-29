Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CCC1CD1291
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Rv6dntkN53UrJOscOSVJbIVloxaVu1ZAg0mJw8Jr8c=; b=u5yrlRejGVqwF5
	Wr/YhnHL55t52e3/H6YDVnN4ZM5UWkyartbVJzwFiIOZOsasMJDFQx5jF7/cYGPZV1oiyKgEAH22W
	8OCPakVcmURXgHVhMFVT1BcjiOVTLFI7rLxO7rxtCZ6UceJcAoONNnWHbLEBGZ7nNpdF6Gq9Byh7o
	+LyqYY6zTncqzhOMp9gfWbr674RMEppeuDpV+zdA96Q+ZQlQn4zy+nuRxAyUdHgL3gJqkUfRDXaqS
	sJpYTEZt06w7Y5eQyzgw0zfT6i3Fb5nXPgtJPu2N36dLD5RAc0yIrvdVsph/LPm43E1+FS6AnQeSU
	SmcwWHbiVQt852ap+jWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBau-00000000RMJ-3plY;
	Fri, 29 Mar 2024 12:44:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBXV-00000000QRI-3RBh;
	Fri, 29 Mar 2024 12:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+PbmcYmws1FuyqvZq0U1ow7i9vIekepGTc5x0eMFkNs=; b=mnp3nF2nXQQUweD8J7I8qAvVzp
	QjeS4k0e0cJRlvHWWCpRGavH71Eu8UqrwRUEwXDfDD7Oi47tTu4RZYoa1YC1TNpp1SGMisbC+q8Uw
	l9DvWjfbR8Dg96QHCLJn0AGEZC0Q9lw4qhItFht7P7w9W4KFUg4GrPXhk0c/a905OrhPXaQwEkZ6h
	NBnFVi0KTAnFjLXB8drTRrCcqp1Sz3am8jPpCwpyTytfV/nhDOQ/acJZAelZ7va35KeH2tziiz7RK
	bogjWn/6Bv1+Dz4slF3/+YcSHBdJLKqc2CZ5nc/W8CUbu6nqnWgrB2/ESHcbnyAXVS1LaloFCJMqQ
	0sujqQWw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBXR-00000001Yr3-3vu5;
	Fri, 29 Mar 2024 12:40:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BFBB061926;
	Fri, 29 Mar 2024 12:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64AC9C433C7;
	Fri, 29 Mar 2024 12:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716052;
	bh=4RMOa72KKzmhh+jE1nxP1CER4E3Wa2YBrXuinwX99So=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IDNvvYaGt85WtS0aS6x1+gXs3VD10W/Zpfj15uAOIk11ees/m2jV72MsThhWDi+NN
	 Hh7TYVOxzMCtwwnarZxv/FGALIyTEDzEX2pMJ7hSNAMEfPkwkDUnYOOEWrFp7s1IwJ
	 Sm0A0QOKB814fhFsNxzV4QsBlEbxRouDiL0cWmkQ8OPrgh4oXfPFYw9i3YQ7kZq6Bq
	 OcnMjxoQbLmKC6OXKYkIBILhbiwkwEK98iRGqWCQSZRnimpFrKRdsFiKH2Rkh49Ftf
	 UdMNAKOyS7IP1Z/3jwANv2etA2gZwcxLsZFJzTU8ao/nc2RCD3kIzL1RqRGtxM/76x
	 tVxv3C/jH9xaQ==
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
Subject: [PATCH AUTOSEL 6.8 29/98] ARM: dts: rockchip: fix rk3288 hdmi ports node
Date: Fri, 29 Mar 2024 08:37:00 -0400
Message-ID: <20240329123919.3087149-29-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329123919.3087149-1-sashal@kernel.org>
References: <20240329123919.3087149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_124054_157020_A0F5F86A 
X-CRM114-Status: UNSURE (   9.82  )
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
