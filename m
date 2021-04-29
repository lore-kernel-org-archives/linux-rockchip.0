Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3A21C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 16:25:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 39BCB61407
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 16:25:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 39BCB61407
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ErI7w1V6268sdOgql4f6KyxADGIKHrS2jVnsL9eUm+M=; b=L7BTUt2p1m4z+jOHzvJ4j0bRZ
	v+3wiH1VwrAjIuzhBbpS/jbb0UxukL8hNFpLlLjAlrq9PcgEh+vRUyjJ/7u5eCUHM4sMkgZ8AH456
	FFZzOPxJR3a101immNfXvQAxFxXuakGp3uEuh77pZJ2Qu25bsXq6aIy9cThjyhmEdyafjUd2zovVm
	FeHmYkVBuOCARYwdQB8eW9SIQln9AmABbll8YWeG+PC1Ep/2DEKtg0/5vQCOp+SmWO9wdjLawt7hg
	6JoENQrDQQY3xlU4o6RiIOtMzS2H7CZIgZHjA3HG5KFqpz2NmwAq05I061qLJcWg0wufLddjyAliH
	wZdPP86tw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc9U5-0062sQ-VU; Thu, 29 Apr 2021 16:25:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc9U4-0062s3-35
 for linux-rockchip@desiato.infradead.org; Thu, 29 Apr 2021 16:25:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=UXnoFKwuMiPzvvK01lRtolly0aZXNow6zBk2bpS1MGg=; b=un2nqqE5StF3C1eJg9Ev2biNTk
 FBxneAjOVSrQjMd6FoFmz7Er2Vo3vbWrS5XIOddZFysMx/dJkcnc/PB+LR25On8x30IJtL4aKcKQt
 p/GonHvuS53HGqPCvBAWh02sV2epBGGv0qB6Trl4X4u4exo1v4nPei8LzYVr6QUByGcqdKdz71TzC
 9mamBUNfmUWak1K8cUh08HKhBleUJFmMwX13OYmBAmkKnNU9I4g8KqZAVcUgln0qjnyip8WhnwuMM
 cjRgU+/9mvcetozyjU8U/msCoBLoKV08R/9Ly2hdDTJv1p5MclSRoO6erdjDSWfqLOPd/GSqzm3Tr
 Z8VBFhWA==;
Received: from mail-oo1-f43.google.com ([209.85.161.43])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc9U1-000lJu-2Y
 for linux-rockchip@lists.infradead.org; Thu, 29 Apr 2021 16:25:46 +0000
Received: by mail-oo1-f43.google.com with SMTP id
 s1-20020a4ac1010000b02901cfd9170ce2so14792396oop.12
 for <linux-rockchip@lists.infradead.org>; Thu, 29 Apr 2021 09:25:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UXnoFKwuMiPzvvK01lRtolly0aZXNow6zBk2bpS1MGg=;
 b=UtGIgepRQJCAw40IH4b2QLiY4DvAApN9E2NzcPnPCPyRKH89QQ8eQujTEtDGnjp0ch
 0YKbD75R3j7rWqbFSJnN69MjLx2O2SsmncWRJyu4LaMweqt/1NqEE1Q7HfvU3SHE0IJT
 MmH+yGvOPaJ+3SKjD+14eFQaXuGNtN5u1LYcU8peGH+uJYCOCCOMS8N18qn2mMw/tiae
 vGlB5YGurKc6Fwp5AHIt1yppr5e3jByF20aUxuJ7urJwxzPMzUjG9Z8YRDTg6SwpbEGT
 K0s6OnbbPuU5vrZgwUNrPluoX2PEWZU2a5KKV/sM19K0dhl5MAIcRnxI2d4LMS5aGbLo
 Yu9A==
X-Gm-Message-State: AOAM531c5WKdWti3rAlucWolbZRGa2h/LH7+8BGZUdjXHjfejnnPKMxM
 ZdllG8WgcV7CTZ/YXK2t2Q==
