Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 046EEC71153
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 21:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQuFRMqIdL5CmcR1HBiHE1xr4QY5PHnKAXaXdNG9v9Y=; b=FNplXjfbCrqnFw
	31XD0pSamsPrO6msVzlwzdnYeyGvOwwynDGr6Lq36VTF7G6fYAjOFoifzGCCCucWypMbw8xdknNvz
	HSb2X0Ub4iwWIeC8SXCekUmKKdPLZuhTwa0pxzDNfioOrsL4vpXmFnRlx5JQGME8JqCMDdfMDbafL
	JKC/WICMrtlq1g0pLU+ONw7KHx3dqwMX/Ho0YQkcSjyCOAOoCFo0JdnO3QXOmwIfL9/zCleNWUXcC
	QF+3CCzuKEWGxWCn1iA9h72Z6FH5w6dH2uMqNQOuPHXiwPM5c8dPOYGefH1PGBohRz8wYEh/lw5X3
	ypEmpvN0o5hA036/6HCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6TM-00CJOK-2d;
	Tue, 29 Aug 2023 21:42:04 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb6TJ-00CJMi-2V;
	Tue, 29 Aug 2023 21:42:02 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5298e43bb67so554818a12.1;
        Tue, 29 Aug 2023 14:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693345318; x=1693950118; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8qnILlP8q2DeGAzfkJm61DUzvyf5NVG2lDz1bKXH5zw=;
        b=TQYoyuzDxEEDoY6ab9lUm8N8mRW312qZyeel2uqXWxHUE5gbWxsVh2vPURotX5toBK
         yQSkUjKXUKL+XFutL8DeISrImcnfdOMSbOaQoBdUA2hjsYl8oTNHMthgVq/xRPdIJm3S
         2sITT8bNqpKOVcZtJzk1cPDLl8+92J6/4QM1J7Vt202dx9YPZ+3EpkcwBfTRTL3dNKxw
         0g2tFqGOPSMjEl349pb48pLBxMcEEdvQPJHzoZBPbosKxiBQO/JNlvbdZ+sxmbS0X8AZ
         MpfRGakncpbd2fvUjejp18a8Xec+rz/R8V12wbK+hWgmIsjenH3jBRWk1GutPKkccVv2
         oIwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693345318; x=1693950118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8qnILlP8q2DeGAzfkJm61DUzvyf5NVG2lDz1bKXH5zw=;
        b=e0aKqbSkxuOIfVdis6xIUPOYUzWDYfT/u1yP6PwuS6cZHbAjMwhZc4ImtRsXiehGss
         thzuxxwxAJrFr8vYyCtAP0p8dDkKjg9rEc72nZLnCXA/Iao6pxPCQHM/zKG3Ybu3xhg4
         NpxnOdAXa9tRHYxE+s1m8q7GwlMKmaQGpfdHYK9X5f+R5E3VvW59ada2HIP2RqqW/DWF
         Zaq66EiW8GXKL990ieZmmp/E3fv2qyuw8EsJ9EgwPdiW1NxQsl2SjXRSgz0uKbdDxOgr
         Lm7KYEv+kx/f7HuKtC6M2vvMRb3Fr9yzeKru+AqTlKUc95h9OMItD9px0HanS/DhVIm+
         fchQ==
X-Gm-Message-State: AOJu0YzzIlnFg0iYq9yl4cx+uPJr1sRja1rxRV8dRA8e3ZBq7EuxG5OQ
	rObVek/pF4LGRCCnb6qfsQ==
X-Google-Smtp-Source: AGHT+IE7hH16YYs92WhaAQWPFZk1HX03SLm48A7/44weyAkccswzPwpDYe/QN3pFb4Y/+lTSuS6Jow==
X-Received: by 2002:aa7:d614:0:b0:523:b133:5c7a with SMTP id c20-20020aa7d614000000b00523b1335c7amr445302edr.21.1693345317920;
        Tue, 29 Aug 2023 14:41:57 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:84d2:f616:9527:dd98])
        by smtp.gmail.com with ESMTPSA id f15-20020aa7d84f000000b0052228721f84sm6113428eds.77.2023.08.29.14.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 14:41:57 -0700 (PDT)
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
Subject: [PATCH v2 2/4] ARM: dts: rockchip: Add CPU resets for RK3128
Date: Tue, 29 Aug 2023 23:40:05 +0200
Message-ID: <20230829214004.314932-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829214004.314932-2-knaerzche@gmail.com>
References: <20230829214004.314932-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_144201_818570_540C2DC6 
X-CRM114-Status: GOOD (  12.56  )
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

In order to support bring-up of the non-boot cores, this patch adds the
reset controls for the cpu cores.
They are required/will be used by the Rockchip platsmp driver.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 3a0856973795..2778049003a1 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -34,6 +34,7 @@ cpu0: cpu@f00 {
 			reg = <0xf00>;
 			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
+			resets = <&cru SRST_CORE0>;
 			operating-points = <
 				/* KHz    uV */
 				 816000 1000000
@@ -45,18 +46,21 @@ cpu1: cpu@f01 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf01>;
+			resets = <&cru SRST_CORE1>;
 		};
 
 		cpu2: cpu@f02 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf02>;
+			resets = <&cru SRST_CORE2>;
 		};
 
 		cpu3: cpu@f03 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a7";
 			reg = <0xf03>;
+			resets = <&cru SRST_CORE3>;
 		};
 	};
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
