Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D071C43461
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 10:38:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E04B56124C
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 10:38:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E04B56124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=32uvUgVRqkKY+QHe0Aww/EjSSvo0wxPCJYszx5IVmpI=; b=FeyFYANa2oFtQxhKvxsiPFroB
	p+zYdWUCQkjhQUi35gqAlpj50CuEWohUp+aimPMHvoIxOyCJEA97eVKFoh8dvrfPw7GH2u/k4FLq2
	GDDA86mIDnA0TXPDdacg0Cri/ec8s/qs0AYg1D5i8OcXehiWxMhrHboRCZdaMvWyfVJUVWnQSOLc0
	vAe5gd7OT2vlzGOxTkVK9KwLBhhiJubM6OcRzhIxsbHODRi4ewJxY/mDmeXjx2HcVlpgVo8YqUtYW
	Tb1khvdL3GoqJb+9lC/4LPhSADoJkfYs04jYVJrTxPVjOmetOr7B6NRZdc2n3FRfDYzSKNd8qVqtr
	5TR96XfHA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljJac-003bgo-5S; Wed, 19 May 2021 10:38:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJaQ-003bfo-Q6
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 10:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=xzuESJ+k+2y7Nhli/8VjnG+9Q7+whBxw6GBhacmD5FA=; b=hTV/rFoSRLXPCa/Wr9nOLaZ2jm
 pj8c73fu0lktHB7q5oiqAfk+L9URzDIZh5LpV9L9ftDYhY6w+2h4r/eUupio/gsPjcSe7uoyokXcS
 CCquCgZwSucU+CUku090ptxAINxkEmZaWkcOuHrGyotfKJKZC9Tuc1wnuqdtiCzBOedSv73v9tjHB
 jd4w5IN3ppaQmmUf5x/JWQ6Yvek1BEZmmW9oycu1YuW5XklHFJDkMlLw6XMUOXuX9Qs6DHt626Mm7
 sUPW503XCA7QBZ8y6AQ8HI48mm6ppO0eXKTbihvYRwvFk6xpUcxBcw6PrLfifa+PU/LkkGEFgBVpq
 km2K++qw==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljJaO-00FMLj-3C
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 10:37:57 +0000
Received: by mail-wm1-x331.google.com with SMTP id
 f19-20020a05600c1553b02901794fafcfefso2518596wmg.2
 for <linux-rockchip@lists.infradead.org>; Wed, 19 May 2021 03:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xzuESJ+k+2y7Nhli/8VjnG+9Q7+whBxw6GBhacmD5FA=;
 b=qyZnyuji6WAA/FyI/zYJiASunjp824/6ZpSGR24DJkEr1W/446xOfaSzbTFSTQSigD
 XL0BBC5q0saLHLGZOhjXuCvXdJBKBlREXp71VHXntN0hyVVTqP0wp90VkkflUgqwzC3M
 aXEndXp9KYPgUMmvMQrDXl8U69ueoqNwJSsUhg3AvfMCVbmgJRE/8nyaSNk2QYuaMPsu
 nDy/5xSwAia7uHJqf55WYBAoRmEbI2H/gI7zlHZ07izNwrKj20r+DkmDwTTur5hC6bXJ
 MeiJE8DONPY9Zo4tkUV0MnlUrI4T5z3TAV7zfCzqPVIeDeSxeOjbvUHXONDNjBYZAp5R
 +o3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xzuESJ+k+2y7Nhli/8VjnG+9Q7+whBxw6GBhacmD5FA=;
 b=axbIeaL3WuBAhFkNsFtCbf9OgZbtT+UtuYB1H8LOp1EsE/w1SBpaF7aX5BAMPQOx67
 5pmWs27RxE744bM6xozKUQ2UNNi/6PV9KuUH52Znpqm8jL1kd3Z5rjE+fDsXfDBbceYs
 uhCH/ou3LVH7XTopjlmrI6I95uJrzDoKBj7VbRAmSY9XGfIZYNHeeWUYER6tD6KNbTSc
 c+Wns6R8ku2wT1p5BI6SdYGBQCq2t45pSLw3n4TrN2pcYHATHHfVuyKxseRe/Ks9L1Bk
 d77QF4ucg7TEMjdnKPV4+5slji/hGjkLcLBpD8l6I/Eq5/JUHXa9GKy1UAG0DcHqdG9F
 jabg==
