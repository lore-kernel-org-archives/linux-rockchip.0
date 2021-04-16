Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17958C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 19:06:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 707B8613B0
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 19:06:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 707B8613B0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=01JhtwOHZvJ30XV6vfzGHzywvd9ZNIw9PqAaOh0bGNc=; b=TNSrhTJYsa5AdMV4lsIz+Bfcj
	tyIq9lw5t8XlAraHAAVQYXnO18gibW7Rc0tOBnAOlc3USaJTpUsCijnnuS+YzYz2VEoCwIGk1d7Du
	s3pIuNQuScVcUDfkt8xFdvZa6GLEjbeh4CI1/vvO+1FdwC/1NT/5WfSyVvSpKbx4G+dEIuPFSETyF
	wMo8kk4boz1/H7NdPZDjz41EatCHy1s2JRqWs7eVzgdpAgtiKrwVg2ak7DNup0LUHuT25Ri5fate4
	2Qd7SFmig45SxFltXogTFfB2nzBm+d8CY75LOS2aKKJILPidqzHymhbOna1NKunfY243JhBQaOJqb
	CeAom1/Og==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXTn4-003AY0-IR; Fri, 16 Apr 2021 19:06:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXTms-003AXM-KM; Fri, 16 Apr 2021 19:05:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NUrzL79B0A/EanBTqoVHqtTWMOAGqMbXYSjniUhAP8w=; b=cimsWrSRM9KF3+EJAeCQ2WY/C+
 cJq2IdppnId8P/SWZgODU8LWG5lT6gL85+K925y7+n+VBXzIpzYJEJ30UL+hJT7WttTFUj4ww+s5A
 HIYqyGWNnExoVdr2IMuPD2RBdnjqMy8yNp+yO1NyyL0j1vckldrKnemqihyScAMu/21J6P+a+czTA
 6EWUqeQq/RkpucOvKhZ29IrSG4oEOZBAiY7dTRhui4LrhW0hc1jSePiO2ECrKnR+zpH3FbqiOJuAL
 e0GlPlpcmFBqoGGTXILkklB1H5xl4qvV+oMgpSOAmuBni+Essmn3tuwEj3GpoUWC279CLkvCv1JHd
 lwfo8byw==;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXTmn-009e68-KD; Fri, 16 Apr 2021 19:05:53 +0000
Received: by mail-oi1-f171.google.com with SMTP id i81so28878888oif.6;
 Fri, 16 Apr 2021 12:05:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NUrzL79B0A/EanBTqoVHqtTWMOAGqMbXYSjniUhAP8w=;
 b=CV/RL8jFhrSuef/SkemthwuL9iVixnjtfKNyxYmA3kh3iz/kMis4q3ancliGM70JWj
 aBM4X8NogiEK528/+yrbVUZhYwU3s5FLQED3mBUZMZRD0AEEpXQ5GGdMWXQcaJHD/99e
 izAFItC2MJGfroxORVvlsPp9WUi7xlZHbBwmZl6jd5N8RkpgAwUfnkzKNUzzuFL4zxle
 Zf4fbKLr5KQlGdrQjFzEKyklD06Bm3nJsxxcrQMqWJ07gVWuLkrCHUKzOtS5biezWoGU
 DtV34IiEtSqsRWpWUfTaFvre+CiqdXGyHvh9cj9Naq1/YO2SICbL8TsKAeGbC+7gKDfI
 188A==
X-Gm-Message-State: AOAM530dvX0DDaoYd5lmkAXOi6LajLtjemYFP965BD+Mb1LymVYFWOQA
 BNRQSsaIKzoUSyhMdWdxzQ==
X-Google-Smtp-Source: ABdhPJyYy6dvtN9IHkna8RxcKD+wGfD+qlTT63XKPKzhLIkzEiuzzVTHCYpiW2SAP/vjjP8w7kiakg==
X-Received: by 2002:aca:c78b:: with SMTP id x133mr7712818oif.24.1618599946882; 
 Fri, 16 Apr 2021 12:05:46 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y67sm1555380otb.1.2021.04.16.12.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Apr 2021 12:05:46 -0700 (PDT)
Received: (nullmailer pid 3767749 invoked by uid 1000);
 Fri, 16 Apr 2021 19:05:44 -0000
Date: Fri, 16 Apr 2021 14:05:44 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 13/15] dt-bindings: power: rockchip: Convert to
 json-schema
Message-ID: <20210416190544.GA3752460@robh.at.kernel.org>
References: <20210416080342.18614-1-jbx6244@gmail.com>
 <20210416080342.18614-14-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210416080342.18614-14-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_120549_701894_023FBEC8 
X-CRM114-Status: GOOD (  31.66  )
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

On Fri, Apr 16, 2021 at 10:03:40AM +0200, Johan Jonker wrote:
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
> ---
> Changed V8:
>   Add pd-node ref schema
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
>  .../bindings/power/rockchip,power-controller.yaml  | 257 +++++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt         | 136 -----------
>  2 files changed, 257 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> new file mode 100644
> index 000000000..2b9950fd6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -0,0 +1,257 @@
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
> +  Rockchip processors include support for multiple power domains
> +  which can be powered up/down by software based on different
> +  application scenarios to save power.
> +
> +  Power domains contained within power-controller node are
> +  generic power domain providers documented in
> +  Documentation/devicetree/bindings/power/power-domain.yaml.
> +
> +  IP cores belonging to a power domain should contain a
> +  "power-domains" property that is a phandle for the
> +  power domain node representing the domain.
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
> +    properties:
> +
> +      "#power-domain-cells":
> +        enum: [0, 1]
> +        description:
> +          Must be 0 for nodes representing a single PM domain and 1 for nodes
> +          providing multiple PM domains.

Can't this and 'required' go into pd-node?

> +
> +      "#address-cells":
> +        const: 1
> +
> +      "#size-cells":
> +        const: 0
> +
> +    $ref: "#/definitions/pd-node"

Move this and 'unevaluatedProperties' above 'properties'. It's a bit 
easier to read than trying to follow the indentation.

> +
> +    patternProperties:
> +      "^power-domain@[0-9a-f]+$":
> +        properties:
> +
> +          "#power-domain-cells":
> +            enum: [0, 1]
> +
> +          "#address-cells":
> +            const: 1
> +
> +          "#size-cells":
> +            const: 0
> +
> +        $ref: "#/definitions/pd-node"
> +
> +        patternProperties:
> +          "^power-domain@[0-9a-f]+$":
> +            properties:
> +
> +              "#power-domain-cells":
> +                const: 0

You can keep this one since it adds additional constraints.

> +
> +            $ref: "#/definitions/pd-node"
> +
> +            required:
> +              - "#power-domain-cells"
> +
> +            unevaluatedProperties: false
> +
> +        required:
> +          - "#power-domain-cells"
> +
> +        unevaluatedProperties: false
> +
> +    required:
> +      - "#power-domain-cells"
> +
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - "#power-domain-cells"
> +
> +additionalProperties: false
> +
> +definitions:

'$defs' rather than 'definitions'. The former is in the json-schema 
spec, the latter was only convention.

> +  pd-node:
> +    type: object
> +    description: |
> +      Represents the power domains within the power controller node.
> +
> +    properties:
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
> +        minItems: 1
> +        maxItems: 30
> +        description: |
> +          A number of phandles to clocks that need to be enabled
> +          while power domain switches state.
> +
> +      pm_qos:
> +        $ref: /schemas/types.yaml#/definitions/phandle-array
> +        description: |
> +          A number of phandles to qos blocks which need to be saved and restored
> +          while power domain switches state.
> +
> +    required:
> +      - reg
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
