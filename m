Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00344C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKoYtKPkqI5MHX70ROZ0Xk9dG2GoO65q0SqMts9BLm4=; b=BKw9x6zMoLKYCo
	0WGRflmt8cvUMuRbkwdEsHrt5P7CjfdpaL/5P8Vg3Ubn9Hi7WiPW/8cuzcqBu81r0chHWl1QbCl8w
	UuW6mzwcbfC30mf47Gh3Cz+5t5NdQUDd/05YK1GqEkQuD9FUS0ST+EJsVhEwzzUo7HNRN12swzf4f
	vJ5CV6D7Vca7cIkw9ZOTWqUQsVTtW5V2wDHkF/wawIUJKlilApQJooneEs7EvLZfBd+5OMdROIgoZ
	AwxcufEDXzQchvNuuVqL37uLlueLaTJ+spUy4nFd9lVf8aj6xu6f5FsgKcb33MAlrWjeibWkjs8UE
	wLn/prejPbWjQNL+rkHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfOa-005ECF-3P; Thu, 18 Aug 2022 13:17:12 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOerD-004kT4-Rf
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:45 +0000
Received: by mail-pj1-x1029.google.com with SMTP id bf22so1563043pjb.4
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=h67Kn1x/Ft76K/0awLwv0hPNEZ9TAuzvtwDnw3ZJUAI=;
        b=rdAQLIZFFD4VoiOOaz9HlS7CdNbCMYfcHpj2gcgiy8FKgEIBFiboMTlY9q5x50BhT4
         yguJPlz7dgUpNEnLAjztOABKhsDcXD5DcGXFT0COt9NlUFSqaYjk5x4wyCy7pyVKBBTa
         mJzxW+VapcY8UST+ZyqQBl0PJDVwPvv6EL7xjOlSSQrjxYHshsTJRaBaM3pYvH63MSRA
         hiSg9QW9ex4OIkajMyY7x+59LlrMe8aowEUqfYzGBs5/EA+5g1cCfXNf7aXdwUeSNL+2
         cNKcOKvy2KY5oqCLaTXEXCcfSKNUL5NFneRguLWfL1yOWRG9G8fBMAX56Dd2YLr5EW3H
         xCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=h67Kn1x/Ft76K/0awLwv0hPNEZ9TAuzvtwDnw3ZJUAI=;
        b=1yV3o643Pz8wl/+1f8b0Nogp7l7LFYTF7TNgO+BTlPwceeOpdqNOcHxanGQ0uCIlBQ
         me2GLUKbNuROmzTag38th6+Yz5njAH9LOwfi1jf2jip9gYeJkIqcJS/BI5ws3lZmNwu5
         1rg+wq513+axkMN2yH4v0Bp3EZGbAYIBDOtdR9Ml0Zbh96XpbxNW8sxaFC+HrYWSZiu6
         q1eFzcThv8fr4wt8H5XMZ14IlgoczYEjwt6DUI2D/48B1iWLkGJA//cOJ9dHLyMYbFco
         i3gWygbYZ/7VYEbZEaaQPIm06ywyntAew9WCSSefz1tu8v6LHXvODkypQidaTHy9+8Ul
         vs8w==
X-Gm-Message-State: ACgBeo3j4Yns4AnvamdPf3Af6wn9cBj5YWb8DTkAA17zPNAtsvrhCN8U
	QmmeRCF52LJSp8z+Rxn6+jd5mQ==
X-Google-Smtp-Source: AA6agR7YVqOBoVPhUQm1GCAKZp1/9gvEg+bjHx2KuKN5mtT5XZSbb2+UtIr4Ft5cXp4tNDTxgsThOg==
X-Received: by 2002:a17:902:f687:b0:172:8d6a:3c10 with SMTP id l7-20020a170902f68700b001728d6a3c10mr2445516plg.109.1660826562641;
        Thu, 18 Aug 2022 05:42:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:42 -0700 (PDT)
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
Subject: [PATCH v3 16/19] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date: Thu, 18 Aug 2022 18:11:29 +0530
Message-Id: <20220818124132.125304-17-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054244_097348_E68922F6 
X-CRM114-Status: UNSURE (   8.78  )
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
Changes for v3:
- none
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
