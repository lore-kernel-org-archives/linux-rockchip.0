Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB312C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 16:30:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 587CC206C1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 16:30:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 587CC206C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gjVLt+tvWREfojqbRvQ9GHLHVtFOAjD3YxalbP+cdeQ=; b=2aBQmZHhIKYq8SqQDIA36J40I
	hr+NHsicBbW8M91yakcteIjyYbs9fcts67OuEEpD7OwixfHb5wgevuk7XQR0C2wf0HeaTUkAAfSlk
	l81rSEtWkAZVRkJlUMJgcXGR7i81EJLSI3tZ1qtx0ljJ7noc1ZYlbYYI6KVNXvFciYZQd05rei9cR
	bUsd80veSv5XgD/dI5PADqq2CgkoONEJHfJCieTQFKZ4MNBAkzGixKzdJ7VtUu/Auk6Ab/PGFNyZt
	zrUIPVSUDp4aW7lz8UWe4JZsR5/VvoYQH3XLZrFtF+Dcfg3/scbKOXU0Z3xVyTfS1THeB32edMW4D
	Sq8Ek/kiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmJP2-00029g-Ui; Mon, 07 Dec 2020 16:30:21 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmJP0-00029G-5m
 for linux-rockchip@lists.infradead.org; Mon, 07 Dec 2020 16:30:18 +0000
Received: by mail-ua1-x943.google.com with SMTP id g3so4645578uae.7
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Dec 2020 08:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q/vZH4ceMXCm6UkYAT96CP3DKQaZyP8nHCAOVqyRXEI=;
 b=IR3fjZNbAtn5Xlo3KfW81rRYkJjxYEUA2Pjp9rrqQ2rK3iC+gwfbaIRs30mG9sgKBX
 Z91DHhxFE4uUPGj4v5hegTIWiMxQ4/BZnPOjpCN07PfBf9NJx7iezVtyFkwii9rKq7T7
 Lk6s9bmXTJ0mXHpWxoK2kwJsl+KYvHCN50eIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q/vZH4ceMXCm6UkYAT96CP3DKQaZyP8nHCAOVqyRXEI=;
 b=sK8YgoFMLblE69fI2WYM4yld6TGqewDUy69zSM0imQagbfIfwtOgaVOEGMZjkCrvHL
 W/OGkMcfoRZWiNzyvwkJD0bL7sm4dyCYdjLoCz7ApYy83RxFSBKLQ9uv3b40/0SCA8n0
 Cf9g8nTLJkZqv3FcC40PAlgNbl0b/jSwiwcc5grj+6VxWn5AI+pK0ds+5ztFcm62AOu4
 8o5AmIw4iW2v4QGg1sr+26XRlJaUAQu/6FnSGeVZKgzBXW5Bx4kzc5KRFKVdcGA4VKJg
 pEzOdy/KcdGwr+ve7oQ1HODL3kCudcHrehypoCeyLSpU7/fauubqxrlfSswqwqw9ezc0
 Yb6A==
X-Gm-Message-State: AOAM532rXD/uhQRuKcIy7cBi9Fs5Syog3RmSegHMlks9k1LyscB/Gntb
 /C2E2weVZG2YaBdPCbYa1CDQcXy5kSNZ9A==
X-Google-Smtp-Source: ABdhPJwi+Fqc4kj41zkTWu7C3DniH+7tf1ywpQBCLWuQWrzn44lC/43Zvn/DJ+s6VW6XL6auq2S9pw==
X-Received: by 2002:ab0:61c8:: with SMTP id m8mr12245608uan.84.1607358614215; 
 Mon, 07 Dec 2020 08:30:14 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com.
 [209.85.221.181])
 by smtp.gmail.com with ESMTPSA id d5sm1734051vkf.14.2020.12.07.08.30.12
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Dec 2020 08:30:13 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id v3so529020vkb.1
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Dec 2020 08:30:12 -0800 (PST)
X-Received: by 2002:a1f:9dd3:: with SMTP id g202mr12927235vke.21.1607358612479; 
 Mon, 07 Dec 2020 08:30:12 -0800 (PST)
MIME-Version: 1.0
References: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
 <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
 <f8a21465-91d0-9967-e559-d8f91f795028@gtsys.com.hk>
 <e6d351f9-232c-ebab-2f4e-bf2ff4dc8238@gtsys.com.hk>
 <CAD=FV=UjwK7qz-SOJNpZbq4bABWgDunZ0Yjk+Z9zs=wSH=sy-A@mail.gmail.com>
 <1288be76-7599-92dd-561a-636872dd0186@gtsys.com.hk>
In-Reply-To: <1288be76-7599-92dd-561a-636872dd0186@gtsys.com.hk>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 7 Dec 2020 08:29:59 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XkdnLt9PHM+TNWtDw5R9D1uqrJp2KoXpTG8oCQ=ECA3A@mail.gmail.com>
Message-ID: <CAD=FV=XkdnLt9PHM+TNWtDw5R9D1uqrJp2KoXpTG8oCQ=ECA3A@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-emmc: emmc_phy_init() always return 0
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201207_113018_283134_781031E9 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Sun, Dec 6, 2020 at 8:13 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>
> To be backwards compatible, and keep it optional, I can check if clock-names is
> defined and if not, set emmcclk=null and return 0.
> But if emmcclk is defined and an error returned from clk_get(), escalate it.

...but how is this different than just checking for the -ENODEV (or
maybe -ENOENT?) error return (other than being more complicated and
requiring more code?)  ...or, perhaps even better, just use
clk_get_optional()?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
