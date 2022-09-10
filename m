Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64880C6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j8dCGoFBFWCnB095n3Xm9kCAhc0d9ATwO6Q7Nn+1A+0=; b=k2VbZpxfQyAnXE
	Z2Cz0mDHMMj4gKX5iRDXcNq8Xkf/43QtDA+OzUGI0MtH+zDZYlFW7JaFvSY5rsdzYfZdlfCA3SPEi
	I3CVPPz4YFRAZcELVH/5Wpk3uX/iFV2/lszZiIyTD1vb4tYOiy9uew8/7STATtahku3n42ons4fC+
	Dl74sfS2EsdpB3SxfTkoSqyi9dxX2c7p/qoJIP2tAndg0U1KlG4p+8xsEiSagGaTUX6giEctfZaHw
	n59aPsIyJPzLdWvrnB6sksG+zE0r0u7sOC/1Dvx2jDvL0J4YDstEiwR3iM3+N03U5XW4UGmoFs3+m
	L1UkMRTkn6jjGknLIIaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX5eo-00CRhD-4y; Sat, 10 Sep 2022 18:56:46 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX5ed-00CRWq-AR; Sat, 10 Sep 2022 18:56:36 +0000
Received: by mail-ej1-x62f.google.com with SMTP id gh9so11369635ejc.8;
        Sat, 10 Sep 2022 11:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=3PplGYcFwa58sgJyq0s6GKaVr3wUW1D0jH7TKWDQs/0=;
        b=qWwmi4l9tkhs+K+eUHh6fIlNVbj02RW1SDpguvVyPuvThzzfNg9bg2OztEF1cYiRTc
         s5H9IgSqdamsiXQz/SkWKrUKZqxF5WgDo+x7IWiMS6thkN0YtolScBTDH1lZLNQJYxsI
         g/GWUO/FqZq9YixXfYdM6Si5IlRsN4IU1G8e5H4Fq42KGQZnEAaqKLWYnSWx6A1KdWFO
         PyiTSUaX0lrZ0K8rlKFMaR1jpnQVutklE1v+xncU3wblKEgj8qiVEdatVCyWn9qnEa/l
         A4AeCDK9ZlWhr1t4SD3CTNS3qXjz6cNlJC4VDYrGLbJYefMw5dF8j0xUZ42lVAO5KPR2
         0QYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=3PplGYcFwa58sgJyq0s6GKaVr3wUW1D0jH7TKWDQs/0=;
        b=Wa8kLjS61PvtAyaodn2hl9Q8yCqCWHOGMzcaO6P2gvr1EZDqi7RIkuivLxErDLwSQT
         sgXzKCYKcTGy2ac7vxkfgPWrqpVGEn87oxSSedXNGe4Y1jn+4XfG2oxwf8J5qYW6gjog
         f/eksytqtvMhX2erpkpvmnnPMYcHQZeM+EymjxZAc35rc4KulT56xrDsmktBhOedk3rF
         LHb93S5zD6PoPFDahPsQ7mX+gipeVnerJJ/aHtUSnzOKmmmZEGZHGbudYpAVaFCt1e1J
         Ia1L3jOGH+bB6EWOENGtBBIlJtxGOloYWJSCqbhdg2yTjaYZSQXndLdKugKkRUPcfdcT
         QMQA==
X-Gm-Message-State: ACgBeo1sljn+y7764euivnov0u8KdGCNWrc9WowpYIHSxbroZPo/vZGt
	U+ZU2jbsi+PYHBpgyvzJS7M=
X-Google-Smtp-Source: AA6agR77n+mQgZTAm6u67SKl30loSrOlLzz5oqTb2H7JEQJz++WyB3Qxbiq6/Hgq/4xQMVJbsUKIrg==
X-Received: by 2002:a17:907:96ab:b0:779:b7d8:41ba with SMTP id hd43-20020a17090796ab00b00779b7d841bamr6352676ejc.449.1662836190148;
        Sat, 10 Sep 2022 11:56:30 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id g22-20020a170906539600b0072f4f4dc038sm2045125ejo.42.2022.09.10.11.56.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 11:56:29 -0700 (PDT)
Message-ID: <64d03f6e-c578-3155-e3fb-53dbe53573eb@gmail.com>
Date: Sat, 10 Sep 2022 20:56:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] dt-bindings: spi: rockchip: add power-domains property
To: broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_115635_404242_9AA94183 
X-CRM114-Status: UNSURE (   9.19  )
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

The Rockchip rk3399 TRM mentions that pd_sdioaudio includes
sdio, spi, i2s and spdif. Add a power-domains property to
reduce notifications with spi-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 52768894b..66e49947b 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -82,6 +82,9 @@ properties:
       where the "sleep" configuration may describe the state
       the pins should be in during system suspend.
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
