Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7235CC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 02:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rpkyoAGhHn7hC5yY/JP//ruCf0thYVqoj0mwgxyMog0=; b=EopNmW1jn02eo8
	iTnybLcBrTQzb4eUHFHgJ69zzvfSegkmBTstPy3taXPDbgE3GNTHzd33gP+gej9OKy7PgPNDOEn5O
	wld67r7dDo2uIS1UREs5NtngJBRLjeFkauEHJBO7IbLF+cZL439RS6bqPfVZVtu/XMMLJdZvCPhN2
	eZyFukdTPNe4JvEp87tlBUHK4uTk7cPyIs4nfhAj5nXFh/jTyer6MAKrf/BcXoEUy8tia2E5hWx5g
	Mh+WcvZQ5S47JcSNe3T/jTQ6lO1/JZEfHLw6xVVkEZw91rdi1FNFEISAzr8h8wWtlgt/YOubOoJL3
	cnQllef4u2eXqNNtvE0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8YA9-002JYF-7U; Fri, 23 Dec 2022 02:51:57 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Y9F-002IqJ-Ga; Fri, 23 Dec 2022 02:51:03 +0000
Received: by mail-pl1-x62f.google.com with SMTP id t2so3772767ply.2;
        Thu, 22 Dec 2022 18:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eYiGrmsD33kbnsC1ctFQkhOOqCnqOHmLKFShgn5msm0=;
        b=NdXB+Xl+3wbOb73Wwwc2ndRLqB6vDaTUECRUs3bIQUGA/Up3lvB2SgI0N0sbx7DZVn
         76JJRDi8jRx7WLo8H2Z3W4saGgzqDS00G5gIulI9qwwNDtgZVbLUBA10vtANToQeYodn
         5ohs0uUfFyAQnpd/CqHUHOx+8VIRT0M2Ts7kseEP+gf8lgEPIyDm2lxm/lxzeb4k49PF
         7e88U5zz58hqHBJ22cU/MauScHLuoOkHDcm1qQWqEI2pli9iVSTiv+6iCZ+ycL30fVja
         du7JKP0vWzOiyaaLJMYWbAYRiNVPocBQ3O8XD2V+GgAM+eQ1PkTEYd5CUcrMvIVs/kEW
         Q1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eYiGrmsD33kbnsC1ctFQkhOOqCnqOHmLKFShgn5msm0=;
        b=77WKnxZQVgQ3QZj1fnBHEh7RBKLIe3zcSW9bYhBe8R5ND3Wqv0+4mBwQLbSUVW8L2f
         Ck4S3Ok9tk+CmXOjMCYATUKrPTts1pX+dExPfoEsCz9GLZak2SKla0Hm8N+2on26iCfc
         m4ks0tyGc21bZFT/biOwNlukPELJ5pnS/3kgGGYiG8x2HfGfDM+R+2Sew578gt7EiGEe
         0WFIHY5S18OjiZO9PqqQb/Jrfeu8XHPZIBHRip4i1DRgSN8YCchRVQJh1SszvimTRvFl
         zlCU7XKI1iWXw+6533+OLCrtUHoaCX0low07JzM+YJYs6/HKsy51Hg73s0uivDRUFJD/
         4RgQ==
X-Gm-Message-State: AFqh2krWqVApG8vulVfW3akU5Ow1hrRatqiaqsiU1kFJvBxSnnKiFe1l
	v8rPVIFxiCLQ2OI7epLafUo=
X-Google-Smtp-Source: AMrXdXsgcOCY8RZvmXL3mUE/EvSSID/1bmnt8f9VYa/QVhUrWMfnckFolxaCdsyWh1oaTXOEgYckdw==
X-Received: by 2002:a17:902:a98a:b0:189:cef2:88e3 with SMTP id bh10-20020a170902a98a00b00189cef288e3mr8586191plb.57.1671763858384;
        Thu, 22 Dec 2022 18:50:58 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.8])
        by smtp.gmail.com with ESMTPSA id s11-20020a170902c64b00b00186a6b63525sm1186310pls.120.2022.12.22.18.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 18:50:58 -0800 (PST)
Date: Fri, 23 Dec 2022 10:50:54 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>,
	Wenhao Cui <lasstp5011@gmail.com>
Subject: [PATCH v8 2/3] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
Message-ID: <Y6UXjiQpMFHQkXJ1@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6UXS8snpRqIk+0U@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_185101_814703_F8436213 
X-CRM114-Status: UNSURE (   9.57  )
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

Add devicetree binding documentation for the EmbedFire LubanCat 1.

Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..058ed707f3cd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: EmbedFire LubanCat 1
+        items:
+          - const: embedfire,lubancat-1
+          - const: rockchip,rk3566
+
       - description: Engicam PX30.Core C.TOUCH 2.0
         items:
           - const: engicam,px30-core-ctouch2
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
