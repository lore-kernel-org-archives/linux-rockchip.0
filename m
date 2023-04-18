Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BD92C6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 20:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3tkU3KayTbs7fU2FA4VM8P2PGy0aNI2xBC/0HM8UqU=; b=fM67jl0uCvD6pz
	K2Fbobe2myyy5LB7jJWKF9gBwGN7glu0Iil7vHbAsWW31dkq2P1GVsUA4i1Hr4wf+jWU3gBaRX5a1
	SZ8C7J6oMH5lJmgfGPHzf7NSbjNW84Pqp7+VK/c5Y5m83joEEqhWn7GGg0X+AksX4lwiVxwH0klDE
	4W/aNA6bnghhdMYkCbG0+zLAs7ANkfaqN4yoIwMTdu3blRX5TfWMubdj/cBa156bVRE0J8eRqP3vr
	zKuEt7LFqN5g3ansFVU3XSDUcxGZIyYOHozvbrnioCg+kXa6eSXC3lhUb0mrovTAspG/zdBtcPojI
	I2L/NWtaJHMaFWSixnqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pos90-003JRo-04;
	Tue, 18 Apr 2023 20:41:42 +0000
Received: from mail-oa1-f52.google.com ([209.85.160.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pos8y-003JQg-00;
	Tue, 18 Apr 2023 20:41:41 +0000
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1878560f69cso713445fac.1;
        Tue, 18 Apr 2023 13:41:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681850498; x=1684442498;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Wn5jPh2OUBYBXHc1I8aQspr9Ndl9LxQc5kkluAkHCg=;
        b=PTwSo++hohM+yretq/kxUjQve2Xo49O73RD39dFLO7znhsMaVo2VVnxds/nL4Fz7E4
         R/gENOVUdCYSW7fMXVQ2WtDuMBBJYSBxX40412rYxBNjbP2zaIgMIIQqZ1vh6V6zAJRz
         fKGI3ycVJ4w4ISvUITvYqYhLcvxWhtWJx/KxtYVRw/C1tyjejqB+RmVjdxFwCGGMYM6Q
         e/qrih+LIeIBvFCS/Oey9xrQlRdcq48lEVDweCvtg9Kblfe/BJxNOsisEFGmXPXKI4p/
         0PB2I8j2N9ia0W2UrsiB69KLVOz315+lWZZO344Fu2HfqKyDwFsDUjqP2uNgU6+ckBdu
         MIJw==
X-Gm-Message-State: AAQBX9fGPAW1jgIMZcOc52gboMjlH7ek1ipB93PUSrBfqYzaWrX1n5n/
	IQ/I7fLYhCqm8Y4isSs96A==
X-Google-Smtp-Source: AKy350a+NmjwKRcIM2O3weLQf7m8QnY1Y6F7Tc8lUnHf4ija54gAsp2mitsmSa1rHReBb0iR+FE2sg==
X-Received: by 2002:a05:6870:970c:b0:187:78db:feba with SMTP id n12-20020a056870970c00b0018778dbfebamr2244694oaq.59.1681850497867;
        Tue, 18 Apr 2023 13:41:37 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s3-20020a05687090c300b001805a3e722csm5983987oab.19.2023.04.18.13.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 13:41:37 -0700 (PDT)
Received: (nullmailer pid 2301746 invoked by uid 1000);
	Tue, 18 Apr 2023 20:41:36 -0000
Date: Tue, 18 Apr 2023 15:41:36 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Damien Le Moal <damien.lemoal@opensource.wdc.com>, Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv1 3/5] dt-bindings: phy: rockchip: rk3588 has two reset
 lines
Message-ID: <20230418204136.GA2299798-robh@kernel.org>
References: <20230413182345.92557-1-sebastian.reichel@collabora.com>
 <20230413182345.92557-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230413182345.92557-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_134140_037628_5ACB7C40 
X-CRM114-Status: GOOD (  16.41  )
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

On Thu, Apr 13, 2023 at 08:23:43PM +0200, Sebastian Reichel wrote:
> The RK3588 has two reset lines for the combphy. One for the
> APB interface and one for the actual PHY.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/phy/phy-rockchip-naneng-combphy.yaml          | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> index 9ae514fa7533..bac1aae07555 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> @@ -31,8 +31,13 @@ properties:
>        - const: pipe
>  
>    resets:
> +    minItems: 1
> +    maxItems: 2
> +
> +  reset-names:
>      items:
> -      - description: exclusive PHY reset line
> +      - const: phy
> +      - const: apb

This will fail on any existing users with single entry. You need to add 
'minItems: 1' here.

It also fails if they didn't use 'phy' as the name, but names should be 
defined.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
