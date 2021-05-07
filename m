Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B5C6C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:44:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C447A60C41
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:44:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C447A60C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GLobnSNNaM+dldvwRVYLRjkKX2ECr2ahI0LIeSteDs0=; b=YtZ6/qQK+gHrGzNdtgCW0q+Rr
	UVjPJ69rFTcsLLjesdEyxGR0e7RTRG9n1xeKpEaeFbD2P+mxN1XCAEJMieXld9atHdgkluY7/YVQl
	N3mGFII/16Az/vS48J8/J0jXn5Qco8+0DuP4VnhCpVJIPr4EMVOOODObt0qvWwX9Ma50d6cXVbg9D
	A0VY0oWn2Sb90evJnN5uqBSq9/ssEOxfCenlb7Mt6JCon3n39mbq8fxfRCOBdFn14rIyzUG5Wy/5O
	U80Z7euiLCwT5LwsvpmT5Uu5Qpx/jSft4W6/0bwNbgXqfR0xBrOxtiYuO5md/Kd///mGVXE0l+wwK
	uZwNGyCIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf8H0-0086xK-OK; Fri, 07 May 2021 21:44:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf8Gy-0086x8-Cn
 for linux-rockchip@desiato.infradead.org; Fri, 07 May 2021 21:44:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hiITqmR3MkOf1yfwBYllv9mUhx0O2m9hc1IxfJCX5I0=; b=sDd82sLyJQmMwtUl1XCbujK/ZA
 3kNiXTXiaR2rRmQlwrmloHW6W70g3ML9LG3FWjLkX96WqmkagWDpPTL7fs0SGPVSDvcm1+6sDlbYI
 zTiHj6sEGGp96jAvyGWTRH5tz+QGSNx/KlLmfHJuGRlw4OWE+jaH1kdTX4jmj4y7k9uWg/XzFiLN5
 YGS1qq/yEpQ1PeOD4x3S0mHqtO5UjYwjAxqWRMvwfFBJ9NIUaJkYPw5pO1bkwr9TcZSGXacgv3Igg
 RlB7woT6Xbpp6rSD5zjnqb3V+XvIISViTAs0hmRicWA1KWtJOF7sifrXQvdH1urDZtNEk86HkOb1p
 OS3SiFEQ==;
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf8Gw-007Cgl-0D
 for linux-rockchip@lists.infradead.org; Fri, 07 May 2021 21:44:35 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 b5-20020a9d5d050000b02902a5883b0f4bso9168538oti.2
 for <linux-rockchip@lists.infradead.org>; Fri, 07 May 2021 14:44:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hiITqmR3MkOf1yfwBYllv9mUhx0O2m9hc1IxfJCX5I0=;
 b=Yf9hr50Ez8Dwe0aGwgqN0HMlEhNyQRurEyVfzhN8hhj0LN83Q8VxOOyP0Z342mIyFG
 HBcSOjpSIqqN8PsS80lKxgufVCe8iuDZzt4cAFx5vg7U3WYkbhKCGGCKEPZ/L97WV4OY
 Pv8mE1g17XVGXTkwlNGMFZgwQSerwZM1VB9GtUfEd0NYvpZoD2T3aBUnWhWKo3pOImg4
 xPm082riqugXriAjPcuMKLfsRst351s+ZJgucMEgezEBaFUKJyVGgasjOOaGkJL1ZR7+
 ZVB6kFBzHsTubv31gMlDcqbGQKEJ4uwzfOiunRv+1fFIC0RGrqPgzhO2OZ2Qg9H/CCXm
 Rv/w==
X-Gm-Message-State: AOAM532Jwg92rvsdTYvrT404YDCBmllii2W7BTyBjUU6DcQDgBd7/M3W
 fboKX/ScMSs65w/P6rBTNw==
X-Google-Smtp-Source: ABdhPJwocDZDc+NSwRU7v73INFImOWfRP0IFFfEgqXzZHnfl39v6PHwY49UNRM65+yeqFYJV/U6gBA==
X-Received: by 2002:a05:6830:2117:: with SMTP id
 i23mr9655209otc.331.1620423873421; 
 Fri, 07 May 2021 14:44:33 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i18sm1320233oot.48.2021.05.07.14.44.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 14:44:32 -0700 (PDT)
Received: (nullmailer pid 2944565 invoked by uid 1000);
 Fri, 07 May 2021 21:44:31 -0000
Date: Fri, 7 May 2021 16:44:31 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 Zhang Rui <rui.zhang@intel.com>, kernel@collabora.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 2/4] dt-bindings: thermal: convert rockchip-thermal to
 json-schema
Message-ID: <20210507214431.GA2944513@robh.at.kernel.org>
References: <20210506175514.168365-1-ezequiel@collabora.com>
 <20210506175514.168365-3-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506175514.168365-3-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_144434_068193_A84AA3B6 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
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

On Thu, 06 May 2021 14:55:12 -0300, Ezequiel Garcia wrote:
> Convert Rockchip Thermal sensor dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/thermal/rockchip-thermal.txt     | 85 -----------------
>  .../bindings/thermal/rockchip-thermal.yaml    | 95 +++++++++++++++++++
>  2 files changed, 95 insertions(+), 85 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/rockchip-thermal.txt
>  create mode 100644 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
