Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81C04C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:33:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E98A761466
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:33:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E98A761466
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YH0+Rg/kb5+4cIdfv9duL3GyznURtel9nETssUKsBqk=; b=ZArFF9LnyUbvtkW29glcD7Ifr
	/mAilEr9PPORfelAKG3PNF/MaS5u5iJW8Unxj9vj9UBuxNJEz/V2ANQ1TvN7q8L41Vi+Stt9mJzez
	Y09IFxGtKbn6KT9nupFE0c8aINow7Y2Z5Pl94aDUjV55bBkUFKk8A6edaYeOsPBgkQT8+MOzkohHZ
	Jdy68Q1wiNSs7ezPR2I08a2xBNaJcZoCDX6FJTWeY0fFLui9Yf1iRpHJKuDjCzz8orZPOvYA55mvB
	5RybG3QqpkEwwWIF9IQy61FfXfIZgh96tEl2aenYi/3MKr/0BfrDzU3Zn933gV2bfqdARoKc8t2HN
	eFiV16fGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcakz-008eYD-1T; Fri, 30 Apr 2021 21:33:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaTp-008cUI-Fz; Fri, 30 Apr 2021 21:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=VxUW5OdCWJGNzSLfVlPjiWNNaJCqr+3fTpTcrVSH4ZY=; b=cpoQXWp6RQ2r60PDhXdhHmfnVl
 QDc6SlgbmK1bdYZ7VBIiwEZ0bpO28r5tWbGR9McfQ7FsY3AMqFi+xQCqj2YFNG9npxQU1r67rTsNq
 aDKHnqe0n1s0Yd4YEZ3K8x/+jh6z62ia5B5nUq/EvtKGAwB/OeGNOx12goBtCxvxnc3QRF9H9R9Ig
 03xrZvtKA7RFPaYNm3D7whJBGtbVY8mpyaDZte1agfMdcrEpiIa01LnT9YoiFpooQkIp0I/BSbYoK
 nF+53eF4nIbFXmSjmpvA0JMNlRlPxFQnbKcsR5E6T5XpLywC3rXQ65PrZSF0Bsjh41/Pbbm7wafOu
 DCwFYJVg==;
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaTn-001fww-28; Fri, 30 Apr 2021 21:15:20 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 d3-20020a9d29030000b029027e8019067fso63759863otb.13; 
 Fri, 30 Apr 2021 14:15:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VxUW5OdCWJGNzSLfVlPjiWNNaJCqr+3fTpTcrVSH4ZY=;
 b=H4WQpAzuSfGxKlTmgjJLl/oyPjjAnh2CUKza8DpJrPbZFgfS0Rz/RQMXqNC9TYh6xE
 nU15vwe2RwmqkThVEMTOSgtGcc71j9hZ4Ln10Uj2ZBlJNW8AT3a+TiSc1t8dj92THduI
 jdDPlOwLDk/dcHwcfaGs56+Rvy3ZaXmyWY1EaL6zXgmaaYRxKl//hijpPFR2LhAgoL7h
 DEvsNpu9XWzgzwh9xKCjVnYUQM5mdTc82yli1wfenZmirhfYmiJbP4zkQ8uiaL6CNHsf
 l2YjFaHHXewGtSUnKaINDnpLDgVlVIoWInuU0sfReaqoKJ5PBxC+DJJpcBd/jhw/Rkyc
 yVcw==
X-Gm-Message-State: AOAM532v5oWPsuakSISN07V0ARlHrY0FoRg6e/bbIdcqfzW6QvIKbegG
 +cCqJ30pjOXsKOSCay/XTA==
X-Google-Smtp-Source: ABdhPJw7SRe7qPCQI/wcVuiwivDcq25XvfKU7E097UGMjVGG4wUzYEUfjYOOtZwSlRM3zkSLsuyZFQ==
X-Received: by 2002:a9d:630e:: with SMTP id q14mr5179477otk.69.1619817317126; 
 Fri, 30 Apr 2021 14:15:17 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w140sm1098248oif.42.2021.04.30.14.15.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 14:15:16 -0700 (PDT)
Received: (nullmailer pid 3907199 invoked by uid 1000);
 Fri, 30 Apr 2021 21:15:14 -0000
Date: Fri, 30 Apr 2021 16:15:14 -0500
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: heiko@sntech.de, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com,
 huangtao@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: Re: [PATCH v4 06/10] dt-bindings: gpio: change items restriction of
 clock for rockchip,gpio-bank
Message-ID: <20210430211514.GA3905898@robh.at.kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081306.17784-1-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081306.17784-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_141519_126088_41A6DF65 
X-CRM114-Status: GOOD (  15.56  )
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

On Thu, Apr 29, 2021 at 04:13:06PM +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> The clock property need 2 items on some rockchip chips.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> index d993e002cebe..7b3fd2975c74 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -22,7 +22,8 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

Need to define what they are:

minItems: 1
items:
  - description: ...
  - description: ...

>  
>    gpio-controller: true
>  
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
