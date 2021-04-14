Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E48FC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 22:27:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 687CB6109E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 22:27:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 687CB6109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vv/mGxjKcV5r4sOlf+InJFUK3tjfH1JdOE7TQ32zfDA=; b=BYxK9flN2udUUTKOv3x3YjGoE
	2/uREcSvceezAwAHqV2OyRL41/Kvkg6PygsNFi7BLkYHE9ca+vTxWuKpGuUrMiNr6FQJBXtG4quck
	GrMctJml94gsko45cZGekdE0ihgzz0ens/YKWi1RQQuFn/vOI/nHdzbDwJLOSe1jw9fDTwWfAF4Ep
	2m5qCm757qDk/gJXhTzButPEbfPDvV2aN0NsE+EuxOj0SKG96PRzLw9VXSOq6Q5M8AiS4T80yIjPu
	WOEs60OgwTqiUoOmdliCaviGyD3zFdD50gcFJnK8NGWiUHoSBeSjKR6pRlAY6TZmNDV1C+YhDvJ1f
	uy8+lptjA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWnzG-00E1Oe-6p; Wed, 14 Apr 2021 22:27:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWnyt-00E1M9-8R; Wed, 14 Apr 2021 22:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7/mZVuxWIj9ePD9R/K7kQef8eHwxrkSaceQ3fupFuvk=; b=K0Mj++DCtHBxuLQ5G3R4NqHRWH
 +krfBNmVQxN3KkdiyA+0rtS5vy39wYD4zzv8eBKX9quRW6nS/SNZMoL+7DkkLX0r1QVIqQSPkRSNj
 upGT47k5VkBJWqrXp5FIt8GIpENuBZch/XU8/bk2Kb3jqmB+JPpIj+4zH4wIqq/nvVm4JWL8Q2pDK
 a2SixvZIR0vCflb6rXiUjsTXoZJ+Woz5OaySGaRgxVhmdRHW5NatVtBFFxFKqZ5PXOdhU1JjWMd5s
 50Wcgp7CAzANZHYg+naGIyKBEwRA0GsTikau40OHEnifUfiW9Kzhs5+bY0wkiEI5tk7m4O+Zy0V1j
 tYOT+6LQ==;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWnyq-0088tj-2L; Wed, 14 Apr 2021 22:27:30 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 c8-20020a9d78480000b0290289e9d1b7bcso6745939otm.4; 
 Wed, 14 Apr 2021 15:27:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7/mZVuxWIj9ePD9R/K7kQef8eHwxrkSaceQ3fupFuvk=;
 b=PQY8lTe/IETcd61lfTVcmGw0vhEklqWP7zPfZuOw8EibhyDGwuwZg5usOlJhwbCTyk
 jYsgeYbUEMw8dlNRWCMkzuS9+TAqBp8A0tSoQ8NNQLSYVxQs9iSwLZNmeGMw+GxGYifI
 Sv9ICTqIeQiIIPAPeywgsXaVPsqCyCFw4bYcM9FLNzt9jyGFALdRHUIi7EIw/jTBCOPa
 GgcRkl4cEWW96KzTCgMkKzquW35CPlJ/23mOgFj+VYkasNy6TXH+wuhzJOVHtEzp4q2x
 79/uElLMT5Z24XUrqnnF4SyryZRtsIV5/tsaF7JhKl5WUMKCQuYY4IcWEawlm3a8EiDS
 s/Kw==
X-Gm-Message-State: AOAM533HeddgqeklRMinWYuHuAmeaALYh247jujrqfCRwicZ3+lx7J5X
 15GLpnBxN+rv5Q5u28gmiA==
X-Google-Smtp-Source: ABdhPJyU2Hmhq7kSyJ4reRFyaVbA+gXt1d5coMbzwrp/FVGIYOKVq27ySwTsJPNu0QMRFgFweHeLqg==
X-Received: by 2002:a9d:e86:: with SMTP id 6mr261986otj.14.1618439245721;
 Wed, 14 Apr 2021 15:27:25 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x21sm182993oog.38.2021.04.14.15.27.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 15:27:25 -0700 (PDT)
Received: (nullmailer pid 79550 invoked by uid 1000);
 Wed, 14 Apr 2021 22:27:23 -0000
Date: Wed, 14 Apr 2021 17:27:23 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 09/11] dt-bindings: power: rockchip: Convert to
 json-schema
Message-ID: <20210414222723.GA70669@robh.at.kernel.org>
References: <20210414211856.12104-1-jbx6244@gmail.com>
 <20210414211856.12104-10-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210414211856.12104-10-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_152728_149577_84D4CBF5 
X-CRM114-Status: GOOD (  30.46  )
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

