Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DD2C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 16:52:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2044E60F5E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 16:52:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2044E60F5E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rSFpRS1gPADMva6RdtWnYQM2wYOFoCGqZHecuAiIc0o=; b=wtOSzorqD5eDkRU6kKCmCVRYCb
	MyD7JQoAai3V7iSGzP+D/66MOopyXVqwH9xitgRe0IYFd9Y95k5F8ALspQp7mpXt5V+C9f/MQDXAq
	2y55dQ+AGP6MGg4O8HD0bN/RoenNiWZrlDmxedS9o6ybzZho44lqIFybJam4jS2IGVVi3BUrDwaZv
	dDL0tC+C6Nc7I9ucW30JD2ubqF5fngZobfvmBw4IVHVP1JuplEckrAKW7VWwWwldfqKPpqaMyOP0s
	2P/sercSrF6K+Z4gBEgE3DyMtuhEUnlBVJe4NHgQabt/w/D/HzHe8zxspwjuaFfSOzykwpVvWLsBj
	PKNEPpcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mG2K7-0032Wx-QO; Tue, 17 Aug 2021 16:52:23 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mG2K3-0032UQ-Sj; Tue, 17 Aug 2021 16:52:21 +0000
Received: by mail-ej1-x632.google.com with SMTP id bq25so29883627ejb.11;
 Tue, 17 Aug 2021 09:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=TRXsHZES2DVeAZffLo0g6CHeWjHSwwEsvSttTLF0opY=;
 b=Oj8TfBSw0nR1udwocmRMy5LTA1CO/ql0IygaS0l38S5R8yh0DHR1jycGSypIMVoIeU
 tknFTc/Dc0f9aD2t0glUsZpH5L4qYRqpjp3auZoQJ4wifdBliFa2mvXUYnGmHkR8x5zE
 NStJFeeMYKUxwTB2F6hJtJLAgRbYKhZe+OfCYOYVZUdO2PGTX1krRQi2j4QHV5EiFC5o
 gKQreD/LkhF2TNW/m17OMAOfnWMDQcIlqcV20ASNjpGkYdcv0PTg98dAIfJ9Tu7I0WmM
 X6Lr6jocf9OJl06OHcSyD8L5SCd952cENZcRkURhFm7kX08gU1u8KlPIXDGhQRl6g9BE
 9GKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TRXsHZES2DVeAZffLo0g6CHeWjHSwwEsvSttTLF0opY=;
 b=cjtwlyxSgT2T9X83N1bZ+msTqIXc2tq+L3jQlvUFp6dsddGVHnQ3XlM+lG3oWU1Dyc
 2SulNIfXv+Ftxj0f4dWiKsTTHdhxxcHSIemU8AEpU6eFxMPJyvHW6T8QFS09SvThkNrq
 jm5Y7q3OAl/r3wg1iea6e81MpkjPpmeqogXUqaJ4Orx25GOn1sotYEeR1PhvVCbYiXnR
 SQkAQpUY+jA+wg6ZMMcU8wOyitaH4xxjDijWei5ziKejX1m6491utZlGzl4X2XAZ5CfJ
 EBf1T1OihM9beXzMspamqnVKy9cQN5GucHp1FgY5Y1lAXPuIH/KZ9pDLM9GumPQleONY
 CqrQ==
X-Gm-Message-State: AOAM533l0me8fUcN7bYKpY8gif/xqt7+r45tO/LCf3ciMj5zcPAKvPtd
 LSn62xtaIBEyk8Kk3v8wvQ0=
X-Google-Smtp-Source: ABdhPJy2AwPrcJG4REFLp9EWRiEjPVB9uvY4PcqHVViQmKOeV3+aoosl/oui2Stx9Rm7JX5vpfz/4g==
X-Received: by 2002:a17:907:20b6:: with SMTP id
 pw22mr5083209ejb.512.1629219137363; 
 Tue, 17 Aug 2021 09:52:17 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 r6sm1330826edq.20.2021.08.17.09.52.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Aug 2021 09:52:17 -0700 (PDT)
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: phy-rockchip-inno-usb2: add
 rk3568 documentation
To: Peter Geis <pgwipeout@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
 <20210812204116.2303617-3-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <c7ff9234-cc3b-3679-bc63-73c5eb825269@gmail.com>
Date: Tue, 17 Aug 2021 18:52:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210812204116.2303617-3-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_095219_993235_5CA436D1 
X-CRM114-Status: GOOD (  19.68  )
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

Hi Peter,

Some comments. Have a look if it's useful.

On 8/12/21 10:41 PM, Peter Geis wrote:
> The rk3568 usb2phy node is a standalone node with a single muxed
> interrupt.
> Add documentation for it to phy-rockchip-inno-usb2.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.yaml  | 31 ++++++++++++++++---
>  1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> index 5bebd86bf8b6..d2a749c3f9a3 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> @@ -18,6 +18,7 @@ properties:
>        - rockchip,rk3328-usb2phy
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy
> +      - rockchip,rk3568-usb2phy
>        - rockchip,rv1108-usb2phy
>  
>    reg:
> @@ -50,6 +51,9 @@ properties:
>      description:
>        Phandle to the extcon device providing the cable state for the otg phy.
>  

> +  interrupts:
> +    description: Muxed interrupt for both ports
> +

This allows every Rockchip SoC dtsi to add an interrupt here.
You have only restricted the requirements.
The goal is to restrict things and filter bogus properties.
If it was done because it doesn't compile, maybe could you try/test/use
something like the rockchip-io-domain.yaml $defs format.

===

unevaluatedProperties: false

allOf:
  - $ref: "#/$defs/rk3568"

$defs:
  rk3568:
    if:
      properties:
        compatible:
          contains:
            const: rockchip,rk3568-usb2phy

    then:
      properties:
        interrupts:
          maxItems: 1

      required:
        - interrupts

    else:
      properties:
        host-port:
          properties:
            interrupts:
              description: host linestate interrupt

            interrupt-names:
              const: linestate

          required:
            - interrupts
            - interrupt-names

        otg-port:
          properties:

           interrupts:
             minItems: 1
             maxItems: 3

           interrupt-names:
             oneOf:
               - const: linestate
               - const: otg-mux
               - items:
                   - const: otg-bvalid
                   - const: otg-id
                   - const: linestate

          required:
            - interrupts
            - interrupt-names

>    rockchip,usbgrf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
> @@ -78,8 +82,6 @@ properties:
>  
>      required:
>        - "#phy-cells"

> -      - interrupts
> -      - interrupt-names

Also remove them as properties in this part when a separate $defs is used.

>  
>    otg-port:
>      type: object
> @@ -109,8 +111,6 @@ properties:
>  
>      required:
>        - "#phy-cells"

> -      - interrupts
> -      - interrupt-names

dito

>  
>  required:
>    - compatible
> @@ -120,6 +120,29 @@ required:
>    - host-port
>    - otg-port
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3568-usb2phy

> +      then:

Test "if then else" alignment with yamllint

> +        properties:
> +          interrupts:
> +            maxItems: 1
> +        required:
> +          - interrupts

> +      else:

alignment

> +        properties:
> +          host-port:
> +            required:
> +              - interrupts
> +              - interrupt-names
> +          otg-port:
> +            required:
> +              - interrupts
> +              - interrupt-names
> +

>  additionalProperties: false

additionalProperties does workn't with allOf: - $ref. Use
unevaluatedProperties.

>  
>  examples:
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
