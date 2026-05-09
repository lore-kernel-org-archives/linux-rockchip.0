Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 003DBCD37BD
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 19:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T22qfWBy9ZHgyoyda7G2Ezkr8Rjjt/hkULpIiyX8d94=; b=2mY8yYmNMQxkCy
	AKdz9dOFPynhkd2MwX1HNW7CqmPSarzCH0FtQEc44/MKMtlRZxKFuJNTQTWq0oYKWGLLms2o4oMom
	3Smv7xLhxQRfSUP9ld51LoCmMX8zUaEXF/C8KthKW/S5OKwyOBFs3ScxvvMOYidS2vaFo5+3vdKxN
	kTu8W02kX8WSZmgO3DIVP7tsRgswHWZNkoQzhdzq37j06gb0/7uTjoCYnPm7Vjf1wlXw2ru+3/eBR
	CZFHmkbK5Nb35b3xBxeK8GQxusVgtvwrK1dRxhYwLtZfke72GR4P4cEORJNea0GfRskrRcTXlmKPk
	1ViS7uN4JAdp0p/E6t8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLnFI-00000009WCm-4AqT;
	Sat, 09 May 2026 19:21:53 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLnFF-00000009W7e-29sA
	for linux-rockchip@lists.infradead.org;
	Sat, 09 May 2026 19:21:50 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-694891f8f62so1659013eaf.2
        for <linux-rockchip@lists.infradead.org>; Sat, 09 May 2026 12:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778354508; x=1778959308; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=Jt+EKdKzlG2Ozgc/w/EwjHkwYZk1H4pq/t9u2CKZb7b/HBf4IEPfa/4cu/HYlJP8Xh
         1Zp0bPDMP2taCvbkSRh3w/y6DsJ29X/GDyrrSvPxO1oSi6dKHZ/Sh2WbzIvneZrW6nHY
         3H6ji8QDjBdc2RP8ROKW/ifCJhoMscYi48Gwg2XlRr9VOmfC6b+gw0/o/7nyZaKbHrwc
         1DkLbrbW1C1ltDq+pAycG+5tLcDYx+if1a8TUddKtaxZJtGx9lv/51xk+8+NxVpk+4ZS
         Um6ajyhJ8+5iLq372R3dOdjzyDzRV41srQyW04dQfvoSyj0nwiBAS1lMtWqw8hgHqIjW
         P1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778354508; x=1778959308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=CnGtaokU/deE4I/Xiy8sGh/3S4jKMcdzzJp6u71qYI+QPVHUU8e3Qjq+56fvtj6nbw
         41VxtVK5uDf3w67djXmz9PhwNkjVpHb9SC6vpZ+N9Sw1ziTh57w/srhNfaBmIPoQZgHy
         KSNUA5mDwvKyA+maUD9AEg4cuTp3AjyeeU4ko3ItBbquyfYBTh/looIFS+tdKXxhNShl
         rq5djfcvPJkB86+P2cJBDTea5RocefcyaG2HbTb6bbxig8IOC9fKdAfxoEY/kY+XU0Xy
         zyfwoxYdlgQ0WreIsuVbUweZEl34pEE0a6GCVj0uafgp9mVPEW5y6x+ua4KWuSz8QxKx
         Ne4w==
X-Forwarded-Encrypted: i=1; AFNElJ+llcAsd8UZtkpkSAQk9aNk30RathLfo1lgCiCbRZ4MSfqaOgHD2DLZvFOWn/xg1+2/zk9jWrylbXONAsqCig==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7VNTo0QJDaMe8Xdo77UnAov7lprE1jNiMkqc92iKfwHHOwsvu
	Gan+UmT4DjYvVlgZkNKJTLMOYe1bjpMloKFXUv1H0tvsQlIGUdo1CqWj
X-Gm-Gg: Acq92OEqam0TFyekdIec6Fu9LNNLWyGtMnBz021vff8enCec0+rL0rMQGZbc434OoTv
	XuB71KjcH2kmM9ncnxXsAB8wCysr421E/eaBczGXY0NikwZ6XtGCabtJJ7rrIZzPW1uIeSqRfCP
	04z9DUxAj6U0F6Motk/R51DSExyxi2DqZOJM6V8iWDarlhh6mS76Fs2VVx3pI7/hzUk4I2vEWX7
	wcRlfrgKaLgxeY1N5i0Ou/MvM7CioIWiliI7itNPhlgrQBoANF3XXAPD1iN7BONxJOHvYy2Xh9W
	ocGYJexolwut4jbvwOQjPjX8JgnMyKUrU1zf2uBTVd2NmnpHn5I4+BUh5c2xRAYuUJp3wjhueUF
	CuRxjvCUAgZlcwUxc/kxoh2j0uDP+EUme/tnnyBTDaAZPmV/6kC3dxnBd3gWEIxq83ZgN0TkjZA
	sl/wVPW7TTbv6LrOMIcZhm
X-Received: by 2002:a05:6820:1503:b0:694:a362:e3ab with SMTP id 006d021491bc7-69b25d2bb6emr4168344eaf.55.1778354508542;
        Sat, 09 May 2026 12:21:48 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4355736f517sm5243896fac.12.2026.05.09.12.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 May 2026 12:21:48 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V5 11/11] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Sat,  9 May 2026 14:19:05 -0500
Message-ID: <20260509191907.24734-12-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260509191907.24734-1-macroalpha82@gmail.com>
References: <20260509191907.24734-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260509_122149_586984_6C159F7D 
X-CRM114-Status: GOOD (  10.15  )
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

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..875ca884deca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,18 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		interrupt-names = "INT1";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD6 IRQ_TYPE_EDGE_FALLING>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "-1";
+		pinctrl-0 = <&accel_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c3 {
@@ -932,6 +943,13 @@ &i2s1_8ch {
 };
 
 &pinctrl {
+	accel {
+		accel_irq: accel-irq {
+			rockchip,pins =
+				<0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	gpio-keys {
 		vol_keys_l: vol-keys_l {
 			rockchip,pins =
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