On Wed, Apr 14, 2021 at 11:18:54PM +0200, Johan Jonker wrote:
> From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> 
> Convert the soc/rockchip/power_domain.txt binding document to
> json-schema and move to the power bindings directory.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Note for rob+dt:
> A tag was not added on purpose, because:
>   Add "rockchip," prefix to the qos compatible name
>   in example.
>   Changed maintainers.
>   Size reg description is reduced.
>   Little style changes '' to ""
> Please have a look at it again.
> 
> For some SoC nodes this patch serie generates notifications
> for undocumented "assigned-clocks" and "assigned-clock-parents"
> properties till there is consensus of what to do with it.

If the node has 'clocks', then you shouldn't get a warning now.

> ---
> Changed V7:
>   Fix commit message and author format
>   Changed SPDX-License-Identifier back to GPL-2.0
>   Remove "clocks", "assigned-clocks" and "assigned-clock-parents"
>   Fix indent example
> Changed V6:
>   Changed author
> Changed V5:
>   Change SPDX-License-Identifier to  GPL-2.0-only OR BSD-2-Clause
>   Remove a maintainer
>   Changed patternProperties to power-domain
>   Add "clocks", "assigned-clocks" and "assigned-clock-parents"
> Changed V4:
>   Remove new compatible string
>   Style changes '' to ""
> Changed V3:
>   Use Enric's conversion with rk3399 example
> Changed V2:
>   Convert power_domain.txt to YAML with rk3568 example
> ---
>  .../bindings/power/rockchip,power-controller.yaml  | 283 +++++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt         | 136 ----------
>  2 files changed, 283 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> new file mode 100644
> index 000000000..934308006
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -0,0 +1,283 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/rockchip,power-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Power Domains
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  Rockchip processors include support for multiple power domains which can be
> +  powered up/down by software based on different application scenarios to save power.
> +
> +  Power domains contained within power-controller node are generic power domain
> +  providers documented in Documentation/devicetree/bindings/power/power-domain.yaml.
> +
> +  IP cores belonging to a power domain should contain a "power-domains"
> +  property that is a phandle for the power domain node representing the domain.
> +
> +properties:
> +  $nodename:
> +    const: power-controller
> +
> +  compatible:
> +    enum:
> +      - rockchip,px30-power-controller
> +      - rockchip,rk3036-power-controller
> +      - rockchip,rk3066-power-controller
> +      - rockchip,rk3128-power-controller
> +      - rockchip,rk3188-power-controller
> +      - rockchip,rk3228-power-controller
> +      - rockchip,rk3288-power-controller
> +      - rockchip,rk3328-power-controller
> +      - rockchip,rk3366-power-controller
> +      - rockchip,rk3368-power-controller
> +      - rockchip,rk3399-power-controller
> +
> +  "#power-domain-cells":
> +    const: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^power-domain@[0-9a-f]+$":
> +    type: object
> +    description: |
> +      Represents the power domains within the power controller node as documented
> +      in Documentation/devicetree/bindings/power/power-domain.yaml.
> +
> +    properties:
> +
> +      "#power-domain-cells":
> +        description:
> +          Must be 0 for nodes representing a single PM domain and 1 for nodes
> +          providing multiple PM domains.
> +
> +      "#address-cells":
> +        const: 1
> +
> +      "#size-cells":
> +        const: 0
> +
> +      reg:
> +        maxItems: 1
> +        description: |
> +          Power domain index. Valid values are defined in
> +          "include/dt-bindings/power/px30-power.h"
> +          "include/dt-bindings/power/rk3036-power.h"
> +          "include/dt-bindings/power/rk3066-power.h"
> +          "include/dt-bindings/power/rk3128-power.h"
> +          "include/dt-bindings/power/rk3188-power.h"
> +          "include/dt-bindings/power/rk3228-power.h"
> +          "include/dt-bindings/power/rk3288-power.h"
> +          "include/dt-bindings/power/rk3328-power.h"
> +          "include/dt-bindings/power/rk3366-power.h"
> +          "include/dt-bindings/power/rk3368-power.h"
> +          "include/dt-bindings/power/rk3399-power.h"
> +
> +      clocks:
> +        description: |
> +          A number of phandles to clocks that need to be enabled while power domain
> +          switches state.

I probably asked before, but can we have some max here?

> +
> +      pm_qos:

Needs a type ref.

> +        description: |
> +          A number of phandles to qos blocks which need to be saved and restored
> +          while power domain switches state.
> +
> +    patternProperties:
> +      "^power-domain@[0-9a-f]+$":
> +        type: object
> +        description: |
> +          Represents a power domain child within a power domain parent node.
> +
> +        properties:
> +
> +          "#power-domain-cells":
> +            description:
> +              Must be 0 for nodes representing a single PM domain and 1 for nodes
> +              providing multiple PM domains.
> +
> +          "#address-cells":
> +            const: 1
> +
> +          "#size-cells":
> +            const: 0
> +
> +          reg:
> +            maxItems: 1
> +
> +          clocks:
> +            description: |
> +              A number of phandles to clocks that need to be enabled while power domain
> +              switches state.
> +
> +          pm_qos:
> +            description: |
> +              A number of phandles to qos blocks which need to be saved and restored
> +              while power domain switches state.
> +
> +        patternProperties:
> +          "^power-domain@[0-9a-f]+$":

