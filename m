Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8A46CAC59A
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 21:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oc05HWPqsxxVKniAZa6SiGoIvj9P73qeEpQQ/aGY5xk=; b=gFSTN8Hl0XLLEA
	yMzGx9KUIlO9YBxVVwPUltmanGsG6NyOSWlFQ/3XfYdJ5gqsyZdRA5ursOfQT6C/hgQ0wlDFp58xY
	vWlIWiAEJMjnmCee8eSyS6K3Gx7K0y1sAFJ+6PQbCVSUpklm9F9DYpfOw6unq36ghREKLEZj689AK
	Z49uW6BimChpREOuhjfeM3yGJjxp5+TSy314frPnmcATkODi73aaKgqnIcUwD/hyU2LVHcBH2HhQB
	ohJrfovq5gz/sML1Rdt3NKQDFoPCOvBpVcu7V/oqwfNfpDd/gNWy+4mLBTbBrlX8xusLVOP1cWGtN
	HKamQV/3LZvBo0BvHq7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RG6-00000008DGx-2qcs;
	Sun, 21 Sep 2025 21:06:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RFy-00000008DC2-2CdV;
	Sun, 21 Sep 2025 21:06:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E490944DDD;
	Sun, 21 Sep 2025 21:06:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D680C116B1;
	Sun, 21 Sep 2025 21:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758488761;
	bh=UybcLaOkymoniVqkOhi1dIJsOwx69s4glA8eqYum1Fs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=qw6KmPvm7Qhb4YIYn4lmPvoVg6T2xU/rZYEJRL20Am71XUPgZlxQL1ehq7ZTye1Sd
	 QhtEhkx+9LJui3WneYcGR3uJ3dDWwudx152XsFCj1TJd7p3bl1PkzFRLy3Dy3fbS8h
	 BexU1EbnwK0HHpfUc0ah5XWiCR9aFYiVlKeGGvYu8JgzqPmvuaEgnDrbmKfM7WXHwV
	 pchmyJlhhQZbhxwJ2/kN4aRWWgisU7SAfpUAE3+UXxh9A+n7PJiTtudnzP2lcSlnnC
	 J+FuYl3KErzl4E/0RqOAtHPisc/D7QxWJ5bKeHYo5tQcibSmRIHOBp5bC9OiTltlwI
	 M10rmdAHliIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083DCAC5AE;
	Sun, 21 Sep 2025 21:06:01 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Sun, 21 Sep 2025 14:05:56 -0700
Subject: [PATCH v3 3/5] arm64: dts: rk3399-pinephone-pro: Add magnetometer
 sensor support
MIME-Version: 1.0
Message-Id: <20250921-ppp_light_accel_mag_vol-down-v3-3-7af6651f77e4@gmail.com>
References: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
In-Reply-To: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758488760; l=951;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=kj5gC9w53IltD4i1gA/bywfiCknL042/7ef/++JJoRY=;
 b=7hK39amHNFdmeI+Vo4u3YSTxpFPIfRC9zC7EpXNa62rYasOMJ7S9uzMPUahKaAHdkcY+FltrX
 72hrawMaw9MDwkh5u4OoLizMizv2t7AIz+RKX5t3N1UfAnx1OTk5DfN
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_140602_584070_D1224A6A 
X-CRM114-Status: UNSURE (   9.02  )
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
