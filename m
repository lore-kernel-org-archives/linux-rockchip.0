Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA370C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 18:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdFD92ZYeIf8IY1PSsAaL21X9qZgNaeaS47/CX2JROE=; b=m9L2DelAL51T3F
	wPPHb8MdInQNkwlMAqOH8u4NvvIl9Id9vua2p4PmuDSHOQCLceXRlSZi58EFEeXdEvvRe9JPdWSD9
	uK0Z6AtWgkvxTLJoPHIK/63gZpliNqrhppGWmkxJAkB+bk4RlLEsz0hj/oSqhMz/eT1VNlZ6vTcod
	aixV4J7BkygQn+NW4TR+hes1eaS8o2hwDrJ7M7chIZLlLCaO5OsFg0Ci7Z4VAEeLWenkVc7Ew1m3j
	sJBQeggKpWiWCVmNTWLbz4q5DV4utFzdTcoFADnLNHFIUVLt4XfLJfDmRTXn6qT9zHOTiwdHBXYqT
	LOwEDd/7N6nBBy2Oh6fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnlpS-00AtvV-Go; Sun, 08 May 2022 18:40:26 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnlpH-00Attp-8E; Sun, 08 May 2022 18:40:16 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 7so10259071pga.12;
 Sun, 08 May 2022 11:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=k+SEgZtU6OqEyglEHf513mkMo6bNpZuHdtrr6hv8Nq8=;
 b=SAISvop68z0vD+mD4/R20kGa98LoxlJ+uBQk0DwsI/NyJTYD4AgTjvxG/cZhEyCY55
 QQ3SLLUjtdJgU0qiyWSXJwBQJ1Dm1Cqw9gC6hbJpC+Ys49b5zv2oQx9sTlFh3uZk9I9q
 Dc5NC9mWIxfyvsYQPbdctiRdViKHc2567iQIdjzj7Rys84xVnudPom0sITZGL2N1PLXK
 NOFdhrTejbSV8+TyQlL4p9MUJq3Ezd9ryw9wHeHjAGXwv9b6bqVYbkx3rRfcAhF+F0z5
 6f/0ckPo16wbrbpb8DeCKrh73d/xV0AlWEKIpkIfQBKC9JwMhGYrUlLbxmIdiMhvU25a
 G5SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=k+SEgZtU6OqEyglEHf513mkMo6bNpZuHdtrr6hv8Nq8=;
 b=zcPjxdwQKElEM3XAg+t6yG4b7b6c+YUOqenqovz7HtnCqq6T/FIYp0Eg3ApBD2m44P
 ajDGJzjbEjWkSsuSJe8jjkfw/ezy1mZbtTAogpLD6XmNhCHgPz2l01GsyWCAYCveu6/Z
 ehIdjROdbzCKoa8+S/PY5In0j3ibFoOag4tTj3kFaTgT8Ecj47n5NqjfLwFhydsLVE4d
 B/h/x9YAU2+vTVrLoZnolj/jkqeUpf1E1v5yH55ZdjLMr/LoqDfCEu5gmFSzYfEhD0JU
 vBKZU8g4kw5Jcmv3v/ZE2tIMeFa0RYTbevP5AP8ve/jjN2Lo2azN1/tSvTORelOHOYiz
 sFuw==
X-Gm-Message-State: AOAM5321dHx29gqbWSoxv+bly/L49pfCdQt8vmc/7jWAX3TmjggvcVbk
 8kGO1yP5TzEc5XcgUutik9s=
X-Google-Smtp-Source: ABdhPJzlbs1CoS4KmQp8exvRi+/96RIvfDY0MOLHGDeTBFMfC636egYHAxJMCYFRKhQuaQwr+BNoFg==
X-Received: by 2002:a05:6a00:b8b:b0:50d:6080:6be7 with SMTP id
 g11-20020a056a000b8b00b0050d60806be7mr12703385pfj.56.1652035213112; 
 Sun, 08 May 2022 11:40:13 -0700 (PDT)
Received: from [172.30.1.41] ([14.32.163.5]) by smtp.gmail.com with ESMTPSA id
 s186-20020a625ec3000000b0050dc76281a2sm6970759pfb.124.2022.05.08.11.40.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 May 2022 11:40:12 -0700 (PDT)
Message-ID: <2b8f0e62-ab3c-23bd-f9e8-590df3af12be@gmail.com>
Date: Mon, 9 May 2022 03:40:08 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC PATCH 0/2] rockchip / devfreq: Coordinate DRAM controller
 resources between ATF and kernel
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-pm@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220406014842.2771799-1-briannorris@chromium.org>
From: Chanwoo Choi <cwchoi00@gmail.com>
In-Reply-To: <20220406014842.2771799-1-briannorris@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_114015_341308_7A0E1AA9 
X-CRM114-Status: GOOD (  15.55  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Brian,

On 22. 4. 6. 10:48, Brian Norris wrote:
> On Rockchip RK3399, there are a few hardware resources that are shared
> between firmware (ARM Trusted Firmware) and kernel (power domain
> driver) that need to be coordinated properly for DRAM DVFS to work
> reliably. See patch 1 for plenty more description.
> 
> These fixes are based in part on the specification in the RK3399, and in
> part based on extrapolation and observation. Any confirmation about the
> behavior of PMU_CRU_GATEDIS_CON0, etc., is welcome.
> 
> Otherwise, see the patches.
> 
> Regards,
> Brian
> 
> 
> Brian Norris (2):
>    soc: rockchip: power-domain: Manage resource conflicts with firmware
>    PM / devfreq: rk3399_dmc: Block PMU during transitions
> 
>   drivers/devfreq/rk3399_dmc.c      |  13 ++++
>   drivers/soc/rockchip/pm_domains.c | 118 ++++++++++++++++++++++++++++++
>   include/soc/rockchip/pm_domains.h |  25 +++++++
>   3 files changed, 156 insertions(+)
>   create mode 100644 include/soc/rockchip/pm_domains.h
> 

Applied them. with Heiko reviewed-by tag for patch1.

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
