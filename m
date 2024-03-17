Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54C14C54E68
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Mar 2024 23:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8UV1DQCZT0k4PqbnBwe9dEJpgO84NscocQDWBFnhPE=; b=Fnw7JtFpA3jDeJ
	g599evuOgMgBMEY1Gd/4QbgdH8bAGpZY1j4N0xVSETV6//ujtm4rbnGjxzRtzztTjJEVXAAXGsJHH
	fjnHHwxUMsrqFtmPHQ2veTayoFLRn7wZ9HTbC3EfR3jnfSAHHkGNd5a79fqXOk2a1WerUmaXDwnq0
	9qeg8nrj4clZIViTHHOyY7JzBb0WBIhz4zeODXL9utg3V/6kPLx8estFOmq70D6Q+N7xBAI49x69K
	CFzHZiV4nfBCJiO4HS7UbgqVVR9bEPRDGdMUIyuqjkcPOfDEApQccildN2N94vDX3vYkk16vrYEG/
	XzUc6e8n/zAzN/BmcGXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm01h-00000006kvb-38lH;
	Sun, 17 Mar 2024 23:34:49 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm01e-00000006kuS-0RKQ
	for linux-rockchip@lists.infradead.org;
	Sun, 17 Mar 2024 23:34:48 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-696147fb5a7so4623376d6.0
        for <linux-rockchip@lists.infradead.org>; Sun, 17 Mar 2024 16:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710718483; x=1711323283; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3TveCEvyF9dDgFbTi4nGtP9p64f4VQp+n7zIrjYtRyg=;
        b=Du5Yr8ruY293yCntUVb63w6ZKpsFmIce4pmyI8HbCpcVLjOd4rDh9wneqT9C5HggWQ
         r8DpfO1ziRbwQSRLE4RjYV3STy//tVlWTrxWBhA9TAmNgzLWdnIk54cAOTqtJwCKuoEi
         IOij4Di0xFQVF93jdKCfgiptDWGcm1dUybpAZ7UTYfl8qsGRk95C2RxW4VI+jwo2BqgC
         pgC2So5m5wsBt/hG0R47wAC/FWhDVpLxgehAkiA82vJ0RTv8brR8RVVzuKGpUG3bRaCX
         cXIvMurRQTj9b8rqDuPgJ4KgulT8KkIYxPbD12+ySuUGBDwGWhpcUqUqJC6xw+vFdVCH
         EUuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710718483; x=1711323283;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3TveCEvyF9dDgFbTi4nGtP9p64f4VQp+n7zIrjYtRyg=;
        b=BfA92ls9b9v+R9BNU9xNF7i49JNHcJ1sDxvJdUf02uDdjuCL0mEjhAQQQI7vi8IxbG
         Rptjc+LbBzuE/2XzoA8ySVr2G7LcyayBtiXO0QQQ+kD2dhEy6CAB23K6ZGToR2dz29LC
         9WolNq0VZnFL2QrTDplr5woFsvN0x8Sk80nrftW1m5nowZF7ocZOIwk5GtxSQDNThvr/
         K9e97n/aI2rpR/u0mrrDkt2ezVH65WXjSKZYBUJ+Huogg1pEdcHSwKWbd3G56gv2+sz/
         qzDqUoyPXAH6Cf7fspTIyij3PsYxroa8YhRsVU8Of2NCljR1hAIRm3KWx/ATWbKnR++D
         lTHg==
X-Forwarded-Encrypted: i=1; AJvYcCWWqqO3OV64KUNPxRynw4SYY/euRD7XI5OkTj+kyZRgn7r/7CCy6JUgb34gVALHYNnbKwCioOeJ47qy6DK4se1y9LcMNnQGR49zrwUg95F2JLmm
X-Gm-Message-State: AOJu0YysPhCCZYfFG9uu4Rlr23lRgOn9AxYgMn7KVuAu8nkSwD96lsnP
	S3NG6JNLqcYhyND8Unvd81qIolMPYpoEI7bsYyVkmuoJqHEq/9xG
X-Google-Smtp-Source: AGHT+IFR/BsGUFSs2+4cMobiqKN2WTO6zvP+QwUKKi6QPwaa1pIBcUH+6twCgw7fWqWtbVyFgXK+0Q==
X-Received: by 2002:a0c:fe87:0:b0:691:6bce:84cf with SMTP id d7-20020a0cfe87000000b006916bce84cfmr8073394qvs.17.1710718483289;
        Sun, 17 Mar 2024 16:34:43 -0700 (PDT)
