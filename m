Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2C3BC54F56
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 22:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=OLc6NwI5tm/M6I
	uQ4iEiWuusXGH9sURzMTgeVERLji+dFuTD6KShnmcYrlHkoD2z4AkdPzM7L6xJ/vCVSHUaapNg4ab
	Fqf+Y9GHOEX5kpRNA3fXd6Jhwuwb9jYmshC/OgfVwNiZoGT/QWUywWm9qsv9DEMRJ/dtvleYNSq6l
	g7qaGgRoqZWGKm0Xoo+PWUFKTrIGPhQ2hSQ5rjeJu4DWqcMrQN1jIuCu4cdjyzi4t06BOQpJXW2KC
	edYA/qcKp3lWCWtPRQbSYYkP9udL0eb9Ixahc/HezVU9ZdzxmzA1e34VaCyZFtFbYg3uM3PnZmPA+
	qxZJ6Lm1oRlqNj/RTrpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqkg-00000006S2B-2WfZ;
	Tue, 28 Jul 2026 22:58:22 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqkY-00000006Ruh-42lJ
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 22:58:17 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-4472500e25fso154051fac.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 15:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785279494; x=1785884294; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=XjeyrXRi8MglqwbSKZKQGZ7xCWeDKIOtNQs26+6XeLjRvhwYfpRS6Jj87fybkeuMhj
         YTf6n1UxFRld0xCZ8wDcuXDU51ARCvqY5b0sTLAepgwuJ2sEIwP6sxo3ZEG8YNoW0ufL
         i7Am/aFQLvxL8RfdK6NV6QuoLiqWZtWd21GyEHHaHyOKa3sQ0gTtLDcjSTK5TW8DrVHn
         X/1u9FCaHmOVSiB6CIeFejHVOiHBtIXodHKNeRZz00YRZp5TuFRVaDIPl4eq1hgzAVlV
         HjG/LumYyXyFVbkbELJox70cLG5sNYRO3+qlEUdbIeT+3aXgLrK8io2O7mJwi7NR9E1s
         OcZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785279494; x=1785884294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=bJigs2j+q5mWreTYTpNCfZcNobljvvvjtcWZoM4lOyJNf7HpOSEDwQXKT8M0JMxyMX
         4zKpramwyGN9fuBBrRRsA5aiWq6r5FKPWAZPENzAB7xJqi6WjkFalvUAi6kV+Lm/hRdq
         rERxRKSLwEBVMlnFdc6GkFGQI5VJSyiLehZ+ARbvHGV2WIcjsf/dSmOdh2Nqp7CZPpJ8
         cuvRLE1yQIozCjfLblKNxzcqO5NJ6OLrG4LfQ5jwMc4opR17J8m9o82UkTupUDRA2dz+
         zM1cZDICm/86t1SON3BrdFhgWw5gKN74z3zdAEhJCKZojOkPlr5qWGwkX2nXqVdSkXu3
         135w==
X-Forwarded-Encrypted: i=1; AHgh+RqbwX7qTILZXZbF9J0ryWcLNuQivwgmrZssnp8Hj2FOhg72BVWNu1DbUMqT0DWloi10IqbwTC2UBOProIy4Xw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyJgVdfNdAot9eokA64FeQUKcrIrezaUIwjmerepoP+nz7VrpDF
	O89hjuVvXq12RP/mtEkrF7goZa4dtJz2dZYJJ3TtXgNsRAX+hzRE8q98
X-Gm-Gg: AR+sD10KTpo/nRXDkc8ZRTvByA6oEqAY+gdHqFU+v8hnrGVuiC3KQ8s7/EPE8r8TJVr
	0lrBmLX8ZCBROUeq9k9aSDzLzl0NW2F7gyDHonIypwKigXU+I7HLGapyk++fv2UFnSfIu/vdwdU
	vkL8LifeK3Tax4cF6pMN6HG+yxXERbx5MunKrK2mWPrjlXwA9Hhtsz1cdSbZL2GLQtZ1I3yetEZ
	2tMRJPJpgvreUwQTWOtiOcmrqYFM0nMnMSQDBkmue99XhGqlUNRv3+Olrq6V0xWELWbViLY1maI
	vdcdWje47b17LexUst0M+xOaw/iY2iYw+wx7tUUtAdcqCjOKXwjzzqljBxNkQ8nhU71aYWIVeYP
	amE1x0AOyt2cZD35OBdM3dd7g5b2nHmXBc3C8DWttbCHsvzmGZoOr5Id6bKHsWjYi6JHDC+U+KD
	YvYqA/xNMnQKCmMFcGAQmOdlmmekrQxeFGnMtRKsHjhgVEY4rKJi/Psv6HFWSRjIGfKfkXxyvt9
	4EUE3rd5dAL+Fa0P0M=
X-Received: by 2002:a05:6870:5b95:b0:447:9dcd:ad3 with SMTP id 586e51a60fabf-4586cb510a9mr2652330fac.18.1785279493899;
        Tue, 28 Jul 2026 15:58:13 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9162:e42b:cb94:2d55])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4588646ade0sm990277fac.5.2026.07.28.15.58.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 15:58:13 -0700 (PDT)
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
Subject: [PATCH V21 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Tue, 28 Jul 2026 17:55:40 -0500
Message-ID: <20260728225542.174825-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260728225542.174825-1-macroalpha82@gmail.com>
References: <20260728225542.174825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_155815_194008_F8B133C8 
X-CRM114-Status: GOOD (  10.13  )
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
