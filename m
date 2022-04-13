Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B2F2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 22:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsdgBk0nGJtWaS+4AX2BGkdBHjFGYYcD/caa1JooAl8=; b=fcAM/rg6dMTiTi
	QMSKMHH/LVLZPVWxYwrtYAlxlW16g2K4cgvR+PdT3UmEz1A/5gsrMWnklCoiWGuWcljr2uGBfd6pO
	tH5/jKlKtjRXQ6gLyfkX1AktPAz4I4gUTCzotQf1r3uYiORU0BfcuG4Nn/R+acq4sZ/OGfZh6nFEB
	ewcsFBQY4PyUvxQad1gsmlNgxos+Q/lJkJBjNlJ7p+Jlwtmtrr4B79mjLEdg5u7keZnoOw5DgWxqL
	N2Ie6dmT73qkAt1b+jbkty9LxFVtgzSD+2qLnVcbryj7qpg7jcjTlrrb0RW0LxgnQr+vUd7SflHTG
	gRywWWBltwaUeNxskudw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nelFx-002p2L-Us; Wed, 13 Apr 2022 22:14:33 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nelFm-002p1L-FL; Wed, 13 Apr 2022 22:14:23 +0000
Received: by mail-pg1-x52e.google.com with SMTP id s137so3050419pgs.5;
 Wed, 13 Apr 2022 15:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=OgQDc06AaabwNqvOZmx+M7xA6vS8FVswgmeGiTFEFmQ=;
 b=C/I0954RFQfeOgPPXsDSdcBq22+URv/YRu61nd8kIqommib46tUTT+kkUqguhMr/eF
 wbP4t2bAPwN+OZ4ZdSv5MhG/gqrQpPlQ/FNWxI8IhMQzwP0jDZpxLNyLHBCVC/zHy1Sq
 x6G/MnmA9w6LMJEsCqvoeSWMPUw2aClx8+n4E0UMXXtkf9BzuYKo8vljlQdHPNcn7kSU
 yKrQsZ1Vc2bqq97L1m0DDWfGhMuJpMloaYXRTgzi1u0E/vfXVFle34S0qZAN9jdO3nMo
 4xdxOfou1kusfI+sMA89/v7sjF/3py5tXrlll6qSfAMEJoyZJ5SN2FSQj+RpsPYHDQW7
 YT0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=OgQDc06AaabwNqvOZmx+M7xA6vS8FVswgmeGiTFEFmQ=;
 b=O6vC97FFRajADzoYtfXeshYLg5gf68TVufU7WJgNQcsgdliR9+6A0Y31689XiAFrKE
 fbNB+XB6EAaIYwubQB04NbTG9mBmdyrtbjl9IItQLS36Xq/P1S05RhVGKx5hLF1vLZyv
 JNSOvFWOfXjdjJEI+KrJFC7VVr4T0KNNynK4Dw8bTDGKBz6U2YNpaua1gU6GaxTnps49
 gXODSk+E/yLYfFZGAz5mYD1Ubj0EYhz642Qm1R0YIqw0VLovv8cZBmffGDcEGaADIzj5
 ZFgWCaxcNho5hvHjuQZ+Y3wJ/cadqc9JWjxS3Vz29/0nh7mLPSL8ZjDpIXuxYvb8MfAl
 jEmg==
X-Gm-Message-State: AOAM5304AuD+cwy0jl4DHabkA9kXubOFdJJlaXHGT17rZP9e6Gs0vxbY
 GXIVrCstJBkAoTs70C370ao6qyglHYw=
X-Google-Smtp-Source: ABdhPJy2YawYQEhEM5R8p5OuAttWelqENZrpl40KyZkXf46PikY9jQrnx15kgh8UD16TomdH3gXeHw==
X-Received: by 2002:a05:6a00:24c5:b0:4fa:f63a:4c3 with SMTP id
 d5-20020a056a0024c500b004faf63a04c3mr892965pfv.15.1649888060453; 
 Wed, 13 Apr 2022 15:14:20 -0700 (PDT)
Received: from [172.30.1.44] ([14.32.163.5]) by smtp.gmail.com with ESMTPSA id
 g15-20020a056a0023cf00b004e17e11cb17sm79582pfc.111.2022.04.13.15.14.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 15:14:20 -0700 (PDT)
Message-ID: <58fde143-ee39-a429-ce22-06d0c4095de8@gmail.com>
Date: Thu, 14 Apr 2022 07:14:15 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC PATCH 1/2] soc: rockchip: power-domain: Manage resource
 conflicts with firmware
Content-Language: en-US
To: Brian Norris <briannorris@chromium.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-pm
 <linux-pm@vger.kernel.org>, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Kevin Hilman <khilman@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <CGME20220406094558epcas1p4fa0c77a5acd6b73c192f6b19136cd5f9@epcas1p4.samsung.com>
 <20220405184816.RFC.1.Ib865f199d15221eab4ff77f70bd7e9e2eb04d32f@changeid>
 <c8664eae-4a10-bd1a-8898-01b96c05331e@samsung.com>
 <CA+ASDXNx+nwVKuisMAsHEKLfd=hqBzZmhFxphcYUF=bamqN2kA@mail.gmail.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
In-Reply-To: <CA+ASDXNx+nwVKuisMAsHEKLfd=hqBzZmhFxphcYUF=bamqN2kA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_151422_579573_4284439F 
X-CRM114-Status: GOOD (  30.48  )
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

On 22. 4. 9. 12:34, Brian Norris wrote:
> Hi Chanwoo,
> 
> On Wed, Apr 6, 2022 at 9:38 PM Chanwoo Choi <cw00.choi@samsung.com> wrote:
>> Instead of adding the specific function for only rockchip,
>> how about adding new function pointer (like block/unblock or start/stop and others)
>> into 'struct generic_pm_domain'? And add new pm_genpd_* function
>> to control the power domain.
> 
> I suppose that is technically possible, but I'm not sure it makes a
> ton of sense.
> 
> First, genpd doesn't seem to typically expose operations directly to
> client device drivers. It's mostly about abstract handling of the
> dependencies of "how do I power on this device?" behind the scenes of
> things like pm_runtime_*(). I guess maybe something like
> dev_pm_genpd_set_performance_state() is an approximately similar API
> though (i.e., a genpd operation exposed to client drivers)? I could
> try to go that route, if the genpd maintainers think this makes sense.
> 
> But secondly, this isn't exactly an operation on one power domain.
> It's an operation on the entire power controller. I suppose I could
> make a new domain here for the memory controller, and teach that
> domain to implicitly manipulate all the other domains provided by the
> PMU, but that feels like a fake abstraction to me.
> 
> Lastly, and perhaps least importantly: this likely would require a
> device tree binding change. So far, the memory controller hasn't had
> its own power domain. I guess one could argue that it has some
> similarities to a power domain, albeit one that is managed in firmware
> -- so maybe this is a reasonable "bug" to fix, if it really comes down
> to it.
> 
>> Because it is better to use subsystem interface.
> 
> I don't agree this is universally true. It makes sense when there are
> truly abstract concepts represented, which are likely to appear across
> multiple implementations. Or maybe if the object model is complex. But
> this operation seems very SoC-specific to me, and it's pretty simple
> to implement this way. Or, do you think this is really something that
> others will need -- pausing (and powering) a power controller so
> another entity can manage it?

Thanks for detailed reply.

I agree your thinking. If possible, just I prefer to use standard
subsystem interface. But as you commented, it is not general case
that this issue is related to all power domains. Also, there is dt
binding issue as you described.

I agree this approach. Thanks.

(snip)

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
