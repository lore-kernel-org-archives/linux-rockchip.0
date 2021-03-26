Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BFEAC433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:51:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BA0061A32
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:51:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BA0061A32
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SXwyjQt71LVsvnOoe24BcHGPcGpuUD/MGjHvT5vTA6U=; b=W769NWAO+N18Vw4RDlv9kTQaI
	yJVq9NCuThmEQlVWCvz1IP8fM06L/SY1UrfwUHsEBXVyIeqORzgdJONoveAKQAX7eE0M18mDeEIlF
	6XUN+HVby3hvmS7yderji0g5da6Rlvk6sl2NecZytWAp38DIKCjd7VDdGGI2Db19mlqI9RMc7PtOQ
	KcZz7jtZQPvztL2ydBMlPkc6SDf1v5PQ6TI8MxazdFdrbSI9pKw3NFr0dO8kzx2yp34R34XXWtWQs
	CXEQVkkEBt0mfaVGYgrblX5CVBV1sg4LjA2VOAfPGI7U55uOjARveSw8+a+Y873D3q1ZN+N1I4M55
	i+33OZnlA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPj7z-003EiF-8f; Fri, 26 Mar 2021 09:51:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPj7i-003EdZ-Ll; Fri, 26 Mar 2021 09:51:26 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lPj7i-0002qb-4Y; Fri, 26 Mar 2021 10:51:22 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh+dt@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v5 09/11] dt-bindings: power: rockchip: Convert to
 json-schema
