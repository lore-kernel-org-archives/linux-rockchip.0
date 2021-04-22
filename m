Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E30C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 00:13:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7B5E6144D
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 00:13:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7B5E6144D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uMim8YVtSjTDLnDGMjW04kOfwbA5XrE4qcuTHpJM4pQ=; b=alvUMER6AvNS/laYmxmgKIluC
	OMSKny7k8DwOZuBNDb62e3cPz8CRG6Dj19r2+BJ26GBpuAR7RdOpp4W83Cg2XLUWctmBLF3H2pJeQ
	v10xTWUEmKDZYLTAYfdZjyH7ucFy6UveXnPdAjHhS2I73EgW183GUMthYMCKHofM8Hz7nnTQKQgPg
	Ne8hkDqiZ70ZRBE7awf+gzhA3YZvFf1T5hn04nS/ALr0Prns0RylIYKNwzObv2lGw5+KLp05DlPqv
	dWK3YRI0BaPSUiF8Uz13YVNtfggaD81ZJFG39m7fyMQx0mL2PeLhT3QzjsE/LPGLHb3Vk+qnUnaEx
	TUEILV9Wg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZMxk-00FRtW-As; Thu, 22 Apr 2021 00:12:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZMxg-00FRsm-CM
 for linux-rockchip@desiato.infradead.org; Thu, 22 Apr 2021 00:12:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=r3vArZ++B0gjt3Lfyq+dn2ivL89SFulsqFjWL77gtAQ=; b=vVjC84Dwpn2P3FLFAoqLzfNOhl
 XL+HhyiswmJqj15pMf+XdG/Xdc0uFCHgU6D0BAuEc6VqG5ECmMp0QPwgpw9ApxFa64HLki/rLyJA1
 06awdbz7VEzBznrXKVOmZJSRf1IRUFCxBOLBZ3lU4hXqmQVDolO6vUmdiBBA9R/7aqt8FrdmKwQid
 tSsFVLBI5ykkTeojg0bo3UnRjxXNOvVirLNvaOyxAcVt0PrOYxEinbtfFoHDqLCXzvvn5kzcC016A
 O4liXzpmY41oeSetNagU0PKz5vBoFIS36aadUcU30YYYWNH3b9J8Tmye7tsfHCeForJoqpn845XLz
 Lbff3/7Q==;
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZMxc-00DHMG-V5
 for linux-rockchip@lists.infradead.org; Thu, 22 Apr 2021 00:12:51 +0000
Received: by mail-lj1-x231.google.com with SMTP id a25so36465165ljm.11
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 17:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r3vArZ++B0gjt3Lfyq+dn2ivL89SFulsqFjWL77gtAQ=;
 b=OhOCqx4fKCC9TcMfQEQuJ0w0dewkmHNpl0MwvW6hOf90zBQo9QoRV2wsZXdeinjn7d
 daq3aVrVZWw75Qs2kZxYxt95TgbGPrx7vUtGd9eyA3TVLJdynUz77xFFl7npJiCEtAnf
 zd5eBPB+WhEks8TiQ6KcoxzeMp9UmsWP91YUYKlrcloRPqmc5xGbY1Su8JzDCUjsnoeo
 mrOXgyGAYOmJ6sviXZpkcfmlOBC/qA2KdGEv2HBzidYxBwT0FwtNUJvYTcfQU7ZOFft/
 CIrj5v6dMhCYJxYNBuwy3yveMvgv/pP4fy/+1mYwrK2JKM3AbX9SCJoyZtsZtS2ZGJ/n
 c4HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r3vArZ++B0gjt3Lfyq+dn2ivL89SFulsqFjWL77gtAQ=;
 b=IZBOBv5moOCz1yGEtX2JQeoQH1phSPNnfJtHSArlYcbRhKlszr7/pFrzZTyfy4ieca
 ApzdnevUbGwkizyDGdFcG+MlTCzGzjqQ5/mOJhgiKCJAzQ+IlqXGxzERzmXxgEze/OFk
 3l0R4uaDLpInBfe8y2WFnHX5JTlKhJtUhu9ee1uvpbZfsuxjdXfxQ3hFF6oR8Zk5+ic8
 dUeOemsgy5kxbdUaxDt+IejnBNckJiGHqou5NkQk2JgfZO1mw3KR5QsgDrowF2sHWodP
 yFRc6EcOcgAHALd/HSX4sfUuYUlPQns9ULNPwM+VmqO/nj1XX2bcmDMfTVpsM8FF9m5J
 TNbQ==
X-Gm-Message-State: AOAM532cKObm81sAR/2P0tizd7DnRVO4MC0jmowpJUp6+98j58PB7TSz
 amvU7X/z/F25YRDSAdSS2GVi6SXPPkUeMk4eceAXEA==
X-Google-Smtp-Source: ABdhPJzl/ONTOL5R/6Bp5wFCcJc5a8gHSlaCis5pvG8XWehl3XqSatjYVeMsHeT9yG6zRYsAIkdNVIWy4bcaymzLSYI=
X-Received: by 2002:a2e:a369:: with SMTP id i9mr549064ljn.273.1619050367031;
 Wed, 21 Apr 2021 17:12:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210420090727.1246116-1-jay.xu@rock-chips.com>
 <20210420091240.1246429-1-jay.xu@rock-chips.com>
