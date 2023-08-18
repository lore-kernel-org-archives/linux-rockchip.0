Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D88E7C77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Aug 2023 16:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KulRlD9XGdhRIYo4rmgTpMKe7/XOHVht9msaDn28FU=; b=DA3OJ6lS5Bejw8
	u5U1GtaD+lIk0S6ZWmGpJWWNIApGjWRbmkZV3YT/j077QNuMwb2HTiMZVROOMZRHjuIEHiiJoaRJk
	vt7j7ycTSqC4zCxfksOYzESuAkXIF9VRBv7rxKKKbe1zdbgdKTldkOgbyAzS6LITW27NX4YJeZ0yB
	1fTKEqZ5aJ2u6kOm4Zo4JvXdZ7YUDj4RseChsx1gVeodRj+o+a/JDK+eMKM34tRU0TJ+gK1/kKcy/
	uHKeLLoD1I7SGwu6LLn0fjKrzknq+TAlu/DViWT2i2iCcEwYIfFJx2LQbB7uZEzMpze2sQ2Lb6Sjk
	A+DA8PuM64nsaOx3zo0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qX1zo-009dVI-04;
	Fri, 18 Aug 2023 16:06:44 +0000
Received: from forward101c.mail.yandex.net ([178.154.239.212])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qX1zb-009dQE-0L;
	Fri, 18 Aug 2023 16:06:32 +0000
Received: from mail-nwsmtp-smtp-production-main-60.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-60.sas.yp-c.yandex.net [IPv6:2a02:6b8:c14:150a:0:640:1aa5:0])
	by forward101c.mail.yandex.net (Yandex) with ESMTP id 511F66001F;
	Fri, 18 Aug 2023 19:06:28 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-60.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id A6lUUeCWp4Y0-jNPdJe8w;
	Fri, 18 Aug 2023 19:06:27 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail; t=1692374787;
	bh=QK1S+tD18IeMviqe+/HewbdQVBa8HIQt7Dgttqlv+oM=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=sdAjwmSqH/IftmNN1g/D2ZtrPTFByLVnPzIQKSYACblY95iMjL9UiRoR8PU6eLPEc
	 +qX0Q8NTeInvOu70Vc7ydPfEoV76ot6OxMb4ZrgQaffK9n10zrJE5jF49h2PHzjv1D
	 puh5YEq9gi/Ni9uzxb/5AZwMS6foGIy46nU0SkcI=
Authentication-Results: mail-nwsmtp-smtp-production-main-60.sas.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	megi@xff.cz,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add sfc node to rk3588s
Date: Fri, 18 Aug 2023 19:05:50 +0300
Message-ID: <a7b640b9c1fe163a72183af04d089bd19326bfa8.1692372351.git.efectn@6tel.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1692372351.git.efectn@6tel.net>
References: <cover.1692372351.git.efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_090631_323566_004A3744 
X-CRM114-Status: UNSURE (   9.25  )
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

Add sfc node to rk3588s.dtsi from downstream kernel.

Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..3c753f9b8acc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1424,6 +1424,18 @@ sata-port@0 {
 		};
 	};
 
+	sfc: spi@fe2b0000 {
+		compatible = "rockchip,sfc";
+		reg = <0x0 0xfe2b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		assigned-clocks = <&cru SCLK_SFC>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	sdmmc: mmc@fe2c0000 {
 		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe2c0000 0x0 0x4000>;
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
