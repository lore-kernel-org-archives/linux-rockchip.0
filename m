Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 760BAC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 16:33:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF4C66115C
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 16:32:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF4C66115C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IKrlUL0OGyS9+DbP5hxdgoDKK+JM0M1lWjVY0R+7oOo=; b=P0JTD4gSu0TU1l0NHM2tnveBM
	MuDvX+/kbIHZo7esG0OE4vxQPeSp7YcsfqKTCzItb47nvJAZNtoMwj7ylmrJjlPbkyaGKpFmKNMhq
	OLyiaxxFVn2FLzp73afxQpel6Aoi9h7Wva9cKO1GlQziSAxHmwuqJAImbKtdbia19MBIye1vWA5Cb
	WgXlxJnf/rw1JdyUb5T8Ks2UmMm2eBfygvEGP08JfkhYIXYcsYGeJ/dg4VaKeMxOwefi5T8/iUkyt
	4MIzcId6VeDFk42+qlai46HuUKx8Ly3ZGMG7K+ZkyjegnKKMkx70J9xUqy1u0EqJoZSL7El5yGzE3
	VhAVRUToQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg8pu-00Eyez-Ez; Mon, 10 May 2021 16:32:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg8pi-00Eydh-1t; Mon, 10 May 2021 16:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=j/pBjOdXf0s3z7Yx433rgH/yn8XqqRaPJIsdeRgHCLQ=; b=KrqFOR60DF2j3FS3NbrzYZ3/cL
 RZzXEbKsSLry2x86HNh+3A3OntIInbpzjGztz4/p4d1J3gqEpG+ALdTx2pvnd1BjUR4V15V/JKK7u
 S62aiaGIEr3H33R1rvsjgG0eqiOPWgfWvJtNvsvO0x7xohWzUDiggnSqFUOD5ebWYCZm8yPsWr6gY
 gRCEDDNR+66ljggVHlgrNLVfTBwC5YF0JxfrprUH5KWtlPA38hjm62+ZNETNgj2jyqjqh9ACsJ+GV
 JlyqBg360KjmruLykBaeFG4RBb3oDO6OatK+jSgmVXFEvfPpXTP5liRbo4bXYMEDHQp+bfUxvJLCo
 t4SX76jQ==;
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg8pe-008vIn-D5; Mon, 10 May 2021 16:32:36 +0000
Received: by mail-ej1-x636.google.com with SMTP id r9so25481982ejj.3;
 Mon, 10 May 2021 09:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=j/pBjOdXf0s3z7Yx433rgH/yn8XqqRaPJIsdeRgHCLQ=;
 b=dbBFgsq8unaIonZJxvYUgytSwglbLthxvzsbfRd+22+srKDi9/RsUrWdvxy11fP+I1
 vDpk4Vf8PKX2xprXKoQy3IrD2E0cOHmHsz7Hze4P7Kge0khOYRg4XxP9SoyLfpr8rkHJ
 aJI1bxAt97pvJ3y9Q5mLEbL2+zAGhOhWFTRx/WeewNuGDMOCeukARy86MSn+EddF2yI0
 pfyrahK6JjCVeh7/zl/1jmukOEHWHYmLrRbCId5rDNQYWqCYpO5EekYc3ceCC2pP80Bi
 vbz/Fv1i0CgK/RJpLK7+q78QRuGE66TX3eq3DrGfvaFjLeX0qWniezbKlfIqHdRHO5HW
 djRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=j/pBjOdXf0s3z7Yx433rgH/yn8XqqRaPJIsdeRgHCLQ=;
 b=C0mHEIaML2sCCBtf6L0oflzY6+upzcgrOCncaz8oRYNwE1H+NX2oVZperJmuqkeZ2K
 TaW6eRVxvHXVW9KDp0T5iWSyddPWtg6RaZYuO3aa1E0/KTRoKxx+e86fZM7DAjtuMk6L
 NxWnMB1qhyGraWk+yg0r25BS2cuS0LtLcu73MWlKbHgiW+W/u6Yc9gJ8+7rSnI82JA+4
 yuCT0nDxIzpLC6Ur4VLzbzU4gBcEyH3w7A5Set6cYIY448f0HHgW0H8WWQJzS+ZsB31/
 jHaw+P1JujVEX64pMx5keXMrjqvdH6oK7Axq5n5wSvCXmdb8AUQmaICkz/e9USzUGSjp
 OKcw==
