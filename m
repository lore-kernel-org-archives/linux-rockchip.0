Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1354FC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 19:14:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3032064EF3
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 19:14:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3032064EF3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fDZy1zOL4iZJ1AGF+wnXB/rkf0Rw0C/ya99BeHYGEzE=; b=JgQLeo/l3tEfE7FcBias7qEXi
	Ioz1stVRPPMGp4mUB9qb5hFtjJMafMQ/74wWbqSBtky7gryoPCZ1rWIkqsPzcAVFYjYzuBBQC7HWy
	FVQuuAWx89Vpp7b9q2aQWRU63rM8BLUSmXahwHk4ULWfuwu7OuP2L0MKdHQ3D1NUFcPZnqVVgY2FW
	RsSKpvZGBdtMwhNrgw7Qr4WgLL/xLZ1JYNmJF6X5L7jSDCCCPhB4NTNSMbkGZT9ulE15lk/InkDUE
	v3y1u9l8YE3bfyi2YTOUQJQH93pmmIXk/TCjQFn/4Y1/BJYbCkqNPidTQVUbx8LYfGizZx8BlT2iC
	2u4LXYYCg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHWx4-006AKR-Ix; Wed, 03 Mar 2021 19:14:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT2g-005Hnu-MP
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 15:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=s80/8MNAZMPOuwZzNkynpuWzzNF35UpnoUBKn77qTOs=; b=HRNV1rn0We5t+FABw73gfxPF3q
 ul7yXVHbBLx67DNOCcpfqgZL8Ic3lcNPG7p62ztbRYb6HV00lrJJMJYjDtYYptYKerJ8T4oBQHcfo
 cfmTknHLYhCALSFc2RyBgH7+xLF7CCC94Qq5IjS4bgdu1Gd97JUu7JJGhc9yIY/hDaTq5BO2ggZ+s
 LnjwadB3idGw0jm/+uOsYeARszMVL0eKXpzzLZi42troVLHLlrCXYxGkLcBj/sK3y/AJsNUIWbTOn
 YsJ4D+dK4faoqElO1kdq4VwwTaPP7gBReJeuuFvg7r70zVL/2EJM5EvVxNVUhykxQidvMqZJF04vQ
 c0khNF7A==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH55w-00HBKb-8V
 for linux-rockchip@lists.infradead.org; Tue, 02 Mar 2021 13:29:48 +0000
Received: by mail-lf1-x132.google.com with SMTP id n16so14324353lfb.4
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Mar 2021 05:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s80/8MNAZMPOuwZzNkynpuWzzNF35UpnoUBKn77qTOs=;
 b=Xr5PtU7CD1IOPT1IhYf6kS5+jFkrtgNmoblkqQIIBFBwB6RBOZrkMYcuv/hwmapNif
 ebAZkpI5EhzuCQ3d4FZpgBWJeKg4YOy4S96r9eb9v9asvfQCMJ5f5ZRwyxsCU5qbS8TP
 TvT9Vhp6huvQJozFsblH2XcPHu6KeJqWQnUI1urhsedGuJESbcImt0RFFrvvwsc7MXj7
 ykixu7d7vJGKgGZpzF4PrktSaO2dMNi6EL3yMi3taQXXUS5YZJ58RtPOycLnh8yRjaGH
 4q9s8QzKRL5AINA1pTgXnzUGwL3CKJZgVXzNKuf/5PC+3nPt+VGw5Z2Rv+3wrNA19E7P
 xjcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s80/8MNAZMPOuwZzNkynpuWzzNF35UpnoUBKn77qTOs=;
 b=C08PjcCIbX62CArfcVa6cCMqPxgSGSs/iY4bjdf8QjNtvkaWui/p6p5cn6KAo0BfVc
 vJVEGL/QmKB9cAHsBHhDvz0J3qFqPxLBypicmp4dwCULUMUiijASfqWWwJvII/MHmtvL
 2JLlg2pjmq6ejTAY5xP8nlCBM4PgjJZ1l45tmNVKPh0Y9bmfnamawsla/5fBjdxpKMgW
 tsEpl8kvHBvJq8sMTcs9Ma9GTO0SXPKaObARDtZjOSEdJ+TI4hJwkTq6+9sn1cftKdwT
 8wz1Vffk/uOy0tEf0yWnvwISAkWWiXxoXpJc2UtKAbZazrC/x+k5790JU4YlPgD3Cmuj
 bvPw==
X-Gm-Message-State: AOAM5334T9nBxuo5FwdFcpCK2w7E5y5c/YAe3cS0pebjpJwQEiAT3reV
 SHkU9Lcv/CQ4iGsV+rWvSE7+VIEN1fHfzYyURaBCRg==
X-Google-Smtp-Source: ABdhPJw7e9Adz2B46qbB8NKAB22zPE9AMPJq/Rjd3y6K3ppW/uh6rKoQYCSoHMbhmRouWT4Zwck0Q1HXhFiSdaPXrr0=
X-Received: by 2002:ac2:5d21:: with SMTP id i1mr11824168lfb.649.1614691726168; 
 Tue, 02 Mar 2021 05:28:46 -0800 (PST)
MIME-Version: 1.0
References: <20210223101937.273085-1-jay.xu@rock-chips.com>
In-Reply-To: <20210223101937.273085-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Mar 2021 14:28:35 +0100
Message-ID: <CACRpkdaWi6QVYjcO+1oEVWEgudQkKgLgfxopOx8Du4dciCO8eQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: clear int status when driver probed
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Ziyuan Xu <xzy.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_132948_638908_34419820 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
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

On Tue, Feb 23, 2021 at 11:20 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Some devices may do gpio interrupt trigger and make an int status before
> pinctrl driver probed, then the gpio handler will keep complain untill
> the device driver works to stop trigger.
>
> Signed-off-by: Ziyuan Xu <xzy.xu@rock-chips.com>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
