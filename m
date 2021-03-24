Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41D8EC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 09:18:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9C0C561A01
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 09:18:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9C0C561A01
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vWN7OBAPC0E6qkJB8NCSluPkF6JUToYd5o+B+IBgu1M=; b=J1vM+xgNu1VCBCIhZU2NRBatE
	HYbe9BMg1OxqYVfc51Cmj4+Fnu4D4tnAdozyxYvbYUU0ii8W1xKahZxIQFfqIDLevHMdMQ4bH3Sk5
	3ajQlTamrvhLnYGfRbD22Gc5PtudEhZMMY34lF4Fd4ml8jkM0bXU4sVHrQqHsqS4BiLlfYkYNND8N
	ub/t6p4nOuPwgrB2BmEZtaHc4fM3afZ59BUduTXmvvJWgVyjPNUgPCW1965tC1prcf+zs/9iVQEwt
	SdsBICrlWr1uROLzXIAxDCaHk/wIun879KU3bsHhf/D4PgOwSaZQDEnOmgCJF8H0Q0IlyRFUA9VEn
	7OyQ4GZeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOzeM-00Gi4x-8z; Wed, 24 Mar 2021 09:18:03 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOzeH-00Gi2S-2P; Wed, 24 Mar 2021 09:18:00 +0000
Received: by mail-ed1-x531.google.com with SMTP id e7so26697219edu.10;
 Wed, 24 Mar 2021 02:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NCbR0EtQahO3kI99pgHG8ThCPhBOLUoKqiveWEK2PA4=;
 b=f7hiYEcYEXMlF9QRMoUGAIpBEO1eACTygMZVx4G5w5epbYC/Ewhl6Rv/xYcqpPWW+Z
 /1dRJv4dl0MxuOlxljPp/e9FYML43u893qhhESiSZMTUzi/3IkUDQpmb1wcPqUjJtrGi
 7rNlgNP2aOVtSOtP5xMXPQxx5cvcWaE2lHyRJu4dZ8F/85OBNAHa1stpROV1+qyKP5tk
 twlGdwcv7hbpWcKBLCYGXO9tIB9HqnP43ij9zwP5so1r8+dpvH+y92V6yawlW59o5XIZ
 j9knU8QnXQwmT4a81Sy6aJLORMfgo7BGo739HRtmQvbfpPEiCvrfxeKWjIjVDlq1cUIB
 kT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NCbR0EtQahO3kI99pgHG8ThCPhBOLUoKqiveWEK2PA4=;
 b=Gm3JSSYwO1PH0i4EaDI43a+Wa6D9f53D+8cN+AiJUogMehmTNhImWMphhSSpXKRPa8
 7yu30DdE2/I93uCG8tmYupJ+QuUhvmRgUNbEVRf089RExl4JsLn2LkNTQwdXg9uXXyJo
 fuclG5Enntr/9gAktML4eg0D17EfAMDPKTwmd5yA5ei4dBe3iTPqB8TOo+rciEA1EQJm
 WFbKQb61QkfrdvSFCM+qS8lmzk8BIjKSr9tuAdWaFYI/7dNuAwOIH/1TetAD23VTdOq/
 LFYWZGvw4otp6Z9E/S9OFVX2/j0ekMrjZqMOsND/5JUHhhFiof9cW6N+5UQX4yfiQAu2
 xcVQ==
X-Gm-Message-State: AOAM531v8PfDMjvQW/ZSH+VTSRxL17bYMYCUS+r/n08s20U1eeb8z3l8
 wpUklWy/iuazp2HyElUkGZWPtJ/QS5YoiQ==
X-Google-Smtp-Source: ABdhPJzu/c3qeY/9Zq7fajtANlrtZIbklOL8KrAummRwjQEvRYdGp7SVQD4L/vEQ634z6FtEvKHdmQ==
X-Received: by 2002:a05:6402:4242:: with SMTP id
 g2mr2311884edb.329.1616577475522; 
 Wed, 24 Mar 2021 02:17:55 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 n25sm827988edq.55.2021.03.24.02.17.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Mar 2021 02:17:55 -0700 (PDT)
Subject: Re: [PATCH v4 2/4] dt-bindings: power: rockchip: Convert to
 json-schema
To: Elaine Zhang <zhangqing@rock-chips.com>, robh+dt@kernel.org,
 heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
References: <20210324071609.7531-1-zhangqing@rock-chips.com>
 <20210324071609.7531-3-zhangqing@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <be921bd8-a878-3131-15a7-27400786e67a@gmail.com>
Date: Wed, 24 Mar 2021 10:17:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20210324071609.7531-3-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_091757_392930_1DFD0BBB 
X-CRM114-Status: GOOD (  25.92  )
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

