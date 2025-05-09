Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1EB1C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 11:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUK2SRx3oFy5VMb5Uychi2PhnZIDJvZTXUSCtyPwIr4=; b=iY/tk6OMhVBl/I
	e/iZrWcYxwg9Jbv2rCtP1aqmD8zR1UocqeLcfqtVaaaZcac5pqqr0RMFfWWbBFZpDER/jkL/B4h8d
	dJtTGCgg7wwEnGoylLMMZmn4cefbtPUHqVs5f3BQWmAsegNU98/OWued/3ffpsWzhPMFNbslkzTy/
	ScerV10DKEFNFP1fRHpYCM5vOmPZLGtqvkjPGmfg+Rkr3bS/RZVlexGgdiYnAAA0KNvhGSz7gScSi
	cxbNqQtePe37amuluv/IUCxJKQBfg4LgC+I6i2qQpJN8AgWuC+t1uxQbbiLizcMEWk4aC1KX0iJ5U
	67vtzoogsIi0Q0bkBwSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDLd0-00000003OWw-29Xv;
	Fri, 09 May 2025 11:10:54 +0000
Received: from out28-146.mail.aliyun.com ([115.124.28.146])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDKkS-00000003EFp-3qYL;
	Fri, 09 May 2025 10:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=coolkit.cn; s=default;
	t=1746785670; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=BkbH0I5TM3m2dnDRQ+R1QhZQPDRr8vRGDjkpeZ4OOKs=;
	b=Ir8J5avoJIKdnFw8vWyU3ROIPZVwmHy1AtHuRu7Kw/ImSJAwNP498l/SYKezeuA1K11dzF6ynlWxdGlQu6tLTG1JIo5UQv4OBYljFs6ZtLxTHafq1+AA8eAMWPa9ccrrrXi2IxHts/NnmH0GazL96OvP8N8On2jlI/05htnR4nU=
Received: from ubuntu-z.lan(mailfrom:hao.zhang@coolkit.cn fp:SMTPD_---.cjsv3YR_1746785662 cluster:ay29)
          by smtp.aliyun-inc.com;
          Fri, 09 May 2025 18:14:24 +0800
From: Hao Zhang <hao.zhang@coolkit.cn>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tim@feathertop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hao Zhang <hao.zhang@coolkit.cn>
Subject: [PATCH v2 1/2] ARM: dts: rockchip: Sonoff-iHost: adjust SDIO for stability
Date: Fri,  9 May 2025 18:14:18 +0800
Message-Id: <20250509101419.460473-2-hao.zhang@coolkit.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509101419.460473-1-hao.zhang@coolkit.cn>
References: <20250509101419.460473-1-hao.zhang@coolkit.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_031433_116126_E4238442 
X-CRM114-Status: UNSURE (   8.42  )
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

Reduce max-frequency from 50MHz to 25MHz to improve WiFi module stability
on some Sonoff iHost units. Remove unsupported or redundant properties,
and keep only minimal, validated configuration.

Signed-off-by: Hao Zhang <hao.zhang@coolkit.cn>
---
 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
index 9a87dc0d5f66..088a069bb1a8 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
@@ -342,16 +342,14 @@ &saradc {
 
 &sdio {
 	bus-width = <4>;
-	cap-sd-highspeed;
 	cap-sdio-irq;
 	keep-power-in-suspend;
-	max-frequency = <50000000>;
+	max-frequency = <25000000>;
 	mmc-pwrseq = <&sdio_pwrseq>;
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
 	rockchip,default-sample-phase = <90>;
-	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vcc_1v8>;
 	status = "okay";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
