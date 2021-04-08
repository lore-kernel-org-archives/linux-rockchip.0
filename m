Return-Path: <SRS0=F7Lw=JF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C80C43460
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Apr 2021 13:43:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64D2061041
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Apr 2021 13:43:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 64D2061041
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=96oCorVO3aASAiwi8SGMeBNDmA+cwxxhXHECaP8JOpM=; b=hm4scfYBkCWu3Y+N8KPT4Qxv+
	n3r2ZHIAhAqzpSG/OlXgOCrDiLYahudXh0RjVs5YUtgT2KGROLrzK/i8zIpIvoQFrttdX82u9cZwT
	geLt3vLo7J1yJpkXzrWCOhsNqkNSuXKHqdfaiNUD7Vza7BcAK3FI9l60EIPW904Qv0h84s8zdPQzH
	Hd3JaHdWQgsrjDBlDkIczG01oXLQIAHqcO4n6zxNQMEhe4tk6Kmo4pILgnkrETmI08AMfdPSc3Lh7
	YJH49TPWwq5KKZ7J7U81k6u5bfCxmLhbjhtM2TR6bUD0GlanFWPIGVY0lGxZsVY2zXjf3kdXDa/50
	FICVJe45Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUUwr-008AbJ-0e; Thu, 08 Apr 2021 13:43:53 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUUwm-008AaX-JU
 for linux-rockchip@lists.infradead.org; Thu, 08 Apr 2021 13:43:50 +0000
Received: by mail-lf1-x132.google.com with SMTP id b4so4105085lfi.6
 for <linux-rockchip@lists.infradead.org>; Thu, 08 Apr 2021 06:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nd4MS/2X/IdRu/IPJEY7GmmOKW9PjkQK5am7Q8bLstI=;
 b=hD8KAQHdn5unol9mIEukltB0Fz0T3qQQS2GZ1hEXbDV+LUdIomndFB8jDC+/8r5lsf
 Zuap4QsWc1i4BK0nV76woFFpjpqd78ay7JVuJE7lRA5+35oX3JTgPwkEsw52eqNDq+Js
 5/H5iVyHA5mFpNATM0UjymDtqiGtC0PoWZcHa3SZblgizwLkDZi80MQVS+U5ITAfwY/I
 RxrQHVfGoTFjaWzb+27JUUk9VYyRvsXYcDeuMUUWeKDbqNwM9M1Wo1dWew9qOvQb6Ww+
 zQrZDd9dGfAdGdRTD0k2W6XIjAC/I2SvGAVsnkPq0/YgTNviQ6MVih9Lzi1pAalLAwQf
 a5BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nd4MS/2X/IdRu/IPJEY7GmmOKW9PjkQK5am7Q8bLstI=;
 b=iDfhnM8jlpkFMADkwWNWjrjHZEOkWKRkxOQ+cX2SbhUsrPJmL2+MLrauBPDN9rdz1q
 nkXtazBlq/L4vVzLSIlBvAhblx7FqTFo64F6ZUToo+NCLl55MUbvscMQmPnIT98ilvDD
 aF84YvGtILp8QQ/2LUHOiuF5NMQvqXzYN9jpnX9HS8ZT01zyuVVZpPBVU7PbElb+DQ8p
 ytlRPApTfj4ibTSCo6Sp3lgf6ZugLbsYQJjMptSiXBZnNlWxQb9ffKIcjvg63GQVnNSR
 wEb4cI1adAdF5Mb6Kw6Zlm1sOmnKc0f8j4vi3LKyO0PVIVlRhcizRVPeuQyoGcbSTwWw
 VOdA==
X-Gm-Message-State: AOAM530o0claf6CyOYU3lX5ArjSGHj/HvYCF+K2BZRu8s672Uso+9tMO
 uCyJpkTHQB2gfVFlRhBz6lRHSnlURtvylqtBcF6zAQ==
X-Google-Smtp-Source: ABdhPJymnbt4FfiI9iPC+BINQwSJEhxevKghWv8S1VlDu3pJBTF5MsChnMg8U1zsHNd7he3i/ZkOw0THQ/rxhuG91CA=
X-Received: by 2002:ac2:4d95:: with SMTP id g21mr6715385lfe.29.1617889427809; 
 Thu, 08 Apr 2021 06:43:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210322104310.863029-1-jay.xu@rock-chips.com>
In-Reply-To: <20210322104310.863029-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 Apr 2021 15:43:36 +0200
Message-ID: <CACRpkdZWH9Mitp8+SMSCW7kGy5Uz=govbh6=c8gqzL2u6FR-Ew@mail.gmail.com>
Subject: Re: [PATCH 0/3] gpio-rockchip driver
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: Tao Huang <huangtao@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_144349_204735_46A5FBD9 
X-CRM114-Status: UNSURE (   7.00  )
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

On Mon, Mar 22, 2021 at 11:43 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Separate gpio driver from pinctrl driver.

I tried to apply this too, but it fails, can you rebase on the pinctrl "devel"
branch (I suppose the RK3568 driver got in the way).

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
