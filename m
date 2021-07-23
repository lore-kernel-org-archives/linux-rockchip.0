Return-Path: <SRS0=F11g=MP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0A3AC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 10:12:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B859F60E73
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 10:12:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B859F60E73
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtPTlzPTU8d27fPeLLiQ8V6iaDoZXx00vw8d5fr9ibk=; b=TN/85nGTNTf1ZA
	/Rw/Ah2Sv0euWvv0SufHaWQe/CpxIMWhS8d0yZCMlas7xbjtJJJroeq0AAChJt82l5giCw/EIfWlZ
	io8xid6pNuyRJ7Ma9aIdu477EzAFFIjpZR1jrwytlAfbpr74UyRdXXOMaqkoMxIF+QPv+dYxZD/Cg
	hkiO1n15HsBQsqNFTeCDL9WBBgPaK1oom41UCfokUW5A4LUvHWjvWq0fw45AFcKwd5wtp/0Vqb5g1
	uf9qN09TRNUYgp1Z2YbDlBryAF1iJzzkRR79FhPB6G1X765OaTSuVQpEupDQ2MxTiKLjI3v0JyWL/
	HNG3qPOfwjj6IrbcIDGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6sAB-004JdX-UW; Fri, 23 Jul 2021 10:12:15 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6sA9-004JbW-60
 for linux-rockchip@lists.infradead.org; Fri, 23 Jul 2021 10:12:14 +0000
Received: by mail-lj1-x22b.google.com with SMTP id u20so755789ljo.0
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Jul 2021 03:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B4bwf42yr7JDyD4QQpqpl0rLmj1/xri03U/Voi5h7Ew=;
 b=peTla0gSTFhnVjVhA6ibtdFo8P7M/kG7BRP+BtNEFAJz96D+UHUw04tth7jgCdNTYN
 AC/64uRJ8gYJMc06has4Fk0vOK6hMoEdf37DkY/8sSaRwJzVptA7HGTw6D6Bf1yB1XCU
 gTjWDOi6QuacsIF+7O0U1ZlC41IKVanMdaYcO7gso3gJhsPce+CplWyxuGwKmlsL0djW
 7Rcp3yReyaQgufzISXrn9795+YgorFmgtrffXOwaeHgTPRmkkboSve/VseQBYkos9CMB
 la/cugeM9jaXwyyza3dbwrnQIoGH8PFVXail0TR4eSnfOotbk6/y4loFWJMQhh/fx1RT
 Hw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B4bwf42yr7JDyD4QQpqpl0rLmj1/xri03U/Voi5h7Ew=;
 b=GN/QKQBbyhBvXHoM0GONwg3ta6ctL2kpQvXOn6siBgyJE8KoQd3WzlJ/0u8gVSBWeJ
 HtLIDt6A3YYMLNhJ3ftAtK6t71M5uCINlkMhtXo7ZP+itGVpj7FTBHH7MMTseQspN/MT
 iiviiJoGyZIvYXyz/DUMl8pZ0xaSstctUC+N1xietzYthJmQZ4lITEdM1CMocCjWiYQy
 Q3+RxHa5tppP/BzdyWDtItxAthcnjs+4F+rqg5By0YOnYUg03xNGF71JNm77qjtg8uzu
 ZnyqOMY5w25hlMGFpUAX0D1ewcuLUPz25PEcbFKP65flWSMUFw63wTUSNglYSxBAWZ9A
 jEOA==
X-Gm-Message-State: AOAM531tE4bIdCcx9Jv67O8N+AmXRxg5tTxqS/xMg4bMfm539vVTEWZj
 am+J6v6U69yHhY3+feL0Y5HEqy2z+6vdpWOI/RqZjA==
X-Google-Smtp-Source: ABdhPJylc9c6SpsywKJ/yFhTDF0kUIitWITuqrjcrNfQBURMum1nGZWrRp3Xl5aC1FVq+/EwI8LrgxA6/CtZ68PMwnk=
X-Received: by 2002:a2e:908d:: with SMTP id l13mr2745778ljg.467.1627035131719; 
 Fri, 23 Jul 2021 03:12:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210618062449.1067106-1-jay.xu@rock-chips.com>
 <20210618062918.1067557-1-jay.xu@rock-chips.com>
In-Reply-To: <20210618062918.1067557-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Jul 2021 12:12:00 +0200
Message-ID: <CACRpkda+DMr_VvRuhHVF2KuQ8sO0nsiAKLgr2tD+vsD7=1CzJA@mail.gmail.com>
Subject: Re: [PATCH 9/9] pinctrl/rockchip: drop the gpio related codes
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_031213_276746_10129FD7 
X-CRM114-Status: GOOD (  11.27  )
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

On Fri, Jun 18, 2021 at 8:29 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> With the patch to separate the gpio driver from the pinctrl driver, now
> the pinctrl-rockchip can drop the gpio related codes now.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
(...)

>  #include <linux/bitops.h>
> -#include <linux/gpio/driver.h>
> -#include <linux/of_device.h>
> +#include <linux/gpio.h>

This is wrong. Do not introduce new users of <linux/gpio.h>.

I don't want to delay the merge of the patch set because it has
taken long enough as it is but  please submit a patch removing
include <linux/gpio.h>.

You either need <linux/gpio/driver.h> or <linux/gpio/consumer.h>
or both, or <linux/gpio.h> is just exploited to get other includes
then figure out which ones.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
