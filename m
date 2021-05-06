Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AE09C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 12:32:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 253D661177
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 12:32:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 253D661177
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nX8i5UA0hUmGQMo2wGsRHiC3ZCvGpsBRrwgU8EGTQCA=; b=JNrqf5rJUc7KPTYU5/hTmV7fH
	XcMot9fwA275rdl0y/N2UWAXTJnHe4msqyehtQGi55XT9mAxrmVJGvehP8AyWP0T3/bNsipSR7EcS
	rRGlJqYS1SkhM0+L+n7CqRSh/w87o65THJwvwzYzckQ4LNjA58zlEcEdrnXHMd7CHcP9SLNFwdNYi
	TbT8dSHhvjaEwW9Q4zUbUm3BkMp+LnaxuPQXF5cGaMveEi2aOcU+vkj4V2MxhsOtBFSrKvfrhN0yo
	xRe0F0MpLKLQrv4bH7EWSglwp/EUHMXXg90uD3yNCpi6a2o/9kMKwkPPhHdimMOflfP18EUoy87x/
	7YXvds+3g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ledAy-004EG4-Dy; Thu, 06 May 2021 12:32:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledAw-004EFC-AI
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 12:32:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=b9TWHmwsdK1dTcbAv8pBSTziUy5ZrYIjx0ljVbLmuWY=; b=TKswcIsJmZNQEamqORQkv1dt3Y
 MJoFXu3jlhn4NXuglP9wMlROJBGHVt39ig44ytd2M3S+qj54/8ZRKsGe6EQSfbVt8lnc5iqh6Cl+g
 h3gLvJYN1k07+tfXpH/W+M3fiwZnmeKGMbmmw+DRb2e/2hAiiiNEe95j4VIwpbNHwhRGge5t1r+Cg
 KxP+/XFjR4itQwlO4fk4uyChXiGB2EQ1ixw2jPCU2lq4g5q/pSYrIWSXIuYMZMDX8hQP2I/g82sP0
 Hd4Jg6pAefPbnbs1S5drcFlUeJyQlfbHVHfiJq2RTZ62vpNuxMG8Jz5uc4WCBOyrMOOJwTwU+Tu58
 TK08MWuA==;
Received: from mail-vk1-xa2b.google.com ([2607:f8b0:4864:20::a2b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledAt-0061YJ-QW
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 12:32:17 +0000
Received: by mail-vk1-xa2b.google.com with SMTP id l124so1109568vkh.7
 for <linux-rockchip@lists.infradead.org>; Thu, 06 May 2021 05:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b9TWHmwsdK1dTcbAv8pBSTziUy5ZrYIjx0ljVbLmuWY=;
 b=r34+qEJJIN1KBbooFY18JIM+bUhGQAPzvx+asQRAeJokx4to4DWOEbDTiloyh0kMRn
 v5bFp7hHB2OMKCWsyGMPBTlJW42QcR0W4/pmYTzkzPbS6vhNihDuKyWMTtvSjm4l8nu/
 f16zpAgAMcuYkegwt3XPqzDelIGWMbOoog1sJdyLQhjJyRO3A3bSoy8FWBax0Y5eJZf0
 3bI6uNEMw8rv33AZq4JFejeY5XC1j+7EkpvTRJPA0mUQPSvbYKEuRlKeL1KCDVl5nmRG
 +EnDLJrHqg1V+REGkhgnIqECV6oEXQGvjX8+OKRRM456VRHJ0J1OFHTNjRXQ6y+pHL2j
 CvNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b9TWHmwsdK1dTcbAv8pBSTziUy5ZrYIjx0ljVbLmuWY=;
 b=fyM9/DMN8PUlZnEJZdIiUId26q/VK51w7QSdbT7FYmyvQWSki3We/eb+jqMgVUq3qP
 etnoNI2guuWqQBaeSmEjThI3jHRcG5BPDcJDyrWlQTiBFW4+2eiAG2jd/ONBvNmxmJAJ
 dfI7PacjrPT3YAothdudlYFnBZxFJw7d0kbDS6Q6QF9YtidsxhLZYojciOTFAwcujK9+
 5j9XftQ2Nf40vhvu1jymZI2C9nTWurTnGHp2m7i00l0vL0fGxU6IVYtxuq6vaqaG+0Lu
 PiiVqaJ5zFHRhB4rrahUm2uWdg9sPqk0oTIcST+JROZ1xM033GHwbFbvV7jKrWYoJTtj
 +bxA==
X-Gm-Message-State: AOAM533cLceAjxq9pgz9PefRpSuH+NydgIiDC3tU2hUsZBD8emnguwcs
 RSWPBKC6ewsW9gwwXw0QzAKKDS/B14Qbt28Cx8co4lhWZSs=
X-Google-Smtp-Source: ABdhPJwiwHBkyzi5cwGSnzZQ0ZNAudi35hC4dNj4uWMTJhdZ04jb/LYlsElFp6RjuFqjXz0Ts/Ms/DA1mCwn1jQGHZ4=
X-Received: by 2002:a1f:978e:: with SMTP id z136mr2438936vkd.17.1620304330868; 
 Thu, 06 May 2021 05:32:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
 <20210401144336.2495479-10-emil.l.velikov@gmail.com>
 <a9829af1-f4e9-5835-9a74-15a0fce6b1eb@xs4all.nl>
In-Reply-To: <a9829af1-f4e9-5835-9a74-15a0fce6b1eb@xs4all.nl>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu, 6 May 2021 13:31:59 +0100
Message-ID: <CACvgo53L-3kN6WGn6VqkpZTRcVnrnLeCxRPxcGks0TR+VQuXbQ@mail.gmail.com>
Subject: Re: [PATCH v4 9/9] ARM: dts: sama5d4: enable Hantro G1 VDEC
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 devicetree <devicetree@vger.kernel.org>, linux-media@vger.kernel.org, 
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_053215_880646_59305B3C 
X-CRM114-Status: GOOD (  11.92  )
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

Hi Hans,

On Wed, 5 May 2021 at 15:31, Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 01/04/2021 16:43, Emil Velikov wrote:
> > From: Emil Velikov <emil.velikov@collabora.com>
> >
> > Add the SAMA5D4 VDEC module which comprises Hantro G1 video decoder
> > core.
>
> I've accepted parts 1-8 of this series for 5.14, so this remaining patch
> can be merged by whoever handles such dts patches.
>
Can you please include this patch as well. As you can see it has been
Acked by Nicolas, one of the AT91 maintainers so it can go with the
media tree.

> Regards,
>
>         Hans
>
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Frank Rowand <frowand.list@gmail.com>
> > Cc: devicetree@vger.kernel.org
> > Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> > Signed-off-by: Emil Velikov <emil.velikov@collabora.com>

Thanks
Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