X-Gm-Message-State: AOAM530ipg8jQIorf37ATF7z98+LFH//R5vV/MW2T2bCUrUuVy3Mwy4S
 MZaC3S1zsAz/vmlW+E6344g=
X-Google-Smtp-Source: ABdhPJwhnkqcQe0SS0lpNxvwO9ozy2NoIPjfR1insKDUbKcf5fPHYgLtlg4Px1HmgkeLyAes8SBFUQ==
X-Received: by 2002:a17:906:3042:: with SMTP id
 d2mr27019634ejd.234.1620664351887; 
 Mon, 10 May 2021 09:32:31 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 z22sm13320772edm.57.2021.05.10.09.32.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 09:32:31 -0700 (PDT)
Subject: Re: [PATCH v3 2/4] dt-bindings: soc: rockchip: convert grf.txt to YAML
To: Rob Herring <robh@kernel.org>
Cc: heiko@sntech.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210508123743.18128-1-jbx6244@gmail.com>
 <20210508123743.18128-3-jbx6244@gmail.com>
 <20210510161234.GA210306@robh.at.kernel.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <a30fe9fd-d4bb-c5a7-f8bd-e783a6373727@gmail.com>
Date: Mon, 10 May 2021 18:32:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210510161234.GA210306@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_093234_510287_23836E00 
X-CRM114-Status: GOOD (  26.02  )
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



