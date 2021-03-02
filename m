Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03457C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 19:31:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C04F364EFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 19:31:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C04F364EFE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GrjGklCO0A4SqEWdwx8g2ixWYW8jUiZ5oYwTtjA8ZOQ=; b=DS3qDPplIc6yjHMDonay+7Vcg
	NDnrY41r3vpsIq191BeHLfBfB4eaEqZviGTxwwUHNfFnvjtY8enqabOmJTJwPUQumPJrqR0O7M/0f
	BK1V5dVnFELtBPauvlt60hz4JEV4UCmbFzxLAF9TTOEUASWcxGK+OkZhXepVT4jAv2QnAyWm77lQ/
	duflqHYKsgRqR6IoRIhMQBL+L62NW63NVNjqvv6v6u9uhpkKIq2RPGXUYYSwm1MtxY8FnVefAQwOG
	8nY89PKrhAMFuhXNTwjsDgr2yVQzVpNDISygWXqfjYYeURZ9vf+1yCyNTD4NYQj8m/EsyfJaNsPwK
	XO6GKvEMA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHXDn-006EAg-Df; Wed, 03 Mar 2021 19:31:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT3S-005I4D-Mv
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 15:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kqFBMTe07JF336WaEgWvxl6JQ62X5Vu3BcUQAs9nHqk=; b=TMIqEpgmpAb2Uz5gM/FWK7789E
 ztT+QiEJJDKgVa0z0zmC1SF91eYjH0RlZAtir5WLQv9eQaWZB5fAUQEhCGugBvZxGtMD7enk/rBh7
 8LCWfsY0awucG1DPXA7ToPQv4EZP9a4jyXE0Nwk33toB7wYV/u6VYmUDCnPc12NWGVhseDgfbXLP9
 waz23Ej7jHXXGocJYo7hPaiF5LKbQsuxhfIgS8FUFnhCYt5Zl2t2R/sE+nR7B07yEbMu560kDhXJw
 E8oygx7MfSHlCJBcyQo9a0hrCqPaeDKtPET52sBlLkZYt/pW1j6AebPZ7E0g71pSUxGpC9L6+KbxY
 hpCvYN7g==;
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH54l-00HBGj-UO
 for linux-rockchip@lists.infradead.org; Tue, 02 Mar 2021 13:28:50 +0000
Received: by mail-lj1-x233.google.com with SMTP id r25so22913772ljk.11
 for <linux-rockchip@lists.infradead.org>; Tue, 02 Mar 2021 05:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kqFBMTe07JF336WaEgWvxl6JQ62X5Vu3BcUQAs9nHqk=;
 b=RJ6ibPNww69Aio6ct00LUR9dKbPmy7OIT42sPAEHNaL6+GGQS54dMmwaDetMlumogq
 TlJufOjnFhGZnU9gfhH5ojz97/hjWYLw8n4VqZ2p059/q6GXezEe5OTbHNTxh2yIa6zB
 XERquy2W7DNi4npiGjUvXosNj7QxJqvS8YYRcfxDRpw5EJZ5FYrLdL7ofCf1peDgmbPJ
 vdYzEGwkFoho4FuVJwSF9srgBO/Lz6d7tjSb+Li31DE5YnZj8qU7IHsg+PqROvpm5PmJ
 a/yXQ+T/6rYvTf7TLGrlZEilH9x6dl0meUiPmSVa1K834FlxDMDbekAIZuE3nJxKjcst
 f+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kqFBMTe07JF336WaEgWvxl6JQ62X5Vu3BcUQAs9nHqk=;
 b=Rrvhrfu42GGQvhNEEcYhVhA22nR89QLmgvr7sVTns6yPOBKWaUSVjKF56EF37BZfUA
 UhLEGexAvOv093SCVxNswAAcJneUnQWJbZWVJVskqt2M4rsYgUiYUSgOvXlU3VVmyZmT
 PEnP+4xkcYIQshB6JZEUFdOeWvUXaxY7GF7cexJnb2rYmehc2q8pH+VZn1FM7loGRHHk
 gX7C81Y3gS6PUC+cszIYCLp8LkNR7hAjSTLf5Fwv21fYNqojTuCy1CiE4E9yHxNvcgnX
 IELxY3By+PtHdKRt/p6h45WSU5vG0UQpuTLrLuG+KaY4bXZnJXUfmrDmCCkFtgwrWy6M
 1O9w==
X-Gm-Message-State: AOAM533N9tVL8waQJdJlA7SKRaI3Vd94GfMjshdcWwLro7XYlpuh3ysI
 +4MyST/1K4MeJCHaUC3WtKFvW/ydhpKxFvf5NfmYVQ==
X-Google-Smtp-Source: ABdhPJx9UKU16bL/UniBoHtTrYHMA5gEsiMnQWYTWVuxpoS4J2UDt8TQoGZDBpwNpQ4V8qT768mkldiNlACEzrMIwtY=
X-Received: by 2002:a2e:700a:: with SMTP id l10mr12191635ljc.368.1614691653392; 
 Tue, 02 Mar 2021 05:27:33 -0800 (PST)
MIME-Version: 1.0
References: <20210223064807.121358-1-jay.xu@rock-chips.com>
In-Reply-To: <20210223064807.121358-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 Mar 2021 14:27:22 +0100
Message-ID: <CACRpkdbUj850W7eOtLAKdFwQEg3KyuWnSeOL8Q5QhJBjDhLKxA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix restore error in resume
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Wang Panzhenzhuan <randy.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_132850_234784_CC8BF869 
X-CRM114-Status: UNSURE (   7.12  )
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

On Tue, Feb 23, 2021 at 7:48 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

>
> From: Wang Panzhenzhuan <randy.wang@rock-chips.com>
>
> The restore in resume should match to suspend which only set for RK3288
> SoCs pinctrl.
>
> Fixes: 8dca933127024 ("pinctrl: rockchip: save and restore gpio6_c6 pinmux in suspend/resume")
> Reviewed-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Wang Panzhenzhuan <randy.wang@rock-chips.com>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Patch applied for fixes!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
