Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59AB9C5472D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 16:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eONJBHm/ad236V4wexPlA3sQsyK5B4kpeloTxxV3lT0=; b=JIPp+kALIHiaaU
	HQ6qN0p6aLS/gI5g/Fuw6D8kzsz430S1bc5OtIIzK8ts+TeoPwOui0fVKGTbGwt2Tnao6/t3o/fCm
	kY83oZvg1tuVHMeWd1ROzhwGDuNppGxszpDNe7PPWMVve+mGqpQt+0R19mRlKtDH50cGFJySmiqNW
	IrebLXV+ZrsWaLuL8TiLWcXJGR5OOiN6HUK8boj2KdbaOxErHEJ/8/6fImJzUCnUgy85T1RPSC3T3
	XCOmNG5sRJ3snAYxFDbmQULDriBtrlgmmQWofPP4yk/xwPb0AkRGuEgUYtxl7TvETsIIQsGVlTKIr
	PUvkh9nNPtAHKKBdg2ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sicqK-000000084PY-1b3b;
	Mon, 26 Aug 2024 16:45:24 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sickv-000000082tU-3hfs;
	Mon, 26 Aug 2024 16:39:51 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5bec50de77fso617845a12.2;
        Mon, 26 Aug 2024 09:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724690388; x=1725295188; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xEBnzy+nuAfpfauBPCGu34CbakxHPVG1Dzjy87tNiYM=;
        b=FkN/C7X+84RK3SLBFqr87Jar/ScrgRWijAh8QkLMku3NjVlT4qLXS7AUtV7dRqpCdV
         xqGTdMk9mYkkjqFb+/QmhoDSlW5xzeocI+Afw1uB1yovpFS60rZULiwQo7RTBCI7t2XB
         NKPVhtdVqvBNTdFXglFSlpQPsd11yEdWHWz2JpL+OqpkLaN+XYu+AfnxXeG1u7kfw3MI
         Mwn5Hqy6GgceOzJXOAOgLNDFLCa53sIn4yUf0/24DHkuHMwXqAVAB7O3SJfZCqpK1zFx
         VREM6iSLjV8yRr9beEzFDk86H+9pSDiJtGXok4w5E+NmkCqmTcihFvv8ARPL6SXPsNfE
         eKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724690388; x=1725295188;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xEBnzy+nuAfpfauBPCGu34CbakxHPVG1Dzjy87tNiYM=;
        b=SQqb0yYT9dLm1f3WUgCFW/lC4Sh4zrVjRVtXJxhtSlBg0RweL20+/1Izuka6ptBd75
         31pp21UF5vZDJuFiHstUjMeM1cj4lNZMgZoXqPXfXZk9m3dUbT/mSXM1H2zQ6pZ1xtSU
         niWswX5eGjcmbWflR5Py8TJiN6XLPOsOFKerJIe4edITv7euKDr3i7LH+0Jp88Dwu/37
         99bSzYuMrdVRuJZg2YDt43ODP120JghzKDl5yO+iGZe0KqTaeDwzmIUbqARJug5gvQt9
         2rQHpPw9fTB5OqFpc1+1QUdgRoUYPnuhiSZyCBFtV2um4d8rCdUlNHn1i0id9Y2EHel2
         ERvw==
X-Forwarded-Encrypted: i=1; AJvYcCVmTI0PJ6lzmTJcaJ4iHNROlunhVbepuy0Lv/8piId3XdDgVsrZXFHtAI4OLfIQMZ5E0VYoYkBp7hn5kQWlY7C9@lists.infradead.org, AJvYcCX15VqpsHHLdveTYbk38oBh6rKowy1H+9l4VhEKs3zaKsKy0IDB8bcx53UrNeyHxZqB4T1AheJuuJ7TyrW5A3o=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvOnJVkI9guUMLQUmQ5vgMQm3WtLtLIvHXmk7xEZQJyTjse+dj
	PLtJsJTpi+l8kAnT76J3scRYv2/Kfix4E4tVHVw2cTnk6P+h8G+E
X-Google-Smtp-Source: AGHT+IHbARgAmNxg4Cbi+E0/YnVBks6tDcx14l7inz4Q0CkixJluT8YVLmjj50b/VKagIKSP8C8PsA==
X-Received: by 2002:a17:907:7e95:b0:a80:a193:a509 with SMTP id a640c23a62f3a-a86a5188f38mr526531166b.2.1724690387597;
        Mon, 26 Aug 2024 09:39:47 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f47bedcsm695577866b.145.2024.08.26.09.39.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 09:39:47 -0700 (PDT)
Message-ID: <a3292ed0-3489-4887-8567-40ea4983c592@gmail.com>
Date: Mon, 26 Aug 2024 18:39:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 9/9] dt-bindings: clock: rockchip: remove CLK_NR_CLKS and
 CLKPMU_NR_CLKS
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
Content-Language: en-US
In-Reply-To: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_093949_959046_133A2710 
X-CRM114-Status: UNSURE (   9.60  )
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

CLK_NR_CLKS and CLKPMU_NR_CLKS should not be part of the binding.
Remove since the kernel code no longer uses it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 include/dt-bindings/clock/px30-cru.h   | 4 ----
 include/dt-bindings/clock/rk3036-cru.h | 2 --
 include/dt-bindings/clock/rk3228-cru.h | 2 --
 include/dt-bindings/clock/rk3288-cru.h | 2 --
 include/dt-bindings/clock/rk3308-cru.h | 2 --
 include/dt-bindings/clock/rk3328-cru.h | 2 --
 include/dt-bindings/clock/rk3368-cru.h | 2 --
 include/dt-bindings/clock/rk3399-cru.h | 4 ----
 8 files changed, 20 deletions(-)