On 5/10/21 6:12 PM, Rob Herring wrote:
> On Sat, May 08, 2021 at 02:37:41PM +0200, Johan Jonker wrote:
>> Current dts files with 'grf' nodes are manually verified.
>> In order to automate this process grf.txt has to be
>> converted to YAML.
>>
>> Most compatibility strings are in use with "simple-mfd" added.
>>
>> Add description already in use:
>> "rockchip,rv1108-pmugrf", "syscon"
>>
>> Add new descriptions for:
>> "rockchip,rk3568-grf", "syscon", "simple-mfd"
>> "rockchip,rk3568-pmugrf", "syscon", "simple-mfd"
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>> ---
>>
>> Changed V3:
>>   remove select
>>   change unevaluatedProperties
>>   add separate schemas for each 'if' subset
> 
> Sorry, but by separate I meant different files. But you don't *have* to 
> do that.
> 
>>
>> Changed V2:
>>   add rockchip,rk3328-grf-gpio.yaml
>>   rename grf-gpio nodename
>> ---
>>  .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
>>  .../devicetree/bindings/soc/rockchip/grf.yaml      | 262 +++++++++++++++++++++
>>  2 files changed, 262 insertions(+), 61 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
>> deleted file mode 100644
>> index f96511aa3..000000000
>> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
>> +++ /dev/null
>> @@ -1,61 +0,0 @@
>> -* Rockchip General Register Files (GRF)
>> -
>> -The general register file will be used to do static set by software, which
>> -is composed of many registers for system control.
>> -
>> -From RK3368 SoCs, the GRF is divided into two sections,
>> -- GRF, used for general non-secure system,
>> -- SGRF, used for general secure system,
>> -- PMUGRF, used for always on system
>> -
>> -On RK3328 SoCs, the GRF adds a section for USB2PHYGRF,
>> -
>> -ON RK3308 SoC, the GRF is divided into four sections:
>> -- GRF, used for general non-secure system,
>> -- SGRF, used for general secure system,
>> -- DETECTGRF, used for audio codec system,
>> -- COREGRF, used for pvtm,
>> -
>> -Required Properties:
>> -
>> -- compatible: GRF should be one of the following:
>> -   - "rockchip,px30-grf", "syscon": for px30
>> -   - "rockchip,rk3036-grf", "syscon": for rk3036
>> -   - "rockchip,rk3066-grf", "syscon": for rk3066
>> -   - "rockchip,rk3188-grf", "syscon": for rk3188
>> -   - "rockchip,rk3228-grf", "syscon": for rk3228
>> -   - "rockchip,rk3288-grf", "syscon": for rk3288
>> -   - "rockchip,rk3308-grf", "syscon": for rk3308
>> -   - "rockchip,rk3328-grf", "syscon": for rk3328
>> -   - "rockchip,rk3368-grf", "syscon": for rk3368
>> -   - "rockchip,rk3399-grf", "syscon": for rk3399
>> -   - "rockchip,rv1108-grf", "syscon": for rv1108
>> -- compatible: DETECTGRF should be one of the following:
>> -   - "rockchip,rk3308-detect-grf", "syscon": for rk3308
>> -- compatilbe: COREGRF should be one of the following:
>> -   - "rockchip,rk3308-core-grf", "syscon": for rk3308
>> -- compatible: PMUGRF should be one of the following:
>> -   - "rockchip,px30-pmugrf", "syscon": for px30
>> -   - "rockchip,rk3368-pmugrf", "syscon": for rk3368
>> -   - "rockchip,rk3399-pmugrf", "syscon": for rk3399
>> -- compatible: SGRF should be one of the following:
>> -   - "rockchip,rk3288-sgrf", "syscon": for rk3288
>> -- compatible: USB2PHYGRF should be one of the following:
>> -   - "rockchip,px30-usb2phy-grf", "syscon": for px30
>> -   - "rockchip,rk3328-usb2phy-grf", "syscon": for rk3328
>> -- compatible: USBGRF should be one of the following:
>> -   - "rockchip,rv1108-usbgrf", "syscon": for rv1108
>> -- reg: physical base address of the controller and length of memory mapped
>> -  region.
>> -
>> -Example: GRF and PMUGRF of RK3399 SoCs
>> -
>> -	pmugrf: syscon@ff320000 {
>> -		compatible = "rockchip,rk3399-pmugrf", "syscon";
>> -		reg = <0x0 0xff320000 0x0 0x1000>;
>> -	};
>> -
>> -	grf: syscon@ff770000 {
>> -		compatible = "rockchip,rk3399-grf", "syscon";
>> -		reg = <0x0 0xff770000 0x0 0x10000>;
>> -	};
>> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
>> new file mode 100644
>> index 000000000..264e2e5ff
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
>> @@ -0,0 +1,262 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Rockchip General Register Files (GRF)
>> +
>> +maintainers:
>> +  - Heiko Stuebner <heiko@sntech.de>
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - rockchip,rk3066-grf
>> +              - rockchip,rk3188-grf
>> +              - rockchip,rk3288-sgrf
>> +              - rockchip,rv1108-pmugrf
>> +              - rockchip,rv1108-usbgrf
>> +          - const: syscon
>> +      - items:
>> +          - enum:
>> +              - rockchip,px30-grf
>> +              - rockchip,px30-pmugrf
>> +              - rockchip,px30-usb2phy-grf
>> +              - rockchip,rk3036-grf
>> +              - rockchip,rk3228-grf
>> +              - rockchip,rk3288-grf
>> +              - rockchip,rk3308-core-grf
>> +              - rockchip,rk3308-detect-grf
>> +              - rockchip,rk3308-grf
>> +              - rockchip,rk3328-grf
>> +              - rockchip,rk3328-usb2phy-grf
>> +              - rockchip,rk3368-grf
>> +              - rockchip,rk3368-pmugrf
>> +              - rockchip,rk3399-grf
>> +              - rockchip,rk3399-pmugrf
>> +              - rockchip,rk3568-grf
>> +              - rockchip,rk3568-pmugrf
>> +              - rockchip,rv1108-grf
>> +          - const: syscon
>> +          - const: simple-mfd
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +unevaluatedProperties: false

Hi Rob,

I've tried without '$defs' and I can't get dt_binding_check error free with:
allOf:
  - if:
      [etc..]
  - if:
      [etc..]
That's why this construction.
Could you test with patch below.
Please advise.

Johan

===