X-Google-Smtp-Source: ABdhPJy/SwOW3kA4MZSXV5430F6E+2Y4h2VL5FNijyTPzx1U3UMp925R3nTW0bafrR0xvJOjTuv9wQ==
X-Received: by 2002:a4a:8d81:: with SMTP id i1mr625383ook.55.1619713543630;
 Thu, 29 Apr 2021 09:25:43 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l11sm48226ooq.44.2021.04.29.09.25.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 09:25:43 -0700 (PDT)
Received: (nullmailer pid 1375643 invoked by uid 1000);
 Thu, 29 Apr 2021 16:25:42 -0000
Date: Thu, 29 Apr 2021 11:25:42 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, kernel@collabora.com
Subject: Re: [PATCH 2/2] dt-bindings: timer: convert rockchip, rk-timer.txt to
 YAML
Message-ID: <20210429162542.GA1372880@robh.at.kernel.org>
References: <20210424191946.69978-1-ezequiel@collabora.com>
 <20210424191946.69978-2-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210424191946.69978-2-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_092545_140713_6D6F0397 
X-CRM114-Status: GOOD (  19.17  )
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

On Sat, Apr 24, 2021 at 04:19:46PM -0300, Ezequiel Garcia wrote:
> Convert Rockchip Timer dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
>  .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> deleted file mode 100644
> index d65fdce7c7f0..000000000000
> --- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -Rockchip rk timer
> -
> -Required properties:
> -- compatible: should be:
> -  "rockchip,rv1108-timer", "rockchip,rk3288-timer": for Rockchip RV1108
> -  "rockchip,rk3036-timer", "rockchip,rk3288-timer": for Rockchip RK3036
> -  "rockchip,rk3066-timer", "rockchip,rk3288-timer": for Rockchip RK3066
> -  "rockchip,rk3188-timer", "rockchip,rk3288-timer": for Rockchip RK3188
> -  "rockchip,rk3228-timer", "rockchip,rk3288-timer": for Rockchip RK3228
> -  "rockchip,rk3229-timer", "rockchip,rk3288-timer": for Rockchip RK3229
> -  "rockchip,rk3288-timer": for Rockchip RK3288
> -  "rockchip,rk3368-timer", "rockchip,rk3288-timer": for Rockchip RK3368
> -  "rockchip,rk3399-timer": for Rockchip RK3399
> -- reg: base address of the timer register starting with TIMERS CONTROL register
> -- interrupts: should contain the interrupts for Timer0
> -- clocks : must contain an entry for each entry in clock-names
> -- clock-names : must include the following entries:
> -  "timer", "pclk"
> -
> -Example:
> -	timer: timer@ff810000 {
> -		compatible = "rockchip,rk3288-timer";
> -		reg = <0xff810000 0x20>;
> -		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&xin24m>, <&cru PCLK_TIMER>;
> -		clock-names = "timer", "pclk";
> -	};
> diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> new file mode 100644
> index 000000000000..f1bc3ac7abc8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Timer Device Tree Bindings
> +
> +maintainers:
> +  - Daniel Lezcano <daniel.lezcano@linaro.org>

This should be someone that knows the h/w and cares about Rockchip.

> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,rk3288-timer
> +      - const: rockchip,rk3399-timer
> +      - items:
> +          - enum:
> +            - rockchip,rv1108-timer
> +            - rockchip,rk3036-timer
> +            - rockchip,rk3066-timer
> +            - rockchip,rk3188-timer
> +            - rockchip,rk3228-timer
> +            - rockchip,rk3229-timer
> +            - rockchip,rk3288-timer
> +            - rockchip,rk3368-timer
> +            - rockchip,px30-timer
> +          - const: rockchip,rk3288-timer
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      enum:
> +        - timer
> +        - pclk

We can't define the order here? We should fix dts files if they are 
inconsistent.

> +    minItems: 2
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +
> +    timer: timer@ff810000 {
> +        compatible = "rockchip,rk3288-timer";
> +        reg = <0xff810000 0x20>;
> +        interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&xin24m>, <&cru PCLK_TIMER>;
> +        clock-names = "timer", "pclk";
> +    };
> -- 
> 2.30.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
