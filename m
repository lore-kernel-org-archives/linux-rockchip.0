Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C54FC4452E
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 20:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=ECuxi6/LKI3Ywt
	SEONoHN/u6WLjekRDt5YHbUEyycbmp5VJkK7om14w2YBaElKxULpiTjxYtcSwAxEI1MjEPAa+AP0b
	DJAGHvcKWeYByJKoCXZEJclpFOmaHtAdDwVfaMZJWCLrXKSgMvIYrNmBM5zdOx9KZp6ZMfb3S9mrT
	a5cKJFI8mNCGPJYEnZXuNUPbrRQ6m/8qkdekLXwSRLLgSADKFyu4txGmXYpVGV3gHhhWMfl19ufZv
	rY2+fbeXHP3CXDnvJ0LX42AeEnv3DriDthTvIyslBLsVc3v7p4QZcmPxC6yvVZaalnU4wX07hAhxb
	eT3JSem1jek51QW9gfQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluZC-00000007rlL-2NeX;
	Mon, 20 Jul 2026 20:26:22 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluZ9-00000007rhl-29gY
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 20:26:21 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-4a483a552efso4382859b6e.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 13:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784579178; x=1785183978; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=p/VzLHX7v1hJrnSIZWgih4Np2AOkV2r30iLjLIMrx2fxhG+ruMKvhpkh6D4vHy6xH2
         0zOJcBHGzAJzIXdeNSWWd4iYnO/q3MAJu+m4/aTSEvl7Xc+z3rH8BpHMp+yr+J2asPzH
         +KCqtZerxnBa1555qbyqnnWbl5NjdUgjOcsNFHw7iF1qfMl01s0xQ0Ma1hXGHIDfvH1i
         T+Ql5G0KKg+UPsxXBN87C56WubQ5ct+qYrbHZ4rdrTkZdaSolypr05eC8cC3z/qAeLPj
         anV25SbBXqsaH38ZrtO32tfHUX0YBF5QIPAovxvNUBHykofzHzZ8FLBFkPykJCTETYeG
         hcJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784579178; x=1785183978;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=AiDQ5id7xcAWKTUgxXCpicZhxhxtzrcUq7fP7whvFM+Yj5Ajo9fZviijqYzO3sdZP3
         NiNKwxSWKDRbunks/Kczl/XAoMmKTcjakUmNzO3zI8xLItFAeWpT1FuW1b7VB4EYtP6a
         mcFnr2Pr+h9ZBVq6gz7HURRvdGzdxEck6yeNXNMrqeptwt10Ca1PqOvqE+UIcAWZWa6G
         YRTHr7R0IQeL1y3lTywkvqckp717Q1/6dbbaXGXy778COSMJKNQVbpC+68Bzt7/YBV2z
         hcT8AzjeR3/54WFTlq9OPKP9DD9hlyajjIWEW1PxqsSpruxgAzXheoGGq1Iv4E5v603Y
         clpw==
X-Forwarded-Encrypted: i=1; AHgh+RoUcx8AaFXtR0JvvvlP7WqMqIW4XhIYdkfOadyjQvuoKNtW2w4DKcVxc+hEdvINfXOl6Fm1VMgm18zpEng2DQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxG/qyL2mX7WAcjd/Pk9xa0O7+jfAUrw73AlW67DeYfqopNMHMt
	8mMBSsiFy/BRfJJAoUjMtcZ4xNYavNU8Z9Kl0NckjBOUMf5ZUFYlFQo+
X-Gm-Gg: AfdE7cmzOuUxAl0z/tA6fqp079smq4sPVXaq1B3oHi0UQ5xLkbTMX7cac3ZqPEQRm9l
	6gVJrInivc+IbVZJbTfX0gtSrVndK5A0A7YroH2RrQ2tMU4lxQZr/GySu25Ma3xX+hmlmOFxA20
	naeA4Kblfel5mNRfCTPTKTjuGEE3+mH6IyziX/zItX7Y5na30IlXa6thrkG75Md8h9fHWHhZn/B
	5k3ugOsJZFoa+bmMlZlmW/GZciN+ds0AaJvuiWpRgJDXDkXqszMYVc6yUAdHGy6NYQBglAnBnKI
	MMzdjhIYRGzozF7XC7rocBUneeegiDdbzBbVm6LIkn8vtc5V+V0vfqYFiYfD0YfWF+jbw3BwgM6
	ixf0V0u4OGDPjI5B2pRr56ukYDJq8pwQ9lwLkofev2as++FC6epvS7QGgk40UTCzNtKGAMv8mpp
	Prn7ZBPKZe8cHGSgPfPxYqaA==
X-Received: by 2002:a05:6808:f8a:b0:497:e1b7:d7bf with SMTP id 5614622812f47-4a4d039ba7cmr8747067b6e.32.1784579178321;
        Mon, 20 Jul 2026 13:26:18 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9988:5abf:3c51:d168])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a4d3e5a0cdsm8029550b6e.18.2026.07.20.13.26.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 13:26:17 -0700 (PDT)
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
Subject: [PATCH V18 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Mon, 20 Jul 2026 15:23:41 -0500
Message-ID: <20260720202343.70138-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260720202343.70138-1-macroalpha82@gmail.com>
References: <20260720202343.70138-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_132619_567867_14958BA2 
X-CRM114-Status: UNSURE (   9.77  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..b770bfd5268d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,13 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "-1";
+	};
 };
 
 &i2c3 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
