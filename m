Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 985D1CDE003
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 13:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTX6j1bL4Br+xLJnNG6pnCHyGWIfY+BPQglIWVJ7Aak=; b=cvQz8MdW10TiRu
	hc9Ip8AsQnFwAV7dCUEv8Adp7q374O+he/8Z7O7A6kG01DCC33F8EytFrI4fsXmp43SM3znJ9Qig/
	J+ex00XhQSIUbumS924eTBQ5D8TNaKfF0BXzQf1nBz3vzbI1DL/mkRM8GV/BSoHZirM8wYn4uX7Jz
	kj+xn323zeYbEYSYb+FMOlxS+fhK8TZB82kS2bwNV00rmtm2vqiHfSXd7f1Kw+e91f9k8E/5cD+37
	mjrOJJ5u3g561rQaP0J7rLA0f2RnkWRrpTaSr33ShWP0JjSGasEAJs0LKJCL+Z19tKXNpbAJ03U2A
	P15o3pvb2zqefOFY1b8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stoRW-00000008S5U-2ndO;
	Thu, 26 Sep 2024 13:22:02 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stoRT-00000008S53-1Uv7
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Sep 2024 13:22:00 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a8d51a7d6f5so129316066b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Sep 2024 06:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727356917; x=1727961717; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yiWNxzHpdIxEgozeWCgcfOvfbJ2xvJ369Qeayq1vics=;
        b=WpJ/BkskEowdJ+m44GeYcp90gTh2GUWr6bned+BFAKdT/jFF1M7U7jDnTz3x0YH7V+
         9DiErkFsREQuTs78KPd7QUdmKsMw9xXYvbOsvuTSGJzR3LajhFnC47tWTX9h285aOapZ
         RvCflR2THcCcdVydSeJQ/etsTEOVmU85QZygjxbX6QMb+yQFTth94VUJ5wHYP2I5n3AX
         C0kruAK/zYMToam+PxihgcBF3aiWhQu2FlwTJibZtKJpLRvLCWG74sdWmOknbKpbcwPB
         WHM1mmhJBzPSxwBqFJfHIordH3PLlvzAFvLbXcKw/7AnopeO3u0ByFbbQTzfU/xGD18b
         QIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727356917; x=1727961717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yiWNxzHpdIxEgozeWCgcfOvfbJ2xvJ369Qeayq1vics=;
        b=Lt2ltrBIlLARIZ/ELxKHwgpnRACvyw5/Ez4dN9IirAbdLazwEo43U9hgPt62Ktal6l
         LIQo3R7ioIkqTzsXrB1X062Rf8//3eCTDSur2DWvCVMnq8i8hJsCZi1zetegj01CHEz7
         yyGdTNNshJDU4jYMBxSuuN2Gjy+YL+Xl/enyr6w8zM3Q7cCEXn0owId/esWiDaKaCu/7
         9mzie7Wbfg9VdM/HwDXull2bS8lwEJ02haXbdmqiRcFYk6UehRMJADxjmiJ9TNIAkLb+
         TpAGJuGOOCAmcw36cVDcDUzNjlhJc5DpH4RcXKLpPt1Box1wPOwo+t/qNxj7/gWW3B5x
         EDpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVfXg0iAKTqq6absnGB9VLMGRAo+rPVE239rQ+7rsfbWb4xo5Ap+A2yCs3OyMaq53UDZLPe/dmGEAzlJ5KrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxqUaJibJ77cqulRPlj1dT26Y0CAxXuZnQJRuovHHEkjgdZvha
	h2cIUQrwUpPF+/VoiAbSi+YPUq1no5B7LArtfslISqu7K8S5oomcGdo7fKDA
X-Google-Smtp-Source: AGHT+IGOt5L12RHdJ4pPqDxdQwJA03xYBQoAx0ixKOGhq9DXlvdGeL4BsQHiKGlCVlbXW/toFWK6FA==
X-Received: by 2002:a17:907:3187:b0:a8e:a578:2b63 with SMTP id a640c23a62f3a-a93a067db60mr664711866b.55.1727356916778;
        Thu, 26 Sep 2024 06:21:56 -0700 (PDT)
Received: from opti3050-1.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9392f5417csm347680966b.74.2024.09.26.06.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2024 06:21:55 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
To: quentin.schulz@cherry.de
Cc: heiko@sntech.de,
	jakobunt@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
Subject: [PATCH v2] arm64: dts: rockchip: add attiny_rst_gate to Ringneck
Date: Thu, 26 Sep 2024 15:20:30 +0200
Message-Id: <20240926132028.21910-1-jakob.unterwurzacher@cherry.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <69f79284-b52e-496e-a286-d7e5ce3d90ce@cherry.de>
References: <69f79284-b52e-496e-a286-d7e5ce3d90ce@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_062159_425099_7FC358A7 
X-CRM114-Status: GOOD (  12.53  )
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

Ringneck v1.4 can contain (placement option) an on-board ATtiny
microcontroller instead of an STM32. In normal operation, this
is transparent to the software, as both microcontrollers emulate
the same ICs (amc6821 and isl1208).

For flashing the ATtiny, the SWITCH_REG1 regulator of the board's PMIC is
used to enable the ATtiny UPDI debug interface. If the STM32 is placed, or if
we are running on an older Ringneck revision, SWITCH_REG1 is not connected
and has no effect.

Add attiny-updi-gate-regulator so userspace can control it via sysfs
(needs CONFIG_REGULATOR_USERSPACE_CONSUMER):

  echo enabled > /sys/devices/platform/attiny-updi-gate-regulator/state

Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
---
v2: remove vcc8-supply

 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
index bb1aea82e666e..216a6b6a6ee74 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
@@ -15,6 +15,12 @@ aliases {
 		rtc1 = &rk809;
 	};
 
+	/* allows userspace to control the gate of the ATtiny UPDI pass FET via sysfs */
+	attiny-updi-gate-regulator {
+		compatible = "regulator-output";
+		vout-supply = <&vg_attiny_updi>;
+	};
+
 	emmc_pwrseq: emmc-pwrseq {
 		compatible = "mmc-pwrseq-emmc";
 		pinctrl-0 = <&emmc_reset>;
@@ -281,6 +287,11 @@ regulator-state-mem {
 					regulator-suspend-microvolt = <1800000>;
 				};
 			};
+
+			/* supplies the gate of the ATtiny UPDI pass FET */
+			vg_attiny_updi: SWITCH_REG1 {
+				regulator-name = "vg_attiny_updi";
+			};
 		};
 	};
 };
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
