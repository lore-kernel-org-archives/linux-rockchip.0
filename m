Return-Path: <SRS0=JNKT=CC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECC14C433E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2020 23:10:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B966020702
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2020 23:10:14 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2BCG0F2K"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B966020702
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lCIRs3oVCMbc8n94xm7PlXcJUmhBP7wqJUdHAXjywZI=; b=2BCG0F2KX7i3RLKQqXDofOZ92
	WITk+EuP1mvnY+qcVf0bv1lUxgDESQ9zvjDLEF3uExHx8ukCdzGz5WURszVp3rkpr/CtWjUGK/zAE
	m4f3Q7fF1mIyasipYJpGiVgIGXKzy/I67AIjj/w5RO0YdUbuaarLbfU+zslBfVOLytiqOXSEO7Gd+
	chpKf2nWdz5g44QXzy5t4UxKW2H/x41EO06TQyIfVMXnA9CkGFkN+L2OMadmnGUV8YeovQTiXEdNj
	p/AhqbBIYkNr9eHVPwbB5fmRcRXFiW0ZTRu/Ph70GRLOxVkP1PUXJl41Im+iYyA1+WcVVg3/5+192
	tDC7n63Ew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kALbH-0001xL-66; Mon, 24 Aug 2020 23:10:03 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kALbE-0001wV-Gr
 for linux-rockchip@lists.infradead.org; Mon, 24 Aug 2020 23:10:01 +0000
Received: by mail-il1-f194.google.com with SMTP id f75so8522509ilh.3
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Aug 2020 16:10:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pNW+FpExzUZzKAgdzLbbC3mRjgc/ErkF14qzkePzpao=;
 b=nKE11rbK4CtucpZ8jJUS7dGR+BEd3W9OvdeLRA/QSAhPgm6oTjyxE1xMvlYj6UiMxe
 ItEKNLBXPEr6JWluxB8ZWZhVV64FGsdnGvhC4zSBlZmXwlVtTcrYt0ftKw2iNQ7qv9Cp
 ADo3fCdSN6CdMM0yUO3o9mVZpi55Rm6+sWAVYLzp+tq97bI0T944GvEH/1yNgeKdvN25
 Evqeqx3yY/E7tLdJBgSgNUD65TlfVy+aKuk9ItFqFnF75tHKX3rEfo/uFa3NpXLfuUF0
 0mqQ347a66T5oSMZWvIFYW9Km2/4yzxho/itMAVSq1rZyU4mjZz8wbukdHgjBGvWzv5u
 yiZQ==
X-Gm-Message-State: AOAM532CaooPfvjUh/c5yT0c1lxBgLADDzplN852KgUfuA7mlgbwmy1A
 oPoORZSgLaTSZGzAlM8jlQ==
X-Google-Smtp-Source: ABdhPJye+VWIVLJXB8wHyD0hNc5m+JPXvkFWV50q8MkRfj/wsTQkYrcYnZUWZ+rtqsOfgrGDN5f5SA==
X-Received: by 2002:a05:6e02:13ee:: with SMTP id
 w14mr7059209ilj.4.1598310599896; 
 Mon, 24 Aug 2020 16:09:59 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
 by smtp.gmail.com with ESMTPSA id n7sm7456664iop.45.2020.08.24.16.09.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Aug 2020 16:09:58 -0700 (PDT)
Received: (nullmailer pid 3506628 invoked by uid 1000);
 Mon, 24 Aug 2020 23:09:56 -0000
Date: Mon, 24 Aug 2020 17:09:56 -0600
From: Rob Herring <robh@kernel.org>
To: Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v1] thermal/of: Introduce k-po, k-pu and k-i for a
 thermal zone
Message-ID: <20200824230956.GA3500214@bogus>
References: <20200811123115.8144-1-finley.xiao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200811123115.8144-1-finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200824_191000_632307_D8FB9792 
X-CRM114-Status: GOOD (  18.75  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: huangtao@rock-chips.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-pm@vger.kernel.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, rui.zhang@intel.com, cl@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Aug 11, 2020 at 08:31:15PM +0800, Finley Xiao wrote:
> The default value for k_pu is:
>     2 * sustainable_power / (desired_temperature - switch_on_temp)
> The default value for k_po is:
>     sustainable_power / (desired_temperature - switch_on_temp)
> The default value for k_i is 10.
> 
> Even though these parameters of the PID controller can be changed
> by the following sysfs files:
>     /sys/class/thermal/thermal_zoneX/k_pu
>     /sys/class/thermal/thermal_zoneX/k_po
>     /sys/class/thermal/thermal_zoneX/k_i
> 
> But it's still more convenient to change the default values by devicetree,
> so introduce these three optional properties. If provided these properties,
> they will be parsed and associated with the thermal zone via the thermal
> zone parameters.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/thermal/thermal.txt | 14 ++++++++++++++

Bindings should be a separate file and this one is a DT schema now.

>  drivers/thermal/thermal_of.c                          |  7 +++++++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/thermal.txt b/Documentation/devicetree/bindings/thermal/thermal.txt
> index f78bec19ca35..ebe936b57ded 100644
> --- a/Documentation/devicetree/bindings/thermal/thermal.txt
> +++ b/Documentation/devicetree/bindings/thermal/thermal.txt
> @@ -165,6 +165,20 @@ Optional property:
>  			2000mW, while on a 10'' tablet is around
>  			4500mW.
>  
> +- k-po:			Proportional parameter of the PID controller when
> +			current temperature is above the target.
> +  Type: signed
> +  Size: one cell
> +
> +- k-pu:			Proportional parameter of the PID controller when
> +			current temperature is below the target.
> +  Type: signed
> +  Size: one cell
> +
> +- k-i:			Integral parameter of the PID controller.
> +  Type: signed
> +  Size: one cell

What's PID?

I know nothing about the sysfs params, but the binding needs to stand on 
it's own and needs enough detail to educate me.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
