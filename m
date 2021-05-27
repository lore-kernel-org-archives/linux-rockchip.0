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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A20C47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:01:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 160FF61008
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:01:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 160FF61008
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0n9gPrYqSWelsns3EsmFkg0eJeluF/XnUk1JpYORaoc=; b=pOv9DSVRWEqrhF
	nG2+qvNlMK1hlVvbk1DYDK7jHxOkwKkER2aw2g9/91bX6fdHxPP0UsG1hbg+H/eeFp0fy1XSR/RYX
	9lYpCuzrl+BEie7hvUi4m+RMj1663STPJCOD4+DAYjSJM9xJEFWzvf2jqQBpgUlPGcnzUVmGgBy+J
	FD+T6RInFXLUcPjB9+0RYuhMbLLGKO6Fy57f0hu4jU/a+vf4+mf27NHn+iso+DI4+LyjprNTeihQa
	KXWHcF0AiVwiychjLqlj3k+CIQ3OczaE26OAXw3MEwHZ7zmn6I/QY1JD88M5LzHAfZnFdBf8jW8Vr
	tLz8H3RMRyg+Czz7JQpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJO7-007t6A-3A; Thu, 27 May 2021 17:01:39 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICD-007KGd-Am; Thu, 27 May 2021 15:45:18 +0000
Received: by mail-ed1-x535.google.com with SMTP id j9so1398173edt.6;
 Thu, 27 May 2021 08:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H3e6CRdd0/EdKHGPL7BtIypEry6FkjdG9zyNOFKlRZY=;
 b=Zq414ODqOuxOqan5cRLla7EM1a09egGEdX54QCzdpcjPVdmU8GchM0oU1+D15vQJct
 iOAhZd3Rbqm9eCvq+lpewz3d0Kne2pSy2MCq+e3vUDLrzYbnOUYwHMblhoqTapYzRFm7
 FTIDWJ/wf3lMmlQ0SynMhFCTAAc2EHIBi9U7FXMBtEZ6BfMKrgiVdF5CZ0TyRPtLMS8I
 mKg4GmsFUI3rjf7z/18m8ENQ4hkfp0yOZyTQzAsMLa64Ip2FRe9IF/Z7wujDpWElomzM
 dv4u770vt+5zBzxgBC5o1bnoeVIO9Q/2PM4hsJv0bgWtkdNFeokOqnhL2XfHxw8lqJHe
 C25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H3e6CRdd0/EdKHGPL7BtIypEry6FkjdG9zyNOFKlRZY=;
 b=Zk/N90+8zNSidBCuavYBNUk8fuJOfDjJqP4mDUT5+opY781torKyzd2UNnCDRe1OfE
 rhWSyfioYaP/1VA1U4l05BF498mNTxsuXC0sTlvpB5gb/qfNQxbeL+gFf+QcOwaN/7YW
 4CbWZaiFPfX3RtyDGgdFh/e69j7jcHJH90pFts2MkJDRHHejROT/5qQg/9tpD31WAg3x
 dRV02JnSrDJ+ejgnRBJsNgJXfXmEMqRir4iIOmon4EBMVdj6dTflQs8XvQQyKZyRx4jn
 4+tWsdAAPaaPYWQAlAgadrYnyqvDq2I7ub9A9XvFM3B3Kvo478wnNagXAnJdvKVq9a/p
 7xPA==
X-Gm-Message-State: AOAM5317WUa6vhCHa2Zyqsb9Kvy721kF6Ri9IVdIz7Qy9VjP6HsUn9r8
 8WAsGh1PtOV44HhQDS9RCw==
X-Google-Smtp-Source: ABdhPJwWqRVBxukUfKDrH5kauhHqoAn2Igk5q1H89Q/2gzsKpczlUnRw6MdN4rCCTg6RzBydH6gacQ==
X-Received: by 2002:a05:6402:290:: with SMTP id
 l16mr1577478edv.186.1622130315457; 
 Thu, 27 May 2021 08:45:15 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:14 -0700 (PDT)
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
Subject: [PATCH v2 01/12] dt-bindings: mfd: syscon: add Rockchip RK3036/RK3228
 qos compatibles
Date: Thu, 27 May 2021 17:44:44 +0200
Message-Id: <20210527154455.358869-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084517_445364_C308CBBA 
X-CRM114-Status: GOOD (  11.04  )
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

Document Rockchip RK3036/RK3228 qos compatibles

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---

 Changes in v2:
 - collect Reviewed tag

 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index f14ae6da0068..ad1121620e15 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -45,7 +45,9 @@ properties:
               - microchip,sparx5-cpu-syscon
               - mstar,msc313-pmsleep
               - rockchip,px30-qos
+              - rockchip,rk3036-qos
               - rockchip,rk3066-qos
+              - rockchip,rk3228-qos
               - rockchip,rk3288-qos
               - rockchip,rk3399-qos
               - samsung,exynos3-sysreg
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
