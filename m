Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7626C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 15:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekw0UwpvOU6yKu1re0DsEq8HpHFrjXIPlOyifVZ90w4=; b=QDqztmdJSWT5pI
	X7l41Pqyedinu0g2Q7IjhwlFVx+eVBzhmbXrjR952MDYzQ1Rh1MPAvhvPETcWzwbQ3McTBAGXqq4d
	AmvNMh8j8ODshBl565p81VnVUAdEeH7G2zqHAp0OVxy5GZ2FX75jISfSPhySX7Mz2/bFI7alJBaFh
	/+efth0JLPuOiAcRp0xungJUywiCgUPdljrJg0vuJp580E9y363+n8HpEbAMeC/Ng6N2cPOsiT+hj
	n8p4VrUDjF0RlXIkhN5S8ykbRLUzWeksOsRgpP3nYDjoSGqqbdTAu8w6j2pHAinP2currk3YLaSgp
	l9+45l0tabLOLVzNp4Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neIUS-00EwAS-7r; Tue, 12 Apr 2022 15:31:36 +0000
Received: from mail-oa1-f48.google.com ([209.85.160.48])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neIUP-00Ew3w-5b
 for linux-rockchip@lists.infradead.org; Tue, 12 Apr 2022 15:31:34 +0000
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-e2afb80550so9207043fac.1
 for <linux-rockchip@lists.infradead.org>; Tue, 12 Apr 2022 08:31:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yeK0Qe+bcNo2GUyRc1iqCE2CyXcGcUyGjHEO/3zFmvk=;
 b=oHPMjkc3Br7Jzcw4n7KLcKpZvvvxS1l4NdLYRtYwDMKIxyln7vtgtqom5hxd856Uzj
 VFOfONOcU+ac62h3ilr6ulfqlkMP2vsv+oluenXg1DfjaXDLRR0jGJ1UaXUitCLnOZUB
 mZsKSZlX/lsJsKmGwqZVPt3co5xRVS+CbFufDj0brT7NfyeasYqFu464xyTNpbuXqXwm
 cYLubSf7wqACWC+RqJDep7VIvOdRbL/sHoZFK00evDHE0+//Rc9Mh7YrVZFZbzEFi2l6
 SSZ3i0bonQcUMLM/3URvfWgqgeeHzlbxKIEHOUaNT40G1unFT3aJRtQBmThkNfdgMwQy
 10fA==
X-Gm-Message-State: AOAM531rkgKgeaZtjLjjVM85mseOcA1OboEHqcxLeCU0kUdWvb+NQ5LF
 8/lKaTXUjGjGvXv4CzFaUQ==
X-Google-Smtp-Source: ABdhPJwOCUZU4bnvPcvVgrHK6g0K4py1kZ3fwcKrN2HvUM4sYaNp/OmKe9UXC96ctEZzG4/wSby/mw==
X-Received: by 2002:a05:6870:8929:b0:db:1bf5:3b8f with SMTP id
 i41-20020a056870892900b000db1bf53b8fmr2363662oao.285.1649777482749; 
 Tue, 12 Apr 2022 08:31:22 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 v3-20020a05683011c300b005e6e4a5bd35sm2766016otq.79.2022.04.12.08.31.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Apr 2022 08:31:22 -0700 (PDT)
Received: (nullmailer pid 275870 invoked by uid 1000);
 Tue, 12 Apr 2022 15:31:21 -0000
Date: Tue, 12 Apr 2022 10:31:21 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com, zyw@rock-chips.com,
 maccraft123mc@gmail.com, jon.lin@rock-chips.com, sre@kernel.org,
 heiko@sntech.de, krzk+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/4 v6] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <YlWbSd0mPpzfLkPd@robh.at.kernel.org>
References: <20220408212121.9368-1-macroalpha82@gmail.com>
 <20220408212121.9368-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408212121.9368-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_083133_233628_CF49CC85 
X-CRM114-Status: GOOD (  23.90  )
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

On Fri, Apr 08, 2022 at 04:21:18PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added. Note that this
> patch requires the following commit (still pending):
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220404215754.30126-2-macroalpha82@gmail.com/

Thanks for adding this, but it should be below the '---' as this will 
not be relevant once committed. Note that any links to patches that we 
do want preserved should be lore.kernel.org links.

> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> index bfc1720adc43..d0dccb1aaf4c 100644
> --- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> @@ -117,6 +117,47 @@ properties:
>          description:
>            Describes if the microphone uses differential mode.
>  
> +  charger:
> +    description: |
> +      The child node for the charger to hold additional properties. If a
> +      battery is not in use, this node can be omitted.
> +    type: object
> +    properties:
> +      monitored-battery:
> +        description: |
> +          A phandle to a monitored battery node that contains a valid
> +          value for:
> +          charge-full-design-microamp-hours,
> +          charge-term-current-microamp,
> +          constant-charge-current-max-microamp,
> +          constant-charge-voltage-max-microvolt,
> +          voltage-max-design-microvolt,
> +          voltage-min-design-microvolt,
> +          and a valid ocv-capacity table.
> +
> +      rockchip,resistor-sense-micro-ohms:
> +        description: |
> +          Value in microohms of the battery sense resistor. This value is
> +          used by the driver to set the correct divisor value to translate
> +          ADC readings into the proper units of measure.
> +        enum: [10000, 20000]
> +
> +      rockchip,sleep-enter-current-microamp:
> +        description: |
> +          Value in microamps of the sleep enter current for the charger.
> +          Value is used by the driver to calibrate the relax threshold.
> +
> +      rockchip,sleep-filter-current-microamp:
> +        description:
> +          Value in microamps of the sleep filter current for the charger.
> +          Value is used by the driver to derive the sleep sample current.
> +
> +    required:
> +      - monitored-battery
> +      - rockchip,resistor-sense-micro-ohms
> +      - rockchip,sleep-enter-current-microamp
> +      - rockchip,sleep-filter-current-microamp
> +
>  allOf:
>    - if:
>        properties:
> @@ -323,6 +364,13 @@ examples:
>                  };
>              };
>  
> +            rk817_charger: charger {
> +                monitored-battery = <&battery>;
> +                rockchip,resistor-sense-micro-ohms = <10000>;
> +                rockchip,sleep-enter-current-microamp = <300000>;
> +                rockchip,sleep-filter-current-microamp = <100000>;
> +            };
> +
>              rk817_codec: codec {
>                  rockchip,mic-in-differential;
>              };
> -- 
> 2.25.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
