Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71B1FC46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 20:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNbJoGPSliugC9yb9ywJwWYs0O3UthrJpQ/kWgL+5K0=; b=zHoSOu75Mmx8bR
	WEaMuIe7u2n8TFa80Dqp4BFRcC3t6fwmMp677viqiMW2+jky4LHV9fsfWHTL++cBIPl7OxUwCsSJS
	8Z0U0AhOmIMQSIn3gwjm3DbOM403IyEjlbOaTajpfuDYEMpEBz+CHFtVLOQDTeTi/9+rLRmo+CMlW
	qD6hWTakMD1erKYGQFkyrDKqh7bE1WymXp89o8yRbvKCikZn/cCDUaUzD/tVJ4UWbQbjKGegnZ0WM
	CdpDm5elamk4U3CO/AjibbM+bII3cOVzNtu6WqKKl0oHN6F6XhZ9qvZvJvLnadra+6Dm7n9cJeQd8
	vbmxyAmJLC0yvPyMlA4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjtr-00514N-1K;
	Wed, 24 Jan 2024 20:31:07 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjtK-0050tN-09;
	Wed, 24 Jan 2024 20:30:35 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40ecd47a0c5so2328495e9.0;
        Wed, 24 Jan 2024 12:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706128231; x=1706733031; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rwDZ7OaLOoaTgMtKqR7jNk1DW8NZBJVNMOjbsbiqpKw=;
        b=g3gc7CNuo0ncmx4Sx9rauqFcLLmgt0n4qEDdlNTlAUN3ipiTV4uU56InK9D4FDgbzH
         4Azy2lXJkhbpEuOZUUhLLQKmvaQ19DLMiDAgSSN0j4ocPR37tGbGJu9+y58+JV2q83X/
         XkY7bKxzjCac/oU4WIgLEPKIocWYgwOqWRg7X946J1HdrDjX/wIKZhk9JYXelDx1KEFP
         1Tj+jK4hCG7XEkNSZnMRK6OV9+bQn8RWOiwzOr+twA5O+3sU5EUJok/ZVqakagDPYCPS
         YNq1YTOPxFMeDNXoXvtrT/qW+l0Y9ZXwPuAaB9Wi7qz8HA0TodPErxC6oRwfUZy3NGaU
         FPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706128231; x=1706733031;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rwDZ7OaLOoaTgMtKqR7jNk1DW8NZBJVNMOjbsbiqpKw=;
        b=ZbJJbsnEBen9KBPknU1MdyXMYn5I7+3M7v+3WyaIMMWoj45lf6WqeLyqFHLSGSBMu8
         DkB9A0LVqbZSZyEL2MxKnbAjwetf+cNcUongUoX0RNMb80mt5gkmBW4w6tPT5Y9rrNlY
         RQrrL64wz+Iz3EAN9jCqcDypqojyY0TYhXno+3u9ruJg2BVrEIL2vsjYLZF2Bwa1B3VY
         nULY0R36PuL0Dyx+hgytWwelGcCXaf17c2FArhiMfERZ4efDPcPoT175ezq4v+BlDLCt
         rYZZX9TgnmhY/H9U9iqrEohyY9ix7h4vHvnxYjCrKrJBrJOZaqzYUTRKqBvnAZDlrGx/
         QGJw==
X-Gm-Message-State: AOJu0Yy7yFg2POsTN5sxVTybr1tr2StL+KNfg92PqHCQKHwIkzPp9T3i
	8LyprFb3fQRoL0JERveW/OjHecCwlsMvZU/uF/AfMxQ07I6QUhg+1QDksvLbEumRkA==
X-Google-Smtp-Source: AGHT+IGXbvOJHTK/rThOmT1crecXWEtTPAc8HXU8nW+Eq1Sw4iCNC6eKKbn+Ps8UFppe9Zq+1UH1kQ==
X-Received: by 2002:a05:600c:2d8a:b0:40e:86eb:9e7e with SMTP id i10-20020a05600c2d8a00b0040e86eb9e7emr1405413wmg.142.1706128230991;
        Wed, 24 Jan 2024 12:30:30 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id r15-20020a05600c458f00b0040d62f89381sm174073wmo.35.2024.01.24.12.30.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 12:30:30 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 25 Jan 2024 00:30:04 +0400
Subject: [PATCH 1/4] arm64: dts: rockchip: add rfkill node for M.2 Key E
 WiFi on rock-5b
MIME-Version: 1.0
Message-Id: <20240125-rk-dts-additions-v1-1-5879275db36f@gmail.com>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
In-Reply-To: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706128223; l=1054;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=WL2tRjg8ew8DqItHe5VMXx4XizhzUARbkSBb7xc+JjU=;
 b=zUPpF+OtMc0JFVxYHKKr0Q3E8J3khN2xHdZhW5GT1e0hcSNmOdPXmJJg0T/SqCHyAK1DRPw26
 ni6pTFSKc+TBft41+kwwrqfotSizXxL3GtEJwgKSxcEx/hSWQEW6UsV
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_123034_082964_2D7AFE85 
X-CRM114-Status: GOOD (  11.24  )
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

By default the GPIO pin that connects to the WiFi enable signal
inside the M.2 Key E slot is driven low, resulting in impossibility
to connect to any network. Add a DT node to expose it as an RFKILL
device, which lets the WiFi driver or userspace toggle it as
required.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index a0e303c3a1dc..9b7bf6cec8bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -58,6 +58,13 @@ fan: pwm-fan {
 		#cooling-cells = <2>;
 	};
 
+	rfkill {
+		compatible = "rfkill-gpio";
+		label = "rfkill-pcie-wlan";
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
+	};
+
 	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