X-Gm-Message-State: AOAM533RCHKf9ixVwdvei5zh3O55cNoytr36iiRvZagu/yu46DF5Kxu8
 EZ17p0Tk0Br/ofJi4NUtdpTnDhhjb4pWAA==
X-Google-Smtp-Source: ABdhPJxRhhLUGT9FkUiySw8DyA1imc0Ea6Q8ODsVyJcs+hJMMhvPHZZWIBH1wdZ+2qBZB2LL3p4YKA==
X-Received: by 2002:a05:600c:2256:: with SMTP id
 a22mr10117550wmm.138.1621420673557; 
 Wed, 19 May 2021 03:37:53 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f38:4600:e5dc:6577:6b94:e9e7?
 (p200300ea8f384600e5dc65776b94e9e7.dip0.t-ipconnect.de.
 [2003:ea:8f38:4600:e5dc:6577:6b94:e9e7])
 by smtp.googlemail.com with ESMTPSA id v18sm30207587wro.18.2021.05.19.03.37.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 May 2021 03:37:52 -0700 (PDT)
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
To: Leon Romanovsky <leon@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <YKOB7y/9IptUvo4k@unreal>
 <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
 <YKTJwscaV1WaK98z@unreal>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <cbfecaf2-2991-c79e-ba80-c805d119ac2f@gmail.com>
Date: Wed, 19 May 2021 12:37:43 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <YKTJwscaV1WaK98z@unreal>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_033756_177169_4C5D62FA 
X-CRM114-Status: GOOD (  17.88  )
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

On 19.05.2021 10:18, Leon Romanovsky wrote:
> On Tue, May 18, 2021 at 08:20:03PM -0400, Peter Geis wrote:
>> On Tue, May 18, 2021 at 4:59 AM Leon Romanovsky <leon@kernel.org> wrote:
>>>
>>> On Tue, May 11, 2021 at 05:46:06PM -0400, Peter Geis wrote:
>>>> Add a driver for the Motorcomm yt8511 phy that will be used in the
>>>> production Pine64 rk3566-quartz64 development board.
>>>> It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
>>>>
>>>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>>>> ---
>>>>  MAINTAINERS                 |  6 +++
>>>>  drivers/net/phy/Kconfig     |  6 +++
>>>>  drivers/net/phy/Makefile    |  1 +
>>>>  drivers/net/phy/motorcomm.c | 85 +++++++++++++++++++++++++++++++++++++
>>>>  4 files changed, 98 insertions(+)
>>>>  create mode 100644 drivers/net/phy/motorcomm.c
>>>
>>> <...>
>>>
>>>> +static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
>>>> +     { PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
>>>> +     { /* sentinal */ }
>>>> +}
>>>
>>> Why is this "__maybe_unused"? This *.c file doesn't have any compilation option
>>> to compile part of it.
>>>
>>> The "__maybe_unused" is not needed in this case.
>>
>> I was simply following convention, for example the realtek.c,
>> micrel.c, and smsc.c drivers all have this as well.
> 
> Maybe they have a reason, but this specific driver doesn't have such.
> 

It's used like this:
MODULE_DEVICE_TABLE(mdio, <mdio_device_id_tbl>);

And MODULE_DEVICE_TABLE is a no-op if MODULE isn't defined:

#ifdef MODULE
/* Creates an alias so file2alias.c can find device table. */
#define MODULE_DEVICE_TABLE(type, name)					\
extern typeof(name) __mod_##type##__##name##_device_table		\
  __attribute__ ((unused, alias(__stringify(name))))
#else  /* !MODULE */
#define MODULE_DEVICE_TABLE(type, name)
#endif

In this case the table is unused.

> Thanks
> 
>>
>>>
>>> Thanks



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
