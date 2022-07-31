Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C4A7C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWRvuS6NcbVVXhZ+ClIQ4tli4eWzW/1KnTa5z7tQaJc=; b=T56/uyE4C9RoSW
	8qXvMw19X4A+EV9bBsUTms8tW0NkYfo6g/Gs6E7jwlrReOTDzo9/w6Gtee06O1GSfw1ycHnqwnMwT
	7pAluoMeAxkHx05dYTCYJwXK02MWE7Q2Y7blRIFOOcHJ/6RYCXOYDcuIOwWMZeaj6l5btbv/S35Xv
	4vN0kRUYh1+kE8wOrVugo8OOJjZApvQsN9FPoleg6/mH2ixeEwIi9k697M1WV9anOKGYqz1YfcSKA
	qOHrPmqjsaqyMHX1PecSxsJT3WByJe7ymkwtt9x70FE9/y1FcIx1hx5aXleXXh9xkVtjRvrZ6wPFP
	rEt+wXBHexZuWvaN8cXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIDE3-00EkCM-Tk; Sun, 31 Jul 2022 17:59:40 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3R-00EeNk-8C
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:42 +0000
Received: by mail-pj1-x1033.google.com with SMTP id h21-20020a17090aa89500b001f31a61b91dso10103918pjq.4
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Kabspo2FOSIUsJJ3vKcxiW9RwiGLG4rT/CMdP3iFq+w=;
        b=kpCiyDangyULpaoKLV8RfoKEgYeUziVTHQkOV5Jx9zb5OXiA6A6AT852gzeupyJzgJ
         +nEd3jNQUZJ+xLmSUOMnHdwSTYURkQhdzhuNbNvHUeHwNT7pSFkTJXfXHmPLjaW95hjr
         SSyknT/zP5B0rmO7QpvHuL/qoURyMTFxyTw4QR3I1JsVGOTIGgvypBfORsdtzk/f8JzG
         bxgkBHIefA1o/waXukY9O+Y2PW5Q4Izn/cHvzMGv00KnlDO9UWV8Y26knejIpa84A1W8
         Xu/8T/RGHqUNmEqfvIZSihrBiNo5zlLFDnarIXyYRYpoUCK5wOTRccklJqG95DuxG5AS
         Rckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Kabspo2FOSIUsJJ3vKcxiW9RwiGLG4rT/CMdP3iFq+w=;
        b=i/HCHI8i/GFw6okfsaZqhYLijL26oWIdKPpmiBiEWZ3b1bTTLWiKwqXwcEIouyBxqX
         DDJYrCzImTvPyHC9Fe4G44vBZnEo0jyGwrgwlkNQk7Awa75e3/26Xl26ep9ZYnBLV6UB
         tb94CQYgmqzwf6TeArUdicKE/8+XMrbBDe3qjGBecgxQS+jWWPAKYr8+v28GaEe+NdDw
         9e/YrZUiOuLqmVyiVBlrQQljMWLBHQC/8KJwdgwBamnKRVeCSsTg2dwvGIZdTTUDkbij
         igl/Pwrzo0C9WRVieN98BVsjwXNrxbxrYnWl8s4k3dy9x2xFFPyiawk1L4GlSMkIjts7
         OWcQ==
X-Gm-Message-State: ACgBeo2aPDeNgfAGjRsiw0GRUD0JFRacId2jGdsgJoPF9d6cVglIpk1D
	GRaj8DPA354qS6vYYkIYB9vGkw==
X-Google-Smtp-Source: AA6agR4WhAE1PyIGA8MY4b05fJZr19/aAdUQEpfNrW7zLYGzIcVOkbLzKKIIuwxmNOFyXcyFmjFR5Q==
X-Received: by 2002:a17:90b:2c13:b0:1f3:359a:c7d5 with SMTP id rv19-20020a17090b2c1300b001f3359ac7d5mr14232318pjb.72.1659289720882;
        Sun, 31 Jul 2022 10:48:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:40 -0700 (PDT)
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
Subject: [PATCH v2 17/20] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date: Sun, 31 Jul 2022 23:17:23 +0530
Message-Id: <20220731174726.72631-18-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104841_367950_F66361AC 
X-CRM114-Status: UNSURE (   9.53  )
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

Edgeble AI is an Artificial Intelligence company with a focus
on deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 0496773a3c4d..d2b8ef2e1ea5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -356,6 +356,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
