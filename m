Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59C16C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 03:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=mC/kkCYMeReL2nQkyLUtbaw2SbuOLnjZPrtP/YwiHhI=; b=V2k+di4gIfvk6R
	B934w9+Bv30zzkw3IhYmV07lJg9q2IdUie+kMUIKN4R6QoptUUl0hmzdNMXTqA+208dJ0klSvyinq
	9FhzlVrzLgPkBjkyfRSWcxhT1X0xHTmo56AoJ9eExCSfMde5wt4vPRpIJcunN34j0BpcCcm2wbKfk
	uqCmM8+sXp3BsUJzLIykmmz+jz1Pbf7E7LcJCfNycv0joW+obA24rVS5hsRclRjoUl5buTXBDONku
	N4Fqt7BqkyYaycMrubIgBoyqaNS+0etWBxpQXusDKxwemX7Zg2YYFXVEqaSLuN0MpRcoAO5z42OIP
	Aj3pU5Tjn+kGl0IC8fMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8YoQ-002iWg-IY; Fri, 23 Dec 2022 03:33:34 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8YZf-002aZD-Bi; Fri, 23 Dec 2022 03:18:20 +0000
Received: by mail-pf1-x42e.google.com with SMTP id 130so2500255pfu.8;
        Thu, 22 Dec 2022 19:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JvI3blinvaCjUYpwPXTVf3onR897jbDV84x4cQn3O60=;
        b=Oc19VAEwOXUtxxtdKwHQqNGtQUP76Yf3FUW92uqTquY/TovWt5Tm3B57RyYb5bEhXk
         NNqXzye01SuzGI3YviT/y5bf7uD/6bVA3Zd6OLIlDwXnIjXaodegdnJRKf3ot4qO5DIU
         aM1HyhMD0QBOZT4l7gVjpw7sr5H2R0gvD0xm+NTNLvSZdC+Nm7uqKJ+4IIzF2KD+uVDl
         zp4zwYvekI2aPz7dReOnZW7+hmIZkgEbfKHsP5tNm3NwyiwZEsSGi+r8z30Rcu6VlUzl
         pOH46skNXMpcGaD/NLQlYMYPl56wWyVvoU0uqR4VhO6CHJlEu/kLihD/NO2CQpuJE4XT
         kWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JvI3blinvaCjUYpwPXTVf3onR897jbDV84x4cQn3O60=;
        b=MF8Yk6lzOkG1SkXwieQ1o3PH/sYFU9JhuvEB+VRuQ+BtFudW/BIL5ZWC1oPlB/wodE
         qoILe1/KuKhJbdOw7cTdxHcNGkEWh73B41Qi8XhnthVCb6xdiSQke9JXSohZnEJzWbcN
         q8CRv3RDr0BzcJXFetl8Cn+2EpvIk7YowuT3qzfXA+/TTbPi+qM4aoZUrHrsKzr/Fund
         p9Ib2IMcFvFrel6no2u/MTWeD2daLRlSgWRYWSbvi/90n9HDhNp5MKXswnh/oqaP8rFY
         jIcKfifaKRt84h1XreFEMu7Af00ftfmo9t0mL8bGX08Z1+jFU1QFA6WXOvOlYTa+HuoD
         rNPw==
X-Gm-Message-State: AFqh2krge0jmDfeFCrfBcdpT4aEnlt49XEocQv3xm9beD8QMlH+M6DYD
	lQrUEuCADPfgSc8EiBge4Og=
X-Google-Smtp-Source: AMrXdXsPfVNkPFXAkqMaVrtsalGBoW5UqG9NuVGNJ1jY8X6HR3rNhraFmr4D2g6g0ZZeGHRgLWYbOg==
X-Received: by 2002:a62:6102:0:b0:578:3bc0:57d7 with SMTP id v2-20020a626102000000b005783bc057d7mr8071802pfb.13.1671765497089;
        Thu, 22 Dec 2022 19:18:17 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.3])
        by smtp.gmail.com with ESMTPSA id m27-20020a62a21b000000b0057fdaff3fa0sm1457473pff.15.2022.12.22.19.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 19:18:16 -0800 (PST)
Date: Fri, 23 Dec 2022 11:18:12 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>,
	Wenhao Cui <lasstp5011@gmail.com>
Subject: [PATCH v9 3/3] dt-bindings: vendor-prefixes: Document EmbedFire
Message-ID: <Y6Ud9MhRjCVAYMCj@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6UdvrhLjS0/8Oic@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_191819_448298_6E91C0EB 
X-CRM114-Status: UNSURE (   9.28  )
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

From: Wenhao Cui <lasstp5011@gmail.com>

EmbedFire is a manufacturer of embed computers and education platform for
embed devices from Dongguan.

Add vendor prefix for it.

Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 00493b962bd7..0f04ee30bdc2 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -396,6 +396,8 @@ patternProperties:
     description: Elimo Engineering Ltd.
   "^elpida,.*":
     description: Elpida Memory, Inc.
+  "^embedfire,.*":
+    description: Dongguan EmbedFire Electronic Technology Co., Ltd.
   "^embest,.*":
     description: Shenzhen Embest Technology Co., Ltd.
   "^emlid,.*":
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
