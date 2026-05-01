Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C916CD3435
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 May 2026 22:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T22qfWBy9ZHgyoyda7G2Ezkr8Rjjt/hkULpIiyX8d94=; b=rTp/yi6ejWUGVX
	st2QT3eRDGZN4yHgf4+kPegqZW8JUT2Pkfxu4fMRLmFPVxm08SMAV3+SvXIyNmrRAfUDAq7J2wuQa
	l08lYtBDkPtIcIkVSD2//a75vYDfNOPe9uGWSUqgLEH6htZIYEvkJS0aXQhocPA3hCrfa/+Bnx4wt
	JhCPfl06xcnbQ2Ge83Ov7b5eok3+jnVauXkNWWBBK7Leu0jN1xQdmJvyFefFlaBeyA4WxI/8QLHQl
	lTySQlWArH7P22A70dCDDe2HMzKvNudlE+rQvIhZVBoWTp1Ylx3Hgpwh/Y4yGMurGQXE1tQb3zRWR
	FZSYXZCK8zqNj/OSOs+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw82-00000007kcB-02fS;
	Fri, 01 May 2026 22:14:34 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7z-00000007kXo-3LQB
	for linux-rockchip@lists.infradead.org;
	Fri, 01 May 2026 22:14:32 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7dcd689829eso2108255a34.3
        for <linux-rockchip@lists.infradead.org>; Fri, 01 May 2026 15:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777673670; x=1778278470; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=XzGoQW3ZPh0Tt42BaSXjROImGMx3oJgNI29k0Sb7SpFOOX9sQOKPQHeBvwqSSK5A3x
         wPu64EX0gN8S+1CcqW7JfNTy02zQ7zGRqFE6N79mB8JEyMzzm+khDfzGX8VLnbT9WLwA
         sETy3RlcfidbRA0s4850uDWC9kMlGJ3qRpbd9MMOBaw5RSaWo5Ni9rNCaYykrzygN69/
         IAyTuV3q76I30t90VcP6j7ZAUmFwhyEwOtQeTEx+rmy+ojNLkHzyQ6QcnUCl0MlpMObQ
         Dc03eE0QjgQ8QSdi2ZAQfbqrHrNFHqlzGLj0YRwej3c6IV9oZgu1EGz3hbpoCmzl+zGV
         5G8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777673670; x=1778278470;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=b96XGv+Aoyj0LUh+j16EvjBI7z5CcHUiGIsKETilU35TtzlYTfkePHig2UrsTSpGOp
         +2UGquP5n6q3DFs+f0Db+/rxrG3GN5K72SL1dUlm0obbIj4udxiUJFJm6XCrXUjnkGm9
         P9zjpp0b2uQkHZCJLr7N1XCR31okiuRhQ4DpS31zNksYOyBXU0SB+0lFRV+PMrLOxo4A
         XAgYO6LEwwLR2YhU5YDsOXWvKD2QCDLBj9nedNmllPw9C2zGWwJxGkXDNfxLcsVrdmZy
         p+nKcG9AmZk6pho8F+9HDxd4A9ZYCbVIAzclW+bXySkrS9zr96H/XhVm7Nmdk2CRBBD8
         A/3g==
X-Forwarded-Encrypted: i=1; AFNElJ/cqTTOlw7K46PQPZn+IejUJjWUOqW9a17mAeiPe31sZlUPlb7WC0CxDsoYI56Zm/BLKbgebNQPbnhNtUMG7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCFW38RoDujVlk2PtN4Kf4wy4g2rjiDK7VFGycArK/yByYGSJY
	FwGNFvDnx6qsyWcQJMGStzJWildXgnLiKY9hqJlu+t3LrpGZXn92m4yL
X-Gm-Gg: AeBDieuMi51T58zyZ3cfdmgB+PKhW3+ahOViXeKooUqgFDS35Wi+ciUrb1zPiUvTmA4
	AjvXaaMBUKiNuoBkXxiF8cfL+3KtqSeLRn8dtamVLa4yyrvmG6vAx/DvC76rUUEfrcddHkLy/tH
	fK3F//NKPoBsIDJ6HfCqA4iLL/hd3EusFREX9xvF5uLRUiievcf/Q9b/Po4QTivUJNtQokQyIHY
	yOq6SCQjMMJwL4/z5fLqhbuyZPnSfGzjGdr+oHzs2izN3M6q6ZGPRMoIKAXQBkeWdfYM/LFrPSu
	wrfO3lbYgH9zgaIN3/iD8f2pTj46WMSTkyij3PAIe0QuxxabmnoJwY8tbH6wZiNGu5am8AyExQB
	aUnFwNDjZGDgBuMLwCXcpJw7RO6FuyZ15geC8ZB2V59jkGbGZPxVrBc24YCLXmLt4UOdSyDEiRm
	alSk3QfG7diP0w/+23Pz7NiWN8iDqzCYI=
X-Received: by 2002:a05:6830:3983:b0:7d7:c985:3a30 with SMTP id 46e09a7af769-7dee1290d54mr922365a34.11.1777673670535;
        Fri, 01 May 2026 15:14:30 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ded51a9612sm1827337a34.26.2026.05.01.15.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2026 15:14:30 -0700 (PDT)
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
Subject: [PATCH V4 10/10] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Fri,  1 May 2026 17:11:49 -0500
Message-ID: <20260501221152.194251-11-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260501221152.194251-1-macroalpha82@gmail.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_151431_840489_71FABDD2 
X-CRM114-Status: GOOD (  10.18  )
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
