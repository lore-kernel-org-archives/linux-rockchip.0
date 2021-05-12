Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECBAC43460
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 13:34:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E864B613D6
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 13:34:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E864B613D6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RIdsxc0Hp/r2/RDQA6TuAOBBWjpM0wNRmoEf/A1tM9Q=; b=p+Y7hFy8dmJHb2J8SiEZxf/M4
	lYD7Foigx3R0TiSpTU72s5HAi88KP4h5OCGDqvSieQLV+e5/5HCwY5+PVKRI3KkXMWFB0FvkhKyDF
	GN7vq5yiw9gYWJ1gTk1/1XHlBci/0smpb/48YfWVF8dugLHOOsvSkzy/iIzCdlYGMAek+vINY8gYQ
	pTs6YZMi/GH4CgKMPB98FK+j539FITvSHWuOcDkixNZYUxGdCy7tpo/fa4PG9lrtIvEFLVG++PTqG
	1WovAijsKwdhPDyLADTc/x8Dh95sTxNb8pStye4eFwa/xrMIZECckOwIWtHei9wAQUI3p4GR5gErO
	ZJbBZR7MA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgp05-002uCr-LR; Wed, 12 May 2021 13:34:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgovh-002tcS-63
 for linux-rockchip@desiato.infradead.org; Wed, 12 May 2021 13:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=V2Xm0zvt+awRTlmfOBDWYmZKbcrwWg30pJhiDIwcPTA=; b=Q1ee0bMyAjF9vQOd3KA+6/5Qlo
 OHuLxWGYHlKhcAjaiejttT63OqFY7tkRFFNBauBwYxKs7dVLYIzWveffQsykjoEZVmWeUkgg7ox3I
 Nim/YHfmMZLuwPIMQwAt3F+j+uLlhm/uTunQ0tpGeZP4ZZ4w4p0LNfuIbOonXMEJvWTCGSayLl6kC
 NwqVNj7C7W/HUvR+j45a3d0ss+Ytyx8g9EDiuqbD9WwyciiUdXoXPZwmKU4bvffLOtGQnr8GY5l6a
 wjV2vOjeKnwXypUj8MW3DVOE9Ghr7iDI5DUMkdCIJy2OGV5g39sXJRpjr+JluxWWFTg+8eWQ4Tt22
 6ITprgkA==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgovd-00AP6f-VT
 for linux-rockchip@lists.infradead.org; Wed, 12 May 2021 13:29:35 +0000
Received: by mail-ej1-x62b.google.com with SMTP id w3so35015870ejc.4
 for <linux-rockchip@lists.infradead.org>; Wed, 12 May 2021 06:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V2Xm0zvt+awRTlmfOBDWYmZKbcrwWg30pJhiDIwcPTA=;
 b=urBYN7ecbgtyQef30Glwk8bNUDY42SI4LloNazJn8gqCtA2H7kJ1C6oQWM6Gb6FGEh
 LPrcNpnRg7o30MxHMXob72hOOWZBQ4sjp18v7g/quUUksFlP/0Tzef31SrQiRzp2SWXp
 Qny2CVZ0EpbrY6z4BFTjElB9EYUueEeNCBXd+btD5wJYlp7vyyo4lY5hwUbfjj7jaBT+
 hZL9SZdSgVjBHho5XdD6r1V34qY4+l4JcKOkiassPaD7DLn3Hl4JSWFgnJ5hbwR5koCj
 L53ukQvIPuSYRGQ3sbMjYxKGKPIspFA+FqM+oD62Kl1ccyPXzotOlBIW4pCM5qAtDH0L
 B1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V2Xm0zvt+awRTlmfOBDWYmZKbcrwWg30pJhiDIwcPTA=;
 b=gDWlZBE88yKczSQZ6KKd6yQe8sZ6841d4uZd/nnZqOrhI9k9G5pPDkV9dhV01j8sb0
 ntVppysY5mrvRV0ThSn2REWcLfzfGG4DSH5W9FajQjBKjOaddATPPLNXVT8gjCScLV4y
 GvzolPVT2beWDM/TeJIWqiwe2o0i1Fj36eQBnxw2vBseX8aR1BAaE0kdaOwom5b5gP2S
 j+VUYJwMQAME7mLc9DOr2u8WQe1i0+LSPW5MvH2bCwIftxMClC9cKIXfMF7eABGPqOOF
 dOefyMUtpQAsyhAC55g3hCmV6fam+xg26Wr7H4Saovbac3XWF7XZ29ZW8Rhr64aVCATW
 Juqg==
X-Gm-Message-State: AOAM531QHnqn4R0xOYBGRFGBKnMj8t09Du3fzI9MnxQ/mKRq3l6gbSCX
 6lZX2dL43H118pTdEYyLYz3SA/1T4gk6bkxPu9gLLw==
X-Google-Smtp-Source: ABdhPJzJND28/5zCNEuN6yQt6amOBLo1vpCnc/DKTzTtz3QIsjgaSayxUHgqB1W155wwKouhuYsoCV8wPo3/2Qb8U6s=
X-Received: by 2002:a17:906:82d4:: with SMTP id
 a20mr37693177ejy.14.1620826171029; 
 Wed, 12 May 2021 06:29:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
 <CAAEAJfALROYg5awL88Uux0yXyMxBthbFjRgJCyhvu4hWioSO2w@mail.gmail.com>
In-Reply-To: <CAAEAJfALROYg5awL88Uux0yXyMxBthbFjRgJCyhvu4hWioSO2w@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 12 May 2021 15:29:20 +0200
Message-ID: <CAMRc=MfqzrjxZBbnmpqjgR6KP6O7zr5xTwTq26oqhwu39kaLHw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] gpio-rockchip driver
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Jianqun Xu <jay.xu@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_062934_082468_32288331 
X-CRM114-Status: GOOD (  21.30  )
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

On Tue, May 11, 2021 at 12:16 AM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi Jianqun,
>
> Thanks a lot for the patch, and for pushing this work forward.
>
> On Mon, 10 May 2021 at 03:36, Jianqun Xu <jay.xu@rock-chips.com> wrote:
> >
> > Separate gpio driver from pinctrl driver, and support v2 controller.
> >
>
> Usually, we expect to see a changelog here, with some information
> about the changes from in v2, v3, etc. Also, note that only the cover
> letter says "v4", and the individual patches are missing that. You can
> use git-format-patch --subject-prefix="PATCH v4", and then all the patches
> will get the same prefix.
>
> However, the last patchset I can find in lore.kernel.org (or my
> mailbox) is a v2:
>
> https://lore.kernel.org/linux-gpio/20210411133030.1663936-1-pgwipeout@gmail.com/
>
> .. which was sent by Peter Geis (so you should have Cced him).
>
> These are just some friendly tips on the submission process,
> for you to keep in mind,  you don't really need to resend the
> series or do anything else.
>
> Also, I added Bartosz the GPIO maintainer in Cc.
>

Thanks. Jianqun: please resend the series so that I get it in my inbox.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
