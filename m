Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09253C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 20:09:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A66602054F
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 20:09:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A66602054F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t89UxmrVGjw+YTeSdv3y93mvBkrhugxVhxIyFcP+/ik=; b=myer1lM8Py8uPw7ai5BdYwJoc
	wr+FBKZsLKw59IjJON9dRQoUVHj8+b0bXyAt62JPWxVJfJzSQRIAu2sXIBiReIvUdms6zbYEGTY+k
	cG9hSxBUkeDxY80kHi9ZeoNFs4ht5JzrX5uxd0pN9AVcjN36HbT8RDEVyIduLVLW3DRM5hieRR1gK
	wdDBC7Q+2mt4mHocZ8tZHB3GB1fNl7MJu53FHgNEqvS4cEdNMLEdKGfgzaawEejp5Yt1kfvWkOuyJ
	NVBnDIJh9ObhWflw7hckBBzzME4jxdYzquatg2vbil4RMNTaNnetGrAVj6hDcP+JBvuxv30+iLSwD
	2QeZiFgbw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kz3VD-0005SF-G1; Mon, 11 Jan 2021 20:09:23 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kz3V7-0005Q5-BV; Mon, 11 Jan 2021 20:09:18 +0000
Received: by mail-oi1-f180.google.com with SMTP id l207so661608oib.4;
 Mon, 11 Jan 2021 12:09:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YB2EuAlCGeeKCDwXJx/9Do1McjsKnxFERCsd18d3sxw=;
 b=J4Wc0W7PuTVoZztx53PEe94LmSC37TyLRGpbBKjdcvWGdP1vGfaxugMW2plYiDea1h
 N1MWBi7POtqVt7n5EZEFUrDzqqVRWozYGtNp8TsfXOJwmSG6t1BvCxU8/UlwIm7Z7hip
 dxJFnvBQkId6//cKPxGIy1i84nMf7szEmTe6sSNd+okNGieU2VFh5pAwckrr/LlXIPlu
 YZXn8yqksGsBpgqxvr2oFXhxxnHu88IVomavAc6wgT8Ob0svzd91/txBTyEcJ/AN7RzM
 5THrZkOvjvYHKeN77umAguyDD9EISJP+PbEKcsmrOvpDS7FPWyxijS+FDwCIocBDw4VV
 0w/Q==
X-Gm-Message-State: AOAM532VN6eQ3H03da7QTZFNTEfCgbmmU6mWVatyfmKbfFpbpB33Ah/j
 CiF1RUXtH5CwmGqgJzztxQ==
X-Google-Smtp-Source: ABdhPJz295DLRmcguShbSYD9qeBuKqjpL4V8Mc3uyuYE1NNpoVax/tXctManSppCh4OgSpH/b0ItSA==
X-Received: by 2002:aca:ded4:: with SMTP id v203mr328666oig.148.1610395756451; 
 Mon, 11 Jan 2021 12:09:16 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e10sm165789otl.38.2021.01.11.12.09.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Jan 2021 12:09:15 -0800 (PST)
Received: (nullmailer pid 2986514 invoked by uid 1000);
 Mon, 11 Jan 2021 20:09:14 -0000
Date: Mon, 11 Jan 2021 14:09:14 -0600
From: Rob Herring <robh@kernel.org>
To: Marty Jones <mj8263788@gmail.com>
Subject: Re: [PATCH] dt-bindings: Add doc for FriendlyARM NanoPi NEO3
Message-ID: <20210111200914.GA2985472@robh.at.kernel.org>
References: <20201228141150.2ccc4f30@marty-x570>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201228141150.2ccc4f30@marty-x570>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_150918_104390_40BB709C 
X-CRM114-Status: GOOD (  15.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Dec 28, 2020 at 02:11:50PM -0500, Marty Jones wrote:
> From 4979bc740c982a15f36002fbb97979cba5d99739 Mon Sep 17 00:00:00 2001
> From: Marty Jones <mj8263788@gmail.com>
> Date: Mon, 28 Dec 2020 13:16:53 -0500
> Subject: [PATCH] dt-bindings: Add doc for FriendlyARM NanoPi NEO3

Your patch is corrupted.

> 
> Add devicetree binding documentation for the FriendlyARM NanoPi NEO3
> 
> Signed-off-by: Marty Jones <mj8263788@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index ef4544ad6f82..a0aaae08c97b 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -122,6 +122,11 @@ properties:
>                - firefly,roc-rk3399-pc-mezzanine
>            - const: rockchip,rk3399
>  
> +      - description: FriendlyElec NanoPi NEO3
> +        items:
> +          - const: friendlyarm,nanopi-neo3
> +          - const: rockchip,rk3328
> +
>        - description: FriendlyElec NanoPi R2S
>          items:
>            - const: friendlyarm,nanopi-r2s
> -- 
> 2.27.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
