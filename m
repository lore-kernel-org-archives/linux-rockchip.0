Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D662C07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Un4EbWZyMVg6e/+Dh4iBT1lMHZvKG82yXqsfRL79TBE=; b=CW7yrgWkMG3m1b
	ektm3pKuBdEx2MORwW4EfBGVrwjBOPUFkc5CFOgDRmy+hU3WJr+bQvi00XhKs0BhUV29Vs+gyWF+x
	4t93eDxO7SCkinv9c+DUOE1Z72/ro/A9XVM5XtOjSUZX87PHueHOWEg92yIDPyOC1uKE+sbZXMSH0
	0MkqUYgoNORbsGh2OkBNNb9Vpdr6cDfxk+rvz/jrwPu87ee01omsoLKx/V6D/7S/tXsQMWUr24TuX
	NAqhpjVJUlSIyhg71bhqI7ByCJZYCiv3sP+AmmPdY9I5fsWPqwt/20num79sPKM91N5FvNFUKZlTG
	1Xe54/ReOw6QDRtcNGtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oct1U-006Kj8-VA; Mon, 26 Sep 2022 18:40:09 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsz7-006IIl-Aj; Mon, 26 Sep 2022 18:37:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=6c+pv0oZJZdbxbzQ9QgG2de+M6SrcJe4oUVVauEVHWI=; b=Mz+MZFhTNTARfDVghkIAcVb0vP
	LKCz8yR0bfxlgjwwyLX/9UUOV3zVZVBOfeO99ha3yFn57hTIdIb9YLeGXCCrlK6i/nHsdVfJ8tUV5
	/rcOAXVPT2OaVo5nKidpSysT75OaX7feF5E1g7NEQ7VrhRkgUi9MVUe1MqoSZl9wSg5MnIUZVVx7h
	0z9F0BfpQRM+FNCvLOfWt7uFLcYWNkgmuObrPqXvNDji7ikrUd7KvhgvNO19b0+U1iV1DS13wiIJ3
	ZZpPmjL0sqmtbKU0iVzMOkvsFxXjN9LZL0V46n8nMXPxAOUueJkgQrJTf07hmPC6lcqC1SRuVFy7i
	sEzyhG7w==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz3-00B9PV-6V; Mon, 26 Sep 2022 20:37:37 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz1-007wc1-1Y;
	Mon, 26 Sep 2022 20:37:35 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v2 04/13] arm64: dts: rockchip: Add NOR flash to ODROID-M1
Date: Mon, 26 Sep 2022 20:37:18 +0200
Message-Id: <20220926183727.1893566-5-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926183727.1893566-1-aurelien@aurel32.net>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_113741_400268_C26790D4 
X-CRM114-Status: GOOD (  10.24  )
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

Enable the Rockchip Serial Flash Controller for the ODROID-M1 and add
the corresponding SPI NOR flash entry. The partitions addresses and
sizes are taken from the ODROID-M1 Partition Table page on the ODROID
wiki.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 43 +++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 112c65af3f55..877b9515ad98 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -409,6 +409,49 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-0 = <&fspi_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <24000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "SPL";
+				reg = <0x0 0xe0000>;
+			};
+			partition@e0000 {
+				label = "U-Boot Env";
+				reg = <0xe0000 0x20000>;
+			};
+			partition@100000 {
+				label = "U-Boot";
+				reg = <0x100000 0x200000>;
+			};
+			partition@300000 {
+				label = "splash";
+				reg = <0x300000 0x100000>;
+			};
+			partition@400000 {
+				label = "Filesystem";
+				reg = <0x400000 0xc00000>;
+			};
+		};
+	};
+};
+
 &tsadc {
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <0>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
