Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA752C38142
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 19:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1ZOCS7u7RkxqBGaHHtyFGNmTpet3KGmAEkw3XITKu4=; b=VLYROSvgyVOKx2
	pp37jZIioFLCX3T2MYAWuhliX7GmFLpkF1Ljz8+wHmXC9f/eO9JyfOAAmpCsuIxxtT/Hiy5HdBpZI
	pDcKDeallGVFWO+0yFUNP/zrs04GRFCB4tg3bFjkJWYT89tezFkdew7oM9QD3nFEx/C6HcFeNCLBY
	LMA3GdZt/s4pHYulEdOWwNkerYJTG2VIDHjXy6rq5QIEdF7hyaHhgQFFtresCsCZVp6ByOQE9KeC6
	+tnxa30Wz4rJSfaQ5Jn+6sbnIWAKjcJX3f0HoVtj0iesrg4/oz7J1GvtDQxKQk9+bbRJz2rFWTlNp
	yXndcq5bX0fzV7cz8yMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQZbZ-008aqu-MI; Tue, 23 Aug 2022 19:30:29 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQZbW-008aog-Dg
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 19:30:27 +0000
Received: by mail-oi1-x230.google.com with SMTP id s199so17189792oie.3
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 12:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=2GZridEIMW8CPRQ+2eZ76vH2Oowxq5t+h5oKo5idFyk=;
        b=dMqnqKGcGz1UnYzbfddE4tCtY5Hy6uoMm13x+BrWH8ZrfAqQ1a0HHKxgdFqDYrZ4k9
         oLCtN7XMVeZVndgPbVM8OKn2IuVAif0WeeT5WiZqvXw75dh8Zzao/jVLTaviSoLCKS5r
         l+XJ4t3bd7WAkzthhAWq3+yGH/cPJUI8+IHAPDGBX0eHCHGtYKeg1A23I4jPoBfp/UaM
         FH5v2HRyXznLBhDqcs107Fu+raytowHqpeJzd2GX3VrNzY7FoUnqkXCj3oznQB+98Pvx
         04hbE2/s8RY+39NeJYg7i9lU45zDdmEBeiUade499lhE27ilw1d/IERdmJDALLE5g+46
         vl5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=2GZridEIMW8CPRQ+2eZ76vH2Oowxq5t+h5oKo5idFyk=;
        b=Na3OVGtwWpR2DfK/kaUly7i/tLNzhPcjVE2bhzEqtOLOwiGSqpK8WE2sByukD0Vjjx
         emnLrBPM3lSNkyVvBiufp1eAIVmzUgqP9eVetMppdb936srEhwGVgdIaPETjMEoQmmLm
         qAV1Nsa65EqyNEB3oKblww/MmuIXneQ1b6i+t/cuvKAqIdLewTW3Z5xUJ3A0uDE/ySu+
         Y/ACxoAL9ce8tTkbykpFz6OS8s2K9LRoSdibueQUd1yQDK2/5eJBfkWMOnCuP+P6VSx1
         WuIX0DgN+OCR2gqnbFI8tv5IrwvDwLIHOV2b82REJiboHENLtrdhcyQ2qOYGftWqRHVS
         E5sw==
X-Gm-Message-State: ACgBeo2UfccyvR2pYKgC0sKnFgXJvEzH2GXRT7YFdkjApSXBaLKF4RO0
	c+f/dgYO9uMhW/+vAEEREmGsHaLNAIQ=
X-Google-Smtp-Source: AA6agR6FQTc7FBuSeJDq8R2LCle7aCYOQ1HXmFoH0IhXw/srpqQcLT+Ap4fH4iW+DGzGAbUyT66T1w==
X-Received: by 2002:aca:1109:0:b0:343:25d4:9b36 with SMTP id 9-20020aca1109000000b0034325d49b36mr2005439oir.0.1661283023480;
        Tue, 23 Aug 2022 12:30:23 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id f36-20020a056871072400b0011382da43aesm4070372oap.16.2022.08.23.12.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 12:30:23 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	maccraft123mc@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V9 4/4] arm64: dts: rockchip: add rk817 chg to Odroid Go Advance
Date: Tue, 23 Aug 2022 14:30:15 -0500
Message-Id: <20220823193015.10229-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823193015.10229-1-macroalpha82@gmail.com>
References: <20220823193015.10229-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_123026_487863_7C58AD49 
X-CRM114-Status: GOOD (  10.35  )
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
index 415aa9ff8bd4..72899a714310 100644
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
