Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7972AC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 19:12:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3E4CC60FC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 19:12:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3E4CC60FC3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gbeu4MPne4eJUyugcl5l/+sKapNPLhFh4AUOfjdcyC8=; b=oiRlUBDGy3kzBU
	q9puYrIaPw/WurgAOn+oSOsDZorXab2vDcSBkrmQ0utAjuVk5GnaD29CLHvMev4vgHDL5SEImnpSO
	pt+ywiskv6eqn2t96JYt6/PePEO8ySFRSLXjvjDwfHkajeBRHassgBNur9d88Z3NFLEvvR6sz9tpB
	3QWMa0B2XuS07A7R5Q/FwKXLFr67wC459+s8uYwhOWh2L4tfFLBHyfZBBZZa08NbuVVfJdA2kq3Ti
	qo6TpBUwneXjQcGP4ZdZo1sUciV3YV9z05og4trOymLjz1rqyU25HIxOozFVN62TEVzAMGP9gQYJo
	H4CoXAvoRKbaT+Qoaodg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mG4VI-003IYP-Ny; Tue, 17 Aug 2021 19:12:04 +0000
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mG4VF-003IXt-Si
 for linux-rockchip@lists.infradead.org; Tue, 17 Aug 2021 19:12:03 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 l36-20020a0568302b24b0290517526ce5e3so18689896otv.11
 for <linux-rockchip@lists.infradead.org>; Tue, 17 Aug 2021 12:12:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uXzO0y9o8PUx9fCL1+Vgb1TmRusWXk/oMxy31KXHS88=;
 b=drswKZEy/6Mau/UROAiolP4SLa3BaxF1Qw/sTzIsF6Oz7X+sMP+mtiR7MtBZwTIgc5
 /L8c18mW/aJ0DT6zd6uB8XWoGhmlyxd/XzSDCdPKzce4E/wX2lH9iJRtTSIpU6/TRU54
 AOkoAN2ckDBtPJhT4yp62pUDW9soA9tOgjOrBOH+3LgoZp+4bjWYdplnjJ7gabFALeQp
 LU4S42ZgouDrOdfORGZCH4iBlk/Ud9fTmYHzRepTD2BzLcOozHMAJoRMW+Hm1Fx6yQSz
 UEhWigvDgQTiucDUJaDwDj5MXXt3dS4xGA5vTR8HJqwyK2stYkAtE/9cnslpreJjAfwb
 bj0g==
X-Gm-Message-State: AOAM533mDSUAONqE5mrjQOSCA81/+6hr9PMiToqLB9XDfqxtJPubdPUc
 ITK6JGtV7avw7Ib8ZtyDOQ==
X-Google-Smtp-Source: ABdhPJwxMPZIWpFXp2HS41uTczOJje8tNeXb6wBw+I9J9V0Fx8Q0OIrqbLkFuz1cy2yMkusuoy1i9A==
X-Received: by 2002:a9d:19d1:: with SMTP id k75mr3727316otk.355.1629227520380; 
 Tue, 17 Aug 2021 12:12:00 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q20sm651386oiw.58.2021.08.17.12.11.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 12:11:59 -0700 (PDT)
Received: (nullmailer pid 681816 invoked by uid 1000);
 Tue, 17 Aug 2021 19:11:58 -0000
Date: Tue, 17 Aug 2021 14:11:58 -0500
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, maccraft123mc@gmail.com, sre@kernel.org,
 heiko@sntech.de, lee.jones@linaro.org, pgwipeout@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <YRwJ/riSIGfNu64B@robh.at.kernel.org>
References: <20210810025436.23367-1-macroalpha82@gmail.com>
 <20210810025436.23367-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210810025436.23367-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_121201_972843_574DD3A5 
X-CRM114-Status: GOOD (  27.71  )
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

On Mon, Aug 09, 2021 at 09:54:33PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added.
> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
> 				      sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
> 					 sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
> 				 filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 36 ++++++++++++++++++-
>  1 file changed, 35 insertions(+), 1 deletion(-)

Kind of a big change without converting this binding to DT schema first. 

> 
> diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
> index 23a17a6663ec..89b9fa7e10b5 100644
> --- a/Documentation/devicetree/bindings/mfd/rk808.txt
> +++ b/Documentation/devicetree/bindings/mfd/rk808.txt
> @@ -70,13 +70,40 @@ Optional RK817 properties:
>  
>  - vcc8-supply:  The input supply for BOOST
>  - vcc9-supply:  The input supply for OTG_SWITCH
> +
>  - codec:	The child node for the codec to hold additional properties.
>  		If no additional properties are required for the codec, this
>  		node can be omitted.
> -

Unrelated whitespace changes.

>  - rockchip,mic-in-differential: Telling if the microphone uses differential
>  				mode. Should be under the codec child node.
>  
> +- battery:	The child node for the charger to hold additional properties.
> +		If a battery is not in use, this node can be omitted. If a
> +		battery node is used, the following values are required:
> +		rockchip,resistor-sense, rockchip,sleep-enter-current,
> +		rockchip,sleep-filter-current, and a phandle to a

Property names are out of date...

> +		monitored-battery node that contains a valid value for
> +		charge-full-design-microamp-hours,
> +		charge-term-current-microamp,
> +		constant-charge-current-max-microamp,
> +		constant-charge-voltage-max-microvolt,
> +		voltage-max-design-microvolt, voltage-min-design-microvolt,
> +		and a valid ocv-capacity table.

Please list these 1 per line and make it clearer this is the list of 
properties for the battery node.

> +- rockchip,resistor-sense-micro-ohms: Value in microohms of the battery sense
> +				      resistor. The PMIC only supports values
> +				      of either 10000 or 20000. This value is
> +				      used by the driver to set the correct
> +				      divisor value to translate ADC readings
> +				      into the proper units of measure.
> +- rockchip,sleep-enter-current-microamp: Value in microamps of the sleep enter
> +					 current for the charger. Value is used
> +					 by the driver to calibrate the relax
> +					 threshold.
> +- rockchip,sleep-filter-current-microamp: Value in microamps of the sleep
> +					  filter current for the charger.
> +					  Value is used by the driver to derive
> +					  the sleep sample current.
> +
>  Optional RK818 properties:
>  - vcc1-supply:  The input supply for DCDC_REG1
>  - vcc2-supply:  The input supply for DCDC_REG2
> @@ -459,6 +486,13 @@ Example:
>  			};
>  		};
>  
> +		rk817_battery: battery {
> +			monitored-battery = <&battery_cell>;
> +			rockchip,resistor-sense-micro-ohms = <10000>;
> +			rockchip,sleep-enter-current-microamp = <300000>;
> +			rockchip,sleep-filter-current-microamp = <100000>;
> +		};
> +
>  		rk817_codec: codec {
>  			rockchip,mic-in-differential;
>  		};
> -- 
> 2.25.1
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
