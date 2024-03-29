Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 753F7CD11DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rl6T/dcc9NqlpH64fEObtO8ycV7Zg3f+6Cmk/iA80os=; b=zU/yuLiWAfbmB8
	rcytK13I7W3nXH/s56eSRt53P3HpXiyaI8miqVMAQAgHs3SQzAgtr4W0qPCo2BNtG+2nQt6fw1p1G
	bpjikfIOvozO22dNcY4Vm/iKJgPLtTeGgJH32NFNjOQHUHLHL98CwWPlan2MVQ560n2TGHswxZVDG
	9I+paXkUIBbjHG2+exo5AZxoZ4eWLasJXulAk0JYbSHO+p6guT9i9eyKlaDKhMlXmlhmtQz5g53+t
	vAneFvBsY0IH45oOOgI1EdiOZhQPvzMBOkCI3Xsb9VLh/NvAcJ3vi6HZr6GEcfT4wQDB57EYfm8xx
	bq9Jei2k1SYZSEhFPMEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBav-00000000RMj-282k;
	Fri, 29 Mar 2024 12:44:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBXd-00000000QTj-2vLV;
	Fri, 29 Mar 2024 12:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hhhkOo1WCP3CoNjJMtE68vtI2HIPpxwgR9+l5pjCVV8=; b=nGvVu8rN7H1Mu3MHMOdl63ezHV
	6XNGPv+BSPeRkRYexu6gUvfxesN0ckmNfJS3/PyuAPh329wwxBdFxEfy3jPmS4pDfGzeRy/SCgOV7
	n1cvndEI38y+EnRgNhZI+xCysXt9oSvzQ1II/ynKERDHmaxLcIYoS/eQyv5gqOsr5wRjCkl4lVy/r
	/pBQp+dZXjEBS6uW7tgHJKEQJYOU/FBXrwZ8+hrwcI+1uTEgqCSGrTlTMChfTpF+E8KCSaJSsA97D
	IELua74OmyRhcjphDGmMgiPLZLo1FogW4xfD+I0dBzhV5UTNQ06SPPS0fkFv+bWoWmIgB9jvuRtKd
	5cJJ0dtA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBXZ-00000001Yt0-2iEw;
	Fri, 29 Mar 2024 12:41:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 253F961917;
	Fri, 29 Mar 2024 12:41:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19A1DC43390;
	Fri, 29 Mar 2024 12:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716059;
	bh=tNgVZZ23GL7cxLSstlIYWPEaGhHltk9cHQPge91hHpY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nIFI5B1nwLwHNFQKpjYNgIiknh7Z2UolTJzksbAMK5eO9SGHuaNHiwXQ800vWZWZn
	 ZYWlxVjc9Uc7M3PCRMdNIkXdE+/DcdH0hQwNHw1c1WXKp8c56b1FPV0osgYAH++FFR
	 JV5A20invWMducI+74vB7PF1IpjNFvBLyCVfetvmD+AIRyjgLMJm2a3HOUHdd3FmAZ
	 jO/avcmieAVq/nCi4rdBYqUJ1zqE5H/oxDfuoi/rWYSXW0qsdKP8iagDYuWpd0znow
	 bI2HRcv+uy+bX5UnWDPt41cgRFISI9OPI8OeMijPWHD72AkKT3ful9PB6uute72rO7
	 wT8SddCKuV8YA==
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
	knaerzche@gmail.com,
	s.hauer@pengutronix.de,
	quentin.schulz@theobroma-systems.com,
	rick.wertenbroek@gmail.com,
	chris.obbard@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.8 32/98] arm64: dts: rockchip: fix rk3399 hdmi ports node
Date: Fri, 29 Mar 2024 08:37:03 -0400
Message-ID: <20240329123919.3087149-32-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329123919.3087149-1-sashal@kernel.org>
References: <20240329123919.3087149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_124102_572400_023C8D64 
X-CRM114-Status: UNSURE (   9.45  )
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
