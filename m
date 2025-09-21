Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FFABCAC5B1
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 08:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oc05HWPqsxxVKniAZa6SiGoIvj9P73qeEpQQ/aGY5xk=; b=wILa7oUyEsR6Cc
	76IaOuVpvUbrOSkybdoOs3Pn889vDRsnaD5HAnO+NF91+OjUaDLw/WeIWBc2iHk1gvM+i6wODw+Ep
	siGC+LUG57BpdmFZgKuADJtheJbNbRCU6Q2Nv+mdo0jTYV3zccZhya27poOTP7TpW4aUdgb2i44eq
	FGndePQx0RzXN0+GQRb5Kst987FpqsQ3LOKmdJ55OqW8b6pMRJL506VdeevBTwM4b+sVSuZ/HV/0H
	28ZjQIstaKrLi/ymEaVVRJqEV2h0Mz3D+HZNQdzjiKsw+21ZpYBQWOi/IGXQjA+sEUr+1njLDDK79
	7TsqbW5tnfopw0WjNBFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0F3i-000000071pb-0WcL;
	Sun, 21 Sep 2025 08:04:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0F3V-000000071fW-1GbK;
	Sun, 21 Sep 2025 08:04:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C368B44D3E;
	Sun, 21 Sep 2025 08:04:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82BE7C4AF09;
	Sun, 21 Sep 2025 08:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758441860;
	bh=UybcLaOkymoniVqkOhi1dIJsOwx69s4glA8eqYum1Fs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=VIICuYqwYaVCkYyTmNhJ7edOlO5w94DxLr3U3N9hjnO5Li6KWAb4jYnaFiEv12Ng5
	 rm+tiKNZUE2o/TvRaG/TPozeCNfdur4MKzzUJPL7B9VFmFv4ndY/EN//H/EPgKjn2Z
	 OI4CMaJ2xssrgwqW5GdizrW2Xp40h4jl4DMjft2xl9oOzSUtF5qlwxBcGmyR1LBnxU
	 FsXbLtdMLppg8Skd/3m9URMdy37gP5F1E1rIx2YVQCfmCbL4r264R6qdH06/8L3Jyi
	 tc0ZfO9TEbWw7mB8xgLDvB/eTL2+Y6nujrOI3D01nS11Oh93WcQRXgCxUQhdExn1EW
	 zLCcFq1S38cAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75947CAC5AC;
	Sun, 21 Sep 2025 08:04:20 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Sun, 21 Sep 2025 01:04:21 -0700
Subject: [PATCH v2 3/5] arm64: dts: rk3399-pinephone-pro: Add magnetometer
 sensor support
MIME-Version: 1.0
Message-Id: <20250921-ppp_light_accel_mag_vol-down-v2-3-e6bcc6ca74ae@gmail.com>
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
In-Reply-To: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758441859; l=951;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=kj5gC9w53IltD4i1gA/bywfiCknL042/7ef/++JJoRY=;
 b=UqzF3/MQI2OHSbCUkIhxdxODJaVOYLczY3yCnHaOrlzoA+p185xGGbKpbJxtaHe4CidZlX3ST
 a+xMF3P46+7BLY+bMX4kAY9XmManFa8pmzA3ZJLUOsvmULgcsgfJ98R
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_010421_393657_B48FFD00 
X-CRM114-Status: UNSURE (   8.85  )
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ondrej Jirman <megi@xff.cz>

Pinephone Pro uses AF8133J.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 21ff12ac5f6e52041f485c9f2702f5a15ee831f9..266a08540dd0fe099319ec703bb0828c8c5c2c25 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -554,6 +554,16 @@ mpu6500@68 {
 	};
 };
 
+&i2c4 {
+	af8133j: compass@1c {
+		compatible = "voltafield,af8133j";
+		reg = <0x1c>;
+		reset-gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_LOW>;
+		avdd-supply = <&vcc_3v0>;
+		dvdd-supply = <&vcc_1v8>;
+	};
+};
+
 &io_domains {
 	bt656-supply = <&vcc1v8_dvp>;
 	audio-supply = <&vcca1v8_codec>;

-- 
2.51.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
