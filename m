Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E82A2C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jan 2022 19:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAZKNsJcBga5Acgq2J/0eFToBKtzNVNPUJoTwSUS9rY=; b=txmvDA1WTmY8EE
	4170mKFq8B0V801iSpEPimz2/ZTRyvrIY07hojt1XVq94PSQthOml6P5a/6Ggjet15TzMh7BCqbbt
	xTtPp2reyc8LnmzFkyab1tt8Bg/FeV8illXSxh32gqubrqW+n4hl65QwIFDYmEGE+dnoRQff33QPi
	viMeECpkKQPpnrqpp6C3P+yrRiMdECuYn/SYvhPf2UKqg9vS9VdEoHttri4DbW2JJMtzktV2PoC6F
	Fhl9+VQQ2l6+Bh4Jwlk+opnhlrqIIf5nConfsUzzBIWyXXex38WLS39MUT117nUhZeukBxBK/Wo/T
	U7O1ykO03RoUoU9VnelA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7Me2-00HPc2-Kk; Tue, 11 Jan 2022 19:17:22 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7Mdy-00HPYv-Vf
 for linux-rockchip@lists.infradead.org; Tue, 11 Jan 2022 19:17:20 +0000
Received: by mail-ot1-x329.google.com with SMTP id
 a23-20020a9d4717000000b0056c15d6d0caso19674302otf.12
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jan 2022 11:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XXfEP3eDjuVf2I0hzndCbBZCmDbt3TXTw7VkqrBBp6g=;
 b=GqsQHSUI/DSQ5OHrZM4cAIUTNhygx8SMT8UZeIjwtBBPg0C1RHAiQTcr+e9hK8YBlu
 l8uN7LR5JJfZ1yuZ2HAK/ZI1cEra7YuXTRaICw2tpHE2SpAPNvHUYAQWqMGqoRK2xquF
 NunrkGKuyj1aPAhJandfNKcNq/xbyYZ/ka9wk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XXfEP3eDjuVf2I0hzndCbBZCmDbt3TXTw7VkqrBBp6g=;
 b=iopCroqUqkINBUANuvAt4ByE/ur1arDk8KAzsCkxnYR5TfS9otv5JNAFQqvRFgF8fy
 r/Hp/AsxARZyllB4BAS7c+sv5gcVcjwkWcu/4nJFemy+sqFLODcmm41fJjc3hlwNRKbm
 6i9Jx2HsyRnORmo0Xdhy/eUH4KKW8cvxblXl6s3P/GflMxVzmtAbToSbnDb3DQ2FMqXn
 Z9mmx/JyUNy8Y1IbIwnQQPhfpuQoNdaaVtsl7ffr4AFL3C9oOnNokaeo9mlJ3wB9Zhq5
 Wn8guK4JHR5SwxKvnDDt3+SPMDMLDKZ2Q67E4iKPi3fq/9ExEFVJo1xJ499So0aSM1+e
 vGrA==
X-Gm-Message-State: AOAM533BCNspRrAscJL/CCHuEYMi5bcDtByAbQdOFXfn1C/UPKYR2ogy
 s+S6JNUy8HcJtb1Mc5RETuCPo7Bd228LhA==
X-Google-Smtp-Source: ABdhPJyq3Vl5PW8NHcEzbrkHcVJ7z9Id4z9aWBPApz7mqoGU/jSSRuKpr29RofCiha2HkOakMzpGNQ==
X-Received: by 2002:a05:6830:111a:: with SMTP id
 w26mr4352750otq.33.1641928636760; 
 Tue, 11 Jan 2022 11:17:16 -0800 (PST)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com.
 [209.85.210.49])
 by smtp.gmail.com with ESMTPSA id 15sm1776318oiy.18.2022.01.11.11.17.15
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Jan 2022 11:17:15 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id
 60-20020a9d0142000000b0059103eb18d4so2569012otu.2
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jan 2022 11:17:15 -0800 (PST)
X-Received: by 2002:a9d:5908:: with SMTP id t8mr2359606oth.186.1641928634923; 
 Tue, 11 Jan 2022 11:17:14 -0800 (PST)
