Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 171DACD98DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 17:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=155V40Jx9WgeR3
	mTJYnKEl1hGq8thY3VWJA9KD+3WflXWsuAhu69XLzefnSfm1PvD5E9vzAp1w18qJI3ienICDydlGZ
	yO91DuO/Ve6XUQVZRwHhtblHRwFjJ6k+8Ee/RvzgD3B1ZHDJ1q+hBMppLjh/k6as6a15xi488/z0i
	M1yh9E9ebC5u5rhq9ptanhY2e2fA2LYqVUorXLQNISaZ5X80/dhDcw4yG/OtbxIzxOb0urrR9nkK1
	Ry+/77ciJVciKuWkgSI1KRz/MXYQpdOtPFJMmeyhfCXX7A86MtcfJtqAPKwL5Y9ChZc1C+CTW/Vpp
	TZOaG6yQscNDtvwIa9vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6n-0000000Eez4-0d7c;
	Mon, 15 Jun 2026 17:28:25 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6f-0000000Eeqc-0nDa
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 17:28:20 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7e6e41cf7aeso1885611a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 10:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781544496; x=1782149296; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=iE4PxYPrchH2byEktCUolAbHgn2V7hWO1cxzd2GnpWLbf//kXabWUo6QnEyG+Sys2e
         vMXMvh0z1KUbpmLZlWolDErLjfZQLSJT1NFwtdMV2ik6BYqpqjTCn1CRrWm4yDVJ5i6E
         H7l/bZ3iE0ii8qDCVfh9kVWCUIaf0cTVGeM5GNa6n2pfZLeCNXmjU85LAZaMh8K0mS4/
         I2NSRtkj53SjoS+V8psy0y/FBK3/myuI3zMYGGquSj+5vyrTW0Vsv0716ntiEETzseCf
         6i1wpcXxVh+hWHhyxoCJ6MflCII8KbkuGedBc+TU1ule86+eBlLiSStEM9IVCoBzdhNp
         FWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781544496; x=1782149296;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=IaeT4MxlbgydTn296J4PcNKA56lVvy9jvhAQOnOSkwS6FyTFsnZXO2bSXJP3P3DcQ7
         QMv4CNdq6RFoizCYJiYTYeDYY9Gx9eu8qLzZZyXA5jrawBJsXqWPV08i+bnSjnrNBtdG
         ZM7GI21SIfVvD1m+eSUBt1I+/BQoDWW1EElk/n1DAskdeCK8QOgoq6+6BBWP6yICzlAx
         jxTNAxeq6merj06wAKXvhlxBeJYpr4/qWtXtAx94yId7JqO12ckGRhEIMQiDASXoWQzC
         1YRUVNtTvHE5QeB/RLGpRbzjLkDOQ0ilepZqhGRnACBvNzJt32WcWymrq/nq7PIX613J
         ExSw==
X-Forwarded-Encrypted: i=1; AFNElJ81fpC9IO3Xf7Vewu/MIubkwtKrzAwYeI5+Po7PeFRdspbOpHvNaynuNTxfHmnjxQoftrqSkpOD41ina5OOVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzobVpMVI4vvKeo9wGcrjt1bDO12LRZlic45pgwOlTNzBWglEGe
	uKaXtveosEiOevcD+cu8NFTiBkiqryTYl2nT4AG7HqB1BgPI0pNDG13Z
X-Gm-Gg: Acq92OErxmNNX8ud1jPMoJizkYSzgzx4Ae+ln5ZWTBUJgx9cWQnrXG5hnn+u8EitAkN
	kJh/EgfMbd35ezLfVdWY5wyANy0wz8lPQC80Iwd20hYLr0qLGWk1J0l3Gd7GEKQ2lwZBOJEBJ6X
	67pR18gbzqEva55ye8RHt2A2+pIVf69iN5sOWA+mgX0BDPxj3X/8FNGBUPu5bVjXceNO8zMUNuF
	M+gaSCqQlBi8Yi9vmITUo0HGScp69z7v6N/4hCg+TjVxtS/yb8gyPsHr06LwcJuEycNxHfjSP28
	rWpwQYVtYsJnWg/RzvFDOfTemBPlogJGzOessF5rcm15ZbcX/T6trPRKMks+XcNu9QKCSky3V79
	+pyR9alTK3wvx0a1AQKNSxC5zAnxFi476B3/5dLnV+QyZSMdZwH4OWSUgxd47xSMqf8KFfm6N8z
	a1Ywx85rNVck0bf9JU7N+mQA==
X-Received: by 2002:a05:6830:230b:b0:7e5:b3f6:c6ad with SMTP id 46e09a7af769-7e78466e990mr10539475a34.4.1781544496051;
        Mon, 15 Jun 2026 10:28:16 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e79f451fe7sm4480033a34.0.2026.06.15.10.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 10:28:15 -0700 (PDT)
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
Subject: [PATCH V13 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Mon, 15 Jun 2026 12:25:52 -0500
Message-ID: <20260615172554.160910-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615172554.160910-1-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_102819_057762_A183A1A4 
X-CRM114-Status: UNSURE (   9.93  )
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
