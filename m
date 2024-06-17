Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A03B8C2BB85
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkUaCiQDTKjIJ+sgNLaVuwniEVwbZEfYGynPajZV5vk=; b=d0vBH+QpofY2Wy
	w6h+HvnI1CsEZTIUTsixJP65BYm05E1t0ESvF5mBx+iJa5lwgoGalQjcF82p1O9nTvXXdTj2QWRm9
	tx82HrtiqWhUYPymSWbyRlceoduwbkDpHcUuiebVa+CKuAYvkbLVntf7r7P93EEx340Vcg3fhmwtA
	KGk6buImjiaUphvepF59ZoZYaceZuNYC5i+ek0j8eE9ClZkTGxn5/tlBL3RzGJoWrel01c812eLWI
	Wqvpge7hIPfWjqM5fqax9uJtoMtxSHb6CyVmyeG2JZyqIuj3SvQnKDbE4yrMhFBtNwFACtSFBlQg5
	SnH+SWLnwb/fFGtg3JLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH7I-0000000CBGk-3qoC;
	Mon, 17 Jun 2024 18:30:08 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH6r-0000000CAw2-00pC;
	Mon, 17 Jun 2024 18:29:48 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-57cad4475e0so7928345a12.1;
        Mon, 17 Jun 2024 11:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718648979; x=1719253779; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxV0+CNtkdVYH1x9kSCG5RzOw/h70yxEWn9Ic920/Ik=;
        b=LGP30juE+xHLEep4wf05xIPY46lUNJ5wzstkjmgwYn/fBLvOK+lbC9rHjcrmlGy166
         xsC+oNug74MImekfjuw64oHx3Rd7ci1ruipHLNDGbjwvENW62Y6qonQHusscMIOp8+IN
         I+vmxU+w1J+JPPKjO6/FkxGqmuONWeFuuzI2/yXrqE/DSp1DNG2jJw1cauwvAPQWfqtA
         MsaGP7Qkw0xhL4qpFkuBKpwHFWay5tQ9/zUG2i1rxwKYx8B9dGljbTQwGOMdz5yxBo8b
         O9HxMsAwzDXyQ244RofVWGjI8aNWdYXx2oBzX1XDrloERU0tZ9jbIKyunRGlVvF8zO6B
         pk7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718648979; x=1719253779;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qxV0+CNtkdVYH1x9kSCG5RzOw/h70yxEWn9Ic920/Ik=;
        b=vpy1qyEy/gmdIMnzcSF5n+BgI9H4xhZ0yW9iIKwXbkmTvwwt4p0RvssRmSfwmGdxfZ
         Vkbs2xYQqMqEXxEERz10tF48hX+WtN+3TxyCLTTEbNDr0xEjEOV2YN2X6mHMVOQF77Po
         ZKnbpGrGJ0sjMvpglDOPHD8a/7g0hAW6mLLpwlZWQ0cu/123dkcgt35GPLeGx6ZamcX7
         RioFv/70NdSXyAeONQW6qnz7DwtmSc+IUUx6q8JBnEK1eVSB96Rw+f6EnNL7resU+D2D
         p0Rc9ZYPKnbgPMJ3sXlQ7MPAQYdbx4ukxRYmQVlVXC+rj6cZZBuHXKxwRWPxpU6mekKx
         WC0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWWtHpf3HN0XkDKtJIpYKr9umHi2ROa2yjldRS1PO3DlvttgKLLm/lzNNelpFmShPB/gm6yFdWFsGq1uQPXSqRv1BBLJwmUeronuHzhqeYsMshd5pQeUYZ0zHJLAooQqTaG5U4uW5w+EDmvZc155bG5SBfHHtwwL0U=
X-Gm-Message-State: AOJu0YyomfXwapJqzSdj01ksMquNqjih1KQ75oSfgTyenkm9ghovfDaW
	6Vt3bKywygMbB7+NzQwdC+T51gwat4rfw1wcurDjck0IpNw8oq8n
X-Google-Smtp-Source: AGHT+IEZlfgBaA7udUA6Yyx+6kNVUdF3NhrpH2DNXQq9GPGhbSiujY7u3ln3Ha5DervXVTuQnyQ12g==
X-Received: by 2002:a17:907:c00b:b0:a6f:9643:e8b8 with SMTP id a640c23a62f3a-a6f96444968mr13704466b.32.1718648979243;
        Mon, 17 Jun 2024 11:29:39 -0700 (PDT)
Received: from latitude-fedora.lan ([2001:8f8:183b:6864::d35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8a6e58bdsm115397666b.187.2024.06.17.11.29.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 11:29:38 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 17 Jun 2024 22:28:54 +0400
Subject: [PATCH v5 4/8] arm64: dts: rockchip: enable automatic fan control
 on Rock 5B
MIME-Version: 1.0
Message-Id: <20240617-rk-dts-additions-v5-4-c1f5f3267f1e@gmail.com>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
In-Reply-To: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718648960; l=1732;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=x+wPPy/GT45CFx+KMeVvr+U8rd4Mn9UoMyfj4WLHlu0=;
 b=NJUPm95L+pz2C2VM8nrMIvvzzMyFYQ0HF7Hm/4dFduLIvCnrJxE+w1acYjyMZ7+punC5bsaWC
 DP9TpxoR6b5DYXVG3Vb5k7kv4TVEehg2rEy4zUHGPGml6l+Dzux0cOv
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_112941_088165_5467C189 
X-CRM114-Status: GOOD (  10.46  )
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

This links the PWM fan on Radxa Rock 5B as an active cooling device
managed automatically by the thermal subsystem, with a target SoC
temperature of 65C and a minimum-spin interval from 55C to 65C to
ensure airflow when the system gets warm

Helped-by: Dragan Simic <dsimic@manjaro.org>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 30 ++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index afcc38a5bed8..27dd95f92f33 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -52,7 +52,7 @@ led_rgb_b {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
-		cooling-levels = <0 95 145 195 255>;
+		cooling-levels = <0 120 150 180 210 240 255>;
 		fan-supply = <&vcc5v0_sys>;
 		pwms = <&pwm1 0 50000 0>;
 		#cooling-cells = <2>;
@@ -286,6 +286,34 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+		package_fan1: package-fan1 {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map1 {
+			trip = <&package_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+		map2 {
+			trip = <&package_fan1>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &pcie2x1l0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2_0_rst>;

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
