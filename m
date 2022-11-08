Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 746B9C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 04:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2NlhN4a8tYnTPG1ZNt8A7/+wpLWOEy+sbIrda3cyAU=; b=T34r3bkqf1+YDn
	dR8MyxEIz8EpMexQRL5w836impDpC9u0ZF4OHF3lFZJ5WRwc3yr/RBHNvuUHAZmPDNivrPRTRjhDG
	efmRUHN0ln17j0e7jFC3j7bgAkdYBTPRS5cbVESkYbIwI/GcfBNv4BXvwW0mXgkBd2S4xlcjUQ0fk
	uxl4ntpLdu6aIElN3Z5kWQ4YMbhHLneAiCadPFIJ4kUcmOdj78/GudBnBfY5me4YIndEbTvufa3u6
	eAok+TQGyfsH/Ovob3kzksr0Xl6OIg6ozdjuWAAxmaJpH78VyOhbFfyphgcX41kYEsUZ1sdD+wD11
	CuQDxjLjB5AVpMK7/yYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0n-002aR9-Bo; Tue, 08 Nov 2022 04:14:57 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0S-002aH4-Dp
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 04:14:37 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 78so12328431pgb.13
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 20:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KvVKBdD+O5vHgZ+WUSF5TR185G5cSVikAYO7GBsOUyc=;
        b=Q8jmaePBVTwlbLFxwaxJK2Eyh7lMIse91drNfCwWtWfseBIbUofCImwGWuSQWdWOgL
         KeSXzrYMZ2aPQlFwM0JpspT7ruyJ4ykJQUq3aFnFjDQm0iHC7Zo4veWiWKrS/pBL9fCe
         huOf2aU1YuTImJYADUJFvUOA5b+pEj9Rsqp5KB5oA+kT67qdBWfh76c2UZc/FW7oVBlH
         HaCTpYWCYvWBvpY3dnVncb1CieLXHKIyfwlPJNmhyEJ47JagONqNSgiZ6pAIE+EkO3s+
         c2ACVwEyQyhTI/Z4HQ6al2f4CYUds1oXWF08XmFFNwFeoaWTjy6x+F88aq8lRaglFS6A
         kl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KvVKBdD+O5vHgZ+WUSF5TR185G5cSVikAYO7GBsOUyc=;
        b=s4F2OW5pSslKPjzXdPRAeZFTZo3wwMbeIhKQ4uSRWw/MJeHnJZWbvc/PyCdA7K9VcK
         a52YzUX14zzQBcktEfYoKMiGlmOyfynm1qWVhbFxgqKSRRIVJfmnZYFR7lBkG5sRbjXy
         7GtD2emzHeEPwpizR07wkQQM/6JsWKuwEB/S7rNQkVSwBEnPUy6wEhsvkXmBNB9odXTl
         c3P0L4qaDuxekSi3VS79BY5YRP/k8E5mSKzmrD/Wfc42lCcFYKd8VkcaaH37Hz2Tjb76
         kjNcd4Xjy8yZqLMHOfgmWtJrFr6BzrBA8G0YzGOyegSTq6ThFcdEBc56DdyS01J7IM28
         3g+A==
X-Gm-Message-State: ACrzQf3aLEL+WzOHVcMoPcfmwabEXlfvVsbVuWyFtCapQwY8ZuWXq9Pt
	BIPrepa8NAvF0lF80XcXV2KR1Q==
X-Google-Smtp-Source: AMsMyM6wsYcCCVpobtd0f0K57c6DyDwurbZLCHjPx7BRWoNlRXbMXPqq13o+JkUY8ua1OJZvF6IKTA==
X-Received: by 2002:a63:fd4f:0:b0:45f:d7ef:9f94 with SMTP id m15-20020a63fd4f000000b0045fd7ef9f94mr47171172pgj.137.1667880874769;
        Mon, 07 Nov 2022 20:14:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:14:34 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-mmc@vger.kernel.org,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH v7 02/10] dt-bindings: mmc: rockchip-dw-mshc: Add power-domains property
Date: Tue,  8 Nov 2022 09:43:52 +0530
Message-Id: <20221108041400.157052-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_201436_478956_1A757EC1 
X-CRM114-Status: UNSURE (   9.61  )
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

Document power-domains property in rockchip dw controller.

RV1126 is using eMMC and SDIO power domains but SDMMC is not.

Cc: linux-mmc@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- new patch

 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 95f59a5e3576..c7e14b7dba9e 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -71,6 +71,9 @@ properties:
       to control the clock phases, "ciu-sample" is required for tuning
       high speed modes.
 
+  power-domains:
+    maxItems: 1
+
   rockchip,default-sample-phase:
     $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
