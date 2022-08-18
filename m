Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2674C28B2B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfeD7k3NJ1A1d2lJ3vkMRAYoodkv1+c8AXgDNKizKbM=; b=nwDJ98qg+gshtB
	As04jK/bFVUJjmubcbTTWpo0GOTpeaBu3Wvvc2cRAF+GcDuO++YhByzpkn6eSWh8MkZbYexFyT6F8
	k1cp3Ji48Ib8hGubW25BfYGNcbDG0fhFxrmvVaPLqJcxUQjQc4wE7NrhlQQuV++8jnH2IH3AcV/EP
	mIUXJynE337iH8r1uPJHoikLzxfA2+Xv5S1B5Q4uOHTCqHs0loQI0Io1XE2pMMfNvCsbHeMWJf+xl
	6+3aBP62mkL+Kd+ZX5h1fGP5MKNm9TaF+94g80KZTYVYhf9RD3by/x1GhgM8nvEooft8fxFwk8BWl
	wneJTRl5DzoVjn/iB4iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfJk-0059JM-Eu; Thu, 18 Aug 2022 13:12:12 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOer1-004k2X-NK
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:33 +0000
Received: by mail-pf1-x42c.google.com with SMTP id f28so1438385pfk.1
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=YgF3WO8aiyfxlHNlRk4wZ4N33kytZoAzp/W6RtdrMy4=;
        b=FA1dTD8NI6q9JLu6sTU0mbbBdTv/70Ul6F0UzUEvc4M+3EgYUrqSdloK16KkJaRReH
         xKdFFusoJuG2d+Z1md77+7ffyiQ1uGBGkbAu1/QgDbZHaSj+WAj9wvu5CmBtfqRq1RxT
         N8LkkdTvV7OkbxzxAoOdJVQ4VlYyaZVEox2gKVlF2U7QcSux/O8IULGhKpGNmzpY89Fe
         5okdqomwXKsIdBBmIL2xOScdeXGfhRSe0ZZZtDYk4UN3MUQF8+mvg4nFg8kQshM8VfkX
         8GzDq3ueWxNLMgAM8hT+xzWoAp5buoV6GJIj0hHLSLJ6U+tq+MpNtCvL0D6agnr3LTKw
         yaBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=YgF3WO8aiyfxlHNlRk4wZ4N33kytZoAzp/W6RtdrMy4=;
        b=7/aiglaa/prdQV7od8cIJo7t+qxL9XB7TS/KewnxAhcHjuSaMGq777OAGMFGeDktOs
         FuxRuZPyRV3gltxqFItCQUpM27D5++7qpXn3YeWTlREuyCKOdWOCpb9b2QiqDv0WzQ+L
         4iPu89q7lY0sibUtLF36iMWIBdQLHz8xdX8BetVfxpYupUd+gt+y/Ni/kCEIBi254brx
         /+jxXDYq9ukoaX0Um6fIRuSMm5FoApR9DVeLqzuHa5A7jXpnmGpOuP9OC0gn4OBxnTet
         yr8cRxsorIMdvaXPeQKxIk1rasuXZUIK4oJLMsddxp6jUBHEhe90No9iUPNm6BBWlXRK
         KN0w==
X-Gm-Message-State: ACgBeo2sXei1+nYnItkkFPDP0p9LWzVleuyOtbswmlbGZtzbixV3VXzp
	cD6K2tj9ZbDpUwQEEVuhJXRTh+Vu9tLKm3cvf4Lq5A==
X-Google-Smtp-Source: AA6agR62Vct4PZPMSDKDlX0E2z2koGoB/pktLdgHOZTtpK75oOJsKSzWoccwnV/pHO3IoAh/BasqSg==
X-Received: by 2002:a63:2148:0:b0:427:17f6:7c05 with SMTP id s8-20020a632148000000b0042717f67c05mr2339116pgm.200.1660826551273;
        Thu, 18 Aug 2022 05:42:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:31 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 13/19] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Date: Thu, 18 Aug 2022 18:11:26 +0530
Message-Id: <20220818124132.125304-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054231_867747_C45D4154 
X-CRM114-Status: UNSURE (   8.75  )
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

Document compatible string for Rockchip RV1126 pmugrf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index dd7090d668f5..521fbcb8eeb9 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -46,6 +46,7 @@ properties:
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
+              - rockchip,rv1126-pmugrf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