Date: Fri, 26 Mar 2021 10:51:21 +0100
Message-ID: <5606275.MhkbZ0Pkbq@diego>
In-Reply-To: <20210326091803.12698-1-zhangqing@rock-chips.com>
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326091803.12698-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_095122_850505_B18FCC9D 
X-CRM114-Status: GOOD (  26.81  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 26. M=E4rz 2021, 10:18:03 CET schrieb Elaine Zhang:
> Convert the soc/rockchip/power_domain.txt binding document to
> json-schema and move to the power bindings directory.
> =

> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

If Enric is the original author of this patch, maybe this needs a matching
"From: ... " line?

Thanks
Heiko


> ---
>  .../power/rockchip,power-controller.yaml      | 291 ++++++++++++++++++
>  .../bindings/soc/rockchip/power_domain.txt    | 136 --------
>  2 files changed, 291 insertions(+), 136 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/rockchip,powe=
r-controller.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/power_=
domain.txt
> =

> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-contr=
oller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-control=
ler.yaml
> new file mode 100644
> index 000000000000..9fec9e227432
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.y=
aml
> @@ -0,0 +1,291 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
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
> +  Rockchip processors include support for multiple power domains which c=
an be
> +  powered up/down by software based on different application scenarios t=
o save power.
> +
> +  Power domains contained within power-controller node are generic power=
 domain
> +  providers documented in Documentation/devicetree/bindings/power/power-=
domain.yaml.
> +
> +  IP cores belonging to a power domain should contain a "power-domains"
> +  property that is a phandle for the power domain node representing the =
domain.
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
> +  clocks: true
> +
> +  assigned-clocks:
> +    minItems: 1
> +
> +  assigned-clock-parents:
> +    minItems: 1
> +
> +patternProperties:
> +  "^power-domain@[0-9a-f]+$":
> +    type: object
> +    description: |
> +      Represents the power domains within the power controller node as d=
ocumented
> +      in Documentation/devicetree/bindings/power/power-domain.yaml.
> +
> +    properties:
> +
> +      "#power-domain-cells":
> +        description:
> +          Must be 0 for nodes representing a single PM domain and 1 for =
nodes
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
> +          A number of phandles to clocks that need to be enabled while p=
ower domain
> +          switches state.
> +
> +      pm_qos:
> +        description: |
> +          A number of phandles to qos blocks which need to be saved and =
restored
> +          while power domain switches state.
> +
> +    patternProperties:
> +      "^power-domain@[0-9a-f]+$":
> +        type: object
> +        description: |
> +          Represents a power domain child within a power domain parent n=
ode.
> +
> +        properties:
> +
> +          "#power-domain-cells":
> +            description:
> +              Must be 0 for nodes representing a single PM domain and 1 =
for nodes
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
> +              A number of phandles to clocks that need to be enabled whi=
le power domain
> +              switches state.
> +
> +          pm_qos:
> +            description: |
> +              A number of phandles to qos blocks which need to be saved =
and restored
> +              while power domain switches state.
> +
> +        patternProperties:
> +          "^power-domain@[0-9a-f]+$":
> +            type: object
> +            description: |
> +              Represents a power domain child within a power domain pare=
nt node.
> +
> +            properties:
> +
> +              "#power-domain-cells":
> +                description:
> +                  Must be 0 for nodes representing a single PM domain an=
d 1 for nodes
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
> +                  A number of phandles to clocks that need to be enabled=
 while power domain
> +                  switches state.
> +
> +              pm_qos:
> +                description: |
> +                  A number of phandles to qos blocks which need to be sa=
ved and restored
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
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        qos_hdcp: qos@ffa90000 {
> +            compatible =3D "rockchip,rk3399-qos", "syscon";
> +            reg =3D <0x0 0xffa90000 0x0 0x20>;
> +        };
> +
> +        qos_iep: qos@ffa98000 {
> +            compatible =3D "rockchip,rk3399-qos", "syscon";
> +            reg =3D <0x0 0xffa98000 0x0 0x20>;
> +        };
> +
> +        qos_rga_r: qos@ffab0000 {
> +            compatible =3D "rockchip,rk3399-qos", "syscon";
> +            reg =3D <0x0 0xffab0000 0x0 0x20>;
> +        };
> +
> +        qos_rga_w: qos@ffab0080 {
> +            compatible =3D "rockchip,rk3399-qos", "syscon";
> +            reg =3D <0x0 0xffab0080 0x0 0x20>;
> +        };
> +
> +        qos_video_m0: qos@ffab8000 {
> +            compatible =3D "rockchip,rk3399-qos", "syscon";
> +            reg =3D <0x0 0xffab8000 0x0 0x20>;
> +        };
> +
> +        qos_video_m1_r: qos@ffac0000 {
> +            compatible =3D "rockchip,rk3399-qos", "syscon";
> +            reg =3D <0x0 0xffac0000 0x0 0x20>;
> +        };
> +
> +        qos_video_m1_w: qos@ffac0080 {
> +            compatible =3D "rockchip,rk3399-qos", "syscon";
> +            reg =3D <0x0 0xffac0080 0x0 0x20>;
> +        };
> +
> +        power-management@ff310000 {
> +            compatible =3D "rockchip,rk3399-pmu", "syscon", "simple-mfd";
> +            reg =3D <0x0 0xff310000 0x0 0x1000>;
> +
> +            power-controller {
> +                compatible =3D "rockchip,rk3399-power-controller";
> +                #power-domain-cells =3D <1>;
> +                #address-cells =3D <1>;
> +                #size-cells =3D <0>;
> +
> +                /* These power domains are grouped by VD_CENTER */
> +                 power-domain@RK3399_PD_IEP {
> +                    reg =3D <RK3399_PD_IEP>;
> +                    clocks =3D <&cru ACLK_IEP>,
> +                             <&cru HCLK_IEP>;
> +                    pm_qos =3D <&qos_iep>;
> +                    #power-domain-cells =3D <0>;
> +                };
> +                 power-domain@RK3399_PD_RGA {
> +                    reg =3D <RK3399_PD_RGA>;
> +                    clocks =3D <&cru ACLK_RGA>,
> +                             <&cru HCLK_RGA>;
> +                    pm_qos =3D <&qos_rga_r>,
> +                             <&qos_rga_w>;
> +                    #power-domain-cells =3D <0>;
> +                };
> +                 power-domain@RK3399_PD_VCODEC {
> +                    reg =3D <RK3399_PD_VCODEC>;
> +                    clocks =3D <&cru ACLK_VCODEC>,
> +                             <&cru HCLK_VCODEC>;
> +                    pm_qos =3D <&qos_video_m0>;
> +                    #power-domain-cells =3D <0>;
> +                };
> +                 power-domain@RK3399_PD_VDU {
> +                    reg =3D <RK3399_PD_VDU>;
> +                    clocks =3D <&cru ACLK_VDU>,
> +                             <&cru HCLK_VDU>;
> +                    pm_qos =3D <&qos_video_m1_r>,
> +                             <&qos_video_m1_w>;
> +                    #power-domain-cells =3D <0>;
> +                };
> +                 power-domain@RK3399_PD_VIO {
> +                    reg =3D <RK3399_PD_VIO>;
> +                    #power-domain-cells =3D <1>;
> +                    #address-cells =3D <1>;
> +                    #size-cells =3D <0>;
> +
> +                     power-domain@RK3399_PD_HDCP {
> +                        reg =3D <RK3399_PD_HDCP>;
> +                        clocks =3D <&cru ACLK_HDCP>,
> +                                 <&cru HCLK_HDCP>,
> +                                 <&cru PCLK_HDCP>;
> +                        pm_qos =3D <&qos_hdcp>;
> +                        #power-domain-cells =3D <0>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/power_domain.=
txt b/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> deleted file mode 100644
> index 8304eceb62e4..000000000000
> --- a/Documentation/devicetree/bindings/soc/rockchip/power_domain.txt
> +++ /dev/null
> @@ -1,136 +0,0 @@
> -* Rockchip Power Domains
> -
> -Rockchip processors include support for multiple power domains which can=
 be
> -powered up/down by software based on different application scenes to sav=
e power.
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
> -	"include/dt-bindings/power/rk3036-power.h" - for RK3036 type power doma=
in.
> -	"include/dt-bindings/power/rk3066-power.h" - for RK3066 type power doma=
in.
> -	"include/dt-bindings/power/rk3128-power.h" - for RK3128 type power doma=
in.
> -	"include/dt-bindings/power/rk3188-power.h" - for RK3188 type power doma=
in.
> -	"include/dt-bindings/power/rk3228-power.h" - for RK3228 type power doma=
in.
> -	"include/dt-bindings/power/rk3288-power.h" - for RK3288 type power doma=
in.
> -	"include/dt-bindings/power/rk3328-power.h" - for RK3328 type power doma=
in.
> -	"include/dt-bindings/power/rk3366-power.h" - for RK3366 type power doma=
in.
> -	"include/dt-bindings/power/rk3368-power.h" - for RK3368 type power doma=
in.
> -	"include/dt-bindings/power/rk3399-power.h" - for RK3399 type power doma=
in.
> -- clocks (optional): phandles to clocks which need to be enabled while p=
ower domain
> -	switches state.
> -- pm_qos (optional): phandles to qos blocks which need to be saved and r=
estored
> -	while power domain switches state.
> -
> -Qos Example:
> -
> -	qos_gpu: qos_gpu@ffaf0000 {
> -		compatible =3D"syscon";
> -		reg =3D <0x0 0xffaf0000 0x0 0x20>;
> -	};
> -
> -Example:
> -
> -	power: power-controller {
> -		compatible =3D "rockchip,rk3288-power-controller";
> -		#power-domain-cells =3D <1>;
> -		#address-cells =3D <1>;
> -		#size-cells =3D <0>;
> -
> -		pd_gpu {
> -			reg =3D <RK3288_PD_GPU>;
> -			clocks =3D <&cru ACLK_GPU>;
> -			pm_qos =3D <&qos_gpu>;
> -		};
> -	};
> -
> -	 power: power-controller {
> -                compatible =3D "rockchip,rk3368-power-controller";
> -                #power-domain-cells =3D <1>;
> -                #address-cells =3D <1>;
> -                #size-cells =3D <0>;
> -
> -                pd_gpu_1 {
> -                        reg =3D <RK3368_PD_GPU_1>;
> -                        clocks =3D <&cru ACLK_GPU_CFG>;
> -                };
> -        };
> -
> -Example 2:
> -		power: power-controller {
> -			compatible =3D "rockchip,rk3399-power-controller";
> -			#power-domain-cells =3D <1>;
> -			#address-cells =3D <1>;
> -			#size-cells =3D <0>;
> -
> -			pd_vio {
> -				#address-cells =3D <1>;
> -				#size-cells =3D <0>;
> -				reg =3D <RK3399_PD_VIO>;
> -
> -				pd_vo {
> -					#address-cells =3D <1>;
> -					#size-cells =3D <0>;
> -					reg =3D <RK3399_PD_VO>;
> -
> -					pd_vopb {
> -						reg =3D <RK3399_PD_VOPB>;
> -					};
> -
> -					pd_vopl {
> -						reg =3D <RK3399_PD_VOPL>;
> -					};
> -				};
> -			};
> -		};
> -
> -Node of a device using power domains must have a power-domains property,
> -containing a phandle to the power device node and an index specifying wh=
ich
> -power domain to use.
> -The index should use macros in:
> -	"include/dt-bindings/power/px30-power.h" - for px30 type power domain.
> -	"include/dt-bindings/power/rk3036-power.h" - for rk3036 type power doma=
in.
> -	"include/dt-bindings/power/rk3128-power.h" - for rk3128 type power doma=
in.
> -	"include/dt-bindings/power/rk3128-power.h" - for rk3228 type power doma=
in.
> -	"include/dt-bindings/power/rk3288-power.h" - for rk3288 type power doma=
in.
> -	"include/dt-bindings/power/rk3328-power.h" - for rk3328 type power doma=
in.
> -	"include/dt-bindings/power/rk3366-power.h" - for rk3366 type power doma=
in.
> -	"include/dt-bindings/power/rk3368-power.h" - for rk3368 type power doma=
in.
> -	"include/dt-bindings/power/rk3399-power.h" - for rk3399 type power doma=
in.
> -
> -Example of the node using power domain:
> -
> -	node {
> -		/* ... */
> -		power-domains =3D <&power RK3288_PD_GPU>;
> -		/* ... */
> -	};
> -
> -	node {
> -                /* ... */
> -                power-domains =3D <&power RK3368_PD_GPU_1>;
> -                /* ... */
> -        };
> -
> -	node {
> -		/* ... */
> -		power-domains =3D <&power RK3399_PD_VOPB>;
> -		/* ... */
> -	};
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