/Documentation/devicetree/bindings/soc/rockchip/grf.yaml: ignoring,
error in schema:
warning: no schema found in file:
./Documentation/devicetree/bindings/soc/rockchip/grf.yaml
  DTEX    Documentation/devicetree/bindings/soc/rockchip/grf.example.dts
  DTC     Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml
  CHECK   Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml
/Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml:
syscon@ff770000: compatible:0: 'anyOf' conditional failed, one must be
fixed:
	'rockchip,rk3399-grf' is not one of [....]
===
>> +
>> +allOf:
>> +  - $ref: "#/$defs/px30-grf"
>> +  - $ref: "#/$defs/rk3288-grf"
>> +  - $ref: "#/$defs/rk3328-grf"
>> +  - $ref: "#/$defs/rk3399-grf"
>> +  - $ref: "#/$defs/reboot"
>> +  - $ref: "#/$defs/usb2"
>> +  - $ref: "#/$defs/domains"
>> +
>> +$defs:
> 
> There's not really any point to using '$defs' unless you have 2 or more 
> references to them.
> 
>> +  px30-grf:
>> +    if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,px30-grf
>> +
>> +    then:
>> +      properties:
>> +        lvds:
>> +          description:
>> +            Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
>> +
>> +  rk3288-grf:
>> +    if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,rk3288-grf
>> +
>> +    then:
>> +      properties:
>> +        edp-phy:
>> +          description:
>> +            Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
>> +
>> +        usbphy:
>> +          description:
>> +            Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
>> +
>> +  rk3328-grf:
>> +    if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,rk3328-grf
>> +
>> +    then:
>> +      properties:
>> +        gpio:
>> +          type: object
>> +
>> +          $ref: "/schemas/gpio/rockchip,rk3328-grf-gpio.yaml#"
>> +
>> +          unevaluatedProperties: false
>> +
>> +        power-controller:
>> +          type: object
>> +
>> +          $ref: "/schemas/power/rockchip,power-controller.yaml#"
>> +
>> +          unevaluatedProperties: false
>> +
>> +  rk3399-grf:
>> +    if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,rk3399-grf
>> +
>> +    then:
>> +      properties:
>> +        mipi-dphy-rx0:
>> +          type: object
>> +
>> +          $ref: "/schemas/phy/rockchip-mipi-dphy-rx0.yaml#"
>> +
>> +          unevaluatedProperties: false
>> +
>> +        pcie-phy:
>> +          description:
>> +            Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
>> +
>> +      patternProperties:
>> +        "phy@[0-9a-f]+$":
>> +          description:
>> +            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
>> +
>> +  reboot:
>> +    if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,px30-pmugrf
>> +              - rockchip,rk3036-grf
>> +              - rockchip,rk3308-grf
>> +              - rockchip,rk3368-pmugrf
>> +
>> +    then:
>> +      properties:
>> +        reboot-mode:
>> +          type: object
>> +
>> +          $ref: "/schemas/power/reset/syscon-reboot-mode.yaml#"
>> +
>> +          unevaluatedProperties: false
>> +
>> +  usb2:
>> +    if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,px30-usb2phy-grf
>> +              - rockchip,rk3228-grf
>> +              - rockchip,rk3328-usb2phy-grf
>> +              - rockchip,rk3399-grf
>> +              - rockchip,rv1108-grf
>> +
>> +    then:
>> +      properties:
>> +        "#address-cells":
>> +          const: 1
>> +
>> +        "#size-cells":
>> +          const: 1
>> +
>> +      required:
>> +        - "#address-cells"
>> +        - "#size-cells"
>> +
>> +      patternProperties:
>> +        "usb2-phy@[0-9a-f]+$":
>> +          type: object
>> +
>> +          $ref: "/schemas/phy/phy-rockchip-inno-usb2.yaml#"
>> +
>> +          unevaluatedProperties: false
>> +
>> +  domains:
>> +    if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,px30-pmugrf
>> +              - rockchip,px30-grf
>> +              - rockchip,rk3228-grf
>> +              - rockchip,rk3288-grf
>> +              - rockchip,rk3328-grf
>> +              - rockchip,rk3368-pmugrf
>> +              - rockchip,rk3368-grf
>> +              - rockchip,rk3399-pmugrf
>> +              - rockchip,rk3399-grf
>> +
>> +    then:
>> +      properties:
>> +        io-domains:
>> +          description:
>> +            Documentation/devicetree/bindings/power/rockchip-io-domain.txt
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/rk3399-cru.h>
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/power/rk3399-power.h>
>> +    grf: syscon@ff770000 {
>> +      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
>> +      reg = <0xff770000 0x10000>;
>> +      #address-cells = <1>;
>> +      #size-cells = <1>;
>> +
>> +      mipi_dphy_rx0: mipi-dphy-rx0 {
>> +        compatible = "rockchip,rk3399-mipi-dphy-rx0";
>> +        clocks = <&cru SCLK_MIPIDPHY_REF>,
>> +                 <&cru SCLK_DPHY_RX0_CFG>,
>> +                 <&cru PCLK_VIO_GRF>;
>> +        clock-names = "dphy-ref", "dphy-cfg", "grf";
>> +        power-domains = <&power RK3399_PD_VIO>;
>> +        #phy-cells = <0>;
>> +      };
>> +
>> +      u2phy0: usb2-phy@e450 {
>> +        compatible = "rockchip,rk3399-usb2phy";
>> +        reg = <0xe450 0x10>;
>> +        clocks = <&cru SCLK_USB2PHY0_REF>;
>> +        clock-names = "phyclk";
>> +        #clock-cells = <0>;
>> +        clock-output-names = "clk_usbphy0_480m";
>> +        #phy-cells = <0>;
>> +
>> +        u2phy0_host: host-port {
>> +          #phy-cells = <0>;
>> +          interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH 0>;
>> +          interrupt-names = "linestate";
>> +         };
>> +
>> +        u2phy0_otg: otg-port {
>> +          #phy-cells = <0>;
>> +          interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH 0>,
>> +                       <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH 0>,
>> +                       <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH 0>;
>> +          interrupt-names = "otg-bvalid", "otg-id",
>> +                            "linestate";
>> +        };
>> +      };
>> +    };
>> -- 
>> 2.11.0
>>====

