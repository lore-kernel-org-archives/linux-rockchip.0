Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AC32C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 01:05:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 731E061353
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 01:05:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 731E061353
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6XOs1ik1Spv7BmnPiLiIp1+oeIMGIGRQVIqT/mFY54o=; b=BcKSB5xBrVhNdv3lNxchhKkMH
	ZGteMJULcZ97v059JWNgcU+eoDWbYH7de4urvmejzIQe+TvHAX7r06gSx97fBoMIaaOUkuX5pdYYK
	mI/XEnOPFLqkqclz72YawVkQ6hOqLAvvp4ZVOPDTkjj4xS8gTv1X4N4T9D5h53RK7nmiz8CKjvR2G
	NtOxeOtlYIv4iNQYslv0t6QZT/6a/0BFgwhf9tMz5W6HnIT2T/dgEeWZDVlsLhja76ParU5oATpqE
	BEegC6vQlxQuNweXKbBnsgrPmnbindhQ2Ntq98gCwvLORI1i2axobY8Yp6BZivkiUqXPOL12byhl6
	yfx5tY/eA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lioAJ-00GaBp-MS; Tue, 18 May 2021 01:04:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lioAA-00GaAZ-TF; Tue, 18 May 2021 01:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SxHwQbAd9PyYMHvbV2F26fHPcBALRSGxTgLDpMOWzQQ=; b=ldWdTpEX9wSHIiuX0jmnwuN/Vl
 LtmHLhB3KJJsI8L5hrmchE6u4diHv74JlNzsnlnBcWUqTB7cn/W871mEnsPVfH72AM5ER1r//dyr2
 OiiruazWu7JVlcn4q0cYLsfTESe5oDt+t+wnmUnhf7Y30ViikGVqsBWyyH/Sexc3Bz0AIzhd5wZIZ
 KxsLOqGXMYdpVRm1p834a1pTsQcTjsBzxpnT9Hvd1hHlTx/Qj2/Fx1MPm3GmQ8RGy/ej0bayB5cv8
 2xTRyZeFebJrmp14ntq1gfrqpiOMGhyZf7YjiI/TP/8fOSc597p+6Fh2CxgLdnMQH1DjhsAMMniOV
 sqT9rdcA==;
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lioA7-00EFEP-Ia; Tue, 18 May 2021 01:04:45 +0000
Received: by mail-oi1-f172.google.com with SMTP id u144so8213774oie.6;
 Mon, 17 May 2021 18:04:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SxHwQbAd9PyYMHvbV2F26fHPcBALRSGxTgLDpMOWzQQ=;
 b=ODie0+HWKSSjAGlZ/pNPHnlqoocq3IYyzNkU7k8MY7B3IYt843Ir3TzE0f2wXfCJ/I
 VOHzIN3SmTXMMaY+Gei/jqhpzlgBqi/9YW1Jg2H42/IOthonbdi1+Do13p5LErcYPHRL
 vVPGOfHA8mGBywPN81vTD9DauVS6oDmwYX93LiUhskf5rHgJJrWDYQYLtY8wtMhMvxiy
 KCgyZ2Ssjd2AO6MGaeNqwMJAiSPPKz6oWIKbFjvK7WFH7CoPa6ysepGmna4DWkS+c59z
 ByDTPnKNQvQrGOmNxB9VtUh84rUmY9Dc/4XLlwdQbiGFy8TD49fOtwrCINP7YVJhZ19F
 5MCA==
X-Gm-Message-State: AOAM532lONsgRRDG7zK6ko5w9hIaS3l5L7xP01OyerL2/+t2mOiWZU+w
 RrH9vzR3+1tjmfcxnLsjspv+Upa7dA==
X-Google-Smtp-Source: ABdhPJyf0pyW0S41fWKZ804dgH5cblGefnR1aOV1tvOb/H1KFlgu8LzH9jN6ZmU22hvwZ66FGvTi/A==
X-Received: by 2002:aca:2417:: with SMTP id n23mr1411208oic.111.1621299880509; 
 Mon, 17 May 2021 18:04:40 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z9sm3398791oog.25.2021.05.17.18.04.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 18:04:39 -0700 (PDT)
Received: (nullmailer pid 3562405 invoked by uid 1000);
 Tue, 18 May 2021 01:04:38 -0000
