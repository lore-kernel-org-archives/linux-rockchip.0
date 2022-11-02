Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD52CC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 12:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWhsLcU5OgH0YbjAWF8hTpfyhCXEgdEWcy9Uz44ANLg=; b=xgjX5Nx5kOJ4kS
	EVM2TPu4taKmFKt/XSbfLd1PTjta0KWJu3z0RrPrXbrCiKOQpS6TzB5zxdNID96TFtOP0TzTtJPrG
	GOc/IsnuhUS86kK5SoGxJKNkXH+9z0pckn/X44ZLOlGnQh/Yi0sZMhvXV/PPS5jRxcX1YcM/zIsad
	TWH+2bPSentwwQlT4MV+w9uwYY50hjW5K8pNRJp100jVUaw1AV8dYLYedpyL2HSAGCSxIfpVQQnfy
	wCP8ZiBqmx39vyUmeY6t/bVxafsiHJzzJx64o4hHisOoKtFTRQjMdTAVY0MFPC87OpVzXwApRbnB+
	McvpbUXl+QGQi9q2lKvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqD8p-00B30x-J0; Wed, 02 Nov 2022 12:46:47 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqD8i-00B2tq-1R
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 12:46:41 +0000
Received: by mail-pg1-x535.google.com with SMTP id b62so5767163pgc.0
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 05:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hn4W0mxdUQJIGdxsbK9gur9SD5pGJjeIrIvUnQhsK84=;
        b=IupVzqalbZqJdIGX1SbOjqu0/LwJr5+P7EL8OAD8CScg0R0NDEv9nZ8KQrBBD+H19b
         crgHvfuKOgEA0j8cDVXfedfXk8rTk5vlKngfEsuR2lxtl8x2Vj54gbmmcFq9/amFvPjJ
         mfoBd6+7D4LlL3jzrA0rWqgu/TZrN9G+xegDFIysDkJLESh5rP2mNHprH62OMYSHD24d
         R0V+mFs0OlNPjh3ix3yaai+a3I9qBSGh0+5fmAc7jovFUB/JjBM4KTAnjxPF+kwmNsxs
         E9AuYz7+C66+sqJSGNmxyn7BoBa9GPRmaGfgRplQ9rY4u3e++yzA6donokHXouF/tQOs
         N7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hn4W0mxdUQJIGdxsbK9gur9SD5pGJjeIrIvUnQhsK84=;
        b=jUBeOMC+HLuMFDQHtK9ry0+RpeTvRWDLAw3xsvV+VfjfqrNtSnIT+TNth3XuN21aRi
         kS9RNa84W8FSXIemsJs7R2P7F1ZzkhSqXMzBywyPFU2e/03bLCWSTpBYDCF1kmbCtjtx
         3mKtMhnmUC6yqKePDnf6lI+WYrBlQkxODdaVhPjXI14sCzFC8TJ2QMNN6rGuo4tO1tII
         ljqT4cNdE9CJpDXB+5szCiEu0Nq8Opuxqjfbbhjt/WhA+6QN2LPUhwjlSQ+ex43mNUDx
         HDv7zeD88kYC8n3bfmcL60sMCst7VJywe1cj4DGY1t8MqQw0CTJfzBetIHCkekkugAbO
         LfYw==
X-Gm-Message-State: ACrzQf3eF8SK3KIlVMJkPcmXvV0r5BKFwzKbswks9RwD0rdMlVi7BTCp
	XmDJvZDmwrYNT1rqCw4gIC+B9w==
X-Google-Smtp-Source: AMsMyM7M2bmEwza/mRoTgDbwvwShZdEoXQncRXzUgWn2KOIaCmhvl11lCbB6mz3IcHDZZcON+fOXHg==
X-Received: by 2002:a05:6a00:1a0e:b0:547:1cf9:40e8 with SMTP id g14-20020a056a001a0e00b005471cf940e8mr24951716pfv.82.1667393196099;
        Wed, 02 Nov 2022 05:46:36 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:aeff:563:9036:6729])
        by smtp.gmail.com with ESMTPSA id g31-20020a63565f000000b00460fbe0d75esm7549533pgm.31.2022.11.02.05.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:46:35 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v6 3/6] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date: Wed,  2 Nov 2022 18:16:04 +0530
Message-Id: <20221102124607.297083-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102124607.297083-1-jagan@edgeble.ai>
References: <20221102124607.297083-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_054640_105050_B8208645 
X-CRM114-Status: UNSURE (   9.41  )
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

Edgeble AI is an Artificial Intelligence company with a focus on
deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v6:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 7f9ec8ef8749..6c81565af488 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -368,6 +368,8 @@ patternProperties:
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
