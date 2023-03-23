Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08B88C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 12:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4uGrjKFOaC/CbKvU6sknhC/vzzTytoYKRYqt43+7Bg=; b=QP4RC5h/D+O7NZ
	UWHHBR4Pqga9PJxZwUBDz22qnJOgONviJbIhCzLm4Dms+/kHP1xM1vuBP3bjmKFLUOwcwXbOrTqZf
	FXBeBWy/libPqydP9po0bkyF1OwKDG/4udWagKR2YhN7iB4ktMXeYqeOqRqSvB6y9LhOVuWP7ivzx
	TuELxCPaLNgjj2oFTJucIo/Dpt67OqJjVW+HRgO5Pf4vLGaV0WBo9MOUjIDYdmuBOEt9FIUYrpkQz
	P3dO1OV6fqw2hgrXsyvWCf/P81OOcbhLQt7ig+jYpW9scLQ5LGi3MSptnmP0GhnlVJkB0SWi7if0Z
	E6HM+rokr5Df2aLiL6Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKD5-001wL4-0r;
	Thu, 23 Mar 2023 12:38:27 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKCu-001wFb-1i;
	Thu, 23 Mar 2023 12:38:17 +0000
Received: by mail-io1-xd2a.google.com with SMTP id o12so9876529iow.6;
        Thu, 23 Mar 2023 05:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679575094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=elyff+jc0Dmn8L8o0mKSvi+OnSPUaZQkUoy2yMJRlrY=;
        b=ROJW454d0ZORZyCxD8eYjE/BQ2imMWkRbHcixAhlMziFGE89Pp9xt3g3kEmOy4/Niz
         Bm7VKSUr98fclycy0fqcgfx856uIB9+qj9DQzJi5FTAapkFNo9+NQMHG/JSo+yUIAioJ
         MTPy4uOKwPRs6IUGwCiqVsELUiPNKT5pOftbCum0uQZy/TYduetqqtlv7LP7dNrHRrdR
         FtvWtGGmcL/wk3VnsHRwPR0X34qMFwQJ4Encw7+BTlJA1AvfErC3FWX8uVAiVkoJl/Yz
         QmPMYBoKnRDEhxx79ZfClwC7ViOrXej7OlDx7lDcmPHfR6P8sod2jaNQWKBByvlDaE7Y
         sr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679575094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=elyff+jc0Dmn8L8o0mKSvi+OnSPUaZQkUoy2yMJRlrY=;
        b=yox6d2f9IkdbgaJzcHUfFJ/NlPz6IHKigac+M5eWnJSEF5GZmsudPDxxxx85M7drot
         ussm/qJP4ZgfXaufE5gLez+1R1wfi2U1EcoVUazsVDUs5vxcBzpT0G1fUmiTeuOtxQN2
         ezAuxv6xWOVsE6M1nZmUtGeeOx0Sw/zQBaY3tG8Y1e0ovyEe01RqdgWUcabzb4Q7E/El
         B2mXJMD/bskjAIFVryRwKGrzynMZbBtTru5qSZQnQ5U10WxG3nnkjNHcyFXdrr5FWu0H
         Sd7+NoXJ4J9EfhCXzQia3XkzomSGC2sXURkYHeAQ60aT6sa6ycRnuNLrL5Xak8JASsqs
         44IQ==
X-Gm-Message-State: AO0yUKU4tnnvJFEgYnlGdNRa+OAQ2vrc6EwnPQauq88q5v4JSwIFfnRG
	2xuLXCdrPsSe5FGkj5GdF7k=
X-Google-Smtp-Source: AK7set/0iydoq+EtlUmADjV58UvVzo5A4y1nyq6acf+hjG5Ez293WSfJs6GXV46+QkptKUhZBNHCIw==
X-Received: by 2002:a5e:850c:0:b0:758:b06f:6ab2 with SMTP id i12-20020a5e850c000000b00758b06f6ab2mr3250924ioj.2.1679575093694;
        Thu, 23 Mar 2023 05:38:13 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id n11-20020a6bed0b000000b00758993500f3sm1307608iog.7.2023.03.23.05.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 05:38:13 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: Add doc for FriendlyARM NanoPi R2C
Date: Thu, 23 Mar 2023 20:38:04 +0800
Message-Id: <20230323123807.11882-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230323123807.11882-1-cnsztl@gmail.com>
References: <20230323123807.11882-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_053816_566594_120A0853 
X-CRM114-Status: GOOD (  10.73  )
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

Add devicetree binding documentation for the FriendlyARM NanoPi R2C.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6f4270f2bd9e..01df9a5a0cf5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -185,9 +185,11 @@ properties:
           - const: firefly,rk3566-roc-pc
           - const: rockchip,rk3566
 
-      - description: FriendlyElec NanoPi R2S
+      - description: FriendlyElec NanoPi R2C/S
         items:
-          - const: friendlyarm,nanopi-r2s
+          - enum:
+              - friendlyarm,nanopi-r2c
+              - friendlyarm,nanopi-r2s
           - const: rockchip,rk3328
 
       - description: FriendlyElec NanoPi4 series boards
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
