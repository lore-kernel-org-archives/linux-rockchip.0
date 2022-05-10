Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 183D8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 17:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kkrvoS+XVpHY9+6m5XwXNs0lCaveQFL0WdQkJ/gfZo=; b=qYtNKr5kBdz10n
	Ffw2MTQei93AvlG/ObxyKXEXGqBp9SI2qx8ImstdSrU0iel84aHlXiRLsjuVCMz/kP01x0c0zvMGl
	LtcFlATawcxsoLEA5GRPd2hVj8yF/94ENhCIcpxxIIWK/1ugn5GbeW8xNnjyMUn4Lva94wtfgeJhB
	3nEz1uJgOS5XPY6ph9xDvON/L3FNArrqYDQJFYbC+q1Gp5Qh3kMGJyXxW/rkEhYcLUo285RUYHIQf
	f81Sf67Ai2mX2ApRh04gIWBOKpRdkNx1rpv0zwuXtCnJjUlAdotSFj23VkDrC+kMldALKv8oV5Bxd
	Ns4+cg2dj/DHkMTTXudQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noTSg-003J6Y-8C; Tue, 10 May 2022 17:15:50 +0000
Received: from mail-oa1-f52.google.com ([209.85.160.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noTSP-003J0B-Ma; Tue, 10 May 2022 17:15:36 +0000
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-edf3b6b0f2so18658059fac.9; 
 Tue, 10 May 2022 10:15:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=U4enf849MalZJ94BbtP5EjviZoqMa/mYSymuWO+hQes=;
 b=hzc3rMR6BXgp+W+qWcXHRXY29qGEM0XyZDNdEOD2lHa1oFAR6LvgIakoKOlK2xtlDA
 J8B9mv7n33OAwZzhLpjw+umypXH+qBbm810+BBWfgRVa34WxMha6eCOc1bA6vfRgEYwS
 J1T/ymnxbipM7J7ZAnoQ8SswyfqFETSXGLa0ZDw1tkdJbDDzZlhKS/qw40J5CZYzc3a5
 yImiYcCsGoDET4oR5yBYuZgbSIJHWv4UbYzygZETA1jJcxmRZnHix5xdLaKvNKE8XVMJ
 NbIxbbA4aG85PKA9OxDQx/D4j4BuCNoJ3iiw8hYaoqnaY4uScOC29KH2/PJ2OqgtcDqg
 3+bA==
X-Gm-Message-State: AOAM532bFSPdbP/cg9iZjFepkB74luwhYJEuAGn8djL68alZJQ27sNNb
 eIm4YhnIULacfuiQtrg9BQ==
X-Google-Smtp-Source: ABdhPJwPVMnLqdMiqMekoFO1BpTerz9mA5hoHbPcCejjGrX5ztBsVFiV9PTz4T6oBBl8FMJlcsz0+A==
X-Received: by 2002:a05:6871:889:b0:ed:daa1:d08 with SMTP id
 r9-20020a056871088900b000eddaa10d08mr641546oaq.256.1652202930679; 
 Tue, 10 May 2022 10:15:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 m33-20020a056870562100b000edf80be4ecsm5667586oao.58.2022.05.10.10.15.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 May 2022 10:15:30 -0700 (PDT)
Received: (nullmailer pid 2222946 invoked by uid 1000);
 Tue, 10 May 2022 17:15:29 -0000
Date: Tue, 10 May 2022 12:15:29 -0500
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Message-ID: <YnqdsbYk+XzkVLe9@robh.at.kernel.org>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de>
 <20220510070914.2346011-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220510070914.2346011-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_101533_782191_FB6EAC47 
X-CRM114-Status: GOOD (  17.65  )
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

On Tue, May 10, 2022 at 09:09:12AM +0200, Sascha Hauer wrote:
> The VOP2 driver relies on reg-names properties, but these are not
> documented. Add the missing documentation, make reg-names mandatory
> and increase minItems to 2 as always both register spaces are needed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 655d9b327f7d3..7238cdec9eb8a 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -22,7 +22,7 @@ properties:
>        - rockchip,rk3568-vop
>  
>    reg:
> -    minItems: 1
> +    minItems: 2

You ran the dt checks, right? This should give you a warning. The 
correct thing is drop minItems if there's always 2 entries.

>      items:
>        - description:
>            Must contain one entry corresponding to the base address and length
> @@ -31,6 +31,11 @@ properties:
>            Can optionally contain a second entry corresponding to
>            the CRTC gamma LUT address.
>  
> +  reg-names:
> +    items:
> +      - const: vop
> +      - const: gamma-lut
> +
>    interrupts:
>      maxItems: 1
>      description:
> @@ -86,6 +91,7 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - reg-names
>    - interrupts
>    - clocks
>    - clock-names
> -- 
> 2.30.2
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
