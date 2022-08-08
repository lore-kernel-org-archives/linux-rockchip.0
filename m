Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E3DCC00140
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 17:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1ZOCS7u7RkxqBGaHHtyFGNmTpet3KGmAEkw3XITKu4=; b=ZgdPYfNtBx9saT
	v95odmF80gdFEfqnO0fCA9lDcBcATrbeaOGf/mTDy+qWKTOZheo1txB1k0YcYflqHGVcjRHLmRoTD
	voi6foA/r2x+Ec7XX9dhGepIh9u6fIqhkN5Jp4rhORD+SC6gaXJmcrxztG0EVBmVYsi49VdxDAvDt
	j+k1k0qurZIrPePuTX4b/KmrW6Q/fZA3+aNjXGXolVuumzkTOMRHUrQNqmcWdZyfttSnxvCFdDKop
	vFFi5EFZly8TW3yREs/4iYYSnR2HkseJiXdbuvP78xyBl07nZRkziVcxKVgu5Ki5X/DWvaobBmTVl
	gDSgFADKdxDdmXl+gnug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL6hv-00FBW2-Sr; Mon, 08 Aug 2022 17:38:27 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL6hs-00FBTl-5D
	for linux-rockchip@lists.infradead.org; Mon, 08 Aug 2022 17:38:26 +0000
Received: by mail-oi1-x233.google.com with SMTP id j5so5436940oih.6
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Aug 2022 10:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=2GZridEIMW8CPRQ+2eZ76vH2Oowxq5t+h5oKo5idFyk=;
        b=VNr7TmmWGkzK2opc+qR2EO6AQeT9SPjP0Xcq20dztuFkQtDlAV4AEvBdhPPILApBeR
         wo2r28snUR33fLQyZBjV7dUjG2+Etfk+nlYJrmSyQb18kTgL3xFKzpooGO1YVOSuyN+H
         SqzFmDv2MZ6ubeYfOnBAYsjulqyRlFNOb/zlztCVMfLpZ7fjFrZnETKOX4ob1qxK6+Lm
         bdD66taOpm1Ugcw6VS/pIF+WdFt6Hrq9lWkCLCKVxQUJ/Pn5kaqPHBtcZNky+06Gp9Mc
         9wv6X70ctFkJXe81XogL9yRuqAIpCe2ZOSmOAS4V0yImlP4OgxZM5mCU9U8kWuBMh7MC
         8EAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=2GZridEIMW8CPRQ+2eZ76vH2Oowxq5t+h5oKo5idFyk=;
        b=IaenNW21IN9vRXwz6PgUGNMi7ZLkRDHWUm0cDdELzVVIfRrWkt43LdNcd2WqiftNjg
         /izIGCxda86+sWDT2BDs+Na12lP+i7DcM9qJRkhnK81NHRVNeX/JzQSKRLxQdAeDyJVe
         14SasQI1m97+Z9DL+Je9SfegrNdizCfo/FRHbvSQ6B0+n4c85bRK3+f/Ez2obDdXY+/o
         JLcGZ1E1Ais07VC/lIqi45d0TYgMFQ5c7rcb76vm2Eyf/FMyMTuhkqNwMr9iLhUgCAOj
         UdQAw3umDasQ4lzlS4/NUE+StIH/S2ogqrJTfVTsaLdqO7PdQUNvF9xIOFkLsMcCjLn1
         5tWA==
X-Gm-Message-State: ACgBeo1A4DsiOSsPaiw7luuub+jWUxZk4esAJa7mspTaEc+lfEVI68uC
	H63b0aCmRdIljjj0Xgt4oxs=
X-Google-Smtp-Source: AA6agR6bvE+zxkq25jcDZyy7QqdHyAByWqf5z02gpFx1yIOm9mMTRKgbRvH8ig1Okk2nan/1NhDweA==
X-Received: by 2002:a54:4394:0:b0:33a:234e:f9da with SMTP id u20-20020a544394000000b0033a234ef9damr11436821oiv.116.1659980303564;
        Mon, 08 Aug 2022 10:38:23 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id s2-20020a056870248200b0010edfa2b0e8sm2429202oaq.50.2022.08.08.10.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Aug 2022 10:38:23 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH v8 4/4] arm64: dts: rockchip: add rk817 chg to Odroid Go Advance
Date: Mon,  8 Aug 2022 12:38:09 -0500
Message-Id: <20220808173809.11320-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220808173809.11320-1-macroalpha82@gmail.com>
References: <20220808173809.11320-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_103824_261253_47D2AEFC 
X-CRM114-Status: GOOD (  10.56  )
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
