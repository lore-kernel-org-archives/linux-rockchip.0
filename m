Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC563C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 22:17:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7D84B610A8
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 22:17:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7D84B610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIwh3YTkQ4YosBSrwkJ6IpJqkf18goGMrbrr/dOkeWc=; b=HSh62jDkWUMRqA
	p8g2i3EWUUkJrlivX6mwIM7uS7lMu6p9bvl/oUQuoESO/osAgBaFkzGxFLeRrlrPfWnk7nLucAv9p
	IWXZLX04hCBU5F6sdZokHCrPWvpkOz4gFj0QewgFApp9iUgph0te+zab9EkJY+B0QvYYxdiTDZYyo
	eQS9tpb/yJtmELdx02Z5Gcq1zov0FrrlFvyfRJw22fXNiyJp8JDIA4pnib46gnVp55Bh5pD07tYxN
	VQ+q9tYHHlSrz6sNf3inE1LHNUD2ICmVhRdtKKl+f8AINqjYCgQM3lSWAoGuBkG5b4BACqDsOzp7n
	qopN/R2UQt3XjVfWwbdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSRay-003FCh-1O; Mon, 20 Sep 2021 22:17:04 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSRal-003FBy-Aw; Mon, 20 Sep 2021 22:16:52 +0000
Received: by mail-oi1-f174.google.com with SMTP id o66so24199798oib.11;
 Mon, 20 Sep 2021 15:16:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=X6Dg2kZ+RuFpdfWPr4SKLTE5pZ2Koj+j45EvqYukxNI=;
 b=5qCpPmZoXycJV/6w8shRfh/widPcJiLn3Tz735oVCtFB6OWGOXRk9El/CyVFBsBwiB
 EopJHo2NntM5a2ugS/FraEewTChAgUj033af27EULeCoJU4jhMbcFl1gyftLp33z+bIV
 NYVSLHqLsZpyQonKmjiLFIqFGhz6TJI5VOePRWfigcJNBoGlF0AdepGEw0TgsDmsqjdd
 qAuDzptM5iG5ifLZA5yGFxW28Fw6NqwbVWI3MltU1M4yWOGVdCXlLCKjERzR9Ct7+l8V
 Zc2Iv+nZBiLqwH2YsTJIsO/rNUbm1g7obwgH7Zxuf6FBRMFj1RoLXjHzHZAIotVt60zg
 0uIg==
X-Gm-Message-State: AOAM533TZA30Nj0oJfwt191hjgT6xhN0EmdBJ1j6j3tq+p1xjQCycqFj
 90laznrGQEGLgBmMAJHkquCAFun+ZQ==
X-Google-Smtp-Source: ABdhPJxxFiHuSeI1aysQlkpw2QvPSQ4QYEo5fJgn4tNf5BzSTXiQZlB02XRSXSA6aiB06/+DKxkINA==
X-Received: by 2002:a05:6808:10c1:: with SMTP id
 s1mr1052756ois.69.1632176210286; 
 Mon, 20 Sep 2021 15:16:50 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id p67sm260373oig.17.2021.09.20.15.16.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 15:16:49 -0700 (PDT)
Received: (nullmailer pid 892703 invoked by uid 1000);
 Mon, 20 Sep 2021 22:16:48 -0000
Date: Mon, 20 Sep 2021 17:16:48 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 1/4] dt-bindings: thermal: allow more resets for
 tsadc node in rockchip-thermal.yaml
Message-ID: <YUkIUBs3FC4WKJ2M@robh.at.kernel.org>
References: <20210906120404.10005-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210906120404.10005-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_151651_425691_69B798FD 
X-CRM114-Status: GOOD (  17.20  )
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

On Mon, Sep 06, 2021 at 02:04:01PM +0200, Johan Jonker wrote:
> The tsadc node in rk356x.dtsi has more resets defined then currently
> allowed by rockchip-thermal.yaml, so fix that in the documentation.
> The driver now uses the devm_reset_control_array_get() function,
> so reset-names is no longer required, but keep it for legacy reasons.

I don't think I'd deprecate it for that reason.

And removing it would break any kernel before the 
devm_reset_control_array_get change.

> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/thermal/rockchip-thermal.yaml     | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
> index b96ea277b..ee104e451 100644
> --- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
> @@ -37,11 +37,16 @@ properties:
>        - const: apb_pclk
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
>  
>    reset-names:
> +    deprecated: true
> +    minItems: 1
>      items:
>        - const: tsadc-apb
> +      - const: tsadc
> +      - const: tsadc-phy
>  
>    "#thermal-sensor-cells":
>      const: 1
> @@ -71,7 +76,6 @@ required:
>    - clocks
>    - clock-names
>    - resets
> -  - reset-names
>    - "#thermal-sensor-cells"
>  
>  additionalProperties: false
> -- 
> 2.20.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
