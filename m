Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AA13CD4F48
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 13:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T22qfWBy9ZHgyoyda7G2Ezkr8Rjjt/hkULpIiyX8d94=; b=bLkdXp4FpNx/+w
	1lbPXNL8wEtQ6gEN2WmJeRyyYxnhvFqyKEFN9pILui1RC8WFF31SNlp2BvqzNGyO8CMp5lqltMpSb
	Mn0jWSaed1kXHFnCi+5NeLHVkbRLmS2PcogLGtvfdmS8ZRsJoAMxvAAVcjArKA3yaM4OPv01CIWHH
	Uq+2/sMH2h5Mtqx9HQlYPOOdAkgmTI2tsiqbEvh0Y7FIC3H5cjewwpo1qOQIFAec3ZBvhe5ueP/wd
	4qXWz6esMst9W9dSG8TVF7PrN9T0pE1sS0shWiyNLu+wA/QiSl01gE/0F5oWPiBihTazCmD3HqiXn
	kI1eQ5Hmsa2DES0aG1vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBr-00000008OPg-2F51;
	Fri, 15 May 2026 13:02:55 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBo-00000008OME-3fZr
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 13:02:54 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-40946982a78so3358351fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 06:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778850172; x=1779454972; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=NVUK2Ty1DmhyZJlID0ybI7STRlfWe2LSZIAg1Gd1oo1u0ThxL/EhA0yCGdzZboevne
         6s7hrWXYyjY3Q4phPVCy06qdbBrP2FEy+G1JjegkZ0oHJZBqJITcKsAAm84vmcoXtzPF
         GtvusBpk5OEbspKf3qLUoEEYqP3nU3P4ItQstpefLtl2TDtuaRaVa/Fj/H2JajZ8hKT2
         jLgZTi1ESGgrwux4h0+Z3M5q67EFGPDxyRm/QjoASwaLsoxViUn0DUsOXmRuaoYe5P2K
         lGRyuTMTQe+XqCp0vJ4VU49gWNTDXS88cEP1gCjrucN4AMENNWQDGoKZhdBAYc4yM/2k
         8udw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778850172; x=1779454972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=Yiy1hdChsEDSsNixDT4RFjs6+0YH6hjEbkp6tQTDHAb6jNGO4DHeT6i6AdM9Rf6GPh
         v7mqh1aV5LH1cKRURVTHLxD8N+QlKHuBTkpWrmeokxT0wAzovTIFq1ocS/JImJnKzPnW
         eE455WbfzXu8Aha1qJ4t+tDtJRLBnKJZJk2zNZ0E2vuzEwmjuNg2DoPwxS8ZXaxDxrLl
         06MY9/+Nt4FjuVfq7md/Fp7JaOZ14/Cn7RrNUk46wwV4CcxVGfrVvKdKFhCBBa2gbZbV
         aoN7e9Mna65Ecr/NiyYttrX/mzH9siyVdnD/9SddbBt1J+OuKIn/9kYlk/oJYVC7NmxW
         J3PQ==
X-Forwarded-Encrypted: i=1; AFNElJ9xu1139s1R1XsbPjq7QKsrFup78qvC6WSUAk8edDExNZujk6J3alpVM7NSPV0u9BrQ1vbWhAT90SsNBnSNrQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzotTHmDgLKObdFxTh3UfwQ1KgMcYX1G+PrGbfWYmaLe9nM098K
	9tKL9rcONacupLhEsb4Vcq8d8/eUo+PTb6Juizt7lWJYB7X5fDG996Lo
X-Gm-Gg: Acq92OHWwW12t+8hu9D+s/KwsGJBeX56xibpdCh+2nhYZZisxadjZTLgYUVijqBqhg1
	yP3wzV1R1pOw8YpxbUJ6+etrxau2uiOcY2ce08Y+uhjoOdZ2BGo/wgoqC3SHkiQPaT/RAxYHKz6
	luSK3MHfQZeprAn9qB/i4D+QH5A7nyRNdyZQ0fp3Qqd+2lWhiIGteNBDMimJGCcMyYLuXq8ty9I
	RJmXucY78TH2gF0Y327ksqW1TObHzZnQlP54KXHDqpW4Tc3ELesllYIIomT0Jfm3FUGwRDLMwGk
	iPINXxXF9WkMf3DZ0RlQkgjZOl4/vcusM2QdajmT5eg+72YxLi51b/BSsqnq7cwTipcXW2j1TsY
	McpTrK/TdOFT67vmBdTsdwOPU2RBS3t6Z5HCxzf4oBBEKxMXo6REyEzjfTjlHB/tRWqcQyNizxN
	CFHRf1Otfmn8cHWlXUiJV5+3rTaXcc6XSIT91s/xZ9xA==
X-Received: by 2002:a05:6870:21e4:b0:42c:d92:1c68 with SMTP id 586e51a60fabf-43a2dd74a39mr2539946fac.21.1778850171260;
        Fri, 15 May 2026 06:02:51 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-439fc53f2acsm4155822fac.14.2026.05.15.06.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 06:02:50 -0700 (PDT)
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
Subject: [PATCH V7 11/11] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Fri, 15 May 2026 08:00:16 -0500
Message-ID: <20260515130018.237378-12-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515130018.237378-1-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_060253_092500_EE46DF93 
X-CRM114-Status: UNSURE (   9.87  )
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
