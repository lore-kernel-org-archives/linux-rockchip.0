Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8451EFCE09B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Feb 2026 14:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T5mW1BW/6ilbjMqVjyaK19iY58pfEK8OvAAYb7Bg2A0=; b=dSbAMq4fOwII4Y
	f/QHrkEV5JdFkw4LdIHhPjN/Zd6bvSpci+25whIhP1Cg3KAFiYFGHSIFZ4ua065/BK7KqQmhecjoA
	mbPJ3LRDC1POkn+HIqm5SH0uezrqDGHktLRiRAonqNiDy7NK8CJC+B56GAn7MsrV/fEIpUIN+ay33
	qbdgUuznZIV0l+Ay/5us7M3n55rdkU8rRH/XhaSrKt+L4ZnyvrtTEc9TnobxLgQctxr9tsRF8MX+e
	tFFMqV2W4xpJXVg6IvvZRV2NOXovsiKzYYiFROhWMogI7Adm8TtlxTuLzrPWGdO4nLg4EvIIM1tNS
	pEaC7xh9QPcW0F5Nx3lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvcff-00000006N7C-3cuS;
	Thu, 26 Feb 2026 14:48:55 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvcfd-00000006N5Y-1mbw
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Feb 2026 14:48:54 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-4807068eacbso8085035e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 06:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117331; x=1772722131; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wFTR7lhD97LfedhQI2IEmT24MfcevcT3nwblhyoeQS0=;
        b=MZvtdmZBM19Itd9bqt2iJw+WaUhrCXHZ75AchgWlUzTx2Rg1j8OsI0l8A+DhB54ahQ
         LZGWh8Tom7jYoLxRP+GybTZNJLzvWo5W6IjfqKK0YC+7ybyailMqi7QGIzO2gsbEX05d
         XOP5LNEZ9phuvcwEoHYdkq2GeX/FZU4Jc32VjA+LfzOGV20m3JXhfCRKWZENWUacSKCj
         G/Fw/Y0kncjQMgetF7/3/E77AvtvGeHoey/weFKwNrFi3hjno3JY4GvneHYfQDtLtBTR
         f5BWU7USqU8LKkIgMb+myIFyhHHzQuPPfAfgHj7w958YHlVVRsq7WheDFYsTRzX6zai7
         qFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117331; x=1772722131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wFTR7lhD97LfedhQI2IEmT24MfcevcT3nwblhyoeQS0=;
        b=p+DwYZQdvdKVFs3ABWoVQePaxw0HQmBORVSaQOT+ZuDI5ep72lxp0SklQQLTNXWP9b
         Q7lkDh6hJh6GpACMbYz5PpuVoefptdyxu9vnZtkP0Ke1ouoe/wes8E5ViwNNc8+6BRpS
         I8z01eCymh2WJsIqZVo9PXTMBC09rqru1HrTtDQqTyYM8Vy5jNoD86O/dd+/IjmcSknx
         lNmwB6jm81ed159u+VWZGIiB80WUNzVLxiZwBiQX9KfrHoMl+wy/KIQ2SflX47pgBrvL
         khCsJUgi+zmBuN2I902DIq943786UDkxdF7WcxbJhfcFd33Y/Ji1pOvmYM12mmqRmPPW
         w92w==
X-Forwarded-Encrypted: i=1; AJvYcCW/B2N/rfkeePln1gaS0UCNuy0nQKhCg3YKWfbVgLH2kYkTKyeBF+Pfn00bmYqf9SceTu5Nd6vuzrSsxYgFdQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxM+05H0bR9PwufK+yInN3+Glt2d+NPBWfqGJVCKQAyN3GVEL7T
	Vm+iQ8ymJOjN5urPWZAoSvfHqgoNvawAbE5Ke4xU6s5wGig6got+byNf
X-Gm-Gg: ATEYQzyPU5zC9i7Pnb1A1LyAk2lh/6QXlltzz2UNDfpuYvmBZ5PfbraP1dKeOvvQIPt
	00sgKmqGGNPaFyhYkkSLgCtEN6j/RJ94KXHkATmtCiHl5UnopQ5+cQ6+okromySsI/aqwS/h9+m
	6qXlTS/2Hurkv+Xxcg9Kmc+2cVaETG0CnqvVYMRr//6g7KVBZ/l5f6xxVF2xkmjUIpyetFsLf3Y
	HN14ESOemxKOkpNgWgb2In7wPaX2Pa2kZDq94KX5HNnYPk63/dxnU9dF8k02arRlVG8cSPgRC3F
	dtCx/yOpQDfWt3GZhDpMCkQ2AxK5g6+k9YnYA4Go/WXld4UcSBbt3KqOF99+1huUioFPMUfCDdn
	Ro6BmiRCrP02iJTFhCGCSJKccuMES1s2C8hsZvGnRItYuruYF0+5PAmEeKZ9LwP3SnUgf43Ns50
	FJD4BOYkX/9B6qQ77GchDPiMVOCfIFnFzlvTwU2HjAQVTGnRD5vEAFjAoCyuSthPm9olS3
X-Received: by 2002:a05:600c:8b6a:b0:47b:e2a9:2bd7 with SMTP id 5b1f17b1804b1-483c3de6856mr43250455e9.19.1772117330946;
        Thu, 26 Feb 2026 06:48:50 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4766:6506:d16b:e2d5:7fdc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm91497075e9.3.2026.02.26.06.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:48:50 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 1/2] ARM: dts: rockchip: rk3288-veyron: Remove invalid property
Date: Thu, 26 Feb 2026 11:48:41 -0300
Message-Id: <20260226144842.2727107-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_064853_476872_A06E7676 
X-CRM114-Status: UNSURE (   8.95  )
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

The 'regulator-suspend-mem-disabled' property is not documented nor used
anywhere.

Remove this invalid property.

This fixes the following dt-schema warning:

('regulator-suspend-mem-disabled' was unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts  | 2 --
 arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts
index ade9cc291813..d7790eebfdcd 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts
@@ -91,14 +91,12 @@ vdd10_lcd: LDO_REG7 {
 			regulator-min-microvolt = <1000000>;
 			regulator-max-microvolt = <1000000>;
 			regulator-name = "vdd10_lcd";
-			regulator-suspend-mem-disabled;
 		};
 
 		vcc18_hdmi: SWITCH_REG2 {
 			regulator-always-on;
 			regulator-boot-on;
 			regulator-name = "vcc18_hdmi";
-			regulator-suspend-mem-disabled;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts
index d665c3e8862c..20fe84683928 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts
@@ -246,7 +246,6 @@ vdd10_lcd: LDO_REG7 {
 			regulator-min-microvolt = <1000000>;
 			regulator-max-microvolt = <1000000>;
 			regulator-name = "vdd10_lcd";
-			regulator-suspend-mem-disabled;
 		};
 
 		vcc18_lcd: LDO_REG8 {
@@ -255,7 +254,6 @@ vcc18_lcd: LDO_REG8 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-name = "vcc18_lcd";
-			regulator-suspend-mem-disabled;
 		};
 	};
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
