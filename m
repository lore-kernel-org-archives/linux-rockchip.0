Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310EDC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 May 2022 18:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+13Ljd3hvhmpyTw4WI7Q4eEAUq5zCgcZWDPP138lB0=; b=Y87pfK5mcqjnYt
	7K9cT1DpuFispUIFzBAjlLkROgyhA96gHZ2DJa2lPbAPvaFAXw9Ub0Jsdf3W5bkP/1B333IxCNvbZ
	xTMfE+FJ0DXMRXuu0WZQcJUThkpr82E6iE7ipgHy90pxsYs++KUPEuZy4uroEiIRmcufui9fTq7eO
	tr2ekWXxIiYhnuF8COCIXBBbyUoG3aDQlqZZxFPLJqmX1Cnc5UupxfQT/UOInpp+Chxp3WLxa4UI6
	zFYBcsnh4Q4R9suqgGf8E6dLwXqWHpLcUt3CXyeeDd+xZpd9IfwtgjOnU8jfRIShzFSC3A9vt54u9
	4O4wQkx2TFTHLtebljRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns7Qc-00EADB-3n; Fri, 20 May 2022 18:32:46 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns7Ou-00E9Jk-8g; Fri, 20 May 2022 18:31:02 +0000
Received: by mail-oi1-x235.google.com with SMTP id y66so4853150oia.1;
 Fri, 20 May 2022 11:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vAncHnLBpOlRUc0OOfu8cfX5QtgUJCxxL9tQZFajpgg=;
 b=bmWrGL3sEsj/DdoZUZdcCId3YfRUOcQRoow6LKtnPcmo0esJDFkFkFFljkGxOpxxJJ
 avUC00mtU9JRKRPMox3UfUVPVR7uDbTiKg41EUVYXHIJhZ7Ov0jnAeGbTIT4gjf7PmTF
 dSAmc0VOC6qvshTkf3GDA920vEHVQcg28W9mPr+hIGKbYqGvdOX60FfAexmDef1XGVEZ
 EKgGzT6YFwAfz6rDYLZzhgs5aNxFcJ8nBthjkg3Yx/HqIGHZtY/SoMniiT//p8D1wL7v
 4FkvNhZl7RglV78jjfItYydbnpeHJzty2rnHlL8kyCxD2OLpTzxTO5BcjwZW76PxHo9C
 Q10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vAncHnLBpOlRUc0OOfu8cfX5QtgUJCxxL9tQZFajpgg=;
 b=uTXyTSr6+CCSc7CwPYJU/gz9IkwggZCVPVj+8xquQNoeKsmiDKPSnuVEMqI5sDXmuN
 ORUX6zm3PAEkQjOsZmM7Hhx4eG+9NCwISUBdWdOlAJkc3qNiyBJhQUbjcXGIyTVqHWAv
 8m3aLzPdnSNiWkCYIvZA9los68TVPbonO4IYDJ26PKT8iTFmpzBpz86L53S8swBwXWpV
 DhVCRIL5oS0edK498OW7pvMpc8i2oR8ziY9/jCstOpCsYdAlMZjgSBjTIr+zircWJwZR
 BIwbFBHBvvRFKpjXUp43S0jTaCB20E1Shwl0Q61Hit9xnR+T64NI495cq8Qlr/ek9CFC
 2RNA==
X-Gm-Message-State: AOAM533acPmNCPKS8wu2LKWA3Cl5OdL+k0DFns4jtgfVlBSYHbIEiFYP
 hSzt+H7kwfPgUXKYlT3aMs9XgU7Or+Nm/g==
X-Google-Smtp-Source: ABdhPJxho6ntEN/PHPYS1k/gry9G+Ml1ORAc+IgCOHBnwUE0s3xFIHwvSGsy6PMNnd3Q9Jjykl359g==
X-Received: by 2002:a05:6808:130b:b0:326:d1ff:b56f with SMTP id
 y11-20020a056808130b00b00326d1ffb56fmr6376634oiv.222.1653071456829; 
 Fri, 20 May 2022 11:30:56 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 w12-20020a4ab6cc000000b0035eb4e5a6d0sm1339467ooo.38.2022.05.20.11.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 May 2022 11:30:56 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 lee.jones@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, sre@kernel.org,
 jon.lin@rock-chips.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
 Chris Morgan <macromorgan@hotmail.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [RESEND 4/4 v7] arm64: dts: rockchip: add rk817 chg to Odroid Go
 Advance
Date: Fri, 20 May 2022 13:30:37 -0500
Message-Id: <20220520183037.2566-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220520183037.2566-1-macroalpha82@gmail.com>
References: <20220520183037.2566-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_113100_383575_6440BDEB 
X-CRM114-Status: GOOD (  11.13  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 charger driver to the Odroid Go Advance. Create a
monitored battery node as well for the charger to use. All values
from monitored battery are gathered from the BSP kernel for the
Odroid Go Advance provided by HardKernel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index ea0695b51ecd..ba72e6716e8c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -52,6 +52,25 @@ backlight: backlight {
 		pwms = <&pwm1 0 25000 0>;
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <180000>;
+		voltage-max-design-microvolt = <4100000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4046950 100>, <4001920 95>, <3967900 90>, <3919950 85>,
+					<3888450 80>, <3861850 75>, <3831540 70>, <3799130 65>,
+					<3768190 60>, <3745650 55>, <3726610 50>, <3711630 45>,
+					<3696720 40>, <3685660 35>, <3674950 30>, <3663050 25>,
+					<3649470 20>, <3635260 15>, <3616920 10>, <3592440 5>,
+					<3574170 0>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -472,6 +491,13 @@ usb_midu: BOOST {
 			};
 		};
 
+		rk817_charger: charger {
+			monitored-battery = <&battery>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <300000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
 		rk817_codec: codec {
 			rockchip,mic-in-differential;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
