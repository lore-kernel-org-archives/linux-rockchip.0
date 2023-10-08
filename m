Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0535EE95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 13:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P73/9PaXXH3y50BgQWkrG5A8E8V8akQ1eIC+xBy3eo4=; b=KCfG/Ki7r61ixs
	ELTCL3BQF+HFhG79Ro4j6oYJQ74aoqTqOThcv5NMwve2P6LzEmKiMHq8H/uSOOp6aGpaqOAlPo1XN
	LToMxEynPX4O3/cmCMaTz2yVGPmp4ayr9vRDe2euEQJ2PA60RJ/7m/7k4AR7Ufdnj0oAwQfnFzER9
	URkBYP0+KRPntgNeGz/DD0ufOyJgV/fmjlN7FKNTI+uAi8UYLD/7DNVDSjH67IjpIVKIcACcDUCiI
	C7av+w701clvoo/Y+GplLEoXHFg4f+N9X937WyUrTyRMZ2+npWgrT2+nXur8RugiNzIMuYSX6Ug9H
	8hHXvy/RZzJygMcxwxTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTUD-008sZN-2X;
	Sun, 08 Oct 2023 13:06:21 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTU9-008sVy-2M;
	Sun, 08 Oct 2023 13:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696770367; bh=lCxrvJiIvXZ0HfTe8LyeC4TXQ7SH+n5WoJvO6bicxbg=;
	h=From:To:Cc:Subject:Date:References:From;
	b=yvwRmuIGJN9AkL4zeoVM34YZ6YaTTNIT8x9MWtLKCPgnrrJ67rNJrLlK4mi4ndEf9
	 FLXR6rdD3YxsuxVSaNhw4V5kzR1IgkVRzqq7yYUyg0XwH4nSpROYAfd3oJa8Q1zh0h
	 7AXIA4bV3O4z9oSXxWyD0MqQ7EeU9iFBFKnh4RLs=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] arm64: dts: rockchip: rk3588s-pinctrl: Add I2S2 M0 pin definitions
Date: Sun,  8 Oct 2023 15:04:59 +0200
Message-ID: <20231008130515.1155664-2-megi@xff.cz>
In-Reply-To: <20231008130515.1155664-1-megi@xff.cz>
References: <20231008130515.1155664-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_060617_914314_2BEA78AE 
X-CRM114-Status: UNSURE (   8.19  )
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

From: Ondrej Jirman <megi@xff.cz>

This is used on Orange Pi 5 Plus.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 .../boot/dts/rockchip/rk3588s-pinctrl.dtsi    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
index 48181671eacb..72708b1d8036 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
@@ -1349,6 +1349,41 @@ i2s1m1_sdo3: i2s1m1-sdo3 {
 	};
 
 	i2s2 {
+		/omit-if-no-ref/
+		i2s2m0_lrck: i2s2m0-lrck {
+			rockchip,pins =
+				/* i2s2m0_lrck */
+				<2 RK_PC0 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s2m0_mclk: i2s2m0-mclk {
+			rockchip,pins =
+				/* i2s2m0_mclk */
+				<2 RK_PB6 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s2m0_sclk: i2s2m0-sclk {
+			rockchip,pins =
+				/* i2s2m0_sclk */
+				<2 RK_PB7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s2m0_sdi: i2s2m0-sdi {
+			rockchip,pins =
+				/* i2s2m0_sdi */
+				<2 RK_PC3 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		i2s2m0_sdo: i2s2m0-sdo {
+			rockchip,pins =
+				/* i2s2m0_sdo */
+				<4 RK_PC3 2 &pcfg_pull_none>;
+		};
+
 		/omit-if-no-ref/
 		i2s2m1_lrck: i2s2m1-lrck {
 			rockchip,pins =
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
