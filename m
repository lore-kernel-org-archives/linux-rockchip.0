Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C585ED3E194
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 00:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9P5BIY1Ru7kwez/atviqgeVzvkDjUMpW4x6qZjUR0Lg=; b=OS3XxwDnTLTu7v
	Le0dBHICb/64xzDz5IhljZutKf1HsaOnio7Ag1Qv6UO9xM1GAag4I3hF2AymaDRba9UTN7X+6Uz/K
	JSgpUt3u6Z5U+qMcHqk+w0npPLkSYDdKhfbHqv++McT1Wf7+Gby3528ESKBUTFHK4pTQb4sBouiNB
	GycHAztdWNYkzwJBtF8phJjb8n/e2l4iGs5i2hCuH7GJFZogRkZu6iLFoFLD9s44Kv82BAVzbJbZ7
	RXHOSS0jQKhR4sus65paQqnfMSZhxi2n3zzsfJgaH0aYAKEzzavxJ1xHDisAJ0ieg42r3j0Ap5JhU
	vsLbZHvSmYbX3DVdAJhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1xW0-00000002Lk1-2DLJ;
	Sat, 19 Oct 2024 00:40:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1xUV-00000002LWH-3LcQ;
	Sat, 19 Oct 2024 00:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729298324;
	bh=lyUmwSP2Z3VUSJb/ROJNqLwP+S/dVxdakV7oW54hie4=;
	h=From:Date:Subject:To:Cc:From;
	b=pU6GiByrYU3Mgtu7xjor6dsWgBnGxiocIDECQBCBTFvOQ60IVyT/MJnTYmB3p5hgm
	 Tc021m9Dof+36499ThGi1tvPbp/J0HPUcfmCTctw/i77WWR7gthNCJzCn6f6NZqemy
	 YXwNCv4W3sGMtnEEjCAMJRobie3+0iFzMtGJDBRE1dujE9K9E0vvHKMp45GFylhZpt
	 iwmeBLuzuls6FOU1hJJsXZmV4N2t25L5I2zHxSN0CaNO2ollJxqbce3iy0bwrzM+9y
	 f7pkI6W7st9TQyqyoeYB9JasIGcu+MFHuW8LvgQQ6ZXbN6z5lIk+4f4jGfmOtaYrJQ
	 L/RFyzyGBm0bw==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 429C817E0F6B;
	Sat, 19 Oct 2024 02:38:44 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 19 Oct 2024 03:38:10 +0300
Subject: [PATCH] arm64: dts: rockchip: Drop invalid clock-names from es8388
 codec nodes
MIME-Version: 1.0
Message-Id: <20241019-es8328-dt-fixes-v1-1-ca77d5ce21ad@collabora.com>
X-B4-Tracking: v=1; b=H4sIAHH/EmcC/x3LMQqAMAxA0atIZgNtFKxeRRyqjZqlSiMiSO9uc
 Xx8/gvKSVhhqF5IfIvKEQtsXcGy+7gxSigGMtRaY3tkdQ05DBeu8rAi07wE8s74roVynYn/UKZ
 xyvkDxOWZ8GEAAAA=
X-Change-ID: 20241019-es8328-dt-fixes-e2bcd2a80a74
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_173848_071624_D37B8CD7 
X-CRM114-Status: UNSURE (   9.51  )
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

The binding for Everest ES8328/ES8388 audio CODEC doesn't support the
'clock-names' property:

  rk3588-orangepi-5-plus.dtb: audio-codec@11: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
    from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#

Since the related audio driver is also not making use of it, drop the
invalid property from all es8388 codec nodes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Several DT fixes involving the usage of the Everest ES8328/ES8388 audio
CODEC.
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts  | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 1 -
 4 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index 2c41e017f4f402e9c7eea80955219ee23f2f582d..ca1d3253d3e1f4c6f272a27737b5660c099538e5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -114,7 +114,6 @@ &i2c1 {
 	es8388: es8388@11 {
 		compatible = "everest,es8388";
 		reg = <0x11>;
-		clock-names = "mclk";
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		#sound-dai-cells = <0>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index c73fecf1c73c94944bb25e1243d5390b84241338..4cfce107be73652ba5eb2c03e3e2ca0c65ed5d50 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -328,7 +328,6 @@ es8388: audio-codec@11 {
 		compatible = "everest,es8388";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
-		clock-names = "mclk";
 		AVDD-supply = <&vcc_1v8_s0>;
 		DVDD-supply = <&vcc_1v8_s0>;
 		HPVDD-supply = <&vcc_3v3_s0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 50c7a5e9af1904b87925bc526752a87deb3460a6..177e00d45b3d19e91525e62b5ce40d1079bea330 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -316,7 +316,6 @@ es8388: audio-codec@11 {
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
-		clock-names = "mclk";
 		AVDD-supply = <&avcc_1v8_codec_s0>;
 		DVDD-supply = <&avcc_1v8_codec_s0>;
 		HPVDD-supply = <&vcc_3v3_s0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d8c50fdcca3b57e50d70325e1d7a7efad2e314bd..8ba111d9283fefcf77093be7f74705d06f67edfa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -377,7 +377,6 @@ es8388: audio-codec@11 {
 		assigned-clock-rates = <12288000>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		AVDD-supply = <&vcc_3v3_s3>;
-		clock-names = "mclk";
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		DVDD-supply = <&vcc_1v8_s3>;
 		HPVDD-supply = <&vcc_3v3_s3>;

---
base-commit: f2493655d2d3d5c6958ed996b043c821c23ae8d3
change-id: 20241019-es8328-dt-fixes-e2bcd2a80a74


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
