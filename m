Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADAE1C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 23:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4owTXu851xe708XveIWoEJRgjP9sTpf9opsQH2DS/xM=; b=OSZhoi+ynR+c68
	m/mH0ous5V+6CLyQzFJmIPBgKC5jdb2jGKEU/obMUZ8A/b5Yhh9tWmDDnTWXWj0Rno2o6nA8mQAzO
	51/XNXyOvZ4tBNdUWMrBhwOqFUvYA/HBoE0XmsiQczKj6H7ToFfwEO5Gve8lwgD/jtAiuwr+cs7FZ
	5N0vw8oC4BB/cnmhylNLsdP4hpXW2sSzvWpCKRZMpOFj1JbVYezVqdItu2E6F2ooP1WfUt2Oe6veL
	xOTksPpy4v0Q0W77MGF2d7696sTCg4kfdp3ipJ4S4So698lX/niGMBKAEe7b+n29vT9PqRgrku3qP
	GvoU6D49gVEtEgZoPPOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onpNw-00BCNP-Do; Wed, 26 Oct 2022 23:00:32 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onpNa-00BCDV-3g; Wed, 26 Oct 2022 23:00:22 +0000
Received: by mail-ed1-x535.google.com with SMTP id x2so16868298edd.2;
        Wed, 26 Oct 2022 16:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ww8Jx6MwPKHu8PJmJYn80kwAUAuLzjtG0hvl+VPoT7M=;
        b=I3fm9YJEZN8vn/vYlXN9fSY8k4i77jAX52zOoYBBuPldBV1oZUwXuOvRRKrprh6aIs
         9XgPQSBYSf5MkYEjF4m3St8lRpQkqlYZ5W5rXDzeor135zCDa3EtyZ1eiPqaRIcZDgXy
         9KHMK3AStov4UfcuX3L4cYqw/Z/Pa1Ty6r5uzfdl5/t9SLr7Hji9DJBcxeoisTUdybZl
         hBhqiq7ODzjdmpTwfVcA32aXit4rdv+Ws2XO9kH8lFn2XanPs7ZXfPKlLxhOn22yYYvE
         M92dIhVxNN7oaWijPD8O3xtcn5HwZXm1y6SmUwjFUp6dRyYlyazwRqVg/gFQ5kl5UK91
         bkvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ww8Jx6MwPKHu8PJmJYn80kwAUAuLzjtG0hvl+VPoT7M=;
        b=B4okrINPI3G9eh7hoNsyeSxbI+0L3X3RbKa5txR2Cjrtd0ahqPrj+OB9+0bIZ5NCrM
         kRmFQGoi+4w46GJtN26yH5rbi9dTYie0MhRmEgg6+N6r+kzDfquwpSBiOAFsqavhceNp
         0tWfj8eHY2E9r33ZlbsEQetL1K+D+8gRlK219E5TS20tDHSeVBqVracCTCDH9ohGwRJq
         59PCIjUwParpIOdFiopWHOkMIrQW9ypg4zwz67iDOI3qhIwdLXQOmsk+19OaVsvK+K7H
         v/620v8KxRLKIZXvB1S/bhLBpFlfM2GDAeSSWlCvPxzhKUS1j6LhEuz1zXgvQ6A5NzF0
         6p0Q==
X-Gm-Message-State: ACrzQf2JIOXKciEpYsRrpiThSJ8uSkXJuQZjrCSzU+llKUJHCtBEbEIs
	qYf8X5i+ZcVNSfjDpSGVwhpIZrnUJ+A=
X-Google-Smtp-Source: AMsMyM7LfwC6hr00YFuS7OlQuq6QKPSmS3Rztqf9jg+nzCnwAq4lXLwpFOcej6U/S60SWkn3lWsQEA==
X-Received: by 2002:a05:6402:3213:b0:461:dec8:336d with SMTP id g19-20020a056402321300b00461dec8336dmr15397238eda.221.1666825206604;
        Wed, 26 Oct 2022 16:00:06 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id qh24-20020a170906ecb800b00782fbb7f5f7sm3563185ejb.113.2022.10.26.16.00.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 16:00:06 -0700 (PDT)
Message-ID: <84f14b40-0804-9734-963a-31e200687a8d@gmail.com>
Date: Thu, 27 Oct 2022 01:00:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/3] ARM: dts: rockchip: rename "haoyu,hym8563" rtc nodes
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
Content-Language: en-US
In-Reply-To: <f7127f87-05fd-5e20-eb2d-a3fd04674229@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_160019_098796_C1C20099 
X-CRM114-Status: GOOD (  11.43  )
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

The "haoyu,hym8563" RTC node names should be generic,
so change them.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036-evb.dts            | 2 +-
 arch/arm/boot/dts/rk3288-evb-act8846.dts    | 2 +-
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi       | 2 +-
 arch/arm/boot/dts/rk3288-miqi.dts           | 2 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts   | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-evb.dts b/arch/arm/boot/dts/rk3036-evb.dts
index 9fd4d9db9..89b0927ce 100644
--- a/arch/arm/boot/dts/rk3036-evb.dts
+++ b/arch/arm/boot/dts/rk3036-evb.dts
@@ -35,7 +35,7 @@
 &i2c1 {
 	status = "okay";

-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-evb-act8846.dts b/arch/arm/boot/dts/rk3288-evb-act8846.dts
index be695b8c1..8a635c243 100644
--- a/arch/arm/boot/dts/rk3288-evb-act8846.dts
+++ b/arch/arm/boot/dts/rk3288-evb-act8846.dts
@@ -54,7 +54,7 @@
 		vin-supply = <&vcc_sys>;
 	};

-	hym8563@51 {
+	rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;

diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index a5a082634..2b462bbca 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -197,7 +197,7 @@
 };

 &i2c0 {
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 052afe554..9267857be 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -233,7 +233,7 @@
 		vin-supply = <&vcc_sys>;
 	};

-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index 713f55e14..e3d5644f2 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -162,7 +162,7 @@
 		vin-supply = <&vcc_sys>;
 	};

-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index 80e0f07c8..07a3a5275 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -165,7 +165,7 @@
 };

 &i2c0 {
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