Hi Elaine,

From Rob's build log it turns out that 2 more properties must be added.
Add these new properties in separate patch.
Retest with commands below.
====
See rk3288.dtsi

			assigned-clocks = <&cru SCLK_EDP_24M>;
			assigned-clock-parents = <&xin24m>;
====
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210324071609.7531-3-zhangqing@rock-chips.com/

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/power/rockchip,power-controller.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/power/rockchip,power-controller.yaml

On 3/24/21 8:16 AM, Elaine Zhang wrote:
> Convert the soc/rockchip/power_domain.txt binding document to
> json-schema and move to the power bindings directory.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  .../power/rockchip,power-controller.yaml      | 284 ++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt    | 136 ---------
>  2 files changed, 284 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> new file mode 100644
> index 000000000000..a220322c5139
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -0,0 +1,284 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/rockchip,power-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Power Domains
> +
> +maintainers:
> +  - Elaine Zhang <zhangqing@rock-chips.com>
> +  - Rob Herring <robh+dt@kernel.org>
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


assigned-clocks:
  maxItems: 1

assigned-clock-parents:
  maxItems: 1

> +
> +patternProperties:
> +  "^pd_[0-9a-z_]{2,10}@[0-9a-f]+$":
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
> +
> +      pm_qos:
> +        description: |
> +          A number of phandles to qos blocks which need to be saved and restored
> +          while power domain switches state.
> +
> +    patternProperties:
> +      "^pd_[0-9a-z_]{2,10}@[0-9a-f]+$":
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
> +          "^pd_[0-9a-z_]{2,10}@[0-9a-f]+$":
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
> +                pd_iep@RK3399_PD_IEP {
> +                    reg = <RK3399_PD_IEP>;
> +                    clocks = <&cru ACLK_IEP>,
> +                             <&cru HCLK_IEP>;
> +                    pm_qos = <&qos_iep>;
> +                    #power-domain-cells = <0>;
> +                };
> +                pd_rga@RK3399_PD_RGA {
> +                    reg = <RK3399_PD_RGA>;
> +                    clocks = <&cru ACLK_RGA>,
> +                             <&cru HCLK_RGA>;
> +                    pm_qos = <&qos_rga_r>,
> +                             <&qos_rga_w>;
> +                    #power-domain-cells = <0>;
> +                };
> +                pd_vcodec@RK3399_PD_VCODEC {
> +                    reg = <RK3399_PD_VCODEC>;
> +                    clocks = <&cru ACLK_VCODEC>,
> +                             <&cru HCLK_VCODEC>;
> +                    pm_qos = <&qos_video_m0>;
> +                    #power-domain-cells = <0>;
> +                };
> +                pd_vdu@RK3399_PD_VDU {
> +                    reg = <RK3399_PD_VDU>;
> +                    clocks = <&cru ACLK_VDU>,
> +                             <&cru HCLK_VDU>;
> +                    pm_qos = <&qos_video_m1_r>,
> +                             <&qos_video_m1_w>;
> +                    #power-domain-cells = <0>;
> +                };
> +                pd_vio@RK3399_PD_VIO {
> +                    reg = <RK3399_PD_VIO>;
> +                    #power-domain-cells = <1>;
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +
> +                    pd_hdcp@RK3399_PD_HDCP {
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
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> deleted file mode 100644
> index 8304eceb62e4..000000000000
> --- a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> +++ /dev/null
> @@ -1,136 +0,0 @@
> -* Rockchip Power Domains
> -
> -Rockchip processors include support for multiple power domains which can be
> -powered up/down by software based on different application scenes to save power.
> -
> -Required properties for power domain controller:
> -- compatible: Should be one of the following.
> -	"rockchip,px30-power-controller" - for PX30 SoCs.
> -	"rockchip,rk3036-power-controller" - for RK3036 SoCs.
> -	"rockchip,rk3066-power-controller" - for RK3066 SoCs.
> -	"rockchip,rk3128-power-controller" - for RK3128 SoCs.
> -	"rockchip,rk3188-power-controller" - for RK3188 SoCs.
> -	"rockchip,rk3228-power-controller" - for RK3228 SoCs.
> -	"rockchip,rk3288-power-controller" - for RK3288 SoCs.
> -	"rockchip,rk3328-power-controller" - for RK3328 SoCs.
> -	"rockchip,rk3366-power-controller" - for RK3366 SoCs.
> -	"rockchip,rk3368-power-controller" - for RK3368 SoCs.
> -	"rockchip,rk3399-power-controller" - for RK3399 SoCs.
> -- #power-domain-cells: Number of cells in a power-domain specifier.
> -	Should be 1 for multiple PM domains.
> -- #address-cells: Should be 1.
> -- #size-cells: Should be 0.
> -
> -Required properties for power domain sub nodes:
> -- reg: index of the power domain, should use macros in:
> -	"include/dt-bindings/power/px30-power.h" - for PX30 type power domain.
> -	"include/dt-bindings/power/rk3036-power.h" - for RK3036 type power domain.
> -	"include/dt-bindings/power/rk3066-power.h" - for RK3066 type power domain.
> -	"include/dt-bindings/power/rk3128-power.h" - for RK3128 type power domain.
> -	"include/dt-bindings/power/rk3188-power.h" - for RK3188 type power domain.
> -	"include/dt-bindings/power/rk3228-power.h" - for RK3228 type power domain.
> -	"include/dt-bindings/power/rk3288-power.h" - for RK3288 type power domain.
> -	"include/dt-bindings/power/rk3328-power.h" - for RK3328 type power domain.
> -	"include/dt-bindings/power/rk3366-power.h" - for RK3366 type power domain.
> -	"include/dt-bindings/power/rk3368-power.h" - for RK3368 type power domain.
> -	"include/dt-bindings/power/rk3399-power.h" - for RK3399 type power domain.
> -- clocks (optional): phandles to clocks which need to be enabled while power domain
> -	switches state.
> -- pm_qos (optional): phandles to qos blocks which need to be saved and restored
> -	while power domain switches state.
> -
> -Qos Example:
> -
> -	qos_gpu: qos_gpu@ffaf0000 {
> -		compatible ="syscon";
> -		reg = <0x0 0xffaf0000 0x0 0x20>;
> -	};
> -
> -Example:
> -
> -	power: power-controller {
> -		compatible = "rockchip,rk3288-power-controller";
> -		#power-domain-cells = <1>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		pd_gpu {
> -			reg = <RK3288_PD_GPU>;
> -			clocks = <&cru ACLK_GPU>;
> -			pm_qos = <&qos_gpu>;
> -		};
> -	};
> -
> -	 power: power-controller {
> -                compatible = "rockchip,rk3368-power-controller";
> -                #power-domain-cells = <1>;
> -                #address-cells = <1>;
> -                #size-cells = <0>;
> -
> -                pd_gpu_1 {
> -                        reg = <RK3368_PD_GPU_1>;
> -                        clocks = <&cru ACLK_GPU_CFG>;
> -                };
> -        };
> -
> -Example 2:
> -		power: power-controller {
> -			compatible = "rockchip,rk3399-power-controller";
> -			#power-domain-cells = <1>;
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -
> -			pd_vio {
> -				#address-cells = <1>;
> -				#size-cells = <0>;
> -				reg = <RK3399_PD_VIO>;
> -
> -				pd_vo {
> -					#address-cells = <1>;
> -					#size-cells = <0>;
> -					reg = <RK3399_PD_VO>;
> -
> -					pd_vopb {
> -						reg = <RK3399_PD_VOPB>;
> -					};
> -
> -					pd_vopl {
> -						reg = <RK3399_PD_VOPL>;
> -					};
> -				};
> -			};
> -		};
> -
> -Node of a device using power domains must have a power-domains property,
> -containing a phandle to the power device node and an index specifying which
> -power domain to use.
> -The index should use macros in:
> -	"include/dt-bindings/power/px30-power.h" - for px30 type power domain.
> -	"include/dt-bindings/power/rk3036-power.h" - for rk3036 type power domain.
> -	"include/dt-bindings/power/rk3128-power.h" - for rk3128 type power domain.
> -	"include/dt-bindings/power/rk3128-power.h" - for rk3228 type power domain.
> -	"include/dt-bindings/power/rk3288-power.h" - for rk3288 type power domain.
> -	"include/dt-bindings/power/rk3328-power.h" - for rk3328 type power domain.
> -	"include/dt-bindings/power/rk3366-power.h" - for rk3366 type power domain.
> -	"include/dt-bindings/power/rk3368-power.h" - for rk3368 type power domain.
> -	"include/dt-bindings/power/rk3399-power.h" - for rk3399 type power domain.
> -
> -Example of the node using power domain:
> -
> -	node {
> -		/* ... */
> -		power-domains = <&power RK3288_PD_GPU>;
> -		/* ... */
> -	};
> -
> -	node {
> -                /* ... */
> -                power-domains = <&power RK3368_PD_GPU_1>;
> -                /* ... */
> -        };
> -
> -	node {
> -		/* ... */
> -		power-domains = <&power RK3399_PD_VOPB>;
> -		/* ... */
> -	};
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
