Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED248C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5w5QODcd6QMfxcjpEw4naYUDucQJxRnzEsmngAB/6DY=; b=swz1TO2llFG60M
	r62H2kGp34pcCehj76M+W9O9sy9Pnr4NKsYuCDHHbzOOKnERX9q1TA1+W4RHDy7kB9COZOiA86iIg
	kXoApCL9+g3Eic9gmikCTvoqgSf8u7/rfHlNAxcjXEUB/uUEdL7ZswyDxrsta3g+YDtZs6sVxI4LA
	gTpWc+b7lJUsLSsD7JOczq7+ueaaJnvrj80+YZji0QIjWUqLETdCnydRcZtrkhaehiRyxG+e32oMU
	ZzJnoVH8CHRSCMNaoVBx/eLvNxdM99zkipJL/blgM0+7nice24j3rZA95+fc0kXF8pIdzzchCplGV
	/BuuGDZXV6kupAqyi6Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID5r-00EfmH-Uc; Sun, 31 Jul 2022 17:51:12 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2n-00Ee9o-Lm
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:02 +0000
Received: by mail-pj1-x1032.google.com with SMTP id w17-20020a17090a8a1100b001f326c73df6so8170613pjn.3
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=YgD9TwGCuuBHZJnCn7bWlJjphN4d2OaC6VP0Q8F71/Y=;
        b=r3wtAUPfTHCV5mJiM/deqk2JQLIKvN8flIaQ56ma/wwyURqR6AQzAEfuabfEL8rSh8
         9MbjpoMZW20whGkNy6jkWZn/QVhU+Hc8KaWF8evkAX4PkQAzQAp3dvg5tyYCBHqYKRsh
         T72ki3QuyrUC/m04tARlj3uYhAs+AaB/pvR7wq+jK95imNRT/b3sHYF4u+5eCqjwz8U/
         w/Ab5c6X/RTvwfXai8gROdzbAPeNr3h8PtSIIQ7D075o5cTvB+TJFMXe8AlUCuoaxGGc
         QGfCbcjRP6wxcpC6REbd6g29c+tYm78vA2CJtM4vBcrXV4a2XRVGDS5CrBXEE07XuLcX
         qzYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=YgD9TwGCuuBHZJnCn7bWlJjphN4d2OaC6VP0Q8F71/Y=;
        b=rursOElufe0+ARn+07qDfFr8JMqroiOgKAiEsrd5l+EPRipHGGMkB6tud6acGvOBmY
         sYRAtZQwys6i7thyQjZM/IpRla80nVjVucd4S50mKZXNLlQDiarlqZGX7kR3LPfZvZNj
         VMZ1gMouYRDBw4ZriK9Cy0lykQ0mv8h4ylXDLngX6ha+X+waI2UI5pBw7yPjX/ZzlJ1z
         eLH9WmJtdd91u6pH/RAYLNlilZ8AtEypcD7arvUtx+qzn4bf7oG87kolwPOFjaFDb35C
         hZ3e8wZlX7Z1gIpUEZgU94MOJ+bl2rIw71wwSz81AKKLo7COs08+7MODaIdK/FKkPCFk
         J/qg==
X-Gm-Message-State: ACgBeo3NX5dbk69gPWEp2FvRbsz17w/s/Q8nqJgllqYnY+yDWg21IDIl
	n/1P/cSCyNTE40+5zpW3e178Vw==
X-Google-Smtp-Source: AA6agR7dDfo38veMxE4mlFaHX7QVEzFbUI9cbBpmfuWUFb3j2a5ZD81IPQKvNbpkBH6jUed/bFzvFQ==
X-Received: by 2002:a17:903:18f:b0:16d:6e7a:44b with SMTP id z15-20020a170903018f00b0016d6e7a044bmr13723404plg.113.1659289681256;
        Sun, 31 Jul 2022 10:48:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:00 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-gpio@vger.kernel.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 06/20] dt-bindings: pinctrl: rockchip: Document RV1126 pinctrl
Date: Sun, 31 Jul 2022 23:17:12 +0530
Message-Id: <20220731174726.72631-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104801_764243_6FDCE925 
X-CRM114-Status: UNSURE (   9.78  )
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

Document dt-bindings for RV1126 SoC pinctrl support.

Cc: linux-gpio@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Krzysztof ack

 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 677a285ca416..b486f41df65f 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -47,6 +47,7 @@ properties:
       - rockchip,rk3568-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
+      - rockchip,rv1126-pinctrl
 
   rockchip,grf:
     $ref: "/schemas/types.yaml#/definitions/phandle"
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
