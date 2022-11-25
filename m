Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 671BCC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Nov 2022 14:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GR6WX2onjcPQ+SFDSIahUs67v8b2yfc1yymwOso9mRg=; b=LdpVBcDDpmFdFg
	67DuYgW2sQOuIk+q02ikhC4yKczgtI4T/hAI8umeaigySENqwPLtt5+uXXnTjHo1Aheuv7LUof+z7
	CXkQSTiMvkONsEwdwxcTVsimA+nT2DfncCrRSnZcOryz0CYrDV0p6vKbtdIh3oFNX6ZBhGsaKWOM1
	ksZ5wdrKGMjlIsQZ3ZaTeOXoNDNi7VFgC+gnFGvK5GTC8K0a7nOcOlDFNtS296+qAILHEQXIix6II
	LxSQMjTBtIBsO17dltskMFqD8Cv6pQBqZhUj9Q3U8NlkBwW4/9nf+niYfQEKHO7ONMTQG/skWOs1T
	+/MKRNyTLRsMBiTzClKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyZxK-00HACd-Dg; Fri, 25 Nov 2022 14:45:30 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyZta-00H8TA-UN
	for linux-rockchip@lists.infradead.org; Fri, 25 Nov 2022 14:41:41 +0000
Received: by mail-lf1-x12d.google.com with SMTP id d6so7191976lfs.10
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Nov 2022 06:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HIqedhY263uumnwVyOOhrtbKH4I7pBieIt5aXa4in8I=;
        b=rtCle6yXSQ1vc79vQfcEo7qSwkQJAaqu97WYmhx1iX+Tnj/GINRpXx5t5BjZ5SjT8A
         6OxZEd1mCf917izBaE7s4dM5w3/IMbtMK7rf8btUHiQf1lxlV5z652yDV5o8MphaD7L0
         1aD2Av7fkpUOHJV4BsAhA9NjCSfaXBumgJabTLlZKaX9TFJ6m+AZs6c4vbUyvW3pw2Xw
         9PC3xptehntMbVBlMmJRxeAPfnXgpmnZTNySYxnoPszFbAoMgeLsJH+tvOCqxlA6trIn
         wHOn2m//QtGboF6TDiD3DRwbmoJP3DdmRXgrwTtoWCjuhj6/VIorb9vhi+GnJV9GmI6y
         YjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HIqedhY263uumnwVyOOhrtbKH4I7pBieIt5aXa4in8I=;
        b=cRg+ttWqZqTfYXqfcigwkvxsQ4tX2tHplHxvcq9rx5bwIQKDFYCJpxEAyeMs24lRU7
         0mfgy+h6Bl7UXf+oZJ3vjQhomyOJOIO97ZD+4bj/7OwBkBVd6TM7l7GhB1x4ViC58QaA
         psCM8scnZ5hgwg7ld81Tgbve7HG2exxZ4g/sqE7uiEK4mTvd7K6BCX/iBbZzC7qXDsWx
         zcer4SkxcYBGc8SaDoU3kR6FpUknScjMYTiFUTXHWZ+RRtbfaQ81CM9kLKf4TZQzRdkA
         RrY0mmDpnRCphV3djLnDAwpxiQcvsKJ1Zahc4PaUV629NuITbmOisr+Oanz5fIgk3AH/
         sXtw==
X-Gm-Message-State: ANoB5pk1LcBwMtlxGhQpcIh87t8DDrfVtEXvWejdtD4z6hsc3X4R3FES
	mJHj4bSbOeoQxtkKRJ/ChNjHjMXRJS0hbkue
X-Google-Smtp-Source: AA0mqf72cxvboIAASK/RuclKKNxPm778/B5Antl3QBSn/POsWaypdmwLLblOtiUoMO96NMWHFNtmyQ==
X-Received: by 2002:ac2:4a6d:0:b0:4b1:5efe:895f with SMTP id q13-20020ac24a6d000000b004b15efe895fmr12343962lfp.337.1669387296527;
        Fri, 25 Nov 2022 06:41:36 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t9-20020a056512030900b00494618889c0sm551512lfp.42.2022.11.25.06.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:36 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: rockchip: rk3328: drop unused LED mode property
Date: Fri, 25 Nov 2022 15:41:34 +0100
Message-Id: <20221125144135.477144-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_064139_025728_D447B32B 
X-CRM114-Status: UNSURE (   8.66  )
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

GPIO LEDs do not have a 'mode' property:

  rockchip/rk3328-roc-pc.dtb: leds: led-0: Unevaluated properties are not allowed ('mode' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index aa22a0c22265..5d5d9574088c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -96,7 +96,6 @@ power_led: led-0 {
 			linux,default-trigger = "heartbeat";
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
 			default-state = "on";
-			mode = <0x23>;
 		};
 
 		user_led: led-1 {
@@ -104,7 +103,6 @@ user_led: led-1 {
 			linux,default-trigger = "mmc1";
 			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
 			default-state = "off";
-			mode = <0x05>;
 		};
 	};
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
