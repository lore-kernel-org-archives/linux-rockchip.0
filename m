Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCE4AC54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 02:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyUOe6/0Wt6d/ZQf5vrHivbM+bvlsFRx3eYpBtH464o=; b=vv6ZtbwUMCBcvh
	kBDAgR4xFxHorjAWexMdWu4NkrLbletAcWaQ19E62aQ4LpbbFWrMA28Xy8Q3o0evg1LAIL/MB2vGa
	BaDncPC8DQ+ydrmNIvkKqmr4JBP6Cnc7+DqYDtx/XHQ9HKS5i0aNomNxzvB3jrnSWgtMLB1lR+/WB
	ff+iqmusb8aN3qB6bl3fXA+BtZYNdapREupozMzpJQ7FwIXeRz3NxH1cUWwhuZJqeTgiT6FO5FaZB
	x4TD+jmhyPDmQG50Kehu1JF0xGZ17Hm+4gKV7rt7avsxwwr97yEg6sq1bWHf0e5o78r1ov7pn3MzO
	nOB/XVJinS4352dcEGxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rn8WC-00000001cly-0Xzy;
	Thu, 21 Mar 2024 02:51:00 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rn8W7-00000001ckg-1u0Z
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 02:50:59 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-6962950c6bfso5034166d6.2
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Mar 2024 19:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710989450; x=1711594250; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tDDe9OS1xTeoPX5iiKtUDiky31WpE/pim88cOHUf8Zo=;
        b=focqQSGwtbWeq8wfjWelqP7nE1pfuVH5xCSbBX2UJ6PHq+rsygkKw6bdaQwwynTQJF
         +rRFReHFf8BY3b1S96PdSCsTQdZcvdbKFQa3Mh/WSXexmLaL7Zkq7aq75NU8G2+0XNOW
         2N8Tk7EOn7KN+kz4NLzvfNeXfxRwCJcbrT30GqhS4d6b8p3q4tQEn45rjprY7CpinQSo
         cjX+z8MzYoxGiNCbCvaGZBgWZFkUiepx6DrOLoCjCr85bSu3tpCqWyGS13m/KL5KJX04
         aRoEFLSTaT6MrjFm/XUlIhEDu+yIxhCFd7g4nAbE8McG0PC2mwqOYCGRmMuqy9Qhat/Q
         mBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710989450; x=1711594250;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tDDe9OS1xTeoPX5iiKtUDiky31WpE/pim88cOHUf8Zo=;
        b=lgvjgCofkmhINzJi1BUjtZt9r5kB1WD67u5cIyui3gTNtPwspfdHj6MbGZv/C9SthU
         gqWqjkCf5/K8ZELwZZmAFGa5CLr1sJtZXMMZ7RCGTPsveKIZOArx2ju/Jeu1suGk43bS
         45x4cd5+kLX+OtZ9Y8Y/GxbUG5XsMONr8o62M6J2gycHFSQOEfvDhHXeCTMSmM5xTZdf
         ndLVE4XZc72fXZjgnE9ZT0nvzicf/PG3WkyIbz6wWflLUsGCOpet9MWd1+zLgrPaYhiA
         1bycRrX5Un2j6R9jlU4GXZjOE/FtHUQXfpNHApsSsVmiYPitNVggkfcbdTovRip+xMAx
         c4Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUp2gCM5mNrrPgRNsvJ/CI7LmcxGwwWUbWvuQDhTI0o+Tg/7mZJaiLXwfohnSYL6E/T8v+UPsGkt5K+lAaa9OqdWiNj7meJ7Erv+8gIxXFybiwY
X-Gm-Message-State: AOJu0Yy12v81hawVr1J+mAP0rZ/kgAvjwJkGWqFcSKrMrlmajrmNFlrx
	YdwCkKB7U9TrkliwrNwrZpuBkgiIXzlt/T0JxQju65P5ZOtQlLac
