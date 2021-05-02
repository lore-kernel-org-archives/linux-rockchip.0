Return-Path: <SRS0=p4Pf=J5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934ABC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 May 2021 10:13:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFAFA611EE
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 May 2021 10:13:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DFAFA611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iyV6CEm25a8PxKZKnlvBB2GXqTBUitudDodhJEl0o40=; b=nCQ1+j2a4+br3qlTFT0bQHcei
	+RbnBj9ySsQEKDoi7iphfeQLGlGFXD8lQAq5Q1zrykGRpKodYExrSJikLPGtii6qtHQSBy9ngi+9C
	l59Z20v/kux77Ke895iweQ004tGnUZBFBCby12PslCTl2l0lSjwZZLRg3P/QrpKSZhCTbnzK0R629
	3cdyBP2EV0d6b80DXuRUTt3sH9DJcWTcEkkZ7UtSuGidWxdXcFFU4cOINlR1TLNLNOdwf2oGkUC9H
	EQJWEjSwRI0DfZgXo2xJeYstkAd8cclXeYh5E7Ke+aJKa4Ow+ywnEXJ2ahoUqUUbkyURZjTnYElhS
	86pM6ypVg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ld96K-00BbEB-A9; Sun, 02 May 2021 10:13:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ld96H-00BbDz-UV; Sun, 02 May 2021 10:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:Cc:To:From:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=48GWeQ4QniJrKGm3JwxR/c0DzkhIGl/Ne+clIxhm6Dg=; b=F/+MGrizsBHyPuB9yHiNEVk28/
 uwa9vf5t9f75avFrk27xYgmJxsoiLSJrHO/PoiJ6FxHlyEwvHBmRsjPJv/sAvNHv50JmgFNUuMQ2v
 h2EZWHA5b2qyN8U3LJfMv6PfcX0txJbnh478MDl6crjbaEgPkL8hhGrZts4OjPwPixZMgNXLgEQ5r
 7sg1phYt7ZRjIjMFi2z4qq65DhLo9z9iH7xE2Nmt2qB0sOmaOEB0IoCKzGbWa6WJUGihPllrYVNEB
 kP9tenZQ0P2QSAUzIOJaldy22J+VnBVLXN0WmY0SWZ6BRpUY9256LFoDjTzwYYOuXiMIeuB4t/wnl
 DcQk1FUQ==;
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ld96E-002T77-8Z; Sun, 02 May 2021 10:13:20 +0000
Received: by mail-ed1-x52c.google.com with SMTP id i3so3037639edt.1;
 Sun, 02 May 2021 03:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=48GWeQ4QniJrKGm3JwxR/c0DzkhIGl/Ne+clIxhm6Dg=;
 b=my+r8MxxzYbb/P81J6yrJAfEmAMa2g/6PAdLn740O+zs0wytR9sLdv0L8/11nDEAB4
 G4pT1ZxtAcDxjf3tM1pAi9/AKr230muFcpDfK+ukekpaueb4W4YszxnjDDGXk9CDdmwg
 k10nByvVzJQmifJV5IhpV4rlm4Gb+GncFL6bJzxb4rD7SFLcLwPlIfPVKjMSMdSImNkQ
 HOyGwEq/8qB82wRi/osLKLPQhv1YvwLR43b9dokEdGLafwnP7zTrykk1x+Dt3a30k4Cg
 HF4TbwtwQ9xW2mf9HGzsWhc81C14+X9pKk4YVECTqycCKU73/t6gZ0wMAlaJzfNctGLB
 ElwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=48GWeQ4QniJrKGm3JwxR/c0DzkhIGl/Ne+clIxhm6Dg=;
 b=BZtccr3yNjzgaNRq+D3okbcSBpPssuD4Af+JSH+rg5MQwUImqi6/m4Vu3Hg2AkVZWb
 S05e4KXNy8kS/zJe70iuAe4j+d+m3Od3592UjJLpVUP/pZJbqNAHQDuNWsX2f2NlIs7d
 vwLMla181AsH+6+ddUcCmXlKWRqEU6ibuFDvUTwlhVA/uU4zyVscDXaqdvsiEUDPcpmb
 S89hL0Q5omo2GtIaCVEA/3YTM46Uqdo//uhqW7/+P/QvF+lx/QeN9z4JVbs4JXy6vLfN
 UxGmk60eTKifRVfJmukUk+uU+2jC2ixNbJcUjQitxPSL1fX4BTrnoJ7MFxKnUEzVyAwZ
 +40A==
