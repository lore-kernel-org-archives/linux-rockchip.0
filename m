Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22BAC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:33:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7297861166
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:33:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7297861166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xHbDFCdJwpTtAzqYdme+48Smk/XQs4S1tfLvhVwgrk=; b=Mjn3na1EfR7Se6
	2OXD4Aq2gdvRpn8E8QN3a5iPw3MOyC+p16ghrJFTSd4IRDnOOdj55auvjfxwZyQbd0hgF/GZ4GKRL
	iSDm5PJx11zznDNUBX4pjFa3X/aMAJjP4Q5iroF0L/ou68mv/C8Obte1wflpq3LxQJ/jVog9TGRLu
	Ebm44aCY1bM7gof06W9iyOEzwxj1doBqXd+9gHSmTl0ElAzzbgeVD5YnuBiZ8hHzcurOqQOvE9BSe
	bIlE1WUfG9F4duE5ycta+d3FVPBTIl+MaU6ZKcth2CQZhPllzcXQrBWK45Jrxt//VQ0aXFfTsCWO7
	qqfAGTBlVNkhSl5iUAag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsuCq-00GEaY-D5; Mon, 14 Jun 2021 21:33:16 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsuCm-00GEYq-Cp; Mon, 14 Jun 2021 21:33:13 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 f16-20020a05600c1550b02901b00c1be4abso335485wmg.2; 
 Mon, 14 Jun 2021 14:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9QHnLBSn4mcNqMxp8QVF3Qao55O3wZp9sNKhBopLdHs=;
 b=osePZG2TUPhPjy+s1iiijkxLLEkZQDWQjQk3reRkWhpjRfTx+hRIBf4JHnt9Vc0Kzb
 wCfmCry582cOJfxH8a2eACcxFDBYdanogP+mq9FNP6MrM32YXpt8IsmH5SJUrT9Z7NxA
 XDeK0ja7TSPLPEixDccyb9vyPmIz/Smm4goVTLzcvE0cBwYgQUh7nnN4HAKszH86nzRX
 akOTGPqnDeF1tLB64frtcmwtRUpQ497jCp+n90XDHpisQFirRu0v0RAtRmOnwjI0qV8I
 3xektr/s5h0n2IfIKHP099c9w+SXPBBVjjMHfOXZPC91+X799YByM5Pdd7p3x6tGCcU0
 Oo+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9QHnLBSn4mcNqMxp8QVF3Qao55O3wZp9sNKhBopLdHs=;
 b=dictPrD9TKhoOtytkW2jgoxa2J0R+rv8pURT17i51nswkRU/hCguQKj7VFas6dCSR4
 XmYuqFzIp8MBGilUGEloiKWlR6s7l1dfbEQtkzswmAhKFB1eT327dGFWyWZmA0gBbjE/
 dOYTzXORRZ6EEA+mHQCQmOlWFXLmX0bkOGc8TQ25rdnplQkDAocvL2EgyGk/PjhTzzs4
 E2s6k2tgVecnHi/a0NLQMciq0w8rR8ZW+asBn9P2K7s7Em+OD3gglDXUjiT2lppnhIlu
 5eEfpGb+hrUOLpKlvDJ7jNgqgqANi+WDjk1+1YcmE8hlovhscdz6RKwcRS1o9ShT6MUE
 KEBQ==
X-Gm-Message-State: AOAM530bCiSeuCPIR15d5ds2ep0SL0y6oroUK0t1x1DGtTGmnFLExhjg
 hsMk/LLzZ8GZ61HkhBcCkQ==
X-Google-Smtp-Source: ABdhPJyzUezQM2+VdSftiiyJ+qyD+KiSsxxLfOzjfe4ZfZLJuIa9FcvsPSKS8TDgExbBV2uit3eRzg==
X-Received: by 2002:a1c:2142:: with SMTP id h63mr19097080wmh.84.1623706390660; 
 Mon, 14 Jun 2021 14:33:10 -0700 (PDT)
Received: from localhost.localdomain ([91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id g23sm989525wmk.3.2021.06.14.14.33.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 14:33:10 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/6] dt-bindings: media: rockchip-vdec: add RK3228
 compatible
Date: Mon, 14 Jun 2021 23:32:11 +0200
Message-Id: <20210614213215.99389-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210614213215.99389-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210614213215.99389-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_143312_478756_965EFA55 
X-CRM114-Status: GOOD (  11.79  )
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
Reviewed-by: Rob Herring <robh@kernel.org>
---

 Changes in v3:
 - collect Reviewed-tag

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