X-Google-Smtp-Source: AGHT+IFlvOZFQvtjt6LVKrlDVfAoBlkTQ6kW3LNR3jbbwBLxVKKVMkDubLpL3E89nMFwrovIq4omgQ==
X-Received: by 2002:a05:6214:21a9:b0:691:639:2ddb with SMTP id t9-20020a05621421a900b0069106392ddbmr882062qvc.21.1710989450430;
        Wed, 20 Mar 2024 19:50:50 -0700 (PDT)
Received: from ?IPV6:2606:29c0:1000:2088:8b84:ea3:7f3d:8a76? ([2606:29c0:1000:2088:8b84:ea3:7f3d:8a76])
        by smtp.gmail.com with ESMTPSA id jz5-20020a0562140e6500b006961cdc3f7csm4386261qvb.85.2024.03.20.19.50.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Mar 2024 19:50:49 -0700 (PDT)
Message-ID: <97f8b9e7-983c-435e-8fad-11e71be158b8@gmail.com>
Date: Wed, 20 Mar 2024 22:50:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Ilya K <me@0upti.me>, "andy.yan@rock-chips.com"
 <andy.yan@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>,
 "huangtao@rock-chips.com" <huangtao@rock-chips.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
References: <1456131709882456@mail.yandex.ru>
 <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
 <7f4b3f38-50ee-480f-a341-ab577e19bb32@gmail.com>
 <2rsu6qa3pwbqic6b7ej6txa34jw4ztrnybzcfcfysue2mky37h@dyrdefbimzdn>
From: Chad LeClair <leclair@gmail.com>
In-Reply-To: <2rsu6qa3pwbqic6b7ej6txa34jw4ztrnybzcfcfysue2mky37h@dyrdefbimzdn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_195055_613685_790475C1 
X-CRM114-Status: GOOD (  18.30  )
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

Sebastian,

On 3/20/24 12:36, Sebastian Reichel wrote:

> I also worked on a cleaner solution for the issue you described and
> integrated it in the patch adding proper gate clock support. So
> please also test with HCLK_NVM not being marked as CRITICAL.
> 
> [0] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-test
> 
> If everything is fine I will prepare a v9.
> 
>> Hope this additional data point helps!
> 
> Thanks for the detailed analysis.
> 
> Greetings,
> 
> -- Sebastian


No luck unfortunately.  I still see the SFC dma timeouts.  It looks like
aclk_nvm_root is still getting disabled.  It now has both an enable count of 0
and a prepare count of 0.

Unlike your previous version, I _do_ see the driver bound to the device and
the rpm_resume() call finds its way to pm_clk_resume().  So it looks like
you resolved the original issue I was seeing.

However, when I reach __pm_clk_enable() it looks like the clock entry (ce)
is not in a good state:
  (gdb) print *ce
  $3 = {node = {next = 0xffff0001f0ce1930, prev = 0xffff0001f0ce1930}, con_id =
  0xffff0001f0a214f0 "aclk_nvm_root", clk = 0xfffffffffffffffe, status =
  PCE_STATUS_ERROR, enabled_when_prepared = false}

The immediate problem at hand is that ce->status is PCE_STATUS_ERROR so the 
switch statement will take the default case and return without doing anything. 
Also the ce->clk pointer looks like some sort of error pointer value so I'm
wondering if something went wrong in the setup you were doing in 
clk_gate_link_probe().

Note: I ran to that same __pm_clk_enable() breakpoint for a number of of 
GATE_LINK clocks.  They all looked to be in that same bad state.  I put the 
"aclk_nvm_root" one in the message here since that is the one that is most 
relevant to the discussion, but they all look to be broken in the same way.

Hopefully this gives you a hint as to what is going on.

BTW, In case it is of interest to you or Ilya, I have my "working" tree
available here: 
  https://github.com/sesca128/linux-rk3588/tree/v6.8-rk3588-test

My quick and dirty hack is at the tip of the branch. The rest is pretty 
much your rk3588-test branch from a few days ago. 

--
Chad LeClair

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
