Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 596F1C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 22:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuRTQW5oFwnzTyY0g/xNbb54hl2x04tzq1mq1aheVV0=; b=2yOThxxFRqUT5X
	AT1d/isa4/pAn+AlEmkkzdyFldLYxVHCznAahB/+Buh52C3kw3ybdQDusG9LWDOMi8BUamcJxKUQw
	/ERwJLSh34h9FfFeqQhGkbOKjrh8CRByidIMizhkTnGNGAOg9pEtRfP+e3jZOSEbpz2uDnw0AFybG
	SiCUJs1P/jP2YHHZbLxqZHoEwemmb4rEVM6c/kjws8jGjf+ZqELOi7aXmCnEE1Ohb/HhVkRTmNsT+
	VL0qMl8d1tlVS7IyVqasxx7A8eGqyN0W7kZ9XmK7P0zQq7BLx3IeO3O+z6CrWg7NNf2j1mzMXjtM1
	VU/CN4WTidPbIlcnf11A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9YVA-00GAXO-0H;
	Sat, 02 Dec 2023 22:30:20 +0000
Received: from ip-89-177-23-149.bb.vodafone.cz ([89.177.23.149] helo=ixit.cz)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9YV6-00GAWa-2S;
	Sat, 02 Dec 2023 22:30:18 +0000
Received: from newone.lan (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 32C401612A4;
	Sat,  2 Dec 2023 23:30:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1701556215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/0H6bwtLy8JPhPVHInIhXdE8jtxG6LhIg62kFR5k+5I=;
	b=X0h1uPrf3r7C6DG25AuSYwdrFNnrV43PR8jJ03fHp1plIBbSkQlTpL0nUc2nE6aAT2DGc+
	DLltGofGejgoWohn4VDXtxsVELCTuhfrnVES4qW/ZT/tfujPiFZvpeyRVsUR4p17EhO9Go
	4MW3iT2OBsNf4CMJZgaI8cGiA1HtZV4=
From: David Heidelberg <david@ixit.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Heidelberg <david@ixit.cz>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/5] arm64: dts: rockchip: make dts use gpio-fan matrix instead of array
Date: Sat,  2 Dec 2023 23:29:02 +0100
Message-ID: <20231202222934.137191-3-david@ixit.cz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231202222934.137191-1-david@ixit.cz>
References: <20231202222934.137191-1-david@ixit.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_143016_955809_C8BC22A9 
X-CRM114-Status: GOOD (  11.89  )
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

No functional changes.

Adjust to comply with dt-schema requirements
and make possible to validate values.

Acked-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index e6ac292ce645..69dd3568b84e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -44,7 +44,7 @@ dc_12v: dc-12v {
 	fan0: gpio-fan {
 		#cooling-cells = <2>;
 		compatible = "gpio-fan";
-		gpio-fan,speed-map = <0 0 3000 1>;
+		gpio-fan,speed-map = <0 0>, <3000 1>;
 		gpios = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
 		status = "okay";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 854d02b46e6f..59843a7a199c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -31,8 +31,9 @@ gmac1_clkin: external-gmac1-clock {
 	fan: gpio_fan {
 		compatible = "gpio-fan";
 		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
-		gpio-fan,speed-map = <0    0
-				      4500 1>;
+		gpio-fan,speed-map =
+				<   0 0>,
+				<4500 1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&fan_en_h>;
 		#cooling-cells = <2>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
