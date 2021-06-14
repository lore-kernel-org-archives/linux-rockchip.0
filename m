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
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1B6C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:33:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73E1561209
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:33:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 73E1561209
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQi3uN2zviDExVabYJZGHPmPS7NFrS1Rj2hRmYOusi8=; b=LcEhd+DxTzZhdW
	pZg+gZgksIF7nqIrRhSgruRYcoaYsXP5DW+4QwyUJjWcKOt9I7KV9AZPJGLHXrKvxxAv4c7DjiUeh
	jZnCZs7SWApwCsK3miXydViR/wHcOqELjGYIc3uajElBiZZiSwVP57GXRUWmtgYWPS3SziaeHvnDp
	Da+Zc3B+sPesvTiQHenk/vSF3NwZ4U7KXsME6KL5v6gL+nJ3LYXLYqpHv65HI6wRYc5UkM5p2dFQs
	hCRE64L3wmVRHI83XdAgBjOlUdS+IPlIqodt9IWnko7FIiW4KvgRH1/qPWfEvyNRPCPXB23S/bcfd
	zLs5XnFm6NxGBGwyHhWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsuCe-00GEXs-HU; Mon, 14 Jun 2021 21:33:04 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsuCb-00GEWv-QN; Mon, 14 Jun 2021 21:33:03 +0000
Received: by mail-wr1-x429.google.com with SMTP id q5so16023887wrm.1;
 Mon, 14 Jun 2021 14:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f9dbK3SPswb07BrEY2/ZXQ/CO+EoTd0xHu/qANk6290=;
 b=hS7+kVbQTZkXh0Ibg/jF964OrrSQRt7JHcsz9U0SsUzMfHBFD+EZNv2+0QsJCdzS9i
 SHQ9CM2JJgGYFeMLqP9UxZWYIcgXex+HUL0H41qLRFb1+GaAs/jOjpw0aYyBMNZZSsi7
 eRfBnknFYLXp4zbxfi87hbSWN2v/hVmu7X85cj9JvbLiiFNvYKaR1SkoDcXeoBTVFQLO
 L2xFcbQOFNH5SgJBEmH5LizFaRzy7BWPo+EH9zqxmXaheKsNi1LF6sT4FLctVPsa5tcc
 +a4Jvskhvi2v3AME/nzMCUd0LRVWMkyK4tqY6nVV5f6ahsFpPlWKI7+ly9oHiPTjrT64
 1bzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f9dbK3SPswb07BrEY2/ZXQ/CO+EoTd0xHu/qANk6290=;
 b=Ln+u0ORQrkkzSprl3JIMznFb3pcgbMaSlM9LsRUc09DIhDtFmpLmxRbB32cRyq+N2h
 ysOBKqQyOJLe6YkfsWYmc0GBEixhGTBhBjnfn0IMAxSiz+4N4PUTMhpxxH+/PsPjCrmL
 zyCzhBqGRffYTie/DlIVtZHxRfHtJGU+aazCmSgJfilZW33V5daX3pYVCI8dqMcNOEa/
 TkMvJQRvPuxJ1BFxyS8xrwdiNr9v6zH0azqN19N+gIgDNc9m/0d608bhZcE708iMXPHm
 bT8zuVWaL5wkntLmc32x7BjXsoIsDj56SVr28v2Qj5zKZAU/al+/RssUxFPKWrs1IJzz
 vnzQ==
X-Gm-Message-State: AOAM53347IQDvOjyqleogPkPZCOeJtf0vpfcOUN2jPUH4OBXhpKh2Ktl
 2IoZb2GCyW1DWRKqqUXs4A==
X-Google-Smtp-Source: ABdhPJy8j9rxtU2OB2Tz33IdEGNoy70idPLjMglYh/VXsO80tQnvFscE3IXc5c3pultVzeR7dYgZFA==
X-Received: by 2002:adf:efc3:: with SMTP id i3mr21013616wrp.356.1623706380111; 
 Mon, 14 Jun 2021 14:33:00 -0700 (PDT)
Received: from localhost.localdomain ([91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id g23sm989525wmk.3.2021.06.14.14.32.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 14:32:59 -0700 (PDT)
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
Subject: [PATCH v3 1/6] dt-bindings: media: rockchip-vpu: add new compatibles
Date: Mon, 14 Jun 2021 23:32:10 +0200
Message-Id: <20210614213215.99389-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210614213215.99389-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210614213215.99389-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_143301_870589_16C5FA8C 
X-CRM114-Status: GOOD (  11.61  )
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

Add compatibles for RK3036, RK3066, RK3188 and RK3228. Also reflect the
changes to the additional clocks for RK3066/RK3188.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

 Changes in v3:
 - collect Reviewed-Tag

 Changes in v2:
 - fix order
 - fix indentation
  
 .../bindings/media/rockchip-vpu.yaml          | 33 ++++++++++++++-----
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c81dbc3e8960..b88172a59de7 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -15,10 +15,19 @@ description:
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3288-vpu
-      - rockchip,rk3328-vpu
-      - rockchip,rk3399-vpu
+    oneOf:
+      - enum:
+          - rockchip,rk3036-vpu
+          - rockchip,rk3066-vpu
+          - rockchip,rk3288-vpu
+          - rockchip,rk3328-vpu
+          - rockchip,rk3399-vpu
+      - items:
+          - const: rockchip,rk3188-vpu
+          - const: rockchip,rk3066-vpu
+      - items:
+          - const: rockchip,rk3228-vpu
+          - const: rockchip,rk3399-vpu
 
   reg:
     maxItems: 1
@@ -35,12 +44,20 @@ properties:
           - const: vdpu
 
   clocks:
-    maxItems: 2
+    oneOf:
+      - maxItems: 2
+      - maxItems: 4
 
   clock-names:
-    items:
-      - const: aclk
-      - const: hclk
+    oneOf:
+      - items:
+          - const: aclk
+          - const: hclk
+      - items:
+          - const: aclk_vdpu
+          - const: hclk_vdpu
+          - const: aclk_vepu
+          - const: hclk_vepu
 
   power-domains:
     maxItems: 1
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
