Return-Path: <SRS0=F7Lw=JF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A037C43460
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Apr 2021 13:41:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ACF6B61130
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Apr 2021 13:41:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ACF6B61130
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=94Jq0RPYmMOR4QerMHT2Tfv7cIrb7gehi0ZhlMD1vMI=; b=IEC/OayHjxNeBM2JDzw2bbRIr
	UNF3Fh9R146TzZk1r66IyO0QTn+HOeo+h1mALQocBTO7skoml0peUwjz4dur1D2zRtb2MhqVU/Nul
	OVdH8RjDNJqtJsg6RuWgO9E6IoGN5UHXRFNUnoCPfATjNV7x4odl7++JqLg8So1hJH2OE003zX0hD
	lD3eWC9jzifREjB8Eb90h4kKOeYZz/rxvgC2TXGdp8j1vgYB2bGHb2wAN4+Ni4/XJM19/EA10WVc9
	Nst2a9LJuORPgSwbTEw6IVhhm1HlzXD8W9jMuhnZCg+RMla3A1Y8Tsupj/7n9moy4DLtG0VJKOSSx
	CKk3Hdp4A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUUuB-008ADI-V9; Thu, 08 Apr 2021 13:41:08 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUUu7-008ACZ-SB
 for linux-rockchip@lists.infradead.org; Thu, 08 Apr 2021 13:41:06 +0000
Received: by mail-lj1-x235.google.com with SMTP id r20so2322320ljk.4
 for <linux-rockchip@lists.infradead.org>; Thu, 08 Apr 2021 06:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GtXbzBdE0M1Nm+ar4q3BvNUevDQ17mjgYSKVolqwxG0=;
 b=UAXlRZwWzqDqVm+TVZLuG/9aX2jJ4Wl3yNdGBz3MdsdIwKK1frRrTbyyOFFzbj3iuc
 d2oaovoBG3OctPJdpjfc6tdJGohJKMAKusRTTV2a7+SUa+2yn+iDEuUsiWXmmvdKFKPN
 jq1VgZS5HRf4oXWVOteZJe1li79bLJFEZYK6FKaJGGSpI9tyZv2ZlPvXnfYj9hSLD8HX
 by5xFZolG0/MunXe5+yAuDUjXu7tvNkwYzS0xBotgy2sk6B11Ey42Pr6SA1vsAcLJKPN
 7ztxfKUjam1lmK6jQy3pXzmPHUgrl0/8WCGd84Llu5YZF/AahBjrgt23yJP8xSDAb10W
 ZDjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GtXbzBdE0M1Nm+ar4q3BvNUevDQ17mjgYSKVolqwxG0=;
 b=UXT3XlEDvtncP+KkgJ2fNDupcKmXeytMGrRbSItzOymt2mN+CrsC98AU9oAmy2IUvP
 3I9JSym+iKehJmiR9wZj2dUCH0Fcxjkg+AIMtbq8+2nTbKDnclbq7c9zQ+wCaTj0XdNK
 SwzimGLBSVsnqrrKGOG04ToUwfJbOpT65x7jN7b8iqnuyqWyYtL0lFbr9npJTDHFjJ33
 YqxRV9MJrZmVBU6DU2yiqCX2WgOi6cFwnx9ITSMiaDtKnkXg84ARSZUf5+VLyd2ocNi/
 Wv1EXwKajqzCYwMrGngAOp61aP8lB9wO87ZNO6rFuF15fXI9xn05C2V1Te7A3/m6NxPA
 PZVw==
X-Gm-Message-State: AOAM530VZ9qK5232vQrdWYFZkFLB0tn3vHoSaIKAfD8LFj05nvha6zMr
 ZAmOGY+b0lFum6EnDHdg4svhtOJxF5LloIicTnx1LQ==
X-Google-Smtp-Source: ABdhPJyTMHU0TlT4KAzDlrvO6EJpbswl5uNFx3547wf9kdRUSms7wWxsib6LTdrfRUvi7kIRYamP2OBW/7Rh1Qli2yw=
X-Received: by 2002:a2e:9004:: with SMTP id h4mr5845223ljg.326.1617889262784; 
 Thu, 08 Apr 2021 06:41:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <20210319081441.368358-1-jay.xu@rock-chips.com>
In-Reply-To: <20210319081441.368358-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 8 Apr 2021 15:40:51 +0200
Message-ID: <CACRpkdY+A4bsW28yXRGeGVnK_UcR70sMeX3jpABGVJc49A-xcg@mail.gmail.com>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_144104_655175_ECA5C612 
X-CRM114-Status: UNSURE (   7.79  )
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

On Fri, Mar 19, 2021 at 9:14 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> RK3568 SoCs have 5 gpio controllers, each gpio has 32 pins. GPIO supports
> set iomux, pull, drive strength and schmitt.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
> v3:
> - fix route_type to route_location, compile error fix
> - remove slewrate option

This v3 applied. Any additional review comments can be fixed in follow-up
patches.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
