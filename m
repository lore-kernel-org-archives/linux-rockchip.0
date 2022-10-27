Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 869F0C67871
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Oct 2022 08:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YzPPXg/ntKp/cfY/3IpmLGijuQ7RO+ZjQXMYTsi8n28=; b=YagCxmjaZr3i9Q
	IQQ9LTK+wbD0yFgPGC5pv6pDVHCwS5lSW2hsnfWg5GfLlbVkhrSN90y8Np5TlFqhwLVM0w90k1IGQ
	69Iu5bdVIBmrbWPTwYdI9bhpTX4NCxevhQ63qhrO/Gl1F0GFoCFGmU9NDwNq+ZriMC+oVxOWquUaj
	+yK63aY41D1GyQY2YImZzNG0fOvbIOaXXEe09aN7qy5V1Y4tYjyf6c9rE8HVf6tASPRC1JuOOZUqf
	y12mMNue2c7an3USL4sKHqoVjLsIZNCmtQSuvNotSwf/sGMDqEdMR/SDaV5RjP0I52GB2Hqqc8xkU
	DW4bT/xpqxwntvsAA2ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyiv-00CV3k-7e; Thu, 27 Oct 2022 08:58:49 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onyiX-00CUqb-DP; Thu, 27 Oct 2022 08:58:26 +0000
Received: by mail-ej1-x634.google.com with SMTP id b2so2605720eja.6;
        Thu, 27 Oct 2022 01:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8OtRFPYPme7k+s/39Hja1ZlRUUoR2PXsGDstekJPv8=;
        b=l+uBUhNzV8OBaMbIzgLn9G1+R6Sj/KzPHa7jaby9JMJ2iW8eTMOTzmMuKowvCQTWld
         2rkt27euXuDqRuRDeEgGKv3ZoXdhEuiOMzJrWxDeK+6J65G+Sc/0jAxtEhXzwHf9VOJU
         JOHIjt6hmc0r9DJIDjHE10DSRZ93qROMVB4SfZXqhh7r0hqvSYFcBSR7PGCoLoPyxTmz
         zoEwM3BmPuBiHjtBssRDq3OpY1epwgQmBY2F8M+H1ZZk5yt7XuRXP/izJ+/etowbYZA5
         2yLAymILXmiVUwV9C6Wsah30KuyQk3wbTkk2XmtUjTWzA6k2kjUbRjWyK17FeWaPMPBa
         FJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c8OtRFPYPme7k+s/39Hja1ZlRUUoR2PXsGDstekJPv8=;
        b=SVHB2fdaRusNaVr9XoHVTTeyOO8xF4RsttFRhhTh/mPPno7ZBM2XY2n4WU2vN8g2qa
         qmMJHoRfDsgxsPyUaZbRph+O99OlmXnqhu7N+E3Ist3VsuR9tpzsNKynSMHnOu3SFuxN
         1f7HuT/FclX6MGJeLtIwRuVr+w2XjmQSXeSlNjs5Q5228BYhQspqAfgRn/CbqdKP4cp3
         GEmbmS+dfm0KTabEumU0927rId8ZCp6g498ks2lnBaeFsV3nk/Pm/Tj7G6darMArlm8T
         PnkOMVZSI/6n2Fje0x07xHdr46NetiuLN7Eu8etYIt8Nu8CH0pgtcem2QSvFisr9p4X9
         5c9w==
X-Gm-Message-State: ACrzQf217flC1Omw1fZVTSYycXvFzBjHSt2RWm236UsyO3wsLsI1lvzH
	bK9MsUU8tZMMk1Q184IV4BY=
X-Google-Smtp-Source: AMsMyM4OcN2IvHQzU2jce2QhHE1zfJ5CbDOUPl1IJOwRjNr3GA3EV9WKyQj60lqrj9ExwejhL6nsjQ==
X-Received: by 2002:a17:907:1629:b0:79d:aa05:3783 with SMTP id hb41-20020a170907162900b0079daa053783mr26888090ejc.637.1666861103843;
        Thu, 27 Oct 2022 01:58:23 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id c10-20020a056402158a00b00457618d3409sm597875edv.68.2022.10.27.01.58.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 01:58:23 -0700 (PDT)
Message-ID: <ea5af279-f44c-afea-023d-bb37f5a0d58d@gmail.com>
Date: Thu, 27 Oct 2022 10:58:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/2] ARM: dts: rockchip: fix ir-receiver node names
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_015825_497645_A889DD78 
X-CRM114-Status: GOOD (  10.88  )
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

Fix ir-receiver node names on Rockchip boards,
so that they match with regex: '^ir(-receiver)?(@[a-f0-9]+)?$'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3188-radxarock.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index e7cf18823..118deacd3 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -71,7 +71,7 @@
 		#sound-dai-cells = <0>;
 	};

-	ir_recv: gpio-ir-receiver {
+	ir_recv: ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
