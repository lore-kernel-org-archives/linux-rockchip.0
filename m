Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38955CD11DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 13:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbSE7wRjzILkT4gGSRKFxngO2j6sZGt8sajCb8G4r9s=; b=fW9U/dYn0+wOuP
	xsn+97iz8NtYYdm1asByR/GKCRkcgtGpu6a6EtWITbMixdMF+itUltHGelR+EYzF6IaNrt2M/DZGY
	Nd2MiY578fC6WgHxb1F1Wqu7rbtFlwPxBmn8PaI4XhBBAj9ZQfx67ViZAnX3Q5a9qIHug0svzsp2n
	7JETkN6FBjHF4/Uir/60/UH6haX0S6Y9jJivQ3et2Cqj5bFVKxNnOdyltFLWhFs0Rm4zEuRnyHL4Q
	tZ0YiP+totk9jRYNYWox6/haKpdgqN5fjOk7QoI7PHXxp1ECsmBBLgyO7JoulO5D+EP4wRENemPLz
	1l/+hGxRoP7MzfWG+JHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqCbk-00000000jpP-1kyK;
	Fri, 29 Mar 2024 13:49:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBQX-00000000NPB-0fGU;
	Fri, 29 Mar 2024 12:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6IVKkN3zk9NdD6Wkk/KXtRPwUM4wmWCSEQ/NI1SZCgs=; b=YbGQPbjJMFnmV7FxIpGLIghFws
	IfHyY2gkPjNBGrF9+lo+rlGKoiGBeYiBMlzYPgLvI+f07uoE/HjW/Rd7aZ/6zPQWlfQxEzy86sXaX
	HG5R+aeJZ5cM/hefMEQtHnvsfcEy/gYoh6PaQuulzw/HGk2yv5C4vU06DG3xMJiMu+qIvzftAe60K
	QGBHumtzmasRSb8vq6TlxtJ/b780HsnrBJsMtNr5HE5jCVWcRrN/WaOpEbnGqaM6Nd2dnItjro7wz
	Bk2wZDhFxHEryqmCNXX1w6aPKDyOc76ujYYgSXfYjc9coOsF2zPWqyKSiUecLDhZnVpa1W7GTBVMI
	wN9vbQfw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBQU-00000009CZW-05bL;
	Fri, 29 Mar 2024 12:33:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5F56A618BB;
	Fri, 29 Mar 2024 12:33:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A487C43399;
	Fri, 29 Mar 2024 12:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715613;
	bh=M5buJNV+qQhLKyx2nfN6O+tqrro0jxkp6HTincHzTdw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V/k5zCFo/wc4YGuP95GnPx/YBRe3wIyG3t4M4MQfqnNCQA8Uu78ndwCRZiqOQ6hDz
	 v7CjRljv5Ee5tN/EVDgJauk4Tl1ZrhlKQqpTbifjQFs0x6VvWx2HiW5LJokcHEycVO
	 plHR9a0DxI0MJLmND+hH9R4c96M+HrDJF9cKTKLWVywPfjfFjWw/5dEOWxrVPYiL/U
	 zWj0lnD3lFsLpPVmMvJuHXIDKKX2ZbfLWqRb+xK4Xud2K4myVZbVIfHErOFJEwXWDf
	 rMPwOQHs0N6AURvIkV4PRwtwHLZKHG4cS2AgTGnOOD+NcprzaNricDpHMB/3uw0Ef/
	 b/dinbU81h/5g==
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
	chris.obbard@collabora.com,
	lukasz.luba@arm.com,
	knaerzche@gmail.com,
	rick.wertenbroek@gmail.com,
	s.hauer@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 08/20] arm64: dts: rockchip: fix rk3399 hdmi ports node
Date: Fri, 29 Mar 2024 08:32:56 -0400
Message-ID: <20240329123316.3085691-8-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329123316.3085691-1-sashal@kernel.org>
References: <20240329123316.3085691-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_123342_195173_A2CA9044 
X-CRM114-Status: UNSURE (   8.77  )
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
index 9e33f0e6ed504..e98966899f53c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1801,6 +1801,7 @@ simple-audio-card,codec {
 	hdmi: hdmi@ff940000 {
 		compatible = "rockchip,rk3399-dw-hdmi";
 		reg = <0x0 0xff940000 0x0 0x20000>;
+		reg-io-width = <4>;
 		interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru PCLK_HDMI_CTRL>,
 			 <&cru SCLK_HDMI_SFR>,
@@ -1809,13 +1810,16 @@ hdmi: hdmi@ff940000 {
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
 
@@ -1828,6 +1832,10 @@ hdmi_in_vopl: endpoint@1 {
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
