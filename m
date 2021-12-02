Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15A2EC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 01:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ymk+1XBqEI/BSG2YYASGnwrRvKdZ+QlCZeUFot+pFR0=; b=pkAn3n43AX7Da6
	+6Yttp8v4Ehwx7Y/VB83GNXbuqQ8si82OD2ZVbDRNkJMhdMSKHwxdaGqn7UHWZs3VaY5NahK1NosV
	e3btFRa0jW6wT6shskeJamVsmumPwVshukvi72ZW8qORqwLpFh1M/sT08dlpbNFgx/wDAbjhs/ljq
	2gE23THUwNxD2Clm9cwHqSob8/Yaeax0WQXYJo5RxmZnJEs5H31QTpEPc1E6xp+y6ZGhYNXpXdFxF
	iQLviR9UmAbUIncABIPw5vQ5Hzu+JLrje3w+WImc05IT3ppnOxXRNsfyTnjFE1gs5mfc4IFDYWpJO
	X9WVkU6gRVS+WDSnZr/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msar1-00AVPU-2t; Thu, 02 Dec 2021 01:25:43 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msaqy-00AVOM-UP
 for linux-rockchip@lists.infradead.org; Thu, 02 Dec 2021 01:25:42 +0000
Received: by mail-ot1-x32a.google.com with SMTP id
 r10-20020a056830080a00b0055c8fd2cebdso37792843ots.6
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Dec 2021 17:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MzBxxmck4e22aCPZbpEeNPHu59eaexKB2GZ+l+rjAcE=;
 b=TqMGkprtUvMHzq6Q85I8DY7F2tio6LvLjW7QzKwPUswejdPcjjBvmh/9W85sR540N2
 D8RlFWMFKcT+pHyErENuFVMzfkS+dK3SB3QjaF46oLW7jG0vX4s+GFY2zIN1pvcVClnO
 FRDqzDB62fq84GcDo9JVaA4yhNkV+4jtYzz10H4X6steCB/id/JKSNnW8wYJ8lwI1ZOu
 fSv8hIVo/bftKxcWyJsqw1Kv6GRWN0QLwoTaWy+hm+L6iwFx/5UlRik/K6L7Z0eHEX05
 59OjDo8rZhcE+6gMYp+o2+d3MePltd4Jy06L3aQm4DHNFs8UJYq+K71bgJY3Y3fuo5sw
 siTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MzBxxmck4e22aCPZbpEeNPHu59eaexKB2GZ+l+rjAcE=;
 b=BOzBJD2tJ8Loze+eUXZjD20XBf00+1NjdxcK9JHbaNr8+DJWWnVgA97SU2oz1B0Dho
 BZCsx3yK8aEJXuCL5R9in0c95jDk1cVo7quk2ce3la8sQ1RXaO5IOvIXnkUQOr239MZI
 llVAsL7YFCGYeGc29orBnJCjofkWspZ3mK5j7i6ev6IBW4NukyUG0EmvFIN10kc73STv
 cm2ayv92k+52vCa0aaI0o0UOsDCQRb6Q8bRqb8pu/BVm8oV3YzlS+Z0loE0COxUIT+UN
 u/i1k/3hZZCY6+dpRCnJYj8DEGBer9dEHEu6aePXMlkJtCAajo/Pr5tmXX2WPHCq6VZK
 n+1A==
X-Gm-Message-State: AOAM532aDuC0EdqM4C24mbnBUOPs0Fi9ibaPGrGnzzlZAeng71sBW3Ve
 df79pMhKP9SIpZMNzk/O8EUs32hadjYqOJyNhm1tMQ==
X-Google-Smtp-Source: ABdhPJyeWavwWu336TbUC5SxcT/gU4WF764NCIliaR5Spu/P2Rnbn7p8bIQnM2m86oSDPqMuforalVdvO0bOdsZmBv0=
X-Received: by 2002:a9d:74d0:: with SMTP id a16mr8731762otl.237.1638408338988; 
 Wed, 01 Dec 2021 17:25:38 -0800 (PST)
MIME-Version: 1.0
References: <20211126151352.1509583-1-john@metanate.com>
In-Reply-To: <20211126151352.1509583-1-john@metanate.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Dec 2021 02:25:27 +0100
Message-ID: <CACRpkdaMB9+-+wfJ7idCzByZyxGmX=uYD5LMuKBVy0oagyhg6A@mail.gmail.com>
Subject: Re: [PATCH] pinctrl/rockchip: fix gpio device creation
To: John Keeping <john@metanate.com>
Cc: linux-gpio@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
 Jianqun Xu <jay.xu@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_172541_035664_A8AA06E1 
X-CRM114-Status: GOOD (  14.43  )
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

On Fri, Nov 26, 2021 at 4:14 PM John Keeping <john@metanate.com> wrote:

> GPIO nodes are not themselves busses, so passing rockchip_bank_match
> here is wrong.  Passing NULL instead uses the standard bus match table
> which is more appropriate.
>
> devm_of_platform_populate() shows that this is the normal way to call
> of_platform_populate() from a device driver, so in order to match that
> more closely also add the pinctrl device as the parent for the newly
> created GPIO controllers.
>
> Specifically, using the wrong match here can break dynamic GPIO hogs as
> marking the GPIO bank as a bus means that of_platform_notify() will set
> OF_POPULATED on new child nodes and if this happens before
> of_gpio_notify() is called then the new hog will be skipped as
> OF_POPULATED is already set.
>
> Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
> Signed-off-by: John Keeping <john@metanate.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