Date: Mon, 17 May 2021 20:04:38 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, linus.walleij@linaro.org, kishon@ti.com, vkoul@kernel.org,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/4] dt-bindings: phy: convert rockchip-usb-phy.txt to
 YAML
Message-ID: <20210518010438.GA3548693@robh.at.kernel.org>
References: <20210512122346.9463-1-jbx6244@gmail.com>
 <20210512122346.9463-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210512122346.9463-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_180443_648816_25E71B6E 
X-CRM114-Status: GOOD (  22.57  )
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

On Wed, May 12, 2021 at 02:23:43PM +0200, Johan Jonker wrote:
> Current dts files with Rockchip 'usbphy' nodes are manually verified.
> In order to automate this process rockchip-usb-phy.txt has to be
> converted to YAML.
> 
> Add "#phy-cells", because it is a required property
> by phy-provider.yaml

Maybe we should relax that. Or changing the node name would solve it. 

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/phy/rockchip-usb-phy.txt   | 52 -------------
>  .../devicetree/bindings/phy/rockchip-usb-phy.yaml  | 86 ++++++++++++++++++++++
>  2 files changed, 86 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> deleted file mode 100644
> index 4ed569046..000000000
> --- a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -ROCKCHIP USB2 PHY
> -
> -Required properties:
> - - compatible: matching the soc type, one of
> -     "rockchip,rk3066a-usb-phy"
> -     "rockchip,rk3188-usb-phy"
> -     "rockchip,rk3288-usb-phy"
> - - #address-cells: should be 1
> - - #size-cells: should be 0
> -
> -Deprecated properties:
> - - rockchip,grf : phandle to the syscon managing the "general
> -   register files" - phy should be a child of the GRF instead
> -
> -Sub-nodes:
> -Each PHY should be represented as a sub-node.
> -
> -Sub-nodes
> -required properties:
> -- #phy-cells: should be 0
> -- reg: PHY configure reg address offset in GRF
> -		"0x320" - for PHY attach to OTG controller
> -		"0x334" - for PHY attach to HOST0 controller
> -		"0x348" - for PHY attach to HOST1 controller
> -
> -Optional Properties:
> -- clocks : phandle + clock specifier for the phy clocks
> -- clock-names: string, clock name, must be "phyclk"
> -- #clock-cells: for users of the phy-pll, should be 0
> -- reset-names: Only allow the following entries:
> - - phy-reset
> -- resets: Must contain an entry for each entry in reset-names.
> -- vbus-supply: power-supply phandle for vbus power source
> -
> -Example:
> -
> -grf: syscon@ff770000 {
> -	compatible = "rockchip,rk3288-grf", "syscon", "simple-mfd";
> -
> -...
> -
> -	usbphy: phy {
> -		compatible = "rockchip,rk3288-usb-phy";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		usbphy0: usb-phy0 {
> -			#phy-cells = <0>;
> -			reg = <0x320>;
> -		};
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> new file mode 100644
> index 000000000..3b6b39da0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/rockchip-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip USB2.0 phy
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,rk3288-usb-phy
> +      - items:
> +          - enum:
> +              - rockchip,rk3066a-usb-phy
> +              - rockchip,rk3188-usb-phy
> +          - const: rockchip,rk3288-usb-phy
> +
> +  "#phy-cells":
> +    const: 0

If we did add this, we'd want it to be 1 so we could identify which phy.

> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - "#phy-cells"
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +patternProperties:
> +  "usb-phy@[0-9a-f]+$":
> +    type: object
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      "#phy-cells":
> +        const: 0
> +
> +      clocks:
> +        maxItems: 1
> +
> +      clock-names:
> +        const: phyclk
> +
> +      "#clock-cells":
> +        const: 0
> +
> +      resets:
> +        maxItems: 1
> +
> +      reset-names:
> +        const: phy-reset
> +
> +      vbus-supply:
> +        description: phandle for vbus power source
> +
> +    required:
> +      - reg
> +      - "#phy-cells"
> +
> +    additionalProperties: false
> +
> +examples:
> +  - |
> +    usbphy: usbphy {
> +      compatible = "rockchip,rk3288-usb-phy";
> +      #phy-cells = <0>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      usbphy0: usb-phy@320 {
> +        reg = <0x320>;
> +        #phy-cells = <0>;
> +      };
> +    };
> -- 
> 2.11.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
