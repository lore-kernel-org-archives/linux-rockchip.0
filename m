Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19099C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 17:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgRxURvlaTx7qg/jgt4KLEWYXM3U9H+dmQx8eisNoWk=; b=q7M7pc22H4pDmt
	U2+IkLUgi7ZLbpb+iRBdnGktqQmBOnAgYFgTAYloDOkNSgIk2xCmJgzamJpq0lg8bEVLcmbtuzoup
	hzl+yL+zwtOCQdrruhGdnJ+uo4xfdSqWSDohF9NZmopQFWQ2bXOY3/u49Q4sXoAhBC7npq+rHabdj
	IF1QMp/NhprTVkOGpSYXp3ekf9Ati3CmUpcxoSx0b4A5vNwKrGNaeBd+Qag2ZXs00lkhP5Y67ABjm
	od55n6P0s9jFZNgJiRCk/vyGMHfX3EII4YMnLLQKXgVpCS2N7DAHshfcjQdSI/WlzBFCuZhBGtPyv
	67DYqJyblThWL6jeg2Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHr9W-0011bs-Og; Wed, 09 Feb 2022 17:53:14 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHr9K-0011YE-LJ; Wed, 09 Feb 2022 17:53:03 +0000
Received: by mail-oi1-f173.google.com with SMTP id s24so3271508oic.6;
 Wed, 09 Feb 2022 09:53:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jjLEFWIWQKYzTsSeUGIWjYdkxGer3/xMi2PwBJGGpJ0=;
 b=e7YbHEGMI/ghhClnkhTkyL2CtSIW/G5WGa4Z7UeqzuCRcqHpTp/GAkFDvcLS8RzCfm
 6lYoN3b6WixaQOu3MXIiNPJsA3AufFfqX3EG8952qxaP9XT4i1uC9A0XWoawU/CEQsBF
 uGahquEp3Wui2DHqNo7QPi5ZFsxH0gYVUyNYFja72RvfgR8qMmE9lFBAIWvBzXdeqaG9
 O2/NqJGuzNbWHZijDwvtUtcXvTzkj7BAmwOKM8pfjZ4N7Ew7+RZYogP+PviGOgx+a8O3
 DCaDRuswVRLXNxZn+pYG5J424oSkalayv2m6omtAYxRa+JEVRiJ3fWu1bDOrQv7pEDAZ
 nqdw==
X-Gm-Message-State: AOAM530swA2cFJY6l1Nhb42w/AEjxnYTplHL0+iyRLRAcYZAbuBliyxj
 oMK33MFr2O7G+eNMLfiwIw==
X-Google-Smtp-Source: ABdhPJyYraVR9hcwF5D1ZdgFnfaKFpusUnkRjrgrPoeG09rhPI5ujkyyR5lkg6pf8bCg0abLwyG8DQ==
X-Received: by 2002:a05:6808:2196:: with SMTP id
 be22mr1460341oib.210.1644429181680; 
 Wed, 09 Feb 2022 09:53:01 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id n13sm7669693ooj.34.2022.02.09.09.53.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 09:53:00 -0800 (PST)
Received: (nullmailer pid 587746 invoked by uid 1000);
 Wed, 09 Feb 2022 17:52:59 -0000
Date: Wed, 9 Feb 2022 11:52:59 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Alex Bee <knaerzche@gmail.com>, Liang Chen <cl@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v5 1/5] dt-bindings: gpu: mali-bifrost: describe clocks
 for the rk356x gpu
Message-ID: <YgP/e29ZPgBW/c05@robh.at.kernel.org>
References: <20220209085110.3588035-1-michael.riesch@wolfvision.net>
 <20220209085110.3588035-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220209085110.3588035-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_095302_726503_3812BD0B 
X-CRM114-Status: GOOD (  18.55  )
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

On Wed, Feb 09, 2022 at 09:51:06AM +0100, Michael Riesch wrote:
> From: Alex Bee <knaerzche@gmail.com>
> 
> The Bifrost GPU in Rockchip RK356x SoCs has a core and a bus clock.
> Reflect this in the SoC specific part of the binding.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> [move the changes to the SoC section]
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 63a08f3f321d..21409c8d3813 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -159,6 +159,21 @@ allOf:
>          power-domains:
>            maxItems: 1
>          sram-supply: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3568-mali
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +        clock-names:
> +          items:
> +           - const: core
> +           - const: bus

Please don't invent new names. We already have 'gpu' and 'bus' defined. 
'core' and 'gpu' sound like the same thing to me, and the h/w doesn't 
have different clocks from vendor to vendor.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
