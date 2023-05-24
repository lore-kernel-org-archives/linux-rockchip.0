Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2BC1C77B73
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 16:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DVxo8s33UCDmh/UnxTdlePL11ZEpCKYP+NJ6YgibOc=; b=bcJDT8h5opDWLk
	s3ip6BgcVMWzUgMarPi+pQKWPZNrp9PFyLNzAzGP2IHeDyf4navyO27/M6UenqnmOVfG3f99Uc4jO
	IKW4eZqpyopgaf4TJDUjUnRb5xFa6l4l2JR8vxvITTrF5hf0v2Iw6CaTiqjNHTnqvDNSEUmKTakXh
	NLz9s4be3/t209WYa8Z9k6drnLD2z2nkj8Pe3kRGiMOszVYSAeDYvoIYM/fskbb5axm0/x/yvkxG6
	XIQpuByX+9XC5ko7BFblYCrWw1qDu4IRudtHLof8F7BVhLy+UmRGfqQ+pbaPO7nAsD79uMCYDJmfy
	12RJF+Gf0Fnf/aMbKwyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1r6h-00DyLU-1J;
	Wed, 24 May 2023 16:12:59 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1r6e-00DyK3-2M
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 16:12:58 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-19a77e4c8dcso372923fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 May 2023 09:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684944772; x=1687536772;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=d2krvbmUqOnT4KV8ff+7HqiCvnexQ6qfpMeD5hBBKDI=;
        b=BXQc/vB2/r9Dq425nCPgq9QmObSBwPsi5anYqf70r7oyC2C1g6fTPoPoi9p2iSrWSm
         c9D/8N8/y21hqTJf1gOpXyYMdQes2dCzj59IGxkfyYh8LBDkXHDQAxrvv7vH8mJHkvJw
         yGtmuS42uE0ofz1TYDAIU+jb/hfkVvbpCBPFqtsOCPYzgNy8/L1AGiqZK6RB9p5zpb9z
         lPJxI73lFmeaf+4ZuSTk8xD6mS8czma8D89H23EPnv6jYzfBiFZ2bIgEz8XBJ6W/yCp5
         8tbMO1HjL4HxIFk1o3J9og0WW5tl985SvZV0UI2jO57IL0lUKOHuzKC3HZi5WqQgwGtp
         G+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684944772; x=1687536772;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2krvbmUqOnT4KV8ff+7HqiCvnexQ6qfpMeD5hBBKDI=;
        b=QKSw9wgwoMGeerxjaX0FRLCaXsdhHxgO84q3EAAsXMvEI6Md2ADY2r4oSSPhGOQ1sU
         auJdBRMsb2IQrQLfiQDl0irVDk0HggN4C1oL3qABRpcIFGv7cZwiAIfkMsBtAS32C6jG
         4Np1VvIVYH1vqR1qPNGyi5Oj6C0E5Oz0M9AXci3faUVhCtZNCPMv7APxwOM76mmXGZ/N
         dQbAuKfSJKtyUkYgQRP7VXfZ4zrCOLczKvRGbWe87G7mIEK4KYXsT941SFY4yWIs+Jx9
         Q+HxmZmIm0vweu3IQMPPEfDfjkgSrCqlMDO4hsCScx6FER3sy/Fa2S51Z1q5tABNYM+1
         bfwA==
X-Gm-Message-State: AC+VfDyN1hlqTrrktNGsHsgT4qhRufyNHkagMjxcWb/jd/9KJ13mZn4/
	9knnFS+Ka18BDWVHraC1wTo=
X-Google-Smtp-Source: ACHHUZ7Lso2poEP7KecW3pW1g3gvJHrRqlkMvpmtiMnveNZ9VYZhCemAUJ0Zdx5qdJxt5oBJVxxi4Q==
X-Received: by 2002:a05:6870:93d5:b0:195:fe38:3b60 with SMTP id c21-20020a05687093d500b00195fe383b60mr161544oal.25.1684944772365;
        Wed, 24 May 2023 09:12:52 -0700 (PDT)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u1-20020a05687036c100b0019ea8771fb0sm82550oak.13.2023.05.24.09.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 09:12:52 -0700 (PDT)
Message-ID: <646e3784.050a0220.71431.07f7@mx.google.com>
X-Google-Original-Message-ID: <ZG43gSO+UYAi6bv+@neuromancer.>
Date: Wed, 24 May 2023 11:12:49 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, zyw@rock-chips.com,
	sebastian.reichel@collabora.com, andyshrk@163.com,
	jagan@amarulasolutions.com, perex@perex.cz, tiwai@suse.com,
	lgirdwood@gmail.com, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
References: <20230523213825.120077-1-macroalpha82@gmail.com>
 <20230523213825.120077-2-macroalpha82@gmail.com>
 <f5b780ac-e079-4c24-9dfc-05aee52deb9c@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5b780ac-e079-4c24-9dfc-05aee52deb9c@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_091256_771075_37CFE2B9 
X-CRM114-Status: GOOD (  15.83  )
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

On Wed, May 24, 2023 at 12:57:02PM +0100, Mark Brown wrote:
> On Tue, May 23, 2023 at 04:38:20PM -0500, Chris Morgan wrote:
> 
> > +static unsigned int ratios_12000[] = {
> > +	8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000,
> > +	48000, 88235, 96000,
> > +};
> > +
> > +static struct snd_pcm_hw_constraint_list constraints_12000 = {
> > +	.count = ARRAY_SIZE(ratios_12000),
> > +	.list = ratios_12000,
> > +};
> 
> ...
> 
> > +	case 12000000:
> > +		es8328->sysclk_constraints = &constraints_12000;
> > +		es8328->mclk_ratios = ratios_12000;
> 
> The other constraints have separate rates and ratios, with wildly
> different values between the two - the ratio (I'm guessing a clock
> divider) being written to a 5 bit field which obviously can't contain
> the actual sample rate.

A bit over my head here, I saw this patch from the Rockchip BSP kernel
branch and tested it on my mainline kernel. Long story short the clock
for the mclk is 12000000. I see that there are similar issues for the
ES8316 on the Rock 5B, so I will probably just wait for a proper fix
there and then implement something similar here.

Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