MIME-Version: 1.0
References: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <cd453cd2-e23f-84b9-e7d3-667df2397c45@intel.com>
In-Reply-To: <cd453cd2-e23f-84b9-e7d3-667df2397c45@intel.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 11 Jan 2022 11:17:04 -0800
X-Gmail-Original-Message-ID: <CA+ASDXPu5=kv1KoJ-189uHXGua-vhYJzJ4pNujmVxJf_dWE=Sg@mail.gmail.com>
Message-ID: <CA+ASDXPu5=kv1KoJ-189uHXGua-vhYJzJ4pNujmVxJf_dWE=Sg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/bridge: analogix_dp: Grab runtime PM reference for
 DP-AUX
To: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Sean Paul <sean@poorly.run>, Jonas Karlman <jonas@kwiboo.se>, 
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 stable <stable@vger.kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Lyude Paul <lyude@redhat.com>, 
 Dave Airlie <airlied@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220111_111719_068211_B67C9287 
X-CRM114-Status: GOOD (  27.51  )
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

Hi Andrzej,

On Tue, Jan 11, 2022 at 5:26 AM Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> I am not DP specialist so CC-ed people working with DP

Thanks for the review regardless! I'll also not claim to be a DP
specialist -- although I've had to learn my fair share to debug a good
handful of issues on an SoC using this driver.

> On 01.10.2021 23:42, Brian Norris wrote:
> > If the display is not enable()d, then we aren't holding a runtime PM
> > reference here. Thus, it's easy to accidentally cause a hang, if user
> > space is poking around at /dev/drm_dp_aux0 at the "wrong" time.
> >
> > Let's get the panel and PM state right before trying to talk AUX.
> >
> > Fixes: 0d97ad03f422 ("drm/bridge: analogix_dp: Remove duplicated code")
> > Cc: <stable@vger.kernel.org>
> > Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
>
>
> Few questions/issues here:
>
> 1. If it is just to avoid accidental 'hangs' it would be better to just
> check if the panel is working before transfer, if not, return error
> code. If there is better reason for this pm dance, please provide it  in
> description.

I'm not that familiar with DP-AUX, but I believe it can potentially
provide a variety of useful information (e.g., EDID?) to users without
the display and primary video link being active. So it doesn't sound
like a good idea to me to purposely leave this interface uninitialized
(and emitting errors) even when the user is asking for communication
(via /dev/drm_dp_aux<N>). Do you want me to document what
/dev/drm_dp_aux<N> does, and why someone would use it, in the commit
message?

> 2. Again I see an assumption that panel-prepare enables power for
> something different than video transmission, accidentally it is true for
> most devices, but devices having more fine grained power management will
> break, or at least will be used inefficiently - but maybe in case of dp
> it is OK ???

For this part, I'm less sure -- I wasn't sure what the general needs
are for AUX communication, and whether we need the panel enabled or
not. It seems logical that we need something powered, and I don't know
of anything besides "prepare()" that ensures that for DP panels.

(NB: the key to _my_ problem is the PM runtime reference. It's
absolutely essential that we don't try to utilize the DP hardware
without powering it up. The panel power state is less critical.)

> 3. More general issue - I am not sure if this should not be handled
> uniformly for all drm_dp devices.

I'm not sure what precisely you mean by #3. But FWIW, this is at least
partially documented ("make sure it's been properly enabled"):

        /**
         * @transfer: transfers a message representing a single AUX
         * transaction.
         *
         * This is a hardware-specific implementation of how
         * transactions are executed that the drivers must provide.
...
         * Also note that this callback can be called no matter the
         * state @dev is in. Drivers that need that device to be powered
         * to perform this operation will first need to make sure it's
         * been properly enabled.
         */
        ssize_t (*transfer)(struct drm_dp_aux *aux,
                            struct drm_dp_aux_msg *msg);

But maybe the definition of "properly enabled" is what you're unsure
about? (I'm also a little unsure.)

Regards,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
