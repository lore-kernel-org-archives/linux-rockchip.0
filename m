Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 156A9C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 05:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpBGyr1qrdCmOSK73iGgYmDNuAc6KV+pxrvAolrzkWE=; b=T7J9J+6bMU0lZz
	qoLqAaC4Uk6dTmKAE/tagIGLbo+jmL7ZPcNodjHe9h9AxUANJ93snpxLOg3h3tgdcwHtjIKw85bSR
	gKZnat1ypBd26FEiYW3FVGo9WGyQxcdIT9tlDr6FpfOtYybl1m7inJrVAq3qip1x2rOm/7hTsc6Tq
	oLbgLkhJSTVmXmoSUNm6l8I7VDaeiZpgzzzwmKqp0LvU8rFvFacunDSRLbJAajMgGkiygjGmDqWdZ
	TN96KYKP2Y9CpcCimSLvBWUiQgf5DBaWTmSdplaLbKag8LYQKNmk8XPMnQlLrVz0egyIaFaXCIgjE
	F9CFr/La3gdMu4+5XOhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnXa2-00000005thy-2dFr;
	Fri, 22 Mar 2024 05:36:38 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnXZz-00000005tgq-0VG4;
	Fri, 22 Mar 2024 05:36:36 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-430a0d6c876so11179551cf.3;
        Thu, 21 Mar 2024 22:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711085790; x=1711690590; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bF5xw9X6amOuhqITJZtEhEpaZ8akuZjX7z9t1wAP4CI=;
        b=HpDo6J2Qu7MCFzhH52UuHwElWZc/icNtGEebkp8snKxgeIazi2naf29R/UnA+R9QVn
         47VDuVQjYTWTqMN3ybq7nkaMnGqHpm6cKTmc7IloyGN7b5XwzgAYjrLnb9NGsgcMz6sM
         i8fHEyAy6CpD71O3P3rkSlf7+lNuT6cxSYl8NtxLYSbXKUYQv1XfOY/hKqf8rdAHT/Oy
         jBG9hhcqnJHAvPkZpJqv9MUGqAEPwjwYOFMw2dsqd6npp9/E+pzPl2s3d/moHjEf63B2
         g2TIKX0fWe6JHYmYkjIFQbFIESq/HGfa7mzxRpUqzC0mB6e8AzI+SyDJHhU4oQkgooHJ
         a55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711085790; x=1711690590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bF5xw9X6amOuhqITJZtEhEpaZ8akuZjX7z9t1wAP4CI=;
        b=d5J8mQsFU7VNLlzfk8m9F0CVBO9LpELR2SyGrnZ10u7VZ8W5sETLnkg8m2YA8haH0w
         RKoD2gdynDwktnEN1D0fG9uuisbpKKYEZTjesTBX78s/pHB/ZLwBW6/6tfYM05uGw/J6
         1n3NSCJrOGSHkf2k4i01XyXWQb9BVFHeQU1slcW8b7lr7PA0ZolYAN9IvH1S9B9RAnBt
         jDK2SRr9PIBCdFyU+aNSaWYKYQigN1rREWWOOeYk74ehOoBMtdJ05pHRa5u55nbeKuw9
         bNoWY2dsiPB6qYHV6ULR6YA18K1BErb83eeq7iaHspxO+IrCj1bdIye0k1CcquxVUolc
         xPdw==
X-Forwarded-Encrypted: i=1; AJvYcCVwdp35kjWlpNWeQM1bUE1IDsdrlYFyoZMyoEkT/mA/6bCa0Gom+LhT9v7Vg7bEa31eLQrxJ3BgjpWLp8kt3AjITdKCkVxJPvnmPnG+uhcfRGrsBHHStui6Z84SdsrqkfG15LnSZtraFxQsjCutUM1CmqgN6ZZhkZI=
X-Gm-Message-State: AOJu0YxEKzJjfP0fr5x3GFz9LhPxvqfc7ZxmuFK+iRDsaOIZiD5tvw7g
	pgbIDWNvS7bVUMMo9FYzAUE8xyOXnRgGJwatrAT81uQbMapnlBNr9NeakS8vhtZSbA==
X-Google-Smtp-Source: AGHT+IGxMakEwV87bA32ET778M6bt37FiWJX59Li7fZ2bCXT0Apviw7VPVvoELjZWzEV4kvaYuJ36Q==
X-Received: by 2002:a05:6a21:1f1e:b0:1a3:4204:2529 with SMTP id ry30-20020a056a211f1e00b001a342042529mr1519681pzb.31.1711085383582;
        Thu, 21 Mar 2024 22:29:43 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902d38500b001dffa622527sm882978pld.225.2024.03.21.22.29.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 22:29:43 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au
Subject: [PATCH v1 1/2] dt-bindings: media: rockchip-rga: add rockchip,rk3588-rga
Date: Fri, 22 Mar 2024 13:29:14 +0800
Message-Id: <20240322052915.3507937-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240322052915.3507937-1-liujianfeng1994@gmail.com>
References: <20240322052915.3507937-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_223635_179685_1AA7E77A 
X-CRM114-Status: GOOD (  10.14  )
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

Add a new compatible for the rk3588 Rockchip SoC, which also features an
RGA, which is called RGA2 in the TRM Part2. It is the same core as used
on the rk3288 and rk3568, which documents the same RGA2.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-rga.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
index ea2342222..ac17cda65 100644
--- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
@@ -24,6 +24,7 @@ properties:
           - enum:
               - rockchip,rk3228-rga
               - rockchip,rk3568-rga
+              - rockchip,rk3588-rga
           - const: rockchip,rk3288-rga
 
   reg:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