X-Gm-Message-State: AOAM533zeCyrh9NHUEDTgBrhYUwtiSisYL6nmQUuLzCAxeS9+6J1HmIX
 7r3QcHf9RdDt+2eB2jHFCyI=
X-Google-Smtp-Source: ABdhPJyJtO+ytghu7OOFqvWoOVxFdwTT0KLDg12T5kUCTszYqKaButm/KODD0mahWCw/90+sUErPZw==
X-Received: by 2002:aa7:d594:: with SMTP id r20mr14578107edq.242.1619950396343; 
 Sun, 02 May 2021 03:13:16 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 u6sm8158590ejn.14.2021.05.02.03.13.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 May 2021 03:13:16 -0700 (PDT)
Subject: Re: [PATCH v1 1/2] dt-bindings: soc: rockchip: convert grf.txt to YAML
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: cl@rock-chips.com, jay.xu@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, shawn.lin@rock-chips.com,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210501203520.5465-1-jbx6244@gmail.com>
Message-ID: <45d7aa00-1879-cc6e-df9b-fe1ed83a4531@gmail.com>
Date: Sun, 2 May 2021 12:13:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210501203520.5465-1-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210502_031318_358169_8933A1E5 
X-CRM114-Status: GOOD (  25.27  )
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

Hi Rob, Heiko,

This patch relies on rockchip,power-controller.yaml, but a look in
MAINTAINERS show that no one seems responsible.
Who should apply?

===

This patch makes use of phy-rockchip-inno-usb2.yaml

Given response in:

dt-bindings: phy: convert phy-rockchip-inno-usb2 bindings to yaml
https://lore.kernel.org/linux-rockchip/20200319171305.GA19150@bogus/

'#phy-cells' was added to the example.

A proposal to add that to usb2-phy nodes was never accepted,
so dtbs_check continuous to generate notifications.

ARM: dts: rockchip: add #phy-cells to all usb2-phy nodes
https://lore.kernel.org/linux-rockchip/20200401073725.6063-1-jbx6244@gmail.com/

===

A issue was filed, but nothing fixed.

phys with subnodes and #phy-cells requirement #22
https://github.com/devicetree-org/dt-schema/issues/22

===

Please advise.

Johan

