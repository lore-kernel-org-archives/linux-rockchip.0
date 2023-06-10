Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E45B2C77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 13:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fvq7kGnXkkPq5aaiya6suBcD2FlKxx3OOlDGE/xSSaw=; b=fAwuQ8lWJxCNQW
	7Yk0cyijCdMLccQyv06ldk/oG+2U4p4GudX5/J9zWhBM1yu7m7WmfNvOjtnTgXw85XM7Gf0Yft3y6
	Hy5+j/UPMwrqv88KCnWf+18ge2P614zzjLxITtJomI4Bns8WxEk/N/pzjb5JpsgcvBiMXmcue4i2p
	pinK8Gpxe1088zLRxaEsR3wnE47Nu1FxPYIposSKle/f/eqZ/1MxizHzGcjfV3akz5BIk5lRf2usb
	c6Fw/JOrKVa0QLoFQuPwS3LSWm99ht2XkUEKYK6EIYxpWcs0QLgN7mPjaPf1qcxzuLSJP+7sRMkMy
	JdlUryvwJQS7rWuqLLkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7yxg-00GHUP-2d;
	Sat, 10 Jun 2023 13:49:00 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7yxd-00GHSp-1P;
	Sat, 10 Jun 2023 13:48:58 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C26476606EB4;
	Sat, 10 Jun 2023 14:48:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686404934;
	bh=YfRPMg6H1Vu6qLLPU55djOlkqrSJyxogmbIBi0tm8ps=;
	h=From:To:Cc:Subject:Date:From;
	b=WJP115exnOuhndKFVId7R5RsPwblkmS+fOkVi6XKBQDmRyYrYUfotabp/1I32VyNf
	 7zMgne2XdHARpVU4L/jt2fUr4fjIRNEnfOLaTsiZex+/QsXQ5gvclyPfssuIlijmM7
	 iXxySJGtfsUIaFryY7M+jQJaqhRiATDyTrtHo3UMVwB1dgLOTA5S1ct0t5nQfwRdW5
	 +0xPAIwXYWzUxX9E8lxckAham6PYTualXqqkm5aU/GTVER4NoQUGGz3u38gbppfP+3
	 m0yXZNCuiOpyEqpXAl5E1QqVryH53KnhFcLyuz7dfreMWE4FkczU1N7FRCw7bVbNbM
	 Lq7yvETSFPijw==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: rock5b: Add saradc node
Date: Sat, 10 Jun 2023 19:18:41 +0530
Message-Id: <20230610134841.172313-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_064857_620101_D0B42B98 
X-CRM114-Status: UNSURE (   8.08  )
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

Add ADC support for ROCK 5B.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 154b1089db77..181874905850 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -207,6 +207,11 @@ &pwm1 {
 	status = "okay";
 };
 
+&saradc {
+	status = "okay";
+	vref-supply = <&avcc_1v8_s0>;
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
