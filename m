Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDE91C10F04
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 13:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s58DHKrq4sYnrzxZp8b9MG8/GasAFUcfjpVpyiyvxXg=; b=xcrBQ/uQ9jLEdx
	jYjfF/CJQ4hIhrw0pBapJN8aNNCr+PiclAtH1rCRbktYthBeYwPEzo8q8+dOCpIOjfQ8P8mR5d7oP
	oJmxVYFbze+ArXJydRimM24Q8vdwvSypgRKw8euGLalITpdoDR0PxJFMujWxayjfWvWai9jpf/zMl
	VF4AtVSJA1/Nf/sZNBHOmSQf5xD/tMfa/t702DCgFJDaepN9kAGvi6ACJa96Rhn6Zd6zcxYnbxlFy
	CpJNCtji6o//kEejS/hPo0UO/B83A0BFOhIbKM4Tvo5Z3hGCwv6cpyfpmTa8/oX+L2NmUv5eolztB
	fOAmAQbdnPkILqFnRU4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PgS-00Fj6h-1Y;
	Sat, 02 Dec 2023 13:05:24 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PgP-00Fj4z-2R;
	Sat, 02 Dec 2023 13:05:22 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a0029289b1bso405460366b.1;
        Sat, 02 Dec 2023 05:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701522319; x=1702127119; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LlYAxixn2/bVhOT7Rvb2SZjbGsVONErr2mUXn3POHYo=;
        b=RHlSiFYoTybFsd+zAE1HtoHo3MGw/q6ajpRGnp4WWws980Nz0ClyLvsDsB6qGMHYzd
         Ay58lOoDlGeLo5OfupeQ1bYEhE/HHjkc/ixiH5EHu/2X3zNd3LQyrMTpWzzLNREBALRF
         fxltvswdpUbAg3bZfblCn4yhNJSs5KpAvXKwREAn+a/2fEhC3r+oQ4jeGS7wu46QINGN
         L6r0hjGpL0NoNkdlDfhonnEIJoMs+I4b2odspDfQNrjANMmCtBSAXrVkbEJ7/IKntffn
         SuWHHVUr25IHO3Q3/SBsHZ2iEwbZB6cKoQCByCXblVZOAJqmrsPuc/cTFaIRaa0YBxQd
         J3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701522319; x=1702127119;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LlYAxixn2/bVhOT7Rvb2SZjbGsVONErr2mUXn3POHYo=;
        b=LM1UTeq+oUh/HytCiufIkpeEYez+ya6vgfFqL3Mdg8Wa4EZaIi3klC+wP6gwG5CUyQ
         fu0hnfRni2Rv8jq/Di8iXsBgOzinWNCfeH9MYGnM3ZusErdol0s7iN0LP8AYi0H10lSz
         e8sNkMNREzODr6O4e3eYj6rI5rGBFQWx7LZQKllY/jiDwMnYMUJ+/XTQacJrL8h1akBd
         HRxKAYBaQEqTuWFYWCep/Kk9dkD/sxqdW0vUgVQqfeFz67AgwxL8+CMwrvtlEkiI+DHS
         +sdMAzG9y9OcnAPpUUF1NKCV6t4/MvFEnGe3zF7FDkXtDhT3s4hq5O08LvYSLHjcIgps
         Gx9A==
X-Gm-Message-State: AOJu0Yy7toTG6/923AQf77W/3466OD+rFUoT4BjVQuoXIY0G8or5skb1
	Ym88+gSgig0uhJSaVsb9kg==
X-Google-Smtp-Source: AGHT+IEsK3ZmEBmQ1+32lw9/FPSyQI+Kuc9Fe6vbkulrwlm+Nrr0F16ntBuLvtXKiFW82/9kj74wXg==
X-Received: by 2002:a17:906:eb18:b0:a19:3c48:4f7 with SMTP id mb24-20020a170906eb1800b00a193c4804f7mr1764291ejb.60.1701522319446;
        Sat, 02 Dec 2023 05:05:19 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id bs5-20020a170906d1c500b00a0bf09c9483sm3045324ejb.35.2023.12.02.05.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 05:05:19 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: Move uart aliases to SoC dtsi for RK3128
Date: Sat,  2 Dec 2023 14:05:07 +0100
Message-ID: <20231202130506.66738-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202130506.66738-2-knaerzche@gmail.com>
References: <20231202130506.66738-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_050521_797288_DFABF758 
X-CRM114-Status: GOOD (  14.24  )
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

SoC TRM, SoC datasheet and board schematics always refer to the
same uart numbers - even if not all are used for a specific board.
In order to not have to re-define them for every board move the
aliases to SoC dtsi for RK3128 like it's being done for all other
Rockchip ARM SoCs.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 3 +--
 arch/arm/boot/dts/rockchip/rk3128.dtsi         | 3 +++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
index b448e2b96e08..6e46e839de39 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -13,7 +13,6 @@ / {
 	aliases {
 		mmc0 = &emmc;
 		mmc1 = &sdmmc;
-		serial0 = &uart1;
 	};
 
 	memory@60000000 {
@@ -22,7 +21,7 @@ memory@60000000 {
 	};
 
 	chosen {
-		stdout-path = "serial0:115200n8";
+		stdout-path = &uart1;
 	};
 
 	adc-keys {
diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index dc149d98cf9e..edf90ebd7ff9 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -24,6 +24,9 @@ aliases {
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
 		i2c3 = &i2c3;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
 	};
 
 	arm-pmu {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
