Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5750CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 21:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfDbTBWjsdzY3SyADVPu7bIBy1BnJDfMFDp6bR/eiK0=; b=CCJE19YQtGLXWi
	ZIEiWF3hGZUCkwTPrI4L2zuzOEj0vTQXxaTcoX9roO3DCUGkEEXt7rFTmA1VTJo2Cu6z0oIorMwnl
	VbxImfKcU0s/i+JtfxA7KlKxJM4VNggUueUqzun1zRW2ifW0KUzGLNlqOsYLhGwYVtVOXOuV3EnqJ
	WQJ0hYHTEQ0R5Ize4YljT+VUPjNwHM72i4sTcyGwWJOum31LG1PWMPRnffrmz7qGU4lFNTyydIe/f
	dWvEehiwcdYmPYhMzoJBjL/+nGroxVZJhN0rGTpZ7QLF5RYMBmiC+Z7Uv9CA+Z13Ym2cGMdktOLoB
	JG/iV0S+eEm1oYCtfelA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO4rA-008YyA-0O; Sat, 26 Feb 2022 21:44:00 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO4r7-008Yxa-4Q
 for linux-rockchip@lists.infradead.org; Sat, 26 Feb 2022 21:43:58 +0000
Received: by mail-ed1-x52f.google.com with SMTP id g20so12160541edw.6
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Feb 2022 13:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=gwvZa2dcVddk9XhPqnnw7BdDWgMrIWi0l2xYTw7uVq4=;
 b=ieuNHUrgJeWwVhmGIAi92YZErZliThzoNqRKo14Vh+sq3q1K9eTV+DiAdkpOoRTYaG
 WXNuRbXkazy+XO0BJK7MKSAt6Em7dNuT2QdgJpNTqlHnHm/v95O0pfprvooUCt/NvsNP
 GsGeRZcVt6bsmPb/OVepmmCzhLbFdfigKKPGdNKglInJGsvP4kYjYGakxo0TYHKiLOeR
 Hb0B/WodBnzk5LwENVkEwgLMfptAZ2nIh3ed/smowJh+s/V5xsy5YA0d78SnAaHhEZ1c
 +0eV1wxXGGCaV8f22P5RzZZMaDyTH5meSyMsfyoAqbg0Qhf1U2asE7lyjTKtcPwZkp0R
 ISqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=gwvZa2dcVddk9XhPqnnw7BdDWgMrIWi0l2xYTw7uVq4=;
 b=dX4kkomTKeAO7kB2voWz9UBp7Jn4u24pi6UqFKU0GkfrfMre+trABTeV9zmqYTeCIh
 LSZKRgJwY1onybNZ+5ZiZb0OMdc/EaZ4yfivdlhb27GEmt4nTi00cwlWxisM5ui+J3TL
 NTwWJdobUfbVE3nl/ucHwoBD5rMRn6vFTYo692ihd3+ERW9PyqoD4ROVobLeinJXPniZ
 ru75R5SG15hz7P4mP67UFCNTfOOYjdq9zX1Xsa09OBYCr+d07uRl07oOCT6R6k5OWRjU
 Wpa7lhDmdpfUesdTElk+QrulW+/cVD1kKjVkabAdJDxogYrMD5CyN5y2E2X//ytu4wBP
 oYrg==
X-Gm-Message-State: AOAM533a+Er7ENS0djQERnijAKPeqwpy7gn/R5DUt16Nvvd5/DUDHBHP
 FvVzjA8txW0UY7Ph0p7fsns=
X-Google-Smtp-Source: ABdhPJyNzE3rhYea/K5v861WD31Sr8quT5QSWT3FQqUAGpv/O3PpnjVEp3OTedF/I9qaslLnxSh6uQ==
X-Received: by 2002:a05:6402:518b:b0:412:80a3:fb6e with SMTP id
 q11-20020a056402518b00b0041280a3fb6emr13399264edd.84.1645911834812; 
 Sat, 26 Feb 2022 13:43:54 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 t19-20020a1709060c5300b006d582121f99sm2658615ejf.36.2022.02.26.13.43.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Feb 2022 13:43:54 -0800 (PST)
Message-ID: <cdbf28ae-b54f-dfaf-887b-c5705319ac06@gmail.com>
Date: Sat, 26 Feb 2022 22:43:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 08/11] usb: dwc3: add rk3568 dwc3 support
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220226184147.769964-1-pgwipeout@gmail.com>
 <20220226184147.769964-9-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220226184147.769964-9-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_134357_247252_16D7161F 
X-CRM114-Status: GOOD (  17.55  )
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

See comments by rob+dt:

https://lore.kernel.org/linux-rockchip/CAL_JsqJwNdUfoYM8SZmOgMG9iAyZkJ4-kzjjiDDm_mdmghTEOA@mail.gmail.com/

> Presumably you are getting lucky here (with link order). The kernel
> has no logic to decide which driver to bind to if there are 2 matching
> drivers.

Due to the fall back string you make a mess with two drivers.
Don't use dwc3-of-simple.c
(only for rk3399 and legacy support. Not for new SoCs),
because core.c has now reset support.
You are creating a race which driver get probed first.
Handle your quirks in core.

Johan

On 2/26/22 19:41, Peter Geis wrote:
> The rk3568 dwc3 controller is backwards compatible with the rk3399 dwc3
> controller.
> Add support for it to the dwc3-of-simple driver.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
> index 57ba9427ad74..d9d1c5bfac3f 100644
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -195,6 +195,10 @@ static const struct of_device_id of_dwc3_simple_match[] = {
>  		.compatible = "rockchip,rk3399-dwc3",
>  		.data = &dwc3_of_simple_data_rk3399,
>  	},
> +	{
> +		.compatible = "rockchip,rk3568-dwc3",
> +		.data = &dwc3_of_simple_data_rk3399,
> +	},
>  	{
>  		.compatible = "sprd,sc9860-dwc3",
>  	},

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
