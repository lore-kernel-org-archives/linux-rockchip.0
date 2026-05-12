Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27BDECD4F24
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 22:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T22qfWBy9ZHgyoyda7G2Ezkr8Rjjt/hkULpIiyX8d94=; b=OwXfa/eMg5rwCG
	vHimS4M9vgfMDNmwTGIhG5IiVpLZnIdhz1cpXbpUMfmNHAxD8zr4thL7bnqFI7XEe6F8yjeKgm8dU
	OquRMDPHQPAzFF/5e0sm3f9On3kbZ8dziohFH2kt8S28LmVdZ7b8qK65IypcnYujkhzD986GMIPn1
	OCeIFTCL3iiZ9m4oEoYzTBGWP0B6ji4dyivAnWZ0Xg4Jz+lVYXxl8B3qxvIQ7OLU5qWDaG3PXAkgn
	EHI0hjU+z972G8+WmZ9SnwAXRBhseJnDuQO/7kkXLXxAtvXCHTj27sIJFRjAkN82rfjfY5+M3NEcX
	ywE7w/SQCLcwHyyaSSGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRf-00000000ZPm-0rEZ;
	Tue, 12 May 2026 22:19:19 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRa-00000000ZH5-1x0M
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 22:19:16 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-47c35be02fdso2416147b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2026 15:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778624353; x=1779229153; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=g3Jhcb9pRYq+X+xFWualFThwAD7A0O2kakgKorhK8WIKwx3A9/r8kD0XOmOJdIXsnl
         fwg/EFOduaQKMrGZY2a0lEqx2GkqV78KDdaG6TfOzulw6ByqyDuEgHITeNL9txxTvg9t
         4WpxAEiClIoRwGks8UEeMZyXRmfpRDMB80YTDif1pI+AjR8HYJ/DBhbMeco8sw9oZJgj
         RNVh58b1TUqFtbWOGF2b4OvUsTRD8QndjTP8G/zqaeJdBEza3TspJ6wBTxeB1k1s1tYH
         C0XRqiyyfTr8cR76bGsQaLnsOpGh24b0i+tSHO8aHY85tYBk0QALl8PXYjQ9EiYgrNU/
         zgWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778624353; x=1779229153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=YwDZOvq4hsZVhL1od7imv/Ozb7dEmP5ZhHbaV59tx+HNMgOao5x1etkW/XSyQMMuYq
         sDvCpMg8zpMbjrySJDdcDaM1ZKs3+jZqPSOYRyS7oDjouQb3I7ERAqTm2NQv44jfCjzI
         sW+ck6Q//EVHPry3u3TctHW1VJRniwzuK5zgfaat/Bqdt6PWg0wZVyWf5OcZMvfrwZQp
         bB7A5QfPzrB5brsbeYBDJ4nDUR8gMLe0xbh1qRU+bGHHh0gW0bvNhVJ5XiKIqrqDtMW/
         66t/15C958yPL8U4I17I7tnRgYiqCVEwRwy6Zc+GDsmaiKhjFTEe87Utx+IdbG6JE/D/
         L6qg==
X-Forwarded-Encrypted: i=1; AFNElJ+7MGFBKeywnyt+K56tA8GBPeLe76dpELvN0Of2I7WSHvzm+vkI1sAmGSYnAeTX2DBlWQK80AsjUa5CkHmGhA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJUiwGwGcfp0W8maRbPKkWrJUVpf8tD8yuIoiUyqmrv1miFAZU
	k6xhM5MBzJoAoL4khp+rSDTt2Yv3SS9XKhPZKT4ygEKmVF1/oSz+8o3J
X-Gm-Gg: Acq92OHY08tTdYO+Isx9GHdliQtQ78IT2eqjlNtzDVzwAwMXoQXE7PjGCXZ9njY2ipu
	3Apz2lJZB5li2o4i3rDLOD62RXtHTZJAtzMpR5oSwo4Oxh+U4/R1qjis+4kayMBie2HKAFcndKu
	EwzPNeDmDiYY3K0xZZPWv5x0l1a1RhqmetYjkw22EoGFihytNQrYfrD6Y9mtmeygSxY08P4AqFY
	mNeQcvi8z4y53gEhOS97C5G+c1UxazoWXc0omtkYkKi/Cak62TIQqQ+zh4XaSJJJKp0p/y++Q6Z
	t6jJD9go4g9LGo9czREzQW5Bnm9eTrh02kXoKnKn2h4SoJQ48FaUFaIqT/A3eGn48+B92xR7Btn
	exOdJYugQivC0lJWsfc9/qs1u4Cd3AVF5SFGWhyk+Cxlly1a8B0rhfe3I8+gbPzRHwwzMRQr6sm
	0RlOE7SIIvBYghdfEcKVvp
X-Received: by 2002:a05:6808:1c0e:b0:47c:3f6f:db97 with SMTP id 5614622812f47-482b2b8a364mr584683b6e.21.1778624353379;
        Tue, 12 May 2026 15:19:13 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-47c76986f87sm23291473b6e.13.2026.05.12.15.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 15:19:12 -0700 (PDT)
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
Subject: [PATCH V6 11/11] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Tue, 12 May 2026 17:16:32 -0500
Message-ID: <20260512221634.256747-12-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260512221634.256747-1-macroalpha82@gmail.com>
References: <20260512221634.256747-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_151914_757197_D35AEDC9 
X-CRM114-Status: GOOD (  10.17  )
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
