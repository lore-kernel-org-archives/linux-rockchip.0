Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E4DC4708A
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:04:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9544E611F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:04:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9544E611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76K84Kl2G4pIJmEdd1r67WiwZlrAdNxAW9qJKUA0pyY=; b=uemSLGevP9UEyK
	Z/IbUMYZRrM5aP662L1GiYtC42FRBLAOASEVct0i5wP3+b1AnTtLSSq/J7iJhRELlLJ29p2TnYVnN
	kL8B+8S63c9PREf8mgbQb8crpoiTW6jAhcGTb6kQkuTAF7I90UQOcHAW4INUd7zODtYlmh+TtrSXl
	X4aBVxlRdurVJioP7EvSnU+WLUyppJ6yCMpoydYRXKGkOBQUvBodHVA8+XN3Fbj6004RE4YHGE9ML
	L8eJdY+BPyc9WeToIootYG2R5ZiyQGjIrryva+Ocm3Jbi1v1KnKwSFPUvL+t/wOP2FkBDxQZBbLox
	CpUn/MhObmZwfqkeDMRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJRD-007ua8-79; Thu, 27 May 2021 17:04:51 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICI-007KIw-2I; Thu, 27 May 2021 15:45:23 +0000
Received: by mail-ej1-x632.google.com with SMTP id s22so763556ejv.12;
 Thu, 27 May 2021 08:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E+Q+v8tjGsClifKrRX6YME+wGEX80m4HSKqkKdEmGcE=;
 b=VDF3+TvmtGGen52NbTl7a7Tn+6vQTyJSdl/nx+6URQMR8itcYzsUdbXT8e4NHaTIcX
 rGLfHQ9UwLXeViY1045m5rcBT4piBmKxSMpQUwadM6l7yxp4KWv+HBauA9p3Sc+IZDex
 56h6KAVr9Ec3hCxnJY8i305LVrxL1JGb5OJd/3gKiqyYz1+M2wZzSoaz2vd+AQ2gV33N
 gKTHHNUClGgrTeNcK5voixRN5E5CvSKu9PWXGfFwSP4bOjrp3ZVdnYo0d9PUuR3hmBjU
 wvNHYh5kGWkFUqjdUJyIyapeMYYIw1zupClmY4os/MzISwX5TnUY6ZrHLXLrlmrtLky8
 8iUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E+Q+v8tjGsClifKrRX6YME+wGEX80m4HSKqkKdEmGcE=;
 b=uDIbhBP/LMYZcs0FZO8gITLu+jTGghqyCYJf9ShnRvStN5cv+tuLV/ebNTkGmd+X7O
 io4uvWbshpH1eg0kUuy9F+kcCRJXgGKZy9gOJdpwFca76wf6Kqn9ZIR/JX9a28+UizZg
 zleLDv7YvnSoSN6QOeQDCQgZjN6JRxzSrxVwOyvP/q9NUM5abepqgDBAGANBUN1aJ0u6
 EUob8QSndgxKf3nlJ6/MSqM85vuc/UXepag5LUcu4VW469FXHt4wDS1jMiMP1VFGoEab
 A80YrDpoOkF6H40yvuWbVD/0q091LnXfBT4eCAJfC5MsGy3KIWwWcbf+2l7DNKKMm7/7
 knzw==
X-Gm-Message-State: AOAM533VgYjdUqaeqLuvyIBy5XNbp5eqrld/Cy+UfDQbP54tShhYStnZ
 Z0lZ46+wVws1Y35QDwtKkQ==
X-Google-Smtp-Source: ABdhPJwAZR48KAJhXbIVNmjuR0dmbAEOT7kiGts3kMqaCThBlmD0MEwO6eTtepn/Dcuq2dYtElhqgQ==
X-Received: by 2002:a17:906:2844:: with SMTP id
 s4mr4509443ejc.263.1622130320169; 
 Thu, 27 May 2021 08:45:20 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:19 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/12] dt-bindings: media: rockchip-vdec: add RK3228
 compatible
Date: Thu, 27 May 2021 17:44:46 +0200
Message-Id: <20210527154455.358869-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084522_143652_765939BF 
X-CRM114-Status: GOOD (  11.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Document the RK3228 compatible for rockchip-vdec.
Also add the optional assigned-clocks and assigned-clock-rates
properties.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - fix indentation

 .../devicetree/bindings/media/rockchip,vdec.yaml       | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 8d35c327018b..089f11d21b25 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -15,7 +15,11 @@ description: |-
 
 properties:
   compatible:
-    const: rockchip,rk3399-vdec
+    oneOf:
+      - const: rockchip,rk3399-vdec
+      - items:
+          - const: rockchip,rk3228-vdec
+          - const: rockchip,rk3399-vdec
 
   reg:
     maxItems: 1
@@ -37,6 +41,10 @@ properties:
       - const: cabac
       - const: core
 
+  assigned-clocks: true
+
+  assigned-clock-rates: true
+
   power-domains:
     maxItems: 1
 
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
