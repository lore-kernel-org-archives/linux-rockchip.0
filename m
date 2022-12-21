Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDEA8C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhBz4gCyRhsL3F0M+uZJ2fSQSkFSamsB+L+IHI2479U=; b=HGxGsINNGswB4t
	UwAGOMk6oyFXktSDq6y43Yv//vx69ZzBMF9oR8X5DRRp5ADNx9TL6V2E9lBnn86cU4Rq8m5Q2Hw54
	W9odlS5/WCm728uDRUi/t9lluAeSlze2C0I6sq3VY/jhs9aurlHxEQNf2A28tWAXyHxykOEGYn1Df
	psDEI576K2r1LYt6pEFlf8n3szdWklCSUuIrFqLrL28C7RjeXnvRAbULHtLuNvBkFZB8j/QE3C4PN
	ZQsrCb1e/SFR2bkeoaPBAoEUJ0iyMHKglcuWsrFvxNjRe5O0253X396diM+IKTB/NScTGUn3LrzMd
	2Rk6ct7Q6ZZ23DcEmnFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83n3-000XnK-AI; Wed, 21 Dec 2022 18:26:05 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83jV-000Vy8-2B; Wed, 21 Dec 2022 18:22:26 +0000
Received: by mail-ej1-x629.google.com with SMTP id ud5so38830726ejc.4;
        Wed, 21 Dec 2022 10:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W4nOKqhNPXfITegWM0HPaQGxnW8/92aWSrG5eL1mdYs=;
        b=WS7DOe9L1ApSdC1ztqO0WTPbyxOZiwOS3jhJaizn9q35gbYYipyGyQaN3Xjwbqa6gX
         gLxxRvYXGffVsfpTSZ47mY8bjzVvO4IL42t25g9Tb7l+/TSu9qystwjIf/PIY2nwAGuA
         i4bFKkjZts8Jeq3K0amomR8Z/wtRX+iwEoR5/70rsGd4UirlBH3cTD/QddhkrydF4qdb
         uMS6tOZTYm4GNfO3JE4myOYafJX/mYvpR2NchMnV/yUdsgyopxkwCyI20lj6/xWWC6l/
         RpL9jGxQWojGjB4b1FiZLxlR6weI4J+w2SPmL/NR4aJ6ml8mTDGLwJxieSi2SLpAX1fC
         OmnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W4nOKqhNPXfITegWM0HPaQGxnW8/92aWSrG5eL1mdYs=;
        b=Z5uBKw/h70Tqwy1zFFUFtjxJVVPeK52O9kRHtJNHOEcy3q1PmqflBncYLP0T7J59gO
         UagcYDXmSOiPUlaSqLkB4Nsp2xl1UfWoBNaP/rz2lVMUu8NAOTe8/3EWYxLGcmNfEjeT
         xpoBdu52E9CKQB6B10HfKMbQE2Y+LjX/prfl79Pdg+dufU3O6wrsrtyoLURv0tYfbnOa
         3vvUfN9TWgYK4yREivwLG1DOyV+Qk1RAErt+uRsjbsenS29qkwRLTtOth43IwbumHlGa
         chxx3W7BAY5YfcmpLoxHGgt8vytt9G+an4rVhHf+0/0xnvnYYWKNoJ3L36ZazpsaabP+
         Mf2g==
X-Gm-Message-State: AFqh2krJYYzfk/1SMvL/+J7tpv5DyewiJ8UVE6PuITtdE7bG2xS/H23U
	N7KezJH0RGRluV43JDqZCHM=
X-Google-Smtp-Source: AMrXdXuMRe3FeX5W6S5TKc7LVJDAVywrUoyC2qybAwz+q/HlkbXkjDrO0bxeEuUsOC6ZkOqLRGjNXg==
X-Received: by 2002:a17:906:d052:b0:7be:e26a:6104 with SMTP id bo18-20020a170906d05200b007bee26a6104mr2006728ejb.52.1671646942588;
        Wed, 21 Dec 2022 10:22:22 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id kv20-20020a17090778d400b0082535e2da13sm4302105ejc.6.2022.12.21.10.22.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:22:22 -0800 (PST)
Message-ID: <899d3a39-19bf-519d-a863-bd7ca1e7c033@gmail.com>
Date: Wed, 21 Dec 2022 19:22:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 03/12] dt-bindings: display: bridge: snps,dw-mipi-dsi: fix
 clock properties
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org
References: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_102225_170651_DCE1543B 
X-CRM114-Status: UNSURE (   9.47  )
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

Fix clock properties from the common snps,dw-mipi-dsi.yaml file,
as they don't match with what is used on the SoCs.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../display/bridge/snps,dw-mipi-dsi.yaml         | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
index 11fd68a70..0b51c64f1 100644
--- a/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
@@ -26,19 +26,9 @@ properties:
   reg:
     maxItems: 1

-  clocks:
-    items:
-      - description: Module clock
-      - description: DSI bus clock for either AHB and APB
-      - description: Pixel clock for the DPI/RGB input
-    minItems: 2
-
-  clock-names:
-    items:
-      - const: ref
-      - const: pclk
-      - const: px_clk
-    minItems: 2
+  clocks: true
+
+  clock-names: true

   resets:
     maxItems: 1
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