On 5/1/21 10:35 PM, Johan Jonker wrote:
> Current dts files with 'grf' nodes are manually verified.
> In order to automate this process grf.txt has to be
> converted to YAML.
> 
> Most compatibility strings are in use with "simple-mfd" added.
> 
> Add description already in use:
> "rockchip,rv1108-pmugrf", "syscon"
> 
> Add new descriptions for:
> "rockchip,rk3568-grf", "syscon", "simple-mfd"
> "rockchip,rk3568-pmugrf", "syscon", "simple-mfd"
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
>  .../devicetree/bindings/soc/rockchip/grf.yaml      | 277 +++++++++++++++++++++
>  2 files changed, 277 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
> deleted file mode 100644
> index f96511aa3..000000000
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
> +++ /dev/null
> @@ -1,61 +0,0 @@
> -* Rockchip General Register Files (GRF)
> -
> -The general register file will be used to do static set by software, which
> -is composed of many registers for system control.
> -
> -From RK3368 SoCs, the GRF is divided into two sections,
> -- GRF, used for general non-secure system,
> -- SGRF, used for general secure system,
> -- PMUGRF, used for always on system
> -
> -On RK3328 SoCs, the GRF adds a section for USB2PHYGRF,
> -
> -ON RK3308 SoC, the GRF is divided into four sections:
> -- GRF, used for general non-secure system,
> -- SGRF, used for general secure system,
> -- DETECTGRF, used for audio codec system,
> -- COREGRF, used for pvtm,
> -
> -Required Properties:
> -
> -- compatible: GRF should be one of the following:
> -   - "rockchip,px30-grf", "syscon": for px30
> -   - "rockchip,rk3036-grf", "syscon": for rk3036
> -   - "rockchip,rk3066-grf", "syscon": for rk3066
> -   - "rockchip,rk3188-grf", "syscon": for rk3188
> -   - "rockchip,rk3228-grf", "syscon": for rk3228
> -   - "rockchip,rk3288-grf", "syscon": for rk3288
> -   - "rockchip,rk3308-grf", "syscon": for rk3308
> -   - "rockchip,rk3328-grf", "syscon": for rk3328
> -   - "rockchip,rk3368-grf", "syscon": for rk3368
> -   - "rockchip,rk3399-grf", "syscon": for rk3399
> -   - "rockchip,rv1108-grf", "syscon": for rv1108
> -- compatible: DETECTGRF should be one of the following:
> -   - "rockchip,rk3308-detect-grf", "syscon": for rk3308
> -- compatilbe: COREGRF should be one of the following:
> -   - "rockchip,rk3308-core-grf", "syscon": for rk3308
> -- compatible: PMUGRF should be one of the following:
> -   - "rockchip,px30-pmugrf", "syscon": for px30
> -   - "rockchip,rk3368-pmugrf", "syscon": for rk3368
> -   - "rockchip,rk3399-pmugrf", "syscon": for rk3399
> -- compatible: SGRF should be one of the following:
> -   - "rockchip,rk3288-sgrf", "syscon": for rk3288
> -- compatible: USB2PHYGRF should be one of the following:
> -   - "rockchip,px30-usb2phy-grf", "syscon": for px30
> -   - "rockchip,rk3328-usb2phy-grf", "syscon": for rk3328
> -- compatible: USBGRF should be one of the following:
> -   - "rockchip,rv1108-usbgrf", "syscon": for rv1108
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -
> -Example: GRF and PMUGRF of RK3399 SoCs
> -
> -	pmugrf: syscon@ff320000 {
> -		compatible = "rockchip,rk3399-pmugrf", "syscon";
> -		reg = <0x0 0xff320000 0x0 0x1000>;
> -	};
> -
> -	grf: syscon@ff770000 {
> -		compatible = "rockchip,rk3399-grf", "syscon";
> -		reg = <0x0 0xff770000 0x0 0x10000>;
> -	};
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> new file mode 100644
> index 000000000..3f66328a3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -0,0 +1,277 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip General Register Files (GRF)
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - rockchip,px30-grf
> +          - rockchip,px30-pmugrf
> +          - rockchip,px30-usb2phy-grf
> +          - rockchip,rk3036-grf
> +          - rockchip,rk3066-grf
> +          - rockchip,rk3188-grf
> +          - rockchip,rk3228-grf
> +          - rockchip,rk3288-grf
> +          - rockchip,rk3288-sgrf
> +          - rockchip,rk3308-core-grf
> +          - rockchip,rk3308-detect-grf
> +          - rockchip,rk3308-grf
> +          - rockchip,rk3328-grf
> +          - rockchip,rk3328-usb2phy-grf
> +          - rockchip,rk3368-grf
> +          - rockchip,rk3368-pmugrf
> +          - rockchip,rk3399-grf
> +          - rockchip,rk3399-pmugrf
> +          - rockchip,rk3568-grf
> +          - rockchip,rk3568-pmugrf
> +          - rockchip,rv1108-grf
> +          - rockchip,rv1108-pmugrf
> +          - rockchip,rv1108-usbgrf
> +
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - rockchip,rk3066-grf
> +              - rockchip,rk3188-grf
> +              - rockchip,rk3288-sgrf
> +              - rockchip,rv1108-pmugrf
> +              - rockchip,rv1108-usbgrf
> +          - const: syscon
> +      - items:
> +          - enum:
> +              - rockchip,px30-grf
> +              - rockchip,px30-pmugrf
> +              - rockchip,px30-usb2phy-grf
> +              - rockchip,rk3036-grf
> +              - rockchip,rk3228-grf
> +              - rockchip,rk3288-grf
> +              - rockchip,rk3308-core-grf
> +              - rockchip,rk3308-detect-grf
> +              - rockchip,rk3308-grf
> +              - rockchip,rk3328-grf
> +              - rockchip,rk3328-usb2phy-grf
> +              - rockchip,rk3368-grf
> +              - rockchip,rk3368-pmugrf
> +              - rockchip,rk3399-grf
> +              - rockchip,rk3399-pmugrf
> +              - rockchip,rk3568-grf
> +              - rockchip,rk3568-pmugrf
> +              - rockchip,rv1108-grf
> +          - const: syscon
> +          - const: simple-mfd
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: true
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,px30-grf
> +
> +    then:
> +      properties:
> +        lvds:
> +          description:
> +            Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3288-grf
> +
> +    then:
> +      properties:
> +        edp-phy:
> +          description:
> +            Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
> +
> +        usbphy:
> +          description:
> +            Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3328-grf
> +
> +    then:
> +      properties:
> +        grf-gpio:
> +          description:
> +            Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
> +
> +        power-controller:
> +          type: object
> +
> +          $ref: "/schemas/power/rockchip,power-controller.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3399-grf
> +
> +    then:
> +      properties:
> +        mipi-dphy-rx0:
> +          type: object
> +
> +          $ref: "/schemas/phy/rockchip-mipi-dphy-rx0.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +        pcie-phy:
> +          description:
> +            Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
> +
> +      patternProperties:
> +        "phy@[0-9a-f]+$":
> +          description:
> +            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-pmugrf
> +              - rockchip,rk3036-grf
> +              - rockchip,rk3308-grf
> +              - rockchip,rk3368-pmugrf
> +
> +    then:
> +      properties:
> +        reboot-mode:
> +          type: object
> +
> +          $ref: "/schemas/power/reset/syscon-reboot-mode.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-usb2phy-grf
> +              - rockchip,rk3228-grf
> +              - rockchip,rk3328-usb2phy-grf
> +              - rockchip,rk3399-grf
> +              - rockchip,rv1108-grf
> +
> +    then:
> +      properties:
> +        "#address-cells":
> +          const: 1
> +
> +        "#size-cells":
> +          const: 1
> +
> +      required:
> +        - "#address-cells"
> +        - "#size-cells"
> +
> +      patternProperties:
> +        "usb2-phy@[0-9a-f]+$":
> +          type: object
> +
> +          $ref: "/schemas/phy/phy-rockchip-inno-usb2.yaml#"
> +
> +          unevaluatedProperties: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,px30-pmugrf
> +              - rockchip,px30-grf
> +              - rockchip,rk3228-grf
> +              - rockchip,rk3288-grf
> +              - rockchip,rk3328-grf
> +              - rockchip,rk3368-pmugrf
> +              - rockchip,rk3368-grf
> +              - rockchip,rk3399-pmugrf
> +              - rockchip,rk3399-grf
> +
> +    then:
> +      properties:
> +        io-domains:
> +          description:
> +            Documentation/devicetree/bindings/power/rockchip-io-domain.txt
> +
> +          unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/rk3399-power.h>
> +    grf: syscon@ff770000 {
> +      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
> +      reg = <0xff770000 0x10000>;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +
> +      mipi_dphy_rx0: mipi-dphy-rx0 {
> +        compatible = "rockchip,rk3399-mipi-dphy-rx0";
> +        clocks = <&cru SCLK_MIPIDPHY_REF>,
> +                 <&cru SCLK_DPHY_RX0_CFG>,
> +                 <&cru PCLK_VIO_GRF>;
> +        clock-names = "dphy-ref", "dphy-cfg", "grf";
> +        power-domains = <&power RK3399_PD_VIO>;
> +        #phy-cells = <0>;
> +      };
> +
> +      u2phy0: usb2-phy@e450 {
> +        compatible = "rockchip,rk3399-usb2phy";
> +        reg = <0xe450 0x10>;
> +        clocks = <&cru SCLK_USB2PHY0_REF>;
> +        clock-names = "phyclk";
> +        #clock-cells = <0>;
> +        clock-output-names = "clk_usbphy0_480m";
> +        #phy-cells = <0>;
> +
> +        u2phy0_host: host-port {
> +          #phy-cells = <0>;
> +          interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
> +          interrupt-names = "linestate";
> +         };
> +
> +        u2phy0_otg: otg-port {
> +          #phy-cells = <0>;
> +          interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
> +                       <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
> +          interrupt-names = "otg-bvalid", "otg-id",
> +                            "linestate";
> +        };
> +      };
> +    };
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
