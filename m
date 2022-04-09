Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (unknown [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA98EC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 15:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJrN6oAC7ScnzdquV4KwGqGEuxSipIzZGFcpkFHLt+0=; b=o+MnH+6xATxoJu
	vkIwfUd2cyYdLOtycrj4akZmOo+U/FhblVLH+Ue8XacIJsTkdcRBMf0xsFq1xtGGkrmu8aTBepCND
	bJgRpaml7PbB5JtwyrOpuPGHsAC3r190HWdM8SjfGw8bE8m+J4jL01A8hqlf8Kb2ol5j4EtODQRFW
	MTG6Nwur7GEzD8sjnR/2rYx9AK8HGaS4/bIQ2qRJGKyvniWwM5w8yuqmamOhPTRs8MQC0f6ypASTi
	8auA4kWWJsAPvOV1F5e7DSWhEVC8cFLtlJxgvQbP5VRF7SJtVHR4wushf1Vp35mvxGnsdfahCrwk9
	hcd/aGw5ouKDWIZJUibw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndCye-003OpF-Q4; Sat, 09 Apr 2022 15:26:16 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndCyc-003Oo6-1r; Sat, 09 Apr 2022 15:26:15 +0000
Received: by mail-yb1-xb36.google.com with SMTP id v77so1920975ybi.12;
 Sat, 09 Apr 2022 08:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cR2pF5s8t+OdbSSxVuJNcvAN3V/unWJTiAFDdZ/69qU=;
 b=GiGHHDgOsTCZkVZ3qA13Sb6FvHIZGDKjASv/UYR1gRUxpg4ro6pgjjruE+1alUxjvw
 9c/GDyeCONs+IqKo2Ih6w8bnMsIo3HpqNprf4VdbfduInTTJVOYRdlsuQNfouTh3AD+W
 oOafjH2YZ3EJJU8zCNpPqoWpjPHxfyXlgRhWtfbj801Fd8hgas74RpAPB0r1aO7h0fiu
 wyajkNmZl/hfF9qj8hc5k/C3IQLGwg5B1AkVm1FtHRV1RkaOF0L02PV+pU2fgqHzLGyu
 qLpT8KDMV5s7LckQ8unn6h6/eZdhs2+bxCxX/tMdPRnPWl+Z1U11qi8OZamegXOW0g7y
 skmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cR2pF5s8t+OdbSSxVuJNcvAN3V/unWJTiAFDdZ/69qU=;
 b=SYUpVuoHlayGR68kX6xfNOekGH0+kW7URXAax66DDrafnX/NZpaDJYYryKfZwMMYjO
 sfvFfJsBnZ7MXsw/tTTlbzm7Z5qSpR7WPtQfPrDcLgK+1JlCebVpu4OEHBqJO1hp783D
 jAy+GPzluqRp55aciF3CBod4g/ECJAdYtAfCV8JFJQz+mS2x7SrY6tZOtghuzTgA3Sot
 3hK73WhIj5pA4AkinJgSecSmbsYpeSTIhLNAXOtToHGww6W40aHsg5QwR/7VAtaspRQ5
 e9LxZHIZ5odyxtxvlHYRJVpeCazoeQ0+EfFee14FknImcvQ/xLSUxZJef4LwGk6bT0Os
 aetw==
X-Gm-Message-State: AOAM532oJaROM/CssAT9vU4BQAWOjJNrhm7At94c3gpTSbCRxpj3FEnI
 zCpPNNlqu6rpldIuRQ1DMNVHvzk37wzxf6ALn+I=
X-Google-Smtp-Source: ABdhPJwy9sT5pq4yY8qB+CnoQCmzTDVQInXJDJPL7q9XcmDqn8nFU9sVdEpR/0bq+uPrEm63H0VHbIoKc8s4gNZqods=
X-Received: by 2002:a05:6902:143:b0:628:7cf1:f2a9 with SMTP id
 p3-20020a056902014300b006287cf1f2a9mr16357436ybh.51.1649517972377; Sat, 09
 Apr 2022 08:26:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220409075147.136187-1-linux@fw-web.de>
 <CAMdYzYqx1iUuEe9FPpUTgL0L2i=Q5Sq2+0oiSYzqkV6noQ8BFw@mail.gmail.com>
 <CAMdYzYqaGe9_GbRCvG3kvLpNsVfVqGNkg=YYgbVR90Qtcs9YSA@mail.gmail.com>
 <4232341.5fSG56mABF@phil>
 <trinity-da7d86cc-5703-4657-858c-f241e5f0a6fd-1649505409042@3c-app-gmx-bap35>
In-Reply-To: <trinity-da7d86cc-5703-4657-858c-f241e5f0a6fd-1649505409042@3c-app-gmx-bap35>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 9 Apr 2022 11:26:01 -0400
Message-ID: <CAMdYzYpK-RTf_8FVte2QLJawCKCjU6efgkRjsBj6quWGSSE6xA@mail.gmail.com>
Subject: Re: Re: Re: Re: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x
 usb
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Dan Johansen <strit@manjaro.org>, 
 Frank Wunderlich <linux@fw-web.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_082614_156472_3BFE9AAC 
X-CRM114-Status: GOOD (  17.77  )
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

On Sat, Apr 9, 2022 at 7:56 AM Frank Wunderlich <frank-w@public-files.de> wrote:
>
> Hi,
>
> so to not break the binding and other boards the right Patch should be like this
>
> +++ b/drivers/usb/dwc3/core.c
> @@ -1691,17 +1691,17 @@ static int dwc3_probe(struct platform_device *pdev)
>                  * Clocks are optional, but new DT platforms should support all
>                  * clocks as required by the DT-binding.
>                  */
> -               dwc->bus_clk = devm_clk_get_optional(dev, "bus_early");
> +               dwc->bus_clk = devm_clk_get_optional(dev, "bus_clk");
>                 if (IS_ERR(dwc->bus_clk))
>                         return dev_err_probe(dev, PTR_ERR(dwc->bus_clk),
>                                              "could not get bus clock\n");
>
> -               dwc->ref_clk = devm_clk_get_optional(dev, "ref");
> +               dwc->ref_clk = devm_clk_get_optional(dev, "ref_clk");
>                 if (IS_ERR(dwc->ref_clk))
>                         return dev_err_probe(dev, PTR_ERR(dwc->ref_clk),
>                                              "could not get ref clock\n");
>
> -               dwc->susp_clk = devm_clk_get_optional(dev, "suspend");
> +               dwc->susp_clk = devm_clk_get_optional(dev, "suspend_clk");
>                 if (IS_ERR(dwc->susp_clk))
>                         return dev_err_probe(dev, PTR_ERR(dwc->susp_clk),
>                                              "could not get suspend clock\n");
>
> but this needs fixing dts using the new clock names
>
> this is a link to the series moving from bulk_clk to named clocks:
>
> https://patchwork.kernel.org/project/linux-usb/patch/20220127200636.1456175-3-sean.anderson@seco.com/
>
> regards Frank

I've submitted a fix for the backwards compatibility issue.
https://patchwork.kernel.org/project/linux-rockchip/patch/20220409152116.3834354-1-pgwipeout@gmail.com/

This fix is standalone and necessary no matter which route we decide
to go with this series (and the rk3328/rk3399 support as well).
With this patch, dwc3 is functional on the rk356x as the series was
submitted, so if we decide to fix everything all at once, that is a
viable option.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
