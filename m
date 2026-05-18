Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D66CD343F
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 20:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T22qfWBy9ZHgyoyda7G2Ezkr8Rjjt/hkULpIiyX8d94=; b=xdbrwOWAFAQDPX
	R5ggIkUg5EYrXc3TrOPvwLEgjrnVw5tWEGxnXUkxNboVNdA9b9oF9JUTkXRNT3pCyuv1UCHkxR4eH
	nagmZ+4k4+Etpuzy58meUeIAVvZ+Ae7vwpfRFz7H8k/r0KOoKaqnqiPjlAz28IfSEVpQbxA3aEEvU
	8KVMM0TUb6C1w0I0NauRf9X7b7/6uq61d267EmcOBC9hgG1Tpqjf6WRthO0dQIOEp0V1FFaEizPkI
	aNkS6n/OMlOMgYXMChHQ591iycEg06VTUOnhzVJwquElOxTVHzbgSqRPYUloHQdUsnaG7aqEJa3p3
	/ERe+jyoNvNm4vfgl0/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fy-0000000GqSb-1r0R;
	Mon, 18 May 2026 20:08:06 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fr-0000000GqK3-2cTG
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 20:08:01 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7dbd801138eso2358339a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2026 13:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779134878; x=1779739678; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=OGKL2TnPd9xksBGc7f2eFav5fssRicNOcfSFmKcYtG7cB+QbSdsw2Ddmy2Bi4MagQI
         GavAme4XE9JmMtFwMccAio81emrAW10Q/pyAbqKicJCrp0GQUePCUOAaKIj8l/Psdg3l
         PdWMzhytIgvYFRTB2BipsVNBY/manEjnILpeUQZ10FEI6WiI6YfsYEmHxBTuC7nlLg5W
         FDsxS5DZP96PeDuxmuS1U0L2cbfzXkrPLP1FvK9KCw8taBKqHvuVa1bH8QaBsCWsEzp3
         t2HYasqi+x/ZFd6kT5FtK54WVq2GVcIN8+fh8JDMN0h02U57YRNIZXM0tLdJBG7U/vfN
         WXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779134878; x=1779739678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=otfNqYKPX0ZLZLhzpqU0jt/57nq77s2cQXnJGG9PTwPxJoEwdXJjYtXb9xMpnCoZZD
         ANVqj76dLpII4pHJO230PfxTYGH1STK5/wW8CDLjvkosgE2bSCtLl4msLtTFjshBBGqY
         yNS95Grvw/Q6YFAtyGUCe+zeoB1lusxFGy8yx3fEBs/zz1D+8LuPbXZOZPfT20MXxeb2
         dcoRItib+0Uu6pmH/AOMMqbN75X1RFBL8M+rmyEl3CP3T5EyQHtvmsM7guREKOkp1c4G
         2JaEeB09QguxGtIx6aNTCtpJfe6/H7xv6Lt0R2IfKQFa4c6dpCwOv3zCjJ3+1kYkzmkq
         vxTA==
X-Forwarded-Encrypted: i=1; AFNElJ/vYxKwxXf0Uyu7Q4fGdMpjU6Z/9NU/BPSPka8PpcYiemet5Tz9iUWIwVYN74/iIGqhwzb75szXciovvI5IGw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJbFbDX6MuFwSTPXYNG7h2+hL0qQUL72GLbLBMluESaeMXOUyp
	E3uRaKTBhbhUP3qhzN+EW73MrjWr+vF/kV/r2LUs3aNKAaM8zCOe5+5H
X-Gm-Gg: Acq92OFJzzTmVE3h0N3dxW0mnWTE1VueL9z99NhO2Xg6UDB4ty1SmhFvFee4NKpbwyr
	kvSyf5xI0im/DIhKo7j53BrQ7P0/sEV3FUs3uTp9CYhz+0fBhYA1zoTu/7OW1ogVbVTLj/ICTD8
	FhNbrpJEy1t2CkpeZ519xfuslz+yoaZHGyziOzSahkKkUu9EjpRzCAb7336emST6ZzJTie/eZF8
	1WY59xCmf7xr+5hB0p3XGrnU2gFjLXsiNZlMhRTnQq8jH2/NTYj9rf1ys6SeJKSywbfWYPQfs0l
	mRn4IplVY6BYuOsCkhHbEA3rLPjZqzzXBzML7lX2Zs5/cnizSfGGIIOZ63aTLzC08GfCVhU4QY/
	HfSoOxX6ULY+yhaT2+3h8FWTSxpYr0GyiFIQbkjMoQGeGYBPA4mJ767YxZvdStCFwFegT/s4VVM
	fyfP4UOWbT5kVJpVg24rSUfo5s1X+tUE8=
X-Received: by 2002:a05:6820:1b05:b0:682:ecb8:c2b with SMTP id 006d021491bc7-69c5d3b8b7cmr8844624eaf.6.1779134878528;
        Mon, 18 May 2026 13:07:58 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69d0462e85esm6113360eaf.6.2026.05.18.13.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 13:07:58 -0700 (PDT)
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
Subject: [PATCH V8 10/10] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Mon, 18 May 2026 15:05:25 -0500
Message-ID: <20260518200526.458421-11-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260518200526.458421-1-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_130759_676691_854CEEA5 
X-CRM114-Status: GOOD (  10.10  )
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
