Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E6B8CD98D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 17:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=XLS+yee84uJcjA
	GXVE10zI1BPmLddVlPFZMZ9QGn9IDdPyXM7S4ioHtUO+rcC6X6WVTmIjBO+sI896kCItahj1lP+l9
	Wt0G5eHBrcCNyBCikEi5c5A3ezx3QGepFCd2EafFhLnLxLuluU32u4rvP2DlHHmzvw47rGMMBRBJ9
	9RkmJ/QZBW6kO/1VZoGNKekmPMjy4NUZk8RFp8dgUorKHD0FzWkGStzCm6PVe1cb1PjRFxl+m+nGq
	WKBSm04yHeZZSv5LmNloEmeLGq9R/wjcoF8dEdpms8ziWV9PoQEEP+vP6nZAKNKpTRzbiKHW/D2wm
	NXI1JRTIx+ZQ+1B6ly9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNBJ-00000008DRG-01yM;
	Wed, 10 Jun 2026 17:57:37 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNBF-00000008DMK-3x27
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 17:57:35 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-440dcd6406aso2823328fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 10:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781114253; x=1781719053; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=QpjR5/eJHbfQKHrqlsnyIIf4V+/Ax5uAeLQR+ZLY4Q8e608ZYTCro+IxrguJRQ2FkU
         49/wV+rPPY3/jSPOT34CealylEdzpoiL8SA/x101xUwSMUN4xM1wfHMp8GlFXEmDuUkT
         2b66l0fA3E8XmACQ1EKmrf5Ys8AHU2kvTcL3OJMtmN5vy6Fhf8zwZ+4usrhNMWfbOWC2
         gVR1G8EkLHDYzuEig2MlTIUyRJRm2khRQMv+8Sg0oxDVzhN3d12zkEs/KLkn5bJqKKGR
         OAazeIH1RJ3iCRl4F97NOnuEFmLc+TEbwfRh1S9uJ7NaYAynOvvrpwmTiH6CzkWXnH8M
         h+hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781114253; x=1781719053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=p304qv83mXpC//uWbcdwxdGLJ3k8t/26Ou1cyQaMEOA06IGjyIXEwdSPVsCLaje4xw
         DCiOXJRkkl6UtAq1sERsctSc+XnOZqfaqfYdKl5SZL1YZ3vJi3fV7kSVDMKKPbmB0/Tz
         /gkp66mwxURFUrT/hwoTuEdYhib940MQOBv2El9Ege0apsavOHYYEVNw/wMBmRRCpZWi
         w5ftHgW6LWs385cVWw0SG8KHjYbfz8JbWE4vUHIPeME3Gapus/EB6vk5V7YeJsSVdCAe
         s3kcxMClnf6wUI0/hxgkIFyhY0hH8kMUFwOnKZTd+wetLytANUxVNHm356Ttf3LR36EZ
         DyOg==
X-Forwarded-Encrypted: i=1; AFNElJ9eyD1F4E92kDKQmo/Ee0d86m6NxJjEH0hNIfOWNseZrIACc+81gkpZP+ecbrCFdTdUuatYO2tqA2guPaQYIw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxe9h9dBWE1DqEwMYbDsvD1mLvrGtfiuivt7yFH2xHa3je/me0A
	+pNB/9b8net75jFp8Y2cdVkqwOniDTdbvua01Ny2VdgrReYQ6URvMfZ3
X-Gm-Gg: Acq92OF4RglodWjZ/bwaTA3k/b7NoRffrysoLLYvZ6Vccqxg1ycocfncGVLEAzB41op
	PHorEo7wdk57dPW9eLuZfE7H5+0ZmHWdDnXKU8zAgJM8NG7EiORL6B6iIWnWSMsMcQQCLPQm+Rf
	Fg2TbITKaMY5zHOgoH/LgEGL81sJNoQyNmfFCz9Cx8e50vKBfuC2FO+2KSW4z9AImWu4b0RSVbf
	q4kS5melq8EYWQvT1DTUg5Li9s/XbiaNL2BN7rAB8IBgnbFLId+mgf9/O6JgFsJeJN8gVNpzyJV
	QHQqV7qYAn2NjGthfl8OH/cQ5oObny0kqG8SkXxLCZ9kEW2M+zZBQh0y/hNY+Op0BndY3hPq5pj
	mWI9ydOwvwYSt4xqPk4ofasaFpSg8c+Y+Yl79UrBqq92BLrKy2Se3jc9jdUKsJ5hPGeP9CBLurC
	FV3VfMTeOMQtOrnzureSae82kPBpXgLGIH0TSF8/7NNoV+a1p9mBsysg==
X-Received: by 2002:a05:6870:c26e:b0:440:67b1:b5b1 with SMTP id 586e51a60fabf-4413d6ba671mr14468737fac.21.1781114252742;
        Wed, 10 Jun 2026 10:57:32 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:b86b:51ed:28ca:695f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d7d4f449sm21180794fac.8.2026.06.10.10.57.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 10:57:32 -0700 (PDT)
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
Subject: [PATCH V11 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Wed, 10 Jun 2026 12:54:53 -0500
Message-ID: <20260610175455.19006-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260610175455.19006-1-macroalpha82@gmail.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_105733_986235_8018A402 
X-CRM114-Status: UNSURE (   9.88  )
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
