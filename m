Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E555FC27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QEXzsrkO7tSu8dmeaWNLWgbqVPb4zDTW6W3DyJ1ZjoA=; b=IQ8Ou01eDwcHH+
	Qn62VpEg+uMppWMmUr0eY/iyXugHMSpgmTdStFad6Ji65z8SSSFlksd2pAmWT1xwyc0t32E3drYkJ
	oR7Mk5NwcTTRM4CmmzOQJ2oTj+gbxNAnz9bQ1PTcQ1KkS32juOj04jLczy0w8Cf+/MDro+v2uyZNV
	9aBnSFGxp04fz/k/Hy4pTNIB+XY5O4O98J6VBJ5nAQcdaLpm9gvcU53tAU7DKvhKXFJuG2l9RUOHz
	Vt4P6/ol3OmaW5X99i29UEBcnaVGos4szkSVViP7xLoN1zAwNr4N90BRwvXEESjMxGyfOnPmqW3sx
	tLHJv7WXDLwQD6ah+VLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH7A-0000000CBAJ-0QVE;
	Mon, 17 Jun 2024 18:30:00 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH6n-0000000CAuV-1RvT;
	Mon, 17 Jun 2024 18:29:43 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a6f7720e6e8so195461866b.3;
        Mon, 17 Jun 2024 11:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718648976; x=1719253776; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MU+B7r1roWhCC53/0w9lcVlxSyXhmtFcjHMLXN2RUmE=;
        b=KIixMLLvthxI3bUmQXVJdkCYO09dQKUB3SumTJ0ChHu2JzAn0R78mUln0bnN+k0ti2
         NrB2nErERNEa46zNeQy3EiMUlvxmpe3phftqca4rPyps2dKECvgnjCX0COSTlS3mCFKj
         iM6Yix0mx3Kb+qWzMcMzcXK0ZEUD7gQI0j/OIFrfwBKrUfZESKEGh9Yj0dpdv4P4KCGe
         QNj7lXOszWTCRQ2GJksHaCIncl+7qwNbLgqV3K8gE37MuSzFawEuL1hJEUSCoWqNaXIL
         bIWJKTWsMzs/xw027JvUD7umFPe78PQS4zhU9Cfp/Cb+jDCfuwHCwlXUn9PgzETbYaAu
         DMaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718648976; x=1719253776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MU+B7r1roWhCC53/0w9lcVlxSyXhmtFcjHMLXN2RUmE=;
        b=RMs9PROk6C6BMpgas989AxKOlxVJiKMWLYj3B9xpb/1RgAwPoYvzmwuuiL25nUT34g
         UFn06G7ZXvtbCKz09e0H1Xh8lHVMj5/2o9bMi6W9g4tsUJVQkFgCUTmU+7L5uKoqVcZ5
         4R9UG6jmb89Rl6ikxRboBLVmzDFaAD2R426k8w4CSNGFelBHSnCPaTvya3i1+f8Fnv4Z
         LODB0bnpBxiSu6sRzZx1zaGx1m/YKLguoMWsUubuwFLkAkohP/K62g8vEWs+JxVKwfvu
         xFgwKpD9afDFh5jdnVNG32ereYJ6DD4D3mWH3ptWSDfPLspIdws+a7ZHAf4eCpznqp/9
         0zrw==
X-Forwarded-Encrypted: i=1; AJvYcCUuSCgVkJxwJKful4r93txsfvmK0Pp/mSbIHfuDiQY+2aWs1TitMd0clSO1ruTEbyx4vlsoa1oM3MqtrOSCvASPMbOMfgE/WRBe4o4QYHHSlB20U9m8dX15ms38W12t6cr1fgz0UMOJYgsp5EZc83lNvCiAd9P7dFU=
X-Gm-Message-State: AOJu0YzWwwT9G6oX6n0j5Md3EzH5kkzth60aKSDeWYTdLCtwBSfvAc0T
	r6c3NXZ+gKepdcZny7sJlcNy2cy2Mh2njAqkiWJtTTOkeAX1XFno
X-Google-Smtp-Source: AGHT+IHkpZcSAkDTfYa+4J9rdwDgw8EyCrZ88JhFCy8q4cRrxJtlYkExbYxfQTReGkkcw3FRZ9JpNA==
X-Received: by 2002:a17:906:a45a:b0:a6f:5f26:4d91 with SMTP id a640c23a62f3a-a6f60de27c5mr743717166b.69.1718648975302;
        Mon, 17 Jun 2024 11:29:35 -0700 (PDT)
Received: from latitude-fedora.lan ([2001:8f8:183b:6864::d35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8a6e58bdsm115397666b.187.2024.06.17.11.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 11:29:34 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 17 Jun 2024 22:28:53 +0400
Subject: [PATCH v5 3/8] arm64: dts: rockchip: add passive GPU cooling on
 RK3588
MIME-Version: 1.0
Message-Id: <20240617-rk-dts-additions-v5-3-c1f5f3267f1e@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718648960; l=1275;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=tR+zU5R22K0toTXTcO/PbvJto65bjcz/hgek1oodBZY=;
 b=UPyTLJFVwLauiOTlYWLbLMzDwMdWePM1iup7rFrqrBm60G1h1262CZ5HG0ZKTZrBeJby32q0u
 BOGYLSXVUvRAPJKUxRh+CyFsyf3/zZU1hBPdyHr3LYzJXCeiEqn+NyI
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_112937_653797_D9622290 
X-CRM114-Status: GOOD (  11.23  )
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

As the GPU support on RK3588 has been merged upstream, along with OPP
values, add a corresponding cooling map for passive cooling using the GPU.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 574359279867..758aff5e040b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -2487,17 +2487,29 @@ center_crit: center-crit {
 		};
 
 		gpu_thermal: gpu-thermal {
-			polling-delay-passive = <0>;
+			polling-delay-passive = <100>;
 			polling-delay = <0>;
 			thermal-sensors = <&tsadc 5>;
 
 			trips {
+				gpu_alert: gpu-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				gpu_crit: gpu-crit {
 					temperature = <115000>;
 					hysteresis = <0>;
 					type = "critical";
 				};
 			};
+			cooling-maps {
+				map0 {
+					trip = <&gpu_alert>;
+					cooling-device =
+						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		npu_thermal: npu-thermal {

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