diff --git a/include/dt-bindings/clock/px30-cru.h b/include/dt-bindings/clock/px30-cru.h
index 5b1416fcde6f..a2abf1995c34 100644
--- a/include/dt-bindings/clock/px30-cru.h
+++ b/include/dt-bindings/clock/px30-cru.h
@@ -175,8 +175,6 @@
 #define PCLK_CIF		352
 #define PCLK_OTP_PHY		353

-#define CLK_NR_CLKS		(PCLK_OTP_PHY + 1)
-
 /* pmu-clocks indices */

 #define PLL_GPLL		1
@@ -195,8 +193,6 @@
 #define PCLK_GPIO0_PMU		20
 #define PCLK_UART0_PMU		21

-#define CLKPMU_NR_CLKS		(PCLK_UART0_PMU + 1)
-
 /* soft-reset indices */
 #define SRST_CORE0_PO		0
 #define SRST_CORE1_PO		1
diff --git a/include/dt-bindings/clock/rk3036-cru.h b/include/dt-bindings/clock/rk3036-cru.h
index a96a9870ad59..99cc617e1e54 100644
--- a/include/dt-bindings/clock/rk3036-cru.h
+++ b/include/dt-bindings/clock/rk3036-cru.h
@@ -94,8 +94,6 @@
 #define HCLK_CPU		477
 #define HCLK_PERI		478

-#define CLK_NR_CLKS		(HCLK_PERI + 1)
-
 /* soft-reset indices */
 #define SRST_CORE0		0
 #define SRST_CORE1		1
diff --git a/include/dt-bindings/clock/rk3228-cru.h b/include/dt-bindings/clock/rk3228-cru.h
index de550ea56eeb..138b6ce514dd 100644
--- a/include/dt-bindings/clock/rk3228-cru.h
+++ b/include/dt-bindings/clock/rk3228-cru.h
@@ -146,8 +146,6 @@
 #define HCLK_S_CRYPTO		477
 #define HCLK_PERI		478

-#define CLK_NR_CLKS		(HCLK_PERI + 1)
-
 /* soft-reset indices */
 #define SRST_CORE0_PO		0
 #define SRST_CORE1_PO		1
diff --git a/include/dt-bindings/clock/rk3288-cru.h b/include/dt-bindings/clock/rk3288-cru.h
index 33819acbfc56..c6034b01b050 100644
--- a/include/dt-bindings/clock/rk3288-cru.h
+++ b/include/dt-bindings/clock/rk3288-cru.h
@@ -195,8 +195,6 @@
 #define HCLK_CPU		477
 #define HCLK_PERI		478

-#define CLK_NR_CLKS		(HCLK_PERI + 1)
-
 /* soft-reset indices */
 #define SRST_CORE0		0
 #define SRST_CORE1		1
diff --git a/include/dt-bindings/clock/rk3308-cru.h b/include/dt-bindings/clock/rk3308-cru.h
index d97840f9ee2e..ce4cd72b9d3d 100644
--- a/include/dt-bindings/clock/rk3308-cru.h
+++ b/include/dt-bindings/clock/rk3308-cru.h
@@ -212,8 +212,6 @@
 #define PCLK_CAN		233
 #define PCLK_OWIRE		234

-#define CLK_NR_CLKS		(PCLK_OWIRE + 1)
-
 /* soft-reset indices */

 /* cru_softrst_con0 */
diff --git a/include/dt-bindings/clock/rk3328-cru.h b/include/dt-bindings/clock/rk3328-cru.h
index 555b4ff660ae..8885a2e98c65 100644
--- a/include/dt-bindings/clock/rk3328-cru.h
+++ b/include/dt-bindings/clock/rk3328-cru.h
@@ -201,8 +201,6 @@
 #define HCLK_RGA		340
 #define HCLK_HDCP		341

-#define CLK_NR_CLKS		(HCLK_HDCP + 1)
-
 /* soft-reset indices */
 #define SRST_CORE0_PO		0
 #define SRST_CORE1_PO		1
diff --git a/include/dt-bindings/clock/rk3368-cru.h b/include/dt-bindings/clock/rk3368-cru.h
index 83c72a163fd3..ebae3cbf8192 100644
--- a/include/dt-bindings/clock/rk3368-cru.h
+++ b/include/dt-bindings/clock/rk3368-cru.h
@@ -182,8 +182,6 @@
 #define HCLK_BUS		477
 #define HCLK_PERI		478

-#define CLK_NR_CLKS		(HCLK_PERI + 1)
-
 /* soft-reset indices */
 #define SRST_CORE_B0		0
 #define SRST_CORE_B1		1
diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
index 39169d94a44e..4c90c7703a83 100644
--- a/include/dt-bindings/clock/rk3399-cru.h
+++ b/include/dt-bindings/clock/rk3399-cru.h
@@ -335,8 +335,6 @@
 #define HCLK_SDIO_NOC			495
 #define HCLK_SDIOAUDIO_NOC		496

-#define CLK_NR_CLKS			(HCLK_SDIOAUDIO_NOC + 1)
-
 /* pmu-clocks indices */

 #define PLL_PPLL			1
@@ -378,8 +376,6 @@
 #define PCLK_INTR_ARB_PMU		49
 #define HCLK_NOC_PMU			50

-#define CLKPMU_NR_CLKS			(HCLK_NOC_PMU + 1)
-
 /* soft-reset indices */

 /* cru_softrst_con0 */
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