Received: from ?IPV6:2606:29c0:1000:2088:2f7f:3a4e:b1cd:53db? ([2606:29c0:1000:2088:2f7f:3a4e:b1cd:53db])
        by smtp.gmail.com with ESMTPSA id 2-20020a05621420a200b00696143c7ed3sm1007883qvd.38.2024.03.17.16.34.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Mar 2024 16:34:42 -0700 (PDT)
Message-ID: <7f4b3f38-50ee-480f-a341-ab577e19bb32@gmail.com>
Date: Sun, 17 Mar 2024 19:34:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Chad LeClair <leclair@gmail.com>
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Ilya K <me@0upti.me>
Cc: "andy.yan@rock-chips.com" <andy.yan@rock-chips.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
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
Content-Language: en-US
In-Reply-To: <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240317_163446_230508_BF29634F 
X-CRM114-Status: GOOD (  24.22  )
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

On 3/8/24 08:27, Sebastian Reichel wrote:
> [removed DT people from CC, since this is all about clocks now]
> 
> Hello Ilya,
> 
> On Fri, Mar 08, 2024 at 10:23:31AM +0300, Ilya K wrote:
>> This change seems to make my Orange Pi 5 (RK3588S) lock up on boot
>> :( Any suggestions on how to debug this? It doesn't really log
>> much...
> 
> I suppose with this change you explicitly mean the last patch, which
> has not yet been applied? That patch effectively allows some clocks
> to be disabled, that have previously been marked as critical (and
> thus always-on).
> 
> If that results in a boot lockup, I expect you have a peripheral
> driver, that does not enable a required clock (e.g. because of a
> missing clock reference).

Sebastian,

Another Orange Pi 5 owner here...  I likewise ran into trouble with
this patch.  I have been playing with your rk3588 branch from the
Collabora gitlab and was also experiencing hangs on boot on my OPi5.  I
bisected your branch and found that the GATE_LINK support commit was the
problem for me.

Digging in, I found that the problem behind the hang was that I was not
getting the aclk_nvm_root which in turn caused DMA transactions to the
SFC driver to hang.

...
[   2.804519] rockchip-sfc fe2b0000.spi: DMA wait for transfer finish
timeout
[   2.805127] rockchip-sfc fe2b0000.spi: xfer data failed ret -110 dir 1
...

Setting aclk_nvm_root to critical allows the system to boot.  However
not all is well as I do get errors like the following which also seem to
indicate further clock problems:
[   6.296554] rockchip-pm-domain
fd8d8000.power-management:power-controller: failed to set idle on domain
'vo0', val=0


I assume that the con-ops of your patch is analogous to the downstream
"clock-link" driver.  (ie. you are looking for PM events to cause the
pm_clk_suspend()/pm_clk_resume() routines to enable/disable the linked
(second parent) clocks).  This wasn't happening for me.  Unlike in the
downstream implementation, the gate_link devices' dev->driver pointer
was null. So that when rpm_resume() was being called, it would make its
way to pm_generic_runtime_resume() which then would do nothing.  The end
result is that I would have a prepare count of 1 on aclk_nvm_root, but
an enable count of 0 so it would get disabled (orig patch w/o marking
this critical).

I did a quick hacky proof of concept where I set up the pm ops on the
clk-rk3588 driver to point to the pm_clk_suspend/pm_clk_resume routines
like downstream did.  I used device_bind_driver() to forceably bind the
clk-rk3588 driver to the gate link devices it was setting up.

This worked for me.  With those changes I then was able to boot without
needing to set aclk_nvm_root as critical.  Further, it cleaned up the
power-controller error messages on the sdio and vo0 domains.

The force bind I did doesn't feel like a particularly clean solution to
me.  However, I am not knowledgeable enough in the (platform) device
model to know what the right way to do this is without fully doing what
downstream did and having DT nodes for the various gate link devices.
But it seems to prove out that having the driver bound to the devices
with the relevant runtime pm ops is the missing piece in my use case on
the OPi5.

Hope this additional data point helps!

--
Chad LeClair

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
