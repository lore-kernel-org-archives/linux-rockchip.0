Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2F4FC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 20:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p16s+V/ha6/IOHJvdpza8a40dvaWgySTp3dfs1QNsrQ=; b=LjmFV+stA0tHfL
	ROgw7d8+nz9vf6rzoMblIyoco/qXm/nCvw60/aKk+kzc23C6SEzFqcD+Z55vHBjvCiAycZltdVId0
	kru3jIFJ1/vQPGggL0XvBoOfp61lqUk3MT8pLGq3jbnA2mte3DXEzCepGImGfR2me9u75rMWPoINB
	pGGjV4Pu7R1yQZSNWI2wFGRcxl/5T70Fc3Jd/zkCpDhQw0p+sXLELJceiBW5cDR7lodTlzXiPdMWx
	kqY25X2GAmcuFOVrlXWQ0hc8uA5BtLFP107DfJKOu7Qg9PaaVOTg6XHMxcRHlw3io5lmVdtlLdwda
	s3JLdBO1I7IN/jVV0DfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otEPs-009qIr-Qh; Thu, 10 Nov 2022 20:44:52 +0000
Received: from mail-oa1-f52.google.com ([209.85.160.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otEPp-009qBF-Ga; Thu, 10 Nov 2022 20:44:51 +0000
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-13d9a3bb27aso3427708fac.11;
        Thu, 10 Nov 2022 12:44:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hsW1HDNshVttkwkuGzHmpzw/XnbOwGpgVSFS5MIeojQ=;
        b=R7t1iIvH8o1zYXJdU3OSu5TpBwQiJl1hGhp6AIH6H3wjNYRHc6ejJGHekvisrwbuxE
         S0bO9J43KkY/vivuSZUHSn2GUi2XOJ1+c1sHNTd8bumQenRFBO18RaG+6SO8mqO8H/wx
         shpIK/AbsMfedI6Z3weeiKTxGFHGbWWg2ujgim/Ihl44/WYsnvM11ep/oeOn9m6MjCFM
         uORi/5pnF3z4PVyhIod/lQSiH7E+jxnO3DSiJwHhQ54OtI4VlIijX61PwahtvGXR/zqV
         5N5A1zuyOAR9YeD32mwFSvM6rsZv4aFqUL7QdhGtWg1HPcLkrDvZ5R1IHVyMxWl7M7Pf
         Jbfg==
X-Gm-Message-State: ACrzQf1gFwtlkzdVPwS1i8+7TLNqIJq1PB/oiMffOnLy2FsjYTZUhhp4
	vdWvOtyKXOiJmXmKC6dChg==
X-Google-Smtp-Source: AMsMyM5TGywRwwE/SqXxLN37u/ecN915xrp2f621fb20QUaBuUJvazW4/0mHQr1PJsZ7Y96ZiZrCyQ==
X-Received: by 2002:a05:6870:970b:b0:13a:eee0:b499 with SMTP id n11-20020a056870970b00b0013aeee0b499mr2178583oaq.83.1668113087944;
        Thu, 10 Nov 2022 12:44:47 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f11-20020a05680814cb00b003509cc4ad4esm169517oiw.39.2022.11.10.12.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 12:44:47 -0800 (PST)
Received: (nullmailer pid 954460 invoked by uid 1000);
	Thu, 10 Nov 2022 20:44:49 -0000
Date: Thu, 10 Nov 2022 14:44:49 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv2 1/1] dt-bindings: power: rockchip: Increase pm_qos
 number
Message-ID: <20221110204449.GA948154-robh@kernel.org>
References: <20221107180231.73663-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221107180231.73663-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_124449_574658_AD0B1FAF 
X-CRM114-Status: GOOD (  17.51  )
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

On Mon, Nov 07, 2022 at 07:02:31PM +0100, Sebastian Reichel wrote:
> On RK3588 some power domains require multiple qos blocks to be
> saved. The maximum required number for RK3588 is 8 (for VDPU).
> 
> Acked-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20221021171405.86509-1-sebastian.reichel@collabora.com/
>  * add minItems: 1
>  * add Ack from Heiko
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml   | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index 0d5e999a58f1..dc877416e1fd 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -134,7 +134,8 @@ $defs:
>        pm_qos:
>          $ref: /schemas/types.yaml#/definitions/phandle-array

phandle-array is really a matrix of N entries of phandle+args. This 
should have worked as-is as N is not set here. Maybe somewhere else? Or 
could be a tooling bug. If you do want to define 1-8 entries of phandles 
with no args, that would be:

minItems: 1
maxItems: 8
items:
  maxItems: 1


>          items:
> -          maxItems: 1
> +          minItems: 1
> +          maxItems: 8
>          description: |
>            A number of phandles to qos blocks which need to be saved and restored
>            while power domain switches state.
> -- 
> 2.35.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