In-Reply-To: <20210420091240.1246429-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 22 Apr 2021 02:12:36 +0200
Message-ID: <CACRpkdZBCMygPoW+rY83nc7OrdEWaEyuoqzSsJ=t+mGvYroxNg@mail.gmail.com>
Subject: Re: [PATCH v3] pinctrl: rockchip: do coding style for mux route struct
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Tao Huang <huangtao@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_171249_022808_954F3EA6 
X-CRM114-Status: GOOD (  11.40  )
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

On Tue, Apr 20, 2021 at 11:12 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> The mux route tables take many lines for each SoC, and it will be more
> instances for newly SoC, that makes the file size increase larger.
>
> This patch only do coding style for mux route struct, by adding a new
> definition and replace the structs by script which supplied by
> huangtao@rock-chips.com
>
> sed -i -e "
> /static struct rockchip_mux_route_data /bcheck
> b
> :append-next-line
> N
> :check
> /^[^;]*$/bappend-next-line
> s/[[:blank:]]*.bank_num = \([[:digit:]]*,\)\n/\tRK_MUXROUTE_SAME(\1/g
> s/[[:blank:]]*.pin =[[:blank:]]*0,\n/ RK_PA0,/g
> s/[[:blank:]]*.pin =[[:blank:]]*1,\n/ RK_PA1,/g
> s/[[:blank:]]*.pin =[[:blank:]]*2,\n/ RK_PA2,/g
> s/[[:blank:]]*.pin =[[:blank:]]*3,\n/ RK_PA3,/g
> s/[[:blank:]]*.pin =[[:blank:]]*4,\n/ RK_PA4,/g
> s/[[:blank:]]*.pin =[[:blank:]]*5,\n/ RK_PA5,/g
> s/[[:blank:]]*.pin =[[:blank:]]*6,\n/ RK_PA6,/g
> s/[[:blank:]]*.pin =[[:blank:]]*7,\n/ RK_PA7,/g
> s/[[:blank:]]*.pin =[[:blank:]]*8,\n/ RK_PB0,/g
> s/[[:blank:]]*.pin =[[:blank:]]*9,\n/ RK_PB1,/g
> s/[[:blank:]]*.pin =[[:blank:]]*10,\n/ RK_PB2,/g
> s/[[:blank:]]*.pin =[[:blank:]]*11,\n/ RK_PB3,/g
> s/[[:blank:]]*.pin =[[:blank:]]*12,\n/ RK_PB4,/g
> s/[[:blank:]]*.pin =[[:blank:]]*13,\n/ RK_PB5,/g
> s/[[:blank:]]*.pin =[[:blank:]]*14,\n/ RK_PB6,/g
> s/[[:blank:]]*.pin =[[:blank:]]*15,\n/ RK_PB7,/g
> s/[[:blank:]]*.pin =[[:blank:]]*16,\n/ RK_PC0,/g
> s/[[:blank:]]*.pin =[[:blank:]]*17,\n/ RK_PC1,/g
> s/[[:blank:]]*.pin =[[:blank:]]*18,\n/ RK_PC2,/g
> s/[[:blank:]]*.pin =[[:blank:]]*19,\n/ RK_PC3,/g
> s/[[:blank:]]*.pin =[[:blank:]]*20,\n/ RK_PC4,/g
> s/[[:blank:]]*.pin =[[:blank:]]*21,\n/ RK_PC5,/g
> s/[[:blank:]]*.pin =[[:blank:]]*22,\n/ RK_PC6,/g
> s/[[:blank:]]*.pin =[[:blank:]]*23,\n/ RK_PC7,/g
> s/[[:blank:]]*.pin =[[:blank:]]*24,\n/ RK_PD0,/g
> s/[[:blank:]]*.pin =[[:blank:]]*25,\n/ RK_PD1,/g
> s/[[:blank:]]*.pin =[[:blank:]]*26,\n/ RK_PD2,/g
> s/[[:blank:]]*.pin =[[:blank:]]*27,\n/ RK_PD3,/g
> s/[[:blank:]]*.pin =[[:blank:]]*28,\n/ RK_PD4,/g
> s/[[:blank:]]*.pin =[[:blank:]]*29,\n/ RK_PD5,/g
> s/[[:blank:]]*.pin =[[:blank:]]*30,\n/ RK_PD6,/g
> s/[[:blank:]]*.pin =[[:blank:]]*31,\n/ RK_PD7,/g
> s/[[:blank:]]*.func = \([[:digit:]]*,\)\n/ \1/g
> s/[[:blank:]]*.route_location =[[:blank:]]*\([[:print:]]*,\)\n//g
> s/[[:blank:]]*.route_offset = \(0x[[:xdigit:]]*,\)\n/ \1/g
> s/[[:blank:]]*.route_val =[[:blank:]]*\([[:print:]]*\),\n/ \1),/g
> s/\t{\n//g
> s/\t}, {\n//g
> s/\t},//g
> s/[[:blank:]]*\(\/\*[[:print:]]*\*\/\)\n[[:blank:]]*RK_MUXROUTE_SAME(\([[:print:]]*\)),\n/\tRK_MUXROUTE_SAME(\2), \1\n/g
> s/[[:blank:]]*\(\/\*[[:print:]]*\*\/\)\n[[:blank:]]*RK_MUXROUTE_SAME(\([[:print:]]*\)),/\tRK_MUXROUTE_SAME(\2), \1\n/g
> " drivers/pinctrl/pinctrl-rockchip.c
>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> v3:
>  - remove change-id

This v3 applied, I had to do some fuzzing, hope it worked!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
