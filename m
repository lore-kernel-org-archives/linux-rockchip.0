Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8260F1091910
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZeQuRcmP90X4omELK5Bpy2Ln3hDmLCnvWGM+dilNmc=; b=s7ClztDa+N6hGE
	0UOyjU+8/k4R74Rz2oxeriOlB1Vo2ujPDx+hDGkQPnGJ426gM4GBXH+Vv3TwsuTI57t5rri5UM+LF
	XMW8sE5ZUptXZ5c+nGIB8tBbzsfK4OJpUoqIdQ7Ml+gX3UgIz9vNPQKRlL1xI0M9noVgYEUM++v9c
	kS5u87etgZfwJ4Cf2junu58CHfaXjshXVL+kVkLXQeQb9tdir3vRbDbG3BlxGQTMFd1OTR55l9b1k
	4YrylrvMfzwLaYoS+gx9i34K9HsUq387S7o/ujtfcGkRIvY14U+6eEAcUCqeADm+nj4Dlei/AQy4f
	JJxnQr6QfpykB6UO6Fiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAb-0000000BMGJ-2Yoj;
	Thu, 19 Mar 2026 18:32:33 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAY-0000000BMDD-0ru0
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:32:31 +0000
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7d7c76e1951so1033022a34.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945149; x=1774549949; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QZMGPSayDx6CXME04ten6dFk9tjtVuD/jHId3mdxWg=;
        b=e1AfqBFKT8PU71Hc1D/3+z1N9jw21ens+td+vR1277LT+ZBERrMfd6H1pVovg9yT2/
         2j/eg08WJy3GOkfITdS5pAp+dRsU2Bk07G/ZqRZ/JlugMbeMVbtpY18kbvVWGu7wVKWS
         78VOX2KUa3t5xwoJxG4QHItobGLyxUK2xEkLxkBY56s66t4ez7awFMSs4gMpSpMuPFIP
         FRsFmpPq4DsLPcx3eBUQQQ0DNoo+DHExJvwFfWzh9q2kwW8SOToQ6hNrD26st4b178MF
         HtNV2z9OCxHovsnEf3rcddviKEizqTA66kZZ/PNLsD81uALFCxeHjUj/ISdE1uP54O9V
         /6gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945149; x=1774549949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5QZMGPSayDx6CXME04ten6dFk9tjtVuD/jHId3mdxWg=;
        b=ZDY0TK+nmXeGVvnGHldsGRpwgIBdJJFVat24g/CPZh1wS96Xm4ZOYiqS6sGXhZuAB+
         k1wzPKdJV2IfPb5hHq38JLptXioPpk6VDyUCowl2mthpCRJT3Ju6QUgapuufSWMNU4g3
         b6t8SSNIVvQ9gVwqrAABIUw0UJ/Fgnf26kjbGOqyM0HlzGy2qWHRHO2tkPV+qfXxaV9m
         rauwSA+q0rTNifXtREH/5G1NoTWRu2vPJrsNahEUn4NiPEnC0I2yLSznAyXBB5OoaCCA
         duiDLYpwSpFToWefJjWY2zb9Y/HJOdClcOuxj3VXL1Ji6a4+o2S9cpo5vxX8dbjNPuR9
         Pliw==
X-Forwarded-Encrypted: i=1; AJvYcCVnW8/NwsDhCeLD9FC5mTFKRyZ9/YXuksDEuVE2JoMfFCrzq+RHat9RCBj7biWbmfDXo8XM9DpIiRXI8fKmcQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc/OzQqs/ufNAyJb9yufTQn7vNaz0f8wrvXDTWTZF61LzLMP5S
	5AhMEXV3WiLR7c3OICUUjBPIfvOYANx9lKZ6m9I4OY9f+R51jDDJY7mL
X-Gm-Gg: ATEYQzxYhbYbYw8oi7UEPBxxJ7xSn/sjcKe1h4hx2cVpyW9DbJzIJd6bsoPW+RS5MOL
	qkbhncL+YBLUJp2W8WSeyiGPSPyCUtHtiHmmh7aNG6N7jLZeI9lmm4YaEfm3P/WePHx1/4Bub3c
	Ipc7PjFIuBxNim9zTb7MXC+T3ia1b8xyzvt7P6nIxiioMGZSD08imMGNuedoLHWWWQDmMMdmd8t
	IQc38zMzbNMhtjcc24jgS+DUqqjbKMMf6bcJomBlgKNP/IMFkYTk0ITI3eU6ryEY8SUYSgdoW0K
	BQwG8LhCf9DBjRvfAS6c30qmcC6OZ61VEMP2OPP54a3H/OkZLaFSFUs6CnPh2MuvdZj8mq7t5Ab
	N1Vtwhb5jz3gdeWsHPeQqhpTbevFBy6jXa7ruV3fFkfe3HDrZa+zpYzK+bRS6Zxrde7Nk2hviEE
	/cT1aRWafTo812KIYkkgCz
X-Received: by 2002:a05:6830:82e1:b0:7d7:c985:3a39 with SMTP id 46e09a7af769-7d7eae9634emr171528a34.10.1773945148951;
        Thu, 19 Mar 2026 11:32:28 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7eadcb11csm172193a34.13.2026.03.19.11.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:32:28 -0700 (PDT)
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
Subject: [PATCH V2 5/5] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Thu, 19 Mar 2026 13:29:41 -0500
Message-ID: <20260319182956.146976-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319182956.146976-1-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_113230_249645_1BAFDDA8 
X-CRM114-Status: GOOD (  10.26  )
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
index 8d906ab02c5f..dca270abc475 100644
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
+				"0", "1", "0",
+				"0", "0", "-1";
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
