Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3138C48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:13:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94EF2613ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 18:13:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 94EF2613ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qX5QtWNAWObQJcjgEidxCIFUChiUlrwH2ABHgIHM66A=; b=zLCtCN9AfHob0a
	QZkunTnXFKgjccZSqgJLUn25sY56lnEOoXUln5KXS3hYFVhA2op+vjd7c/M1RjBhDQKXDjDKjKD2N
	c5ipsLNM2ZCSPR7uKuO8wCojxPpRlJO+fFAZmWyjr73BJ7XOCED56HzUAd4CwB+kNbiH6vSrPIwYv
	ddcqrSnf5I8aqeCjm3TZ63YMWY6emX/21wQsVN20pfldFb4cE6n4mXjuxnfNvuWXLzZ1u4l637yaF
	imwigx/PEPifncUdnhTv6aSZBS3KcS9Nz5sipolfTyGA32XekxL+iHIbzv/Awh8fgHaBJRDjbh4XT
	/ExViSW8CGm0K1kNUnWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luIzV-00F7xA-Qb; Fri, 18 Jun 2021 18:13:17 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luIzN-00F7vF-En; Fri, 18 Jun 2021 18:13:10 +0000
Received: by mail-wr1-x42a.google.com with SMTP id n7so11709160wri.3;
 Fri, 18 Jun 2021 11:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=htjXApkhNdnP2TPogXqT3DcJXBVLwZ/N/O4uwhluccE=;
 b=P94bMjEVAhghS3e8W5TNzb5y1EnmV4DRB8X6rO4hSox87ZbVbQe8DH8tfDUeeh9Si6
 SgP02Y/+cLTYVJoFUAXvj9rkIMMeLq4Cm8ajMrRwVLi9ZX5xFxOIUfyW+ALpFzpUXnlF
 Rg8uxa0VeNtO4M3DqbOeJkJ6OF2D+CSEdh04mbsjBpJP6d0xjHVueqHKkujC0LlHXhVV
 lKdLiS9l0WVdfS9aa/qKqDN1447W5KzbGAjOd+igh9YZElxtQ31BiHGdWbrSgaVTdaQ4
 bqzcUsOiciLxvNUue4Zxzc4EEYD8OPSQGEaTt/5gAs5gbmB6uhtBZsU1P24U7/S0hmRI
 mjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=htjXApkhNdnP2TPogXqT3DcJXBVLwZ/N/O4uwhluccE=;
 b=L54VngYyOJc8eylgESZt94k4R9gR0hTLnUE/YjA3/GJjItAstKqqS48VhonB46Z/OW
 6QGoClMLWnuiOLGTvW5WK1PuNttVLiHSaiGGtDho8cm/5HptOM9wJF+nHXTYMjo26cvG
 tjC8HxTaCmHl9owt0JVmmYQdEiR+ZUTo0XkNXeC0Ag9dCn5yIg1pHnzPQ9VTbg+H/4yg
 TsVCwh2laCvsMG/cXyfcm9Mm0wYap7eKqzPmkMnS9XFD0JTvTbF3SdtYW+wxyWkFoEnV
 0XHUXkFGTLO0X8XLFe6U6cj9jScYjy1tCSYNiXRaqIC6pLnOtKT458gdASRYHUkXnpA/
 YfVg==
X-Gm-Message-State: AOAM533sbLdqq6l+J/xTYovHosQetb8Md/qoOaseDQgTVYUZ3nLg166d
 HIAjj6SAPeaXCUARtsiF7GQ33SkYcr0O
X-Google-Smtp-Source: ABdhPJwhb8/oWvEHsp+eeJJ3vSb744SlgxAnekBNoPjdu6MG4ouNSzdrlSrWY2hLX/GtKYAMb+swTg==
X-Received: by 2002:a5d:6acc:: with SMTP id u12mr14032258wrw.414.1624039987716; 
 Fri, 18 Jun 2021 11:13:07 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id l10sm9306782wrv.82.2021.06.18.11.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Jun 2021 11:13:07 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 1/5] dt-bindings: Add doc for ROCK Pi 4 A+ and B+
Date: Fri, 18 Jun 2021 20:12:52 +0200
Message-Id: <20210618181256.27992-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210618181256.27992-1-knaerzche@gmail.com>
References: <20210618181256.27992-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_111309_548439_1A9382AC 
X-CRM114-Status: GOOD (  11.07  )
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

ROCK Pi 4 got 2 more variants called A+ and B+.
Add the dt-bindings documentation for it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4a6f772c1043..e5049550bdbf 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -460,11 +460,13 @@ properties:
           - const: radxa,rock
           - const: rockchip,rk3188
 
-      - description: Radxa ROCK Pi 4A/B/C
+      - description: Radxa ROCK Pi 4A/A+/B/B+/C
         items:
           - enum:
               - radxa,rockpi4a
+              - radxa,rockpi4a-plus
               - radxa,rockpi4b
+              - radxa,rockpi4b-plus
               - radxa,rockpi4c
           - const: radxa,rockpi4
           - const: rockchip,rk3399
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
