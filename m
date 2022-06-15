Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92A7CCCA473
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 17:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvMOfG2Np25woecXs4dldoCQ/z7bm0v/+n1U0qg4Z2o=; b=ieL05KYpGw7WHV
	fG5zqmmJpHQ0i9PBpW9BPxyLpdDipCO5rMLeay2niB8O+a3QtQRIaOphQITjSIRDVAITa9/CocAf3
	LLPKI0fHTgaCdO2AaE0IEkIfvEts4sCeetH6HlDCAIYB2wMeC/EkjrdyGxGpUFPcvRYu87UZSwnUG
	J4d0bvwOdLhD8FM2zmOhTuTw0WVzDHDOTPVWaNOnWdBb/4mbXlLxgjU/wcIxZPI0ot0En7DgGxUqy
	gOcVr5xh2XM9/mB4KM7Y/CnUaO0wvwmtZiKITEdeelvbxZWAEMW+NoKNvmLHuz5XE5QhGQmYwSOJ9
	yg2IuuuoD/MMezEjdVdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Wpn-00FhOk-BT; Wed, 15 Jun 2022 17:29:39 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Wpa-00FhIC-Ni
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 17:29:28 +0000
Received: by mail-pj1-x102f.google.com with SMTP id t3-20020a17090a510300b001ea87ef9a3dso2670630pjh.4
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 10:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=il/KBps6ii6Gd5FHFi9j3ZFy5kAtbrCy1Dgg4+ftDI4=;
        b=nGG3zeC3ujp1Lyr79SQNyz3Yei5eS80xvtngKVpw/5YXlWoG5FFrAxwd8qnLOVoDPS
         SIaZg0HNQMFqJ/TRcM4ZVL9bkTGfLuu9eUAPFm41Xl9FQLgRlRlMO5MR7y10uklFmE+u
         PipgW0PTjhJ1/PPY6CMmEFkVkCl9GbkCXKKPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=il/KBps6ii6Gd5FHFi9j3ZFy5kAtbrCy1Dgg4+ftDI4=;
        b=dzK3aBANiyMTsvU+U9SM6F52dGRepFsL5YlFCxXNLv2xwoiKUojMV2QHSjruExMhSl
         pca9VdthhWw2LyxWAiXy9GEkWb2KIvmin2NPObdQDR+mSLb4a4gHhx7wzrEKeFJ4LSnf
         egRIIYOe8lsgdrOk/rOoYRe7VGYYUQI0iS2x0qZUbu2d736O8FSPLNftRHRqjkGg4axS
         Eg6FM/iCevp6iZS9k/6ALy+IOtXZXxBLZOEdMsGRDfNc3vAmH+PdBQu7ddjjkf7vlb9P
         COKxYLKeKmXjRO7ZCMR/o0NlckcHqgerzijmzZ48nK6q+fCW7kr1CXI65PBqFLNhmSOv
         82ZQ==
X-Gm-Message-State: AJIora98fpAiTZmZgXOkPdnGUpqrdvPEWnyvgrXCcfNApcDB96CY1Ury
	2KpP+DAZDTF3W9UIwDS/ley6AQ==
X-Google-Smtp-Source: AGRyM1sYHET89749fDt5TDoEPXQeflY6qeT3IV7HNP/7XVyGqeBNCkZrte/HBbD0kJf4G/g2FjkDMQ==
X-Received: by 2002:a17:90a:6444:b0:1ea:b662:c12e with SMTP id y4-20020a17090a644400b001eab662c12emr506120pjm.199.1655314162312;
        Wed, 15 Jun 2022 10:29:22 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:342:e7bd:5391:5d5b])
        by smtp.gmail.com with ESMTPSA id g3-20020a636b03000000b003fcfdc9946dsm10402512pgc.51.2022.06.15.10.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 10:29:21 -0700 (PDT)
Date: Wed, 15 Jun 2022 10:29:19 -0700
From: Brian Norris <briannorris@chromium.org>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Douglas Anderson <dianders@chromium.org>,
	Guenter Roeck <groeck@google.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [v1] arm64: dts: rk3399: i2s: switch BCLK to GPIO
Message-ID: <YqoW7+6iL/SHGaAY@google.com>
References: <20220615045146.3134420-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615045146.3134420-1-judyhsiao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_102926_797846_C6550D1E 
X-CRM114-Status: GOOD (  20.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Hi,

Normally the subject should look like "[PATCH v1] ...", not just "[v1]
...".

On Wed, Jun 15, 2022 at 04:51:46AM +0000, Judy Hsiao wrote:
> We discoverd that the state of BCLK on, LRCLK off and SD_MODE on
> may cause the speaker melting issue. Removing LRCLK while BCLK
> is present can cause unexpected output behavior including a large
> DC output voltage as described in the Max98357a datasheet.
> 
> In order to:
>   1. prevent BCLK from turning on by other component.
>   2. keep BCLK and LRCLK being present at the same time
> 
> This patch adjusts the device tree to allow BCLK to switch
> to GPIO func before LRCLK output, and switch back during
> LRCLK is output.

I get how this "allows" switching, but it seems like this would make
more sense in a patch series that implements the switching.

I'm also not certain, but it might be worth adding this to the DT
binding, so we set the 'pinctrl-names' piece (which presumably you need
to use in a driver) in stone.

> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi

...

> @@ -2225,6 +2226,8 @@ pcfg_input_pull_down: pcfg-input-pull-down {
>  			input-enable;
>  			bias-pull-down;
>  			drive-strength = <2>;
> +		pcfg_pull_none_hiz: pcfg-pull-none-hiz {
> +			bias-disable;
>  		};

This isn't valid syntax. You probably didn't resolve conflicts correctly
when rebasing a patch? You need an extra brace somewhere.

Also, this definition seems like it belongs next to 'pcfg_pull_none'
(around line 2138), or at least somewhere near the other 'pcfg_pull_*'
handles.

Brian

>  
>  		clock {
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
