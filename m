Return-Path: <SRS0=KZfN=MW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B905C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 15:21:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF4AA60F4B
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 15:21:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EF4AA60F4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mcFDly5uNMV/1T57Votk+liG9Cf1SotqEZi4UP1CroI=; b=03r/nx6tvqdajV
	1isjrhk7qp1+i/4/MxyDRqU0ryXcVEeAGdDz3a4EI8HC9wxsyEHWPuN6IJeKdbNbbsPizuU4hspAF
	0KoKb3+7gyrKtoqk6P0xuLKcRjoNAr/CqwOo3JaH5+x9wHL1cN8kLzocWyZhUHQzmMM4iCuhGlg5t
	0BU1/YXBgsllF37Pd1TwxOmoWdMlondFFWMftZLsYqYOyqaDuv936udsGBP1G+wuDjJq15sUGIykM
	YI+9vb8PEld96L7KcKfN7BuUfJlQQuHVgN5j4RnIHb6ttQRoEOoVJBNS2Kvhf95zSiaadzHrbHRGV
	WH5jQUxKZw7rQn+RnKGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9UK2-009GKo-Lh; Fri, 30 Jul 2021 15:21:14 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9UGa-009Emh-EG; Fri, 30 Jul 2021 15:17:41 +0000
Received: by mail-qk1-x731.google.com with SMTP id x3so9728386qkl.6;
 Fri, 30 Jul 2021 08:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7DbjCAjPm/ruEw8oD0MnskwEE22p0hpGp1LSK2YC18o=;
 b=iC2fs0BqUxYejyxpftiqF7R6h30qgI10RtbPw6Ve4dyYhTLcnBi0EAXzTTn9Qtq0xT
 W7blXVmlEuvt9DXqCaeGoqLYbO4qMwpWhpnhUHRaMXqVeoTJDNb/Gs1aPE/FgywUreW3
 QEuofjeP6k/pDOGyrOJTXSjoo4Zjfn2UbVxftj8xLvnmOJzz7UXp/CsXoEK79JsFeUoy
 cV/z0FcmKDo6dhorpUfugI3Co9J5aOpRj5Rv3otwAooqQpscd52Tg5wOA1l1uyBE1WyJ
 fvI2b4yXKxmJQMlTYkJFjy7M8Dgs5B7s9n7yJPAqYPDBEaAcOM2giPs2quma0FgzLdsi
 +OJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7DbjCAjPm/ruEw8oD0MnskwEE22p0hpGp1LSK2YC18o=;
 b=gdpBzYdZj/KOJAcUci95pz+WQb1Rmv8HaPg2WZXVfwttxgasBuObwhe2J8v2BhFTbz
 xsj2c8bZIWKIrpXeDLnK0HaD7Pnc9reskexh7Eds1F+rHS33yEIEd1t94bUbqYJ/dapW
 yHUSMSTN0Pu4iTmfRSijXG2xK87ozEHhIuChDwGRSRXWE3fLJlryP5dvJ5IH1UIo1KLS
 ZRkmoD9smnDWVlpOm11wMFOsT9QyKVu/zhpXOhSyii9sTCKnM/wvBcNlePhmKExoDf/E
 NudPuHG/9daEO1grkPVvuAWuy5cIOhE5Ki8JUJAbrcIHL9TINtywjgN/cACTmOIJbIRi
 cdGg==
X-Gm-Message-State: AOAM531oWJx3ke3VtI5Cn75DSzh1WzUqZDlD+OCH77P4+NbXKpWic6Tk
 d9B/6S3M6332bKOhVq6hNO8=
X-Google-Smtp-Source: ABdhPJxbk9ZILaDpJAGSdJ1bJyZnaAqNjOo07NRxXgahjPKnC5DJw/XxvlIuwGUM/1wMNea31uxS9Q==
X-Received: by 2002:a05:620a:ece:: with SMTP id
 x14mr2734102qkm.482.1627658259336; 
 Fri, 30 Jul 2021 08:17:39 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:b33d:da64:8d94:ff34])
 by smtp.gmail.com with ESMTPSA id d25sm721854qtq.55.2021.07.30.08.17.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Jul 2021 08:17:39 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: rockchip: add thermal fan control to rockpro64
Date: Fri, 30 Jul 2021 11:17:27 -0400
Message-Id: <20210730151727.729822-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_081740_568790_3E4B9F91 
X-CRM114-Status: GOOD (  11.96  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rockpro64 had a fan node since
commit 5882d65c1691 ("arm64: dts: rockchip: Add PWM fan for RockPro64")
however it was never tied into the thermal driver for automatic control.

Add the links to the thermal node to permit the kernel to handle this
automatically.
Borrowed from the (rk3399-khadas-edge.dtsi).

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

Changelog:
v3:
Removed the gpu nodes to prevent in-fighting (thanks Robin!)

v2:
Adjusted fan setpoints for less noise

 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6bff8db7d33e..83db4ca67334 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -69,6 +69,7 @@ diy_led: led-1 {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
+		cooling-levels = <0 100 150 200 255>;
 		#cooling-cells = <2>;
 		fan-supply = <&vcc12v_dcin>;
 		pwms = <&pwm1 0 50000 0>;
@@ -245,6 +246,34 @@ &cpu_b1 {
 	cpu-supply = <&vdd_cpu_b>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_warm: cpu_warm {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		cpu_hot: cpu_hot {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map2 {
+			trip = <&cpu_warm>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map3 {
+			trip = <&cpu_hot>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &emmc_phy {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
