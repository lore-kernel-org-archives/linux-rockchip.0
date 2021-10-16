Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3CDC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:15:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 877B061163
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 15:15:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 877B061163
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3gT6WVwetkA8Yi7vOr52Td/iZoK/9suzc7oC+sQq2Cs=; b=ilPqm+xsWA8qBs
	t8Kjv8C4AzAc84cpioPfy951vjcFy+393RAIMAlR32WMlutvLS8EzkyupFYfShL7eOBkg/eXZbRRT
	2Kwu0JV6bIWG7WRNc3C+5ThXlmv+k69xSGnl8FN198/dJfEtOos7pLvp5UPyXakblht34Ipe0vhcA
	s9uPQBMqe2Zhkr5GFjrODiLczDcCw9FGb4geXDKp8gy9rZ9zwI+Teft/5Gmn1k5oX4wDzKJPcOY8M
	B9keuL0ngMTq4N0wmM4p5cwu8rX0TR9J1OOvOeliY2QnkuZiTHeiNH7MnaqP2R0hLBi8YXW8y86eT
	mRJwSBpVX0CXvgMu8dxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mblPB-00ArYl-Eh; Sat, 16 Oct 2021 15:15:25 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mblP8-00ArXI-Ah
 for linux-rockchip@lists.infradead.org; Sat, 16 Oct 2021 15:15:24 +0000
Received: by mail-pf1-x42d.google.com with SMTP id f11so7118954pfc.12
 for <linux-rockchip@lists.infradead.org>; Sat, 16 Oct 2021 08:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=54yvKUvR70e1EUwEjIQrkBtCHRmu0YRGTVj0j6VpK3k=;
 b=IysGORiq0W50u0akiTJ9sGN7Z9uuIDcmR686khN26vdHXQFuJn55dgb+npETZ86Uoh
 djy/tOVziUjsSsKRmrcVh3O6JPhchV2oc/0PetyLF3E0f189sqsTWlvfb+7gmXEM9HRn
 nKNZGUYgziwq6GFnJBUW0dl8FEC9IWAc9B3GQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=54yvKUvR70e1EUwEjIQrkBtCHRmu0YRGTVj0j6VpK3k=;
 b=O2ChczjLBjy2IjNnKCLr/PRG01Aj9/UZEOTFMZ7Y3/Wdm0YoKfMfYAH3IprfpL7p2F
 WYh9GE83+mxC3b3IW/YWVDHc3EJYPxO3QNlCdZaKD6Ceb8Z/FeRpReIX0E1YYzw6MCoK
 1VTgSbSWQUUSz75XJ2hDy9gQunVjcVptV9uTV2H+cxgJcP62QV7Q8yDkhedbHlnXAgVq
 1hjy4e4QVreJ5piz3IpfkJB6vVHiteYrbROXxokod+NYaVBXUjhw01XCPc+RxsDiEeQW
 wHUtBy+hLfbPXzT94raqanN8yHGz+oYRhmzbDw5X7Ho/HOLJEMwjq9IKcu0pUlUbWCHm
 rjog==
X-Gm-Message-State: AOAM533myD73FnyeHYtt+it72qhyataAJjCg7gXJMci7N2lQ6fe+01CQ
 esP3gl9ceines8x0EkY59s9hnmg9E7JI4FIEPGg4cQ==
X-Google-Smtp-Source: ABdhPJy/nsmwbNl980n8mO/eYo1HFVH3q5bZkzrm1syD7NgEFUwCZ6QMxfbKqYniPiykBAAfioXb3n3ioZcUYQ8uhes=
X-Received: by 2002:a63:334c:: with SMTP id z73mr14603487pgz.160.1634397320877; 
 Sat, 16 Oct 2021 08:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <62c3e6bccfb3d8c0ef6190861a8608abff34e885.camel@collabora.com>
In-Reply-To: <62c3e6bccfb3d8c0ef6190861a8608abff34e885.camel@collabora.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Sat, 16 Oct 2021 17:15:09 +0200
Message-ID: <CAOf5uwkuBYuFaoakiBvPb9eomSDdPWOL01w0=-e4Ud-h8QafbQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] Rockchip PX30 RGA and VPU support
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 linux-media <linux-media@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Alex Bee <knaerzche@gmail.com>,
 Chris Healy <cphealy@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_081522_542192_0546A501 
X-CRM114-Status: GOOD (  16.69  )
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

Hi all

On Mon, Jun 21, 2021 at 5:00 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Hi Paul,
>
> On Thu, 2021-01-07 at 14:40 +0100, Paul Kocialkowski wrote:
> > This series adds the required bits for RGA and VPU support on the
> > Rockchip PX30 SoC.
> >
>
> Do you plan to resend this series?
>
> Alex recently renamed [1] things so some tweaking will be needed,
> but it shouldn't be complicated.
>
> [1] https://lore.kernel.org/linux-media/20210614213215.99389-1-knaerzche@gmail.com/
>
> It would be great to have support RK3326 and PX30 :)

I can re-spin and test it, but I don't find the whole thread

Michael

>
> Kindly,
> Ezequiel
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip



-- 
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