Create a '$defs' section an avoid the duplication.

> +            type: object
> +            description: |
> +              Represents a power domain child within a power domain parent node.
> +
> +            properties:
> +
> +              "#power-domain-cells":
> +                description:
> +                  Must be 0 for nodes representing a single PM domain and 1 for nodes
> +                  providing multiple PM domains.
> +
> +              "#address-cells":
> +                const: 1
> +
> +              "#size-cells":
> +                const: 0
> +
> +              reg:
> +                maxItems: 1
> +
> +              clocks:
> +                description: |
> +                  A number of phandles to clocks that need to be enabled while power domain
> +                  switches state.
> +
> +              pm_qos:
> +                description: |
> +                  A number of phandles to qos blocks which need to be saved and restored
> +                  while power domain switches state.
> +
> +            required:
> +              - reg
> +
> +            additionalProperties: false
> +
> +        required:
> +          - reg
> +
> +        additionalProperties: false
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - "#power-domain-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/power/rk3399-power.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        qos_hdcp: qos@ffa90000 {
> +            compatible = "rockchip,rk3399-qos", "syscon";
> +            reg = <0x0 0xffa90000 0x0 0x20>;
> +        };
> +
> +        qos_iep: qos@ffa98000 {
> +            compatible = "rockchip,rk3399-qos", "syscon";
> +            reg = <0x0 0xffa98000 0x0 0x20>;
> +        };
> +
> +        qos_rga_r: qos@ffab0000 {
> +            compatible = "rockchip,rk3399-qos", "syscon";
> +            reg = <0x0 0xffab0000 0x0 0x20>;
> +        };
> +
> +        qos_rga_w: qos@ffab0080 {
> +            compatible = "rockchip,rk3399-qos", "syscon";
> +            reg = <0x0 0xffab0080 0x0 0x20>;
> +        };
> +
> +        qos_video_m0: qos@ffab8000 {
> +            compatible = "rockchip,rk3399-qos", "syscon";
> +            reg = <0x0 0xffab8000 0x0 0x20>;
> +        };
> +
> +        qos_video_m1_r: qos@ffac0000 {
> +            compatible = "rockchip,rk3399-qos", "syscon";
> +            reg = <0x0 0xffac0000 0x0 0x20>;
> +        };
> +
> +        qos_video_m1_w: qos@ffac0080 {
> +            compatible = "rockchip,rk3399-qos", "syscon";
> +            reg = <0x0 0xffac0080 0x0 0x20>;
> +        };
> +
> +        power-management@ff310000 {
> +            compatible = "rockchip,rk3399-pmu", "syscon", "simple-mfd";
> +            reg = <0x0 0xff310000 0x0 0x1000>;
> +
> +            power-controller {
> +                compatible = "rockchip,rk3399-power-controller";
> +                #power-domain-cells = <1>;
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                /* These power domains are grouped by VD_CENTER */
> +                power-domain@RK3399_PD_IEP {
> +                    reg = <RK3399_PD_IEP>;
> +                    clocks = <&cru ACLK_IEP>,
> +                             <&cru HCLK_IEP>;
> +                    pm_qos = <&qos_iep>;
> +                    #power-domain-cells = <0>;
> +                };
> +                power-domain@RK3399_PD_RGA {
> +                    reg = <RK3399_PD_RGA>;
> +                    clocks = <&cru ACLK_RGA>,
> +                             <&cru HCLK_RGA>;
> +                    pm_qos = <&qos_rga_r>,
> +                             <&qos_rga_w>;
> +                    #power-domain-cells = <0>;
> +                };
> +                power-domain@RK3399_PD_VCODEC {
> +                    reg = <RK3399_PD_VCODEC>;
> +                    clocks = <&cru ACLK_VCODEC>,
> +                             <&cru HCLK_VCODEC>;
> +                    pm_qos = <&qos_video_m0>;
> +                    #power-domain-cells = <0>;
> +                };
> +                power-domain@RK3399_PD_VDU {
> +                    reg = <RK3399_PD_VDU>;
> +                    clocks = <&cru ACLK_VDU>,
> +                             <&cru HCLK_VDU>;
> +                    pm_qos = <&qos_video_m1_r>,
> +                             <&qos_video_m1_w>;
> +                    #power-domain-cells = <0>;
> +                };
> +                power-domain@RK3399_PD_VIO {
> +                    reg = <RK3399_PD_VIO>;
> +                    #power-domain-cells = <1>;
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +
> +                    power-domain@RK3399_PD_HDCP {
> +                        reg = <RK3399_PD_HDCP>;
> +                        clocks = <&cru ACLK_HDCP>,
> +                                 <&cru HCLK_HDCP>,
> +                                 <&cru PCLK_HDCP>;
> +                        pm_qos = <&qos_hdcp>;
> +                        #power-domain-cells = <0>;
> +                    };
> +                };
> +            };
> +        };
> +    };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