From c7d3c5abc51f2aaed01081570c5954c3973537d0 Mon Sep 17 00:00:00 2001
From: Johan Jonker <jbx6244@gmail.com>
Date: Mon, 10 May 2021 18:24:49 +0200
Subject: [PATCH] revert $ref fix

---
 .../devicetree/bindings/soc/rockchip/grf.yaml      | 30
+++++-----------------
 1 file changed, 7 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 264e2e5ff..8a8943317 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -53,17 +53,7 @@ required:
 unevaluatedProperties: false

 allOf:
-  - $ref: "#/$defs/px30-grf"
-  - $ref: "#/$defs/rk3288-grf"
-  - $ref: "#/$defs/rk3328-grf"
-  - $ref: "#/$defs/rk3399-grf"
-  - $ref: "#/$defs/reboot"
-  - $ref: "#/$defs/usb2"
-  - $ref: "#/$defs/domains"
-
-$defs:
-  px30-grf:
-    if:
+  - if:
       properties:
         compatible:
           contains:
@@ -75,8 +65,7 @@ $defs:
           description:

Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt

-  rk3288-grf:
-    if:
+  - if:
       properties:
         compatible:
           contains:
@@ -92,8 +81,7 @@ $defs:
           description:
             Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt

-  rk3328-grf:
-    if:
+  - if:
       properties:
         compatible:
           contains:
@@ -115,8 +103,7 @@ $defs:

           unevaluatedProperties: false

-  rk3399-grf:
-    if:
+  - if:
       properties:
         compatible:
           contains:
@@ -140,8 +127,7 @@ $defs:
           description:
             Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt

-  reboot:
-    if:
+  - if:
       properties:
         compatible:
           contains:
@@ -160,8 +146,7 @@ $defs:

           unevaluatedProperties: false

-  usb2:
-    if:
+  - if:
       properties:
         compatible:
           contains:
@@ -192,8 +177,7 @@ $defs:

           unevaluatedProperties: false

-  domains:
-    if:
+  - if:
       properties:
         compatible:
           contains:
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
